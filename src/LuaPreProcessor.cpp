/*

    Silice FPGA language and compiler
    (c) Sylvain Lefebvre - @sylefeb

This work and all associated files are under the

     GNU AFFERO GENERAL PUBLIC LICENSE
        Version 3, 19 November 2007
        
A copy of the license full text is included in 
the distribution, please refer to it for details.

(header_1_0)
*/
// -------------------------------------------------
//                                ... hardcoding ...
// -------------------------------------------------
#include "lppLexer.h"
#include "lppParser.h"
// -------------------------------------------------
#include "LuaPreProcessor.h"
// -------------------------------------------------

#include <iostream>
#include <fstream>
#include <regex>
#include <queue>

#include <LibSL/LibSL.h>

#include "path.h"

using namespace std;
using namespace antlr4;

// -------------------------------------------------

#include "tga.h"

// -------------------------------------------------

extern "C" {
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
}
#include <luabind/luabind.hpp>
#include <luabind/adopt_policy.hpp>
#include <luabind/operator.hpp>
#include <luabind/exception_handler.hpp>

// -------------------------------------------------

LuaPreProcessor::LuaPreProcessor()
{

}

// -------------------------------------------------

LuaPreProcessor::~LuaPreProcessor()
{

}

// -------------------------------------------------

std::string LuaPreProcessor::findFile(std::string path, std::string fname) const
{
  std::string tmp_fname;

  if (LibSL::System::File::exists(fname.c_str())) {
    return fname;
  }
  tmp_fname = path + "/" + extractFileName(fname);
  if (LibSL::System::File::exists(tmp_fname.c_str())) {
    return tmp_fname;
  }
  tmp_fname = path + "/" + fname;
  if (LibSL::System::File::exists(tmp_fname.c_str())) {
    return tmp_fname;
  }
  return fname;
}

// -------------------------------------------------

std::string LuaPreProcessor::findFile(std::string fname) const
{
  for (const auto& path : m_SearchPaths) {
    fname = findFile(path, fname);
  }
  return fname;
}

// -------------------------------------------------

std::map<lua_State*, std::ofstream>    g_LuaOutputs;
std::map<lua_State*, LuaPreProcessor*> g_LuaPreProcessors;

// -------------------------------------------------

static void lua_output(lua_State *L,std::string str)
{
  g_LuaOutputs[L] << str;
}

// -------------------------------------------------

static void lua_preproc_error(lua_State *L, std::string str)
{
  // std::cerr << Console::yellow << str << Console::gray << endl;
  lua_error(L);
}

// -------------------------------------------------

static void lua_print(lua_State *L, std::string str)
{
  cerr << "[preprocessor] " << Console::white << str << Console::gray << endl;
}

// -------------------------------------------------

static void lua_write_image_in_table(lua_State* L, std::string str,int component_depth)
{
  auto P = g_LuaPreProcessors.find(L);
  if (P == g_LuaPreProcessors.end()) {
    throw Fatal("[write_image_in_table] internal error");
  }
  if (component_depth < 0 || component_depth > 8) {
    throw Fatal("[write_image_in_table] component depth can only in ]0,8]");
  }
  LuaPreProcessor *lpp   = P->second;
  std::string      fname = lpp->findFile(str);
  t_image_nfo* nfo = ReadTGAFile(fname.c_str());
  if (nfo == NULL) {
    throw Fatal("[write_image_in_table] cannot load image file '%s'",fname.c_str());
  }
  int    nc  = nfo->depth/8;
  uchar* ptr = nfo->pixels;
  ForIndex(j, nfo->height) {
    ForIndex(i, nfo->width) {
      uint32_t v = 0;
      ForIndex(c, nc) {
        v = (v << component_depth) | ((*(uint8_t*)(ptr++) >> (8 - component_depth)) & ((1 << component_depth)-1));
      }
      g_LuaOutputs[L] << std::to_string(v) << ",";
    }
  }
  delete[](nfo->pixels);
  if (nfo->colormap) {
    delete[](nfo->colormap);
  }
  delete (nfo);
}

static void lua_write_image_in_table_simple(lua_State* L, std::string str)
{
  lua_write_image_in_table(L, str, 8);
}

// -------------------------------------------------

static void lua_write_palette_in_table(lua_State* L, std::string str, int component_depth)
{
  auto P = g_LuaPreProcessors.find(L);
  if (P == g_LuaPreProcessors.end()) {
    throw Fatal("[write_palette_in_table] internal error");
  }
  if (component_depth < 0 || component_depth > 8) {
    throw Fatal("[write_palette_in_table] component depth can only in ]0,8]");
  }
  LuaPreProcessor *lpp = P->second;
  std::string      fname = lpp->findFile(str);
  t_image_nfo* nfo = ReadTGAFile(fname.c_str());
  if (nfo == NULL) {
    throw Fatal("[write_palette_in_table] cannot load image file '%s'", fname.c_str());
  }
  if (nfo->colormap == NULL) {
    throw Fatal("[write_palette_in_table] image file '%s' has no palette", fname.c_str());
  }
  if (nfo->depth != 8) {
    throw Fatal("[write_palette_in_table] image file '%s' palette is not 8 bits", fname.c_str());
  }
  uchar* ptr = nfo->colormap;
  ForIndex(idx, 256) {
      uint32_t v = 0;
      ForIndex(c, 3) {
        v = (v << component_depth) | ((*(uint8_t*)(ptr++) >> (8 - component_depth)) & ((1 << component_depth) - 1));
      }
      g_LuaOutputs[L] << std::to_string(v) << ",";
  }
  delete[](nfo->pixels);
  if (nfo->colormap) {
    delete[](nfo->colormap);
  }
  delete (nfo);
}

// -------------------------------------------------

static void lua_write_palette_in_table_simple(lua_State* L, std::string str)
{
  lua_write_palette_in_table(L, str, 8);
}

// -------------------------------------------------

static luabind::object lua_get_palette_as_table(lua_State* L, std::string str, int component_depth)
{
  auto P = g_LuaPreProcessors.find(L);
  if (P == g_LuaPreProcessors.end()) {
    throw Fatal("[get_palette_as_table] internal error");
  }
  if (component_depth < 0 || component_depth > 8) {
    throw Fatal("[get_palette_as_table] component depth can only in ]0,8]");
  }
  LuaPreProcessor *lpp = P->second;
  std::string      fname = lpp->findFile(str);
  t_image_nfo* nfo = ReadTGAFile(fname.c_str());
  if (nfo == NULL) {
    throw Fatal("[get_palette_as_table] cannot load image file '%s'", fname.c_str());
  }
  if (nfo->colormap == NULL) {
    throw Fatal("[get_palette_as_table] image file '%s' has no palette", fname.c_str());
  }
  if (nfo->depth != 8) {
    throw Fatal("[get_palette_as_table] image file '%s' palette is not 8 bits", fname.c_str());
  }
  luabind::object ltbl = luabind::newtable(L);
  uchar* ptr = nfo->colormap;
  ForIndex(idx, 256) {
    uint32_t v = 0;
    ForIndex(c, 3) {
      v = (v << component_depth) | ((*(uint8_t*)(ptr++) >> (8 - component_depth)) & ((1 << component_depth) - 1));
    }
    ltbl[1 + idx] = v;
  }
  delete[](nfo->pixels);
  if (nfo->colormap) {
    delete[](nfo->colormap);
  }
  delete (nfo);
  return ltbl;
}

// -------------------------------------------------

static luabind::object lua_get_palette_as_table_simple(lua_State *L, std::string str)
{
  return lua_get_palette_as_table(L, str, 8);
}

// -------------------------------------------------

void lua_save_table_as_image(lua_State *L, luabind::object tbl, std::string fname)
{
  try {
    int i = 0, j = 0;
    int w = 0, h = 0;
    // width / height
    for (luabind::iterator row(tbl), end; row != end; row++) {
      int ncol = 0;
      for (luabind::iterator col(*row), end; col != end; col++) {
        ++ncol;
      }
      if (w != 0 && w != ncol) {
        throw Fatal("[save_table_as_image] row %d does not have the same size as previous", j);
      }
      w = ncol;
      ++h;
      ++j;
    }
    // pixels
    ImageRGB img(w,h);
    j = 0;
    for (luabind::iterator row(tbl), end; row != end; row++) {
      i = 0;
      for (luabind::iterator col(*row), end; col != end; col++) {
        int pix = luabind::object_cast_nothrow<int>(*col,0);
        img.pixel(i, j) = v3b((pix>>16)&255,(pix>>8)&255,(pix)&255);
        ++i;
      }
      ++j;
    }
    // save
    saveImage(fname.c_str(), &img);
  } catch (Fatal& f) {
    luaL_error(L,f.message());
  }
}

// -------------------------------------------------

int lua_lshift(int n,int s)
{
  return n << s;
}

int lua_rshift(int n, int s)
{
  return n >> s;
}

// -------------------------------------------------

static void bindScript(lua_State *L)
{
  luabind::open(L);

  luaL_openlibs(L);

  luabind::module(L)
    [
      luabind::def("print",         &lua_print),
      luabind::def("error",         &lua_preproc_error),
      luabind::def("output",        &lua_output),
      luabind::def("write_image_in_table",   &lua_write_image_in_table),
      luabind::def("write_image_in_table",   &lua_write_image_in_table_simple),
      luabind::def("write_palette_in_table", &lua_write_palette_in_table),
      luabind::def("write_palette_in_table", &lua_write_palette_in_table_simple),
      luabind::def("get_palette_as_table",   &lua_get_palette_as_table),
      luabind::def("save_table_as_image",    &lua_save_table_as_image),
      luabind::def("lshift",        &lua_lshift),
      luabind::def("rshift",        &lua_rshift)
    ];
}

// -------------------------------------------------

static std::string luaProtectString(std::string str)
{
  str = regex_replace(str, regex("\'"), "\\'");
  return str;
}

// -------------------------------------------------

std::string robustExtractPath(const std::string& path)
{
  // search for last '\\' or '/'
  size_t pos0 = path.rfind("\\");
  size_t pos1 = path.rfind("/");
  size_t pos;
  if (pos0 == string::npos) {
    pos = pos1;
  } else if (pos1 == string::npos) {
    pos = pos0;
  } else {
    pos = max(pos0, pos1);
  }
  if (pos == string::npos) {
    return path;
  }
  string dname = path.substr(0, pos);
  return dname;
}

// -------------------------------------------------

std::string LuaPreProcessor::processCode(
  std::string parent_path,
  std::string src_file,
  std::unordered_set<std::string> alreadyIncluded)
{
  cerr << "preprocessing " << src_file << '.' << endl;
  if (!LibSL::System::File::exists(src_file.c_str())) {
    throw Fatal("cannot find source file '%s'", src_file.c_str());
  }
  if (alreadyIncluded.find(src_file) != alreadyIncluded.end()) {
    throw Fatal("source file '%s' already included (cyclic dependency)", src_file.c_str());
  }

  // add to already included
  alreadyIncluded.insert(src_file);

  // extract path
  std::string fpath = robustExtractPath(src_file);
  if (fpath == src_file) {
    fpath = ".";
  }
  // std::string path  = parent_path + fpath;
  std::string path = fpath;
  //cerr << "parent_path: " << parent_path << endl;
  //cerr << "path:        " << path << endl;

  m_SearchPaths.push_back(path);

  ifstream          file(src_file);

  ANTLRInputStream  input(file);
  lppLexer          lexer(&input);
  CommonTokenStream tokens(&lexer);
  lppParser         parser(&tokens);

  std::string code = "";

  for (auto l : parser.root()->line()) {
    if (l->lualine() != nullptr) {
      code += l->lualine()->code->getText() + "\n";
    } else if (l->siliceline() != nullptr) {
      code += "output('";
      for (auto c : l->siliceline()->children) {
        auto silcode = dynamic_cast<lppParser::SilicecodeContext*>(c);
        auto luacode = dynamic_cast<lppParser::LuacodeContext*>(c);
        if (silcode) {
          code += luaProtectString(silcode->getText());
        }
        if (luacode) {
          code += "' .. (" + luacode->code->getText() + ") .. '";
        }
      }
      code += "\\n')\n";
    } else if (l->siliceincl() != nullptr) {
      std::string filename = l->siliceincl()->filename->getText();
      std::regex  lfname_regex("\\s*\\(\\s*\\'([a-zA-Z_0-9\\./]+)\\'\\s*\\)\\s*");
      std::smatch matches;
      if (std::regex_match(filename, matches, lfname_regex)) {
        std::string fname = matches.str(1).c_str();
        fname             = findFile(path, fname);
        fname             = findFile(fname);
        // recurse
        code += "\n" + processCode(path + "/",fname, alreadyIncluded) + "\n";
      }

    }
  }

  return code;
}

// -------------------------------------------------

void LuaPreProcessor::run(std::string src_file, std::string header_code, std::string dst_file)
{
  lua_State *L = luaL_newstate();

  g_LuaOutputs.insert(std::make_pair(L, ofstream(dst_file)));
  g_LuaPreProcessors.insert(std::make_pair(L, this));

  // bind intrisics
  bindScript(L);

  // bind definitions
  for (auto dv : m_Definitions) {
    luabind::globals(L)[dv.first] = dv.second;
  }

  // get code
  std::unordered_set<std::string> inclusions;
  std::string code = 
    header_code +
    processCode("", src_file, inclusions);

  int ret = luaL_dostring(L, code.c_str());
  if (ret) {
    char str[4096];
    int errline = -1;
    std::string errmsg = lua_tostring(L, -1);
    snprintf(str, 4049, "[[LUA]exit] %s", errmsg.c_str());
    std::regex  lnum_regex(".*\\:([[:digit:]]+)\\:(.*)");
    std::smatch matches;
    if (std::regex_match(errmsg, matches, lnum_regex)) {
      errline = atoi(matches.str(1).c_str());
      errmsg  = matches.str(2).c_str();
    }
    cerr << "[preprocessor] ";
    cerr << Console::yellow;
    if (errline > -1) {
      cerr << errline << "] " << errmsg << endl;
    } else {
      cerr << errmsg << endl;
    }
    cerr << Console::gray;
  }

  g_LuaOutputs.at(L).close();
  g_LuaOutputs.erase(L);
  g_LuaPreProcessors.erase(L);

  lua_close(L);

}

// -------------------------------------------------
