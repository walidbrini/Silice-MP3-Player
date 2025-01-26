
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00007097          	auipc	ra,0x7
       8:	774080e7          	jalr	1908(ra) # 7778 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <welcome_screen>:
      1c:	fe010113          	add	sp,sp,-32 # ffe0 <board+0x2e04>
      20:	00912a23          	sw	s1,20(sp)
      24:	00007537          	lui	a0,0x7
      28:	000074b7          	lui	s1,0x7
      2c:	33448593          	add	a1,s1,820 # 7334 <font+0x214>
      30:	33850513          	add	a0,a0,824 # 7338 <font+0x218>
      34:	00112e23          	sw	ra,28(sp)
      38:	00812c23          	sw	s0,24(sp)
      3c:	01212823          	sw	s2,16(sp)
      40:	01312623          	sw	s3,12(sp)
      44:	00005097          	auipc	ra,0x5
      48:	544080e7          	jalr	1348(ra) # 5588 <fl_fopen>
      4c:	06051463          	bnez	a0,b4 <welcome_screen+0x98>
      50:	00007537          	lui	a0,0x7
      54:	35450513          	add	a0,a0,852 # 7354 <font+0x234>
      58:	00001097          	auipc	ra,0x1
      5c:	038080e7          	jalr	56(ra) # 1090 <printf>
      60:	00001097          	auipc	ra,0x1
      64:	db4080e7          	jalr	-588(ra) # e14 <display_refresh>
      68:	00007537          	lui	a0,0x7
      6c:	33448593          	add	a1,s1,820
      70:	37050513          	add	a0,a0,880 # 7370 <font+0x250>
      74:	00005097          	auipc	ra,0x5
      78:	514080e7          	jalr	1300(ra) # 5588 <fl_fopen>
      7c:	00050413          	mv	s0,a0
      80:	06051a63          	bnez	a0,f4 <welcome_screen+0xd8>
      84:	00007537          	lui	a0,0x7
      88:	38c50513          	add	a0,a0,908 # 738c <font+0x26c>
      8c:	00001097          	auipc	ra,0x1
      90:	004080e7          	jalr	4(ra) # 1090 <printf>
      94:	01812403          	lw	s0,24(sp)
      98:	01c12083          	lw	ra,28(sp)
      9c:	01412483          	lw	s1,20(sp)
      a0:	01012903          	lw	s2,16(sp)
      a4:	00c12983          	lw	s3,12(sp)
      a8:	02010113          	add	sp,sp,32
      ac:	00001317          	auipc	t1,0x1
      b0:	d6830067          	jr	-664(t1) # e14 <display_refresh>
      b4:	00050413          	mv	s0,a0
      b8:	00001097          	auipc	ra,0x1
      bc:	d5c080e7          	jalr	-676(ra) # e14 <display_refresh>
      c0:	00001097          	auipc	ra,0x1
      c4:	c08080e7          	jalr	-1016(ra) # cc8 <display_framebuffer>
      c8:	00040693          	mv	a3,s0
      cc:	00004637          	lui	a2,0x4
      d0:	00100593          	li	a1,1
      d4:	00005097          	auipc	ra,0x5
      d8:	b24080e7          	jalr	-1244(ra) # 4bf8 <fl_fread>
      dc:	00001097          	auipc	ra,0x1
      e0:	d38080e7          	jalr	-712(ra) # e14 <display_refresh>
      e4:	00040513          	mv	a0,s0
      e8:	00005097          	auipc	ra,0x5
      ec:	a30080e7          	jalr	-1488(ra) # 4b18 <fl_fclose>
      f0:	f79ff06f          	j	68 <welcome_screen+0x4c>
      f4:	0ff00593          	li	a1,255
      f8:	00000513          	li	a0,0
      fc:	00001097          	auipc	ra,0x1
     100:	bec080e7          	jalr	-1044(ra) # ce8 <display_set_front_back_color>
     104:	00001097          	auipc	ra,0x1
     108:	d10080e7          	jalr	-752(ra) # e14 <display_refresh>
     10c:	00000593          	li	a1,0
     110:	0ff00513          	li	a0,255
     114:	00001097          	auipc	ra,0x1
     118:	bd4080e7          	jalr	-1068(ra) # ce8 <display_set_front_back_color>
     11c:	00001097          	auipc	ra,0x1
     120:	cf8080e7          	jalr	-776(ra) # e14 <display_refresh>
     124:	000077b7          	lui	a5,0x7
     128:	1007a483          	lw	s1,256(a5) # 7100 <AUDIO>
     12c:	1ff00993          	li	s3,511
     130:	0004a903          	lw	s2,0(s1)
     134:	00040693          	mv	a3,s0
     138:	20000613          	li	a2,512
     13c:	00100593          	li	a1,1
     140:	00090513          	mv	a0,s2
     144:	00005097          	auipc	ra,0x5
     148:	ab4080e7          	jalr	-1356(ra) # 4bf8 <fl_fread>
     14c:	00a9d863          	bge	s3,a0,15c <welcome_screen+0x140>
     150:	0004a783          	lw	a5,0(s1)
     154:	fef90ee3          	beq	s2,a5,150 <welcome_screen+0x134>
     158:	fd9ff06f          	j	130 <welcome_screen+0x114>
     15c:	00006097          	auipc	ra,0x6
     160:	308080e7          	jalr	776(ra) # 6464 <clearAudioBuffer>
     164:	00040513          	mv	a0,s0
     168:	01812403          	lw	s0,24(sp)
     16c:	01c12083          	lw	ra,28(sp)
     170:	01412483          	lw	s1,20(sp)
     174:	01012903          	lw	s2,16(sp)
     178:	00c12983          	lw	s3,12(sp)
     17c:	02010113          	add	sp,sp,32
     180:	00005317          	auipc	t1,0x5
     184:	99830067          	jr	-1640(t1) # 4b18 <fl_fclose>

00000188 <checkEasterEgg>:
     188:	000077b7          	lui	a5,0x7
     18c:	1087a703          	lw	a4,264(a5) # 7108 <BUTTONS>
     190:	00072783          	lw	a5,0(a4)
     194:	0087f793          	and	a5,a5,8
     198:	00078c63          	beqz	a5,1b0 <checkEasterEgg+0x28>
     19c:	00072783          	lw	a5,0(a4)
     1a0:	0107f793          	and	a5,a5,16
     1a4:	00078663          	beqz	a5,1b0 <checkEasterEgg+0x28>
     1a8:	00006317          	auipc	t1,0x6
     1ac:	16030067          	jr	352(t1) # 6308 <startTicTacToe>
     1b0:	00008067          	ret

000001b4 <pause>:
     1b4:	c0002773          	rdcycle	a4
     1b8:	c00027f3          	rdcycle	a5
     1bc:	40e787b3          	sub	a5,a5,a4
     1c0:	fea7ece3          	bltu	a5,a0,1b8 <pause+0x4>
     1c4:	00008067          	ret

000001c8 <sdcard_idle>:
     1c8:	00008067          	ret

000001cc <sdcard_select>:
     1cc:	000077b7          	lui	a5,0x7
     1d0:	10c7a783          	lw	a5,268(a5) # 710c <SDCARD>
     1d4:	00200713          	li	a4,2
     1d8:	00e7a023          	sw	a4,0(a5)
     1dc:	00008067          	ret

000001e0 <sdcard_ponder>:
     1e0:	000076b7          	lui	a3,0x7
     1e4:	10c6a683          	lw	a3,268(a3) # 710c <SDCARD>
     1e8:	01000793          	li	a5,16
     1ec:	00000713          	li	a4,0
     1f0:	00676613          	or	a2,a4,6
     1f4:	00c6a023          	sw	a2,0(a3)
     1f8:	00174713          	xor	a4,a4,1
     1fc:	00000013          	nop
     200:	fff78793          	add	a5,a5,-1
     204:	fe0796e3          	bnez	a5,1f0 <sdcard_ponder+0x10>
     208:	00008067          	ret

0000020c <sdcard_unselect>:
     20c:	000077b7          	lui	a5,0x7
     210:	10c7a783          	lw	a5,268(a5) # 710c <SDCARD>
     214:	00600713          	li	a4,6
     218:	00e7a023          	sw	a4,0(a5)
     21c:	00008067          	ret

00000220 <sdcard_send>:
     220:	000077b7          	lui	a5,0x7
     224:	10c7a783          	lw	a5,268(a5) # 710c <SDCARD>
     228:	00655713          	srl	a4,a0,0x6
     22c:	00277713          	and	a4,a4,2
     230:	00e7a023          	sw	a4,0(a5)
     234:	00176713          	or	a4,a4,1
     238:	00e7a023          	sw	a4,0(a5)
     23c:	00555713          	srl	a4,a0,0x5
     240:	00277713          	and	a4,a4,2
     244:	00e7a023          	sw	a4,0(a5)
     248:	00176713          	or	a4,a4,1
     24c:	00e7a023          	sw	a4,0(a5)
     250:	00455713          	srl	a4,a0,0x4
     254:	00277713          	and	a4,a4,2
     258:	00e7a023          	sw	a4,0(a5)
     25c:	00176713          	or	a4,a4,1
     260:	00e7a023          	sw	a4,0(a5)
     264:	00355713          	srl	a4,a0,0x3
     268:	00277713          	and	a4,a4,2
     26c:	00e7a023          	sw	a4,0(a5)
     270:	00176713          	or	a4,a4,1
     274:	00e7a023          	sw	a4,0(a5)
     278:	00255713          	srl	a4,a0,0x2
     27c:	00277713          	and	a4,a4,2
     280:	00e7a023          	sw	a4,0(a5)
     284:	00176713          	or	a4,a4,1
     288:	00e7a023          	sw	a4,0(a5)
     28c:	00155713          	srl	a4,a0,0x1
     290:	00277713          	and	a4,a4,2
     294:	00e7a023          	sw	a4,0(a5)
     298:	00176713          	or	a4,a4,1
     29c:	00e7a023          	sw	a4,0(a5)
     2a0:	00257713          	and	a4,a0,2
     2a4:	00e7a023          	sw	a4,0(a5)
     2a8:	00151513          	sll	a0,a0,0x1
     2ac:	00176713          	or	a4,a4,1
     2b0:	00e7a023          	sw	a4,0(a5)
     2b4:	00257513          	and	a0,a0,2
     2b8:	00a7a023          	sw	a0,0(a5)
     2bc:	00156513          	or	a0,a0,1
     2c0:	00a7a023          	sw	a0,0(a5)
     2c4:	00200713          	li	a4,2
     2c8:	00e7a023          	sw	a4,0(a5)
     2cc:	000077b7          	lui	a5,0x7
     2d0:	7387a783          	lw	a5,1848(a5) # 7738 <sdcard_while_loading_callback>
     2d4:	00078067          	jr	a5

000002d8 <sdcard_read>:
     2d8:	fd010113          	add	sp,sp,-48
     2dc:	fff50793          	add	a5,a0,-1
     2e0:	01312e23          	sw	s3,28(sp)
     2e4:	00100993          	li	s3,1
     2e8:	00f999b3          	sll	s3,s3,a5
     2ec:	000077b7          	lui	a5,0x7
     2f0:	01512a23          	sw	s5,20(sp)
     2f4:	10c7aa83          	lw	s5,268(a5) # 710c <SDCARD>
     2f8:	02812423          	sw	s0,40(sp)
     2fc:	02912223          	sw	s1,36(sp)
     300:	03212023          	sw	s2,32(sp)
     304:	01412c23          	sw	s4,24(sp)
     308:	01612823          	sw	s6,16(sp)
     30c:	01712623          	sw	s7,12(sp)
     310:	01812423          	sw	s8,8(sp)
     314:	02112623          	sw	ra,44(sp)
     318:	00050493          	mv	s1,a0
     31c:	00058a13          	mv	s4,a1
     320:	0ff00413          	li	s0,255
     324:	00000913          	li	s2,0
     328:	00300b13          	li	s6,3
     32c:	00200b93          	li	s7,2
     330:	00007c37          	lui	s8,0x7
     334:	040a0063          	beqz	s4,374 <sdcard_read+0x9c>
     338:	013477b3          	and	a5,s0,s3
     33c:	02079e63          	bnez	a5,378 <sdcard_read+0xa0>
     340:	02c12083          	lw	ra,44(sp)
     344:	0ff47513          	zext.b	a0,s0
     348:	02812403          	lw	s0,40(sp)
     34c:	02412483          	lw	s1,36(sp)
     350:	02012903          	lw	s2,32(sp)
     354:	01c12983          	lw	s3,28(sp)
     358:	01812a03          	lw	s4,24(sp)
     35c:	01412a83          	lw	s5,20(sp)
     360:	01012b03          	lw	s6,16(sp)
     364:	00c12b83          	lw	s7,12(sp)
     368:	00812c03          	lw	s8,8(sp)
     36c:	03010113          	add	sp,sp,48
     370:	00008067          	ret
     374:	fc9956e3          	bge	s2,s1,340 <sdcard_read+0x68>
     378:	016aa023          	sw	s6,0(s5)
     37c:	017aa023          	sw	s7,0(s5)
     380:	000aa783          	lw	a5,0(s5)
     384:	00141413          	sll	s0,s0,0x1
     388:	00190913          	add	s2,s2,1
     38c:	00f46433          	or	s0,s0,a5
     390:	738c2783          	lw	a5,1848(s8) # 7738 <sdcard_while_loading_callback>
     394:	000780e7          	jalr	a5
     398:	f9dff06f          	j	334 <sdcard_read+0x5c>

0000039c <sdcard_get>:
     39c:	fe010113          	add	sp,sp,-32
     3a0:	00112e23          	sw	ra,28(sp)
     3a4:	00812c23          	sw	s0,24(sp)
     3a8:	00912a23          	sw	s1,20(sp)
     3ac:	00050413          	mv	s0,a0
     3b0:	00b12623          	sw	a1,12(sp)
     3b4:	00000097          	auipc	ra,0x0
     3b8:	e18080e7          	jalr	-488(ra) # 1cc <sdcard_select>
     3bc:	00c12583          	lw	a1,12(sp)
     3c0:	00040513          	mv	a0,s0
     3c4:	00100493          	li	s1,1
     3c8:	00000097          	auipc	ra,0x0
     3cc:	f10080e7          	jalr	-240(ra) # 2d8 <sdcard_read>
     3d0:	00345413          	srl	s0,s0,0x3
     3d4:	0284c463          	blt	s1,s0,3fc <sdcard_get+0x60>
     3d8:	00a12623          	sw	a0,12(sp)
     3dc:	00000097          	auipc	ra,0x0
     3e0:	e30080e7          	jalr	-464(ra) # 20c <sdcard_unselect>
     3e4:	01c12083          	lw	ra,28(sp)
     3e8:	01812403          	lw	s0,24(sp)
     3ec:	00c12503          	lw	a0,12(sp)
     3f0:	01412483          	lw	s1,20(sp)
     3f4:	02010113          	add	sp,sp,32
     3f8:	00008067          	ret
     3fc:	00000593          	li	a1,0
     400:	00800513          	li	a0,8
     404:	00000097          	auipc	ra,0x0
     408:	ed4080e7          	jalr	-300(ra) # 2d8 <sdcard_read>
     40c:	00148493          	add	s1,s1,1
     410:	fc5ff06f          	j	3d4 <sdcard_get+0x38>

00000414 <sdcard_cmd>:
     414:	ff010113          	add	sp,sp,-16
     418:	00812423          	sw	s0,8(sp)
     41c:	00912223          	sw	s1,4(sp)
     420:	01212023          	sw	s2,0(sp)
     424:	00112623          	sw	ra,12(sp)
     428:	00050493          	mv	s1,a0
     42c:	00000413          	li	s0,0
     430:	00000097          	auipc	ra,0x0
     434:	d9c080e7          	jalr	-612(ra) # 1cc <sdcard_select>
     438:	00600913          	li	s2,6
     43c:	008487b3          	add	a5,s1,s0
     440:	0007c503          	lbu	a0,0(a5)
     444:	00140413          	add	s0,s0,1
     448:	00000097          	auipc	ra,0x0
     44c:	dd8080e7          	jalr	-552(ra) # 220 <sdcard_send>
     450:	ff2416e3          	bne	s0,s2,43c <sdcard_cmd+0x28>
     454:	00812403          	lw	s0,8(sp)
     458:	00c12083          	lw	ra,12(sp)
     45c:	00412483          	lw	s1,4(sp)
     460:	00012903          	lw	s2,0(sp)
     464:	01010113          	add	sp,sp,16
     468:	00000317          	auipc	t1,0x0
     46c:	da430067          	jr	-604(t1) # 20c <sdcard_unselect>

00000470 <sdcard_start_sector>:
     470:	ff010113          	add	sp,sp,-16
     474:	00112623          	sw	ra,12(sp)
     478:	00812423          	sw	s0,8(sp)
     47c:	00050413          	mv	s0,a0
     480:	00000097          	auipc	ra,0x0
     484:	d4c080e7          	jalr	-692(ra) # 1cc <sdcard_select>
     488:	05100513          	li	a0,81
     48c:	00000097          	auipc	ra,0x0
     490:	d94080e7          	jalr	-620(ra) # 220 <sdcard_send>
     494:	01845513          	srl	a0,s0,0x18
     498:	00000097          	auipc	ra,0x0
     49c:	d88080e7          	jalr	-632(ra) # 220 <sdcard_send>
     4a0:	41045513          	sra	a0,s0,0x10
     4a4:	0ff57513          	zext.b	a0,a0
     4a8:	00000097          	auipc	ra,0x0
     4ac:	d78080e7          	jalr	-648(ra) # 220 <sdcard_send>
     4b0:	40845513          	sra	a0,s0,0x8
     4b4:	0ff57513          	zext.b	a0,a0
     4b8:	00000097          	auipc	ra,0x0
     4bc:	d68080e7          	jalr	-664(ra) # 220 <sdcard_send>
     4c0:	0ff47513          	zext.b	a0,s0
     4c4:	00000097          	auipc	ra,0x0
     4c8:	d5c080e7          	jalr	-676(ra) # 220 <sdcard_send>
     4cc:	05500513          	li	a0,85
     4d0:	00000097          	auipc	ra,0x0
     4d4:	d50080e7          	jalr	-688(ra) # 220 <sdcard_send>
     4d8:	00000097          	auipc	ra,0x0
     4dc:	d34080e7          	jalr	-716(ra) # 20c <sdcard_unselect>
     4e0:	00812403          	lw	s0,8(sp)
     4e4:	00c12083          	lw	ra,12(sp)
     4e8:	00100593          	li	a1,1
     4ec:	00800513          	li	a0,8
     4f0:	01010113          	add	sp,sp,16
     4f4:	00000317          	auipc	t1,0x0
     4f8:	ea830067          	jr	-344(t1) # 39c <sdcard_get>

000004fc <sdcard_read_sector>:
     4fc:	ff010113          	add	sp,sp,-16
     500:	00812423          	sw	s0,8(sp)
     504:	00112623          	sw	ra,12(sp)
     508:	00912223          	sw	s1,4(sp)
     50c:	01212023          	sw	s2,0(sp)
     510:	00058413          	mv	s0,a1
     514:	00000097          	auipc	ra,0x0
     518:	f5c080e7          	jalr	-164(ra) # 470 <sdcard_start_sector>
     51c:	04051863          	bnez	a0,56c <sdcard_read_sector+0x70>
     520:	00100593          	li	a1,1
     524:	00058513          	mv	a0,a1
     528:	00000097          	auipc	ra,0x0
     52c:	e74080e7          	jalr	-396(ra) # 39c <sdcard_get>
     530:	00000493          	li	s1,0
     534:	20000913          	li	s2,512
     538:	00000593          	li	a1,0
     53c:	00800513          	li	a0,8
     540:	00000097          	auipc	ra,0x0
     544:	e5c080e7          	jalr	-420(ra) # 39c <sdcard_get>
     548:	009407b3          	add	a5,s0,s1
     54c:	00a78023          	sb	a0,0(a5)
     550:	00148493          	add	s1,s1,1
     554:	ff2492e3          	bne	s1,s2,538 <sdcard_read_sector+0x3c>
     558:	00100593          	li	a1,1
     55c:	01000513          	li	a0,16
     560:	20040413          	add	s0,s0,512
     564:	00000097          	auipc	ra,0x0
     568:	e38080e7          	jalr	-456(ra) # 39c <sdcard_get>
     56c:	00c12083          	lw	ra,12(sp)
     570:	00040513          	mv	a0,s0
     574:	00812403          	lw	s0,8(sp)
     578:	00412483          	lw	s1,4(sp)
     57c:	00012903          	lw	s2,0(sp)
     580:	01010113          	add	sp,sp,16
     584:	00008067          	ret

00000588 <sdcard_preinit>:
     588:	ff010113          	add	sp,sp,-16
     58c:	000077b7          	lui	a5,0x7
     590:	00812423          	sw	s0,8(sp)
     594:	10c7a403          	lw	s0,268(a5) # 710c <SDCARD>
     598:	00112623          	sw	ra,12(sp)
     59c:	00600793          	li	a5,6
     5a0:	01313537          	lui	a0,0x1313
     5a4:	00f42023          	sw	a5,0(s0)
     5a8:	d0050513          	add	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     5ac:	00000097          	auipc	ra,0x0
     5b0:	c08080e7          	jalr	-1016(ra) # 1b4 <pause>
     5b4:	0a000793          	li	a5,160
     5b8:	00000713          	li	a4,0
     5bc:	00676693          	or	a3,a4,6
     5c0:	00d42023          	sw	a3,0(s0)
     5c4:	fff78793          	add	a5,a5,-1
     5c8:	00174713          	xor	a4,a4,1
     5cc:	fe0798e3          	bnez	a5,5bc <sdcard_preinit+0x34>
     5d0:	00600793          	li	a5,6
     5d4:	00c12083          	lw	ra,12(sp)
     5d8:	00f42023          	sw	a5,0(s0)
     5dc:	00812403          	lw	s0,8(sp)
     5e0:	01010113          	add	sp,sp,16
     5e4:	00008067          	ret

000005e8 <sdcard_init>:
     5e8:	000007b7          	lui	a5,0x0
     5ec:	ff010113          	add	sp,sp,-16
     5f0:	00007737          	lui	a4,0x7
     5f4:	1c878793          	add	a5,a5,456 # 1c8 <sdcard_idle>
     5f8:	00912223          	sw	s1,4(sp)
     5fc:	01212023          	sw	s2,0(sp)
     600:	00112623          	sw	ra,12(sp)
     604:	00812423          	sw	s0,8(sp)
     608:	72f72c23          	sw	a5,1848(a4) # 7738 <sdcard_while_loading_callback>
     60c:	000074b7          	lui	s1,0x7
     610:	0ff00913          	li	s2,255
     614:	00000097          	auipc	ra,0x0
     618:	f74080e7          	jalr	-140(ra) # 588 <sdcard_preinit>
     61c:	0f848513          	add	a0,s1,248 # 70f8 <cmd0>
     620:	00000097          	auipc	ra,0x0
     624:	df4080e7          	jalr	-524(ra) # 414 <sdcard_cmd>
     628:	00100593          	li	a1,1
     62c:	00800513          	li	a0,8
     630:	00000097          	auipc	ra,0x0
     634:	d6c080e7          	jalr	-660(ra) # 39c <sdcard_get>
     638:	00050413          	mv	s0,a0
     63c:	00000097          	auipc	ra,0x0
     640:	ba4080e7          	jalr	-1116(ra) # 1e0 <sdcard_ponder>
     644:	01241c63          	bne	s0,s2,65c <sdcard_init+0x74>
     648:	01313537          	lui	a0,0x1313
     64c:	d0050513          	add	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     650:	00000097          	auipc	ra,0x0
     654:	b64080e7          	jalr	-1180(ra) # 1b4 <pause>
     658:	fbdff06f          	j	614 <sdcard_init+0x2c>
     65c:	00007537          	lui	a0,0x7
     660:	0f050513          	add	a0,a0,240 # 70f0 <cmd8>
     664:	00000097          	auipc	ra,0x0
     668:	db0080e7          	jalr	-592(ra) # 414 <sdcard_cmd>
     66c:	00100593          	li	a1,1
     670:	02800513          	li	a0,40
     674:	00000097          	auipc	ra,0x0
     678:	d28080e7          	jalr	-728(ra) # 39c <sdcard_get>
     67c:	00000097          	auipc	ra,0x0
     680:	b64080e7          	jalr	-1180(ra) # 1e0 <sdcard_ponder>
     684:	000074b7          	lui	s1,0x7
     688:	00007937          	lui	s2,0x7
     68c:	0e848513          	add	a0,s1,232 # 70e8 <cmd55>
     690:	00000097          	auipc	ra,0x0
     694:	d84080e7          	jalr	-636(ra) # 414 <sdcard_cmd>
     698:	00100593          	li	a1,1
     69c:	00800513          	li	a0,8
     6a0:	00000097          	auipc	ra,0x0
     6a4:	cfc080e7          	jalr	-772(ra) # 39c <sdcard_get>
     6a8:	00000097          	auipc	ra,0x0
     6ac:	b38080e7          	jalr	-1224(ra) # 1e0 <sdcard_ponder>
     6b0:	0e090513          	add	a0,s2,224 # 70e0 <acmd41>
     6b4:	00000097          	auipc	ra,0x0
     6b8:	d60080e7          	jalr	-672(ra) # 414 <sdcard_cmd>
     6bc:	00100593          	li	a1,1
     6c0:	00800513          	li	a0,8
     6c4:	00000097          	auipc	ra,0x0
     6c8:	cd8080e7          	jalr	-808(ra) # 39c <sdcard_get>
     6cc:	00050413          	mv	s0,a0
     6d0:	00000097          	auipc	ra,0x0
     6d4:	b10080e7          	jalr	-1264(ra) # 1e0 <sdcard_ponder>
     6d8:	00040c63          	beqz	s0,6f0 <sdcard_init+0x108>
     6dc:	001e8537          	lui	a0,0x1e8
     6e0:	48050513          	add	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     6e4:	00000097          	auipc	ra,0x0
     6e8:	ad0080e7          	jalr	-1328(ra) # 1b4 <pause>
     6ec:	fa1ff06f          	j	68c <sdcard_init+0xa4>
     6f0:	00007537          	lui	a0,0x7
     6f4:	0d850513          	add	a0,a0,216 # 70d8 <cmd16>
     6f8:	00000097          	auipc	ra,0x0
     6fc:	d1c080e7          	jalr	-740(ra) # 414 <sdcard_cmd>
     700:	00100593          	li	a1,1
     704:	00800513          	li	a0,8
     708:	00000097          	auipc	ra,0x0
     70c:	c94080e7          	jalr	-876(ra) # 39c <sdcard_get>
     710:	00812403          	lw	s0,8(sp)
     714:	00c12083          	lw	ra,12(sp)
     718:	00412483          	lw	s1,4(sp)
     71c:	00012903          	lw	s2,0(sp)
     720:	01010113          	add	sp,sp,16
     724:	00000317          	auipc	t1,0x0
     728:	abc30067          	jr	-1348(t1) # 1e0 <sdcard_ponder>

0000072c <sdcard_readsector>:
     72c:	04060663          	beqz	a2,778 <sdcard_readsector+0x4c>
     730:	ff010113          	add	sp,sp,-16
     734:	00812423          	sw	s0,8(sp)
     738:	00912223          	sw	s1,4(sp)
     73c:	00112623          	sw	ra,12(sp)
     740:	00050413          	mv	s0,a0
     744:	00a604b3          	add	s1,a2,a0
     748:	00040513          	mv	a0,s0
     74c:	00000097          	auipc	ra,0x0
     750:	db0080e7          	jalr	-592(ra) # 4fc <sdcard_read_sector>
     754:	00140413          	add	s0,s0,1
     758:	00050593          	mv	a1,a0
     75c:	fe9416e3          	bne	s0,s1,748 <sdcard_readsector+0x1c>
     760:	00c12083          	lw	ra,12(sp)
     764:	00812403          	lw	s0,8(sp)
     768:	00412483          	lw	s1,4(sp)
     76c:	00100513          	li	a0,1
     770:	01010113          	add	sp,sp,16
     774:	00008067          	ret
     778:	00000513          	li	a0,0
     77c:	00008067          	ret

00000780 <sdcard_writesector>:
     780:	00000513          	li	a0,0
     784:	00008067          	ret

00000788 <__divsi3>:
     788:	06054063          	bltz	a0,7e8 <__umodsi3+0x10>
     78c:	0605c663          	bltz	a1,7f8 <__umodsi3+0x20>

00000790 <__udivsi3>:
     790:	00058613          	mv	a2,a1
     794:	00050593          	mv	a1,a0
     798:	fff00513          	li	a0,-1
     79c:	02060c63          	beqz	a2,7d4 <__udivsi3+0x44>
     7a0:	00100693          	li	a3,1
     7a4:	00b67a63          	bgeu	a2,a1,7b8 <__udivsi3+0x28>
     7a8:	00c05863          	blez	a2,7b8 <__udivsi3+0x28>
     7ac:	00161613          	sll	a2,a2,0x1
     7b0:	00169693          	sll	a3,a3,0x1
     7b4:	feb66ae3          	bltu	a2,a1,7a8 <__udivsi3+0x18>
     7b8:	00000513          	li	a0,0
     7bc:	00c5e663          	bltu	a1,a2,7c8 <__udivsi3+0x38>
     7c0:	40c585b3          	sub	a1,a1,a2
     7c4:	00d56533          	or	a0,a0,a3
     7c8:	0016d693          	srl	a3,a3,0x1
     7cc:	00165613          	srl	a2,a2,0x1
     7d0:	fe0696e3          	bnez	a3,7bc <__udivsi3+0x2c>
     7d4:	00008067          	ret

000007d8 <__umodsi3>:
     7d8:	00008293          	mv	t0,ra
     7dc:	fb5ff0ef          	jal	790 <__udivsi3>
     7e0:	00058513          	mv	a0,a1
     7e4:	00028067          	jr	t0
     7e8:	40a00533          	neg	a0,a0
     7ec:	0005d863          	bgez	a1,7fc <__umodsi3+0x24>
     7f0:	40b005b3          	neg	a1,a1
     7f4:	f95ff06f          	j	788 <__divsi3>
     7f8:	40b005b3          	neg	a1,a1
     7fc:	00008293          	mv	t0,ra
     800:	f89ff0ef          	jal	788 <__divsi3>
     804:	40a00533          	neg	a0,a0
     808:	00028067          	jr	t0

0000080c <__modsi3>:
     80c:	00008293          	mv	t0,ra
     810:	0005ca63          	bltz	a1,824 <__modsi3+0x18>
     814:	00054c63          	bltz	a0,82c <__modsi3+0x20>
     818:	f79ff0ef          	jal	790 <__udivsi3>
     81c:	00058513          	mv	a0,a1
     820:	00028067          	jr	t0
     824:	40b005b3          	neg	a1,a1
     828:	fe0558e3          	bgez	a0,818 <__modsi3+0xc>
     82c:	40a00533          	neg	a0,a0
     830:	f61ff0ef          	jal	790 <__udivsi3>
     834:	40b00533          	neg	a0,a1
     838:	00028067          	jr	t0

0000083c <uart_putchar>:
     83c:	000077b7          	lui	a5,0x7
     840:	1107a783          	lw	a5,272(a5) # 7110 <UART>
     844:	00a7a023          	sw	a0,0(a5)
     848:	c00026f3          	rdcycle	a3
     84c:	000027b7          	lui	a5,0x2
     850:	70f78793          	add	a5,a5,1807 # 270f <fatfs_compare_names+0x187>
     854:	c0002773          	rdcycle	a4
     858:	40d70733          	sub	a4,a4,a3
     85c:	fee7fce3          	bgeu	a5,a4,854 <uart_putchar+0x18>
     860:	00008067          	ret

00000864 <memset>:
     864:	00c50633          	add	a2,a0,a2
     868:	00050793          	mv	a5,a0
     86c:	00c79463          	bne	a5,a2,874 <memset+0x10>
     870:	00008067          	ret
     874:	00178793          	add	a5,a5,1
     878:	feb78fa3          	sb	a1,-1(a5)
     87c:	ff1ff06f          	j	86c <memset+0x8>

00000880 <memcpy>:
     880:	00000793          	li	a5,0
     884:	00c79463          	bne	a5,a2,88c <memcpy+0xc>
     888:	00008067          	ret
     88c:	00f58733          	add	a4,a1,a5
     890:	00074683          	lbu	a3,0(a4)
     894:	00f50733          	add	a4,a0,a5
     898:	00178793          	add	a5,a5,1
     89c:	00d70023          	sb	a3,0(a4)
     8a0:	fe5ff06f          	j	884 <memcpy+0x4>

000008a4 <strlen>:
     8a4:	00050793          	mv	a5,a0
     8a8:	00000513          	li	a0,0
     8ac:	00a78733          	add	a4,a5,a0
     8b0:	00074703          	lbu	a4,0(a4)
     8b4:	00071463          	bnez	a4,8bc <strlen+0x18>
     8b8:	00008067          	ret
     8bc:	00150513          	add	a0,a0,1
     8c0:	fedff06f          	j	8ac <strlen+0x8>

000008c4 <strncmp>:
     8c4:	00000793          	li	a5,0
     8c8:	00c79663          	bne	a5,a2,8d4 <strncmp+0x10>
     8cc:	00000513          	li	a0,0
     8d0:	00008067          	ret
     8d4:	00f50733          	add	a4,a0,a5
     8d8:	00074683          	lbu	a3,0(a4)
     8dc:	00f58733          	add	a4,a1,a5
     8e0:	00074703          	lbu	a4,0(a4)
     8e4:	00e6e863          	bltu	a3,a4,8f4 <strncmp+0x30>
     8e8:	00d76a63          	bltu	a4,a3,8fc <strncmp+0x38>
     8ec:	00178793          	add	a5,a5,1
     8f0:	fd9ff06f          	j	8c8 <strncmp+0x4>
     8f4:	fff00513          	li	a0,-1
     8f8:	00008067          	ret
     8fc:	00100513          	li	a0,1
     900:	00008067          	ret

00000904 <strncpy>:
     904:	00000793          	li	a5,0
     908:	00c79463          	bne	a5,a2,910 <strncpy+0xc>
     90c:	00008067          	ret
     910:	00f58733          	add	a4,a1,a5
     914:	00074683          	lbu	a3,0(a4)
     918:	00f50733          	add	a4,a0,a5
     91c:	00178793          	add	a5,a5,1
     920:	00d70023          	sb	a3,0(a4)
     924:	fe5ff06f          	j	908 <strncpy+0x4>

00000928 <strcpy>:
     928:	0005c783          	lbu	a5,0(a1)
     92c:	00079663          	bnez	a5,938 <strcpy+0x10>
     930:	00050023          	sb	zero,0(a0)
     934:	00008067          	ret
     938:	00150513          	add	a0,a0,1
     93c:	00158593          	add	a1,a1,1
     940:	fef50fa3          	sb	a5,-1(a0)
     944:	fe5ff06f          	j	928 <strcpy>

00000948 <strcat>:
     948:	00050793          	mv	a5,a0
     94c:	0007c683          	lbu	a3,0(a5)
     950:	00078713          	mv	a4,a5
     954:	00178793          	add	a5,a5,1
     958:	fe069ae3          	bnez	a3,94c <strcat+0x4>
     95c:	0005c783          	lbu	a5,0(a1)
     960:	00158593          	add	a1,a1,1
     964:	00170713          	add	a4,a4,1
     968:	fef70fa3          	sb	a5,-1(a4)
     96c:	fe0798e3          	bnez	a5,95c <strcat+0x14>
     970:	00008067          	ret

00000974 <oled_wait>:
     974:	00000013          	nop
     978:	00000013          	nop
     97c:	00000013          	nop
     980:	00000013          	nop
     984:	00000013          	nop
     988:	00000013          	nop
     98c:	00000013          	nop
     990:	00008067          	ret

00000994 <oled_init_mode>:
     994:	000077b7          	lui	a5,0x7
     998:	1147a703          	lw	a4,276(a5) # 7114 <OLED_RST>
     99c:	ff010113          	add	sp,sp,-16
     9a0:	00912223          	sw	s1,4(sp)
     9a4:	00112623          	sw	ra,12(sp)
     9a8:	00812423          	sw	s0,8(sp)
     9ac:	00072023          	sw	zero,0(a4)
     9b0:	00050493          	mv	s1,a0
     9b4:	00040737          	lui	a4,0x40
     9b8:	00000013          	nop
     9bc:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     9c0:	fe071ce3          	bnez	a4,9b8 <oled_init_mode+0x24>
     9c4:	1147a703          	lw	a4,276(a5)
     9c8:	00100693          	li	a3,1
     9cc:	00d72023          	sw	a3,0(a4)
     9d0:	00040737          	lui	a4,0x40
     9d4:	00000013          	nop
     9d8:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     9dc:	fe071ce3          	bnez	a4,9d4 <oled_init_mode+0x40>
     9e0:	1147a783          	lw	a5,276(a5)
     9e4:	0007a023          	sw	zero,0(a5)
     9e8:	000407b7          	lui	a5,0x40
     9ec:	00000013          	nop
     9f0:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     9f4:	fe079ce3          	bnez	a5,9ec <oled_init_mode+0x58>
     9f8:	00007737          	lui	a4,0x7
     9fc:	11872783          	lw	a5,280(a4) # 7118 <OLED>
     a00:	2af00693          	li	a3,687
     a04:	00d7a023          	sw	a3,0(a5)
     a08:	000407b7          	lui	a5,0x40
     a0c:	00000013          	nop
     a10:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     a14:	fe079ce3          	bnez	a5,a0c <oled_init_mode+0x78>
     a18:	11872403          	lw	s0,280(a4)
     a1c:	2a000793          	li	a5,672
     a20:	00f42023          	sw	a5,0(s0)
     a24:	00000097          	auipc	ra,0x0
     a28:	f50080e7          	jalr	-176(ra) # 974 <oled_wait>
     a2c:	4a000793          	li	a5,1184
     a30:	00048463          	beqz	s1,a38 <oled_init_mode+0xa4>
     a34:	42000793          	li	a5,1056
     a38:	00f42023          	sw	a5,0(s0)
     a3c:	00000097          	auipc	ra,0x0
     a40:	f38080e7          	jalr	-200(ra) # 974 <oled_wait>
     a44:	2fd00793          	li	a5,765
     a48:	00f42023          	sw	a5,0(s0)
     a4c:	00000097          	auipc	ra,0x0
     a50:	f28080e7          	jalr	-216(ra) # 974 <oled_wait>
     a54:	4b100793          	li	a5,1201
     a58:	00f42023          	sw	a5,0(s0)
     a5c:	00000097          	auipc	ra,0x0
     a60:	f18080e7          	jalr	-232(ra) # 974 <oled_wait>
     a64:	2a200793          	li	a5,674
     a68:	00f42023          	sw	a5,0(s0)
     a6c:	00000097          	auipc	ra,0x0
     a70:	f08080e7          	jalr	-248(ra) # 974 <oled_wait>
     a74:	40000793          	li	a5,1024
     a78:	00f42023          	sw	a5,0(s0)
     a7c:	00812403          	lw	s0,8(sp)
     a80:	00c12083          	lw	ra,12(sp)
     a84:	00412483          	lw	s1,4(sp)
     a88:	01010113          	add	sp,sp,16
     a8c:	00000317          	auipc	t1,0x0
     a90:	ee830067          	jr	-280(t1) # 974 <oled_wait>

00000a94 <oled_init>:
     a94:	00000513          	li	a0,0
     a98:	00000317          	auipc	t1,0x0
     a9c:	efc30067          	jr	-260(t1) # 994 <oled_init_mode>

00000aa0 <oled_fullscreen>:
     aa0:	ff010113          	add	sp,sp,-16
     aa4:	000077b7          	lui	a5,0x7
     aa8:	00812423          	sw	s0,8(sp)
     aac:	1187a403          	lw	s0,280(a5) # 7118 <OLED>
     ab0:	00112623          	sw	ra,12(sp)
     ab4:	00912223          	sw	s1,4(sp)
     ab8:	01212023          	sw	s2,0(sp)
     abc:	21500793          	li	a5,533
     ac0:	00f42023          	sw	a5,0(s0)
     ac4:	40000913          	li	s2,1024
     ac8:	00000097          	auipc	ra,0x0
     acc:	eac080e7          	jalr	-340(ra) # 974 <oled_wait>
     ad0:	47f00493          	li	s1,1151
     ad4:	01242023          	sw	s2,0(s0)
     ad8:	00000097          	auipc	ra,0x0
     adc:	e9c080e7          	jalr	-356(ra) # 974 <oled_wait>
     ae0:	00942023          	sw	s1,0(s0)
     ae4:	00000097          	auipc	ra,0x0
     ae8:	e90080e7          	jalr	-368(ra) # 974 <oled_wait>
     aec:	27500793          	li	a5,629
     af0:	00f42023          	sw	a5,0(s0)
     af4:	00000097          	auipc	ra,0x0
     af8:	e80080e7          	jalr	-384(ra) # 974 <oled_wait>
     afc:	01242023          	sw	s2,0(s0)
     b00:	00000097          	auipc	ra,0x0
     b04:	e74080e7          	jalr	-396(ra) # 974 <oled_wait>
     b08:	00942023          	sw	s1,0(s0)
     b0c:	00000097          	auipc	ra,0x0
     b10:	e68080e7          	jalr	-408(ra) # 974 <oled_wait>
     b14:	25c00793          	li	a5,604
     b18:	00f42023          	sw	a5,0(s0)
     b1c:	00812403          	lw	s0,8(sp)
     b20:	00c12083          	lw	ra,12(sp)
     b24:	00412483          	lw	s1,4(sp)
     b28:	00012903          	lw	s2,0(sp)
     b2c:	01010113          	add	sp,sp,16
     b30:	00000317          	auipc	t1,0x0
     b34:	e4430067          	jr	-444(t1) # 974 <oled_wait>

00000b38 <oled_clear>:
     b38:	fe010113          	add	sp,sp,-32
     b3c:	000077b7          	lui	a5,0x7
     b40:	01312623          	sw	s3,12(sp)
     b44:	1187a983          	lw	s3,280(a5) # 7118 <OLED>
     b48:	00812c23          	sw	s0,24(sp)
     b4c:	01212823          	sw	s2,16(sp)
     b50:	00112e23          	sw	ra,28(sp)
     b54:	00912a23          	sw	s1,20(sp)
     b58:	08000913          	li	s2,128
     b5c:	40056413          	or	s0,a0,1024
     b60:	08000493          	li	s1,128
     b64:	0089a023          	sw	s0,0(s3)
     b68:	00000097          	auipc	ra,0x0
     b6c:	e0c080e7          	jalr	-500(ra) # 974 <oled_wait>
     b70:	0089a023          	sw	s0,0(s3)
     b74:	00000097          	auipc	ra,0x0
     b78:	e00080e7          	jalr	-512(ra) # 974 <oled_wait>
     b7c:	fff48493          	add	s1,s1,-1
     b80:	0089a023          	sw	s0,0(s3)
     b84:	00000097          	auipc	ra,0x0
     b88:	df0080e7          	jalr	-528(ra) # 974 <oled_wait>
     b8c:	fc049ce3          	bnez	s1,b64 <oled_clear+0x2c>
     b90:	fff90913          	add	s2,s2,-1
     b94:	fc0916e3          	bnez	s2,b60 <oled_clear+0x28>
     b98:	01c12083          	lw	ra,28(sp)
     b9c:	01812403          	lw	s0,24(sp)
     ba0:	01412483          	lw	s1,20(sp)
     ba4:	01012903          	lw	s2,16(sp)
     ba8:	00c12983          	lw	s3,12(sp)
     bac:	02010113          	add	sp,sp,32
     bb0:	00008067          	ret

00000bb4 <oled_wait>:
     bb4:	00000013          	nop
     bb8:	00000013          	nop
     bbc:	00000013          	nop
     bc0:	00000013          	nop
     bc4:	00000013          	nop
     bc8:	00000013          	nop
     bcc:	00000013          	nop
     bd0:	00008067          	ret

00000bd4 <generate_palette>:
     bd4:	fd010113          	add	sp,sp,-48
     bd8:	03212023          	sw	s2,32(sp)
     bdc:	01312e23          	sw	s3,28(sp)
     be0:	01412c23          	sw	s4,24(sp)
     be4:	01512a23          	sw	s5,20(sp)
     be8:	01612823          	sw	s6,16(sp)
     bec:	01712623          	sw	s7,12(sp)
     bf0:	02112623          	sw	ra,44(sp)
     bf4:	02812423          	sw	s0,40(sp)
     bf8:	02912223          	sw	s1,36(sp)
     bfc:	01812423          	sw	s8,8(sp)
     c00:	00000993          	li	s3,0
     c04:	00000913          	li	s2,0
     c08:	00008b37          	lui	s6,0x8
     c0c:	05400a13          	li	s4,84
     c10:	7f800a93          	li	s5,2040
     c14:	10000b93          	li	s7,256
     c18:	00700593          	li	a1,7
     c1c:	00098513          	mv	a0,s3
     c20:	00000097          	auipc	ra,0x0
     c24:	b68080e7          	jalr	-1176(ra) # 788 <__divsi3>
     c28:	0ff57c13          	zext.b	s8,a0
     c2c:	00090493          	mv	s1,s2
     c30:	00000413          	li	s0,0
     c34:	02c0006f          	j	c60 <generate_palette+0x8c>
     c38:	00e78123          	sb	a4,2(a5)
     c3c:	05570713          	add	a4,a4,85
     c40:	01878023          	sb	s8,0(a5)
     c44:	00a780a3          	sb	a0,1(a5)
     c48:	0ff77713          	zext.b	a4,a4
     c4c:	00378793          	add	a5,a5,3
     c50:	ff4714e3          	bne	a4,s4,c38 <generate_palette+0x64>
     c54:	0ff40413          	add	s0,s0,255
     c58:	00448493          	add	s1,s1,4
     c5c:	03540863          	beq	s0,s5,c8c <generate_palette+0xb8>
     c60:	00700593          	li	a1,7
     c64:	00040513          	mv	a0,s0
     c68:	00000097          	auipc	ra,0x0
     c6c:	b20080e7          	jalr	-1248(ra) # 788 <__divsi3>
     c70:	00149713          	sll	a4,s1,0x1
     c74:	00970733          	add	a4,a4,s1
     c78:	1ecb0793          	add	a5,s6,492 # 81ec <palette>
     c7c:	00e787b3          	add	a5,a5,a4
     c80:	0ff57513          	zext.b	a0,a0
     c84:	00000713          	li	a4,0
     c88:	fb1ff06f          	j	c38 <generate_palette+0x64>
     c8c:	02090913          	add	s2,s2,32
     c90:	0ff98993          	add	s3,s3,255
     c94:	f97912e3          	bne	s2,s7,c18 <generate_palette+0x44>
     c98:	02c12083          	lw	ra,44(sp)
     c9c:	02812403          	lw	s0,40(sp)
     ca0:	02412483          	lw	s1,36(sp)
     ca4:	02012903          	lw	s2,32(sp)
     ca8:	01c12983          	lw	s3,28(sp)
     cac:	01812a03          	lw	s4,24(sp)
     cb0:	01412a83          	lw	s5,20(sp)
     cb4:	01012b03          	lw	s6,16(sp)
     cb8:	00c12b83          	lw	s7,12(sp)
     cbc:	00812c03          	lw	s8,8(sp)
     cc0:	03010113          	add	sp,sp,48
     cc4:	00008067          	ret

00000cc8 <display_framebuffer>:
     cc8:	00008537          	lui	a0,0x8
     ccc:	4ec50513          	add	a0,a0,1260 # 84ec <framebuffer>
     cd0:	00008067          	ret

00000cd4 <display_set_cursor>:
     cd4:	000077b7          	lui	a5,0x7
     cd8:	74a7a423          	sw	a0,1864(a5) # 7748 <cursor_x>
     cdc:	000077b7          	lui	a5,0x7
     ce0:	74b7a223          	sw	a1,1860(a5) # 7744 <cursor_y>
     ce4:	00008067          	ret

00000ce8 <display_set_front_back_color>:
     ce8:	000077b7          	lui	a5,0x7
     cec:	74a780a3          	sb	a0,1857(a5) # 7741 <front_color>
     cf0:	000077b7          	lui	a5,0x7
     cf4:	74b78023          	sb	a1,1856(a5) # 7740 <back_color>
     cf8:	00008067          	ret

00000cfc <display_putchar>:
     cfc:	00a00793          	li	a5,10
     d00:	000075b7          	lui	a1,0x7
     d04:	02f51663          	bne	a0,a5,d30 <display_putchar+0x34>
     d08:	00007737          	lui	a4,0x7
     d0c:	74472783          	lw	a5,1860(a4) # 7744 <cursor_y>
     d10:	7405a423          	sw	zero,1864(a1) # 7748 <cursor_x>
     d14:	00878793          	add	a5,a5,8
     d18:	74f72223          	sw	a5,1860(a4)
     d1c:	07f00713          	li	a4,127
     d20:	00f75663          	bge	a4,a5,d2c <display_putchar+0x30>
     d24:	000077b7          	lui	a5,0x7
     d28:	7407a223          	sw	zero,1860(a5) # 7744 <cursor_y>
     d2c:	00008067          	ret
     d30:	ff010113          	add	sp,sp,-16
     d34:	00812623          	sw	s0,12(sp)
     d38:	01f00713          	li	a4,31
     d3c:	7485a783          	lw	a5,1864(a1)
     d40:	08a75a63          	bge	a4,a0,dd4 <display_putchar+0xd8>
     d44:	00007737          	lui	a4,0x7
     d48:	74074f83          	lbu	t6,1856(a4) # 7740 <back_color>
     d4c:	00007737          	lui	a4,0x7
     d50:	74174283          	lbu	t0,1857(a4) # 7741 <front_color>
     d54:	00251693          	sll	a3,a0,0x2
     d58:	00007737          	lui	a4,0x7
     d5c:	00a686b3          	add	a3,a3,a0
     d60:	12070713          	add	a4,a4,288 # 7120 <font>
     d64:	00d70733          	add	a4,a4,a3
     d68:	000076b7          	lui	a3,0x7
     d6c:	7446a683          	lw	a3,1860(a3) # 7744 <cursor_y>
     d70:	00008637          	lui	a2,0x8
     d74:	4ec60613          	add	a2,a2,1260 # 84ec <framebuffer>
     d78:	00c686b3          	add	a3,a3,a2
     d7c:	00779613          	sll	a2,a5,0x7
     d80:	00c686b3          	add	a3,a3,a2
     d84:	00100f13          	li	t5,1
     d88:	00000613          	li	a2,0
     d8c:	00500393          	li	t2,5
     d90:	00800413          	li	s0,8
     d94:	00cf1eb3          	sll	t4,t5,a2
     d98:	00d608b3          	add	a7,a2,a3
     d9c:	00070813          	mv	a6,a4
     da0:	00000513          	li	a0,0
     da4:	f6084303          	lbu	t1,-160(a6)
     da8:	00028e13          	mv	t3,t0
     dac:	01d37333          	and	t1,t1,t4
     db0:	00031463          	bnez	t1,db8 <display_putchar+0xbc>
     db4:	000f8e13          	mv	t3,t6
     db8:	01c88023          	sb	t3,0(a7)
     dbc:	00150513          	add	a0,a0,1
     dc0:	00180813          	add	a6,a6,1
     dc4:	08088893          	add	a7,a7,128
     dc8:	fc751ee3          	bne	a0,t2,da4 <display_putchar+0xa8>
     dcc:	00160613          	add	a2,a2,1
     dd0:	fc8612e3          	bne	a2,s0,d94 <display_putchar+0x98>
     dd4:	00578793          	add	a5,a5,5
     dd8:	07f00713          	li	a4,127
     ddc:	00f74663          	blt	a4,a5,de8 <display_putchar+0xec>
     de0:	74f5a423          	sw	a5,1864(a1)
     de4:	0240006f          	j	e08 <display_putchar+0x10c>
     de8:	000076b7          	lui	a3,0x7
     dec:	7446a783          	lw	a5,1860(a3) # 7744 <cursor_y>
     df0:	7405a423          	sw	zero,1864(a1)
     df4:	00878793          	add	a5,a5,8
     df8:	74f6a223          	sw	a5,1860(a3)
     dfc:	00f75663          	bge	a4,a5,e08 <display_putchar+0x10c>
     e00:	000077b7          	lui	a5,0x7
     e04:	7407a223          	sw	zero,1860(a5) # 7744 <cursor_y>
     e08:	00c12403          	lw	s0,12(sp)
     e0c:	01010113          	add	sp,sp,16
     e10:	00008067          	ret

00000e14 <display_refresh>:
     e14:	fe010113          	add	sp,sp,-32
     e18:	00812c23          	sw	s0,24(sp)
     e1c:	00007437          	lui	s0,0x7
     e20:	73c42783          	lw	a5,1852(s0) # 773c <palette_generated.0>
     e24:	00112e23          	sw	ra,28(sp)
     e28:	00912a23          	sw	s1,20(sp)
     e2c:	01212823          	sw	s2,16(sp)
     e30:	01312623          	sw	s3,12(sp)
     e34:	01412423          	sw	s4,8(sp)
     e38:	01512223          	sw	s5,4(sp)
     e3c:	01612023          	sw	s6,0(sp)
     e40:	00079a63          	bnez	a5,e54 <display_refresh+0x40>
     e44:	00000097          	auipc	ra,0x0
     e48:	d90080e7          	jalr	-624(ra) # bd4 <generate_palette>
     e4c:	00100793          	li	a5,1
     e50:	72f42e23          	sw	a5,1852(s0)
     e54:	000077b7          	lui	a5,0x7
     e58:	1187a483          	lw	s1,280(a5) # 7118 <OLED>
     e5c:	00008437          	lui	s0,0x8
     e60:	4ec40413          	add	s0,s0,1260 # 84ec <framebuffer>
     e64:	00008ab7          	lui	s5,0x8
     e68:	0000cb37          	lui	s6,0xc
     e6c:	08040a13          	add	s4,s0,128
     e70:	00044683          	lbu	a3,0(s0)
     e74:	1eca8793          	add	a5,s5,492 # 81ec <palette>
     e78:	00140413          	add	s0,s0,1
     e7c:	00169713          	sll	a4,a3,0x1
     e80:	00d70733          	add	a4,a4,a3
     e84:	00e787b3          	add	a5,a5,a4
     e88:	0007c903          	lbu	s2,0(a5)
     e8c:	0017c983          	lbu	s3,1(a5)
     e90:	0027c783          	lbu	a5,2(a5)
     e94:	4007e793          	or	a5,a5,1024
     e98:	00f4a023          	sw	a5,0(s1)
     e9c:	00000097          	auipc	ra,0x0
     ea0:	d18080e7          	jalr	-744(ra) # bb4 <oled_wait>
     ea4:	4009e793          	or	a5,s3,1024
     ea8:	00f4a023          	sw	a5,0(s1)
     eac:	00000097          	auipc	ra,0x0
     eb0:	d08080e7          	jalr	-760(ra) # bb4 <oled_wait>
     eb4:	40096793          	or	a5,s2,1024
     eb8:	00f4a023          	sw	a5,0(s1)
     ebc:	00000097          	auipc	ra,0x0
     ec0:	cf8080e7          	jalr	-776(ra) # bb4 <oled_wait>
     ec4:	fb4416e3          	bne	s0,s4,e70 <display_refresh+0x5c>
     ec8:	4ecb0793          	add	a5,s6,1260 # c4ec <_fs>
     ecc:	faf410e3          	bne	s0,a5,e6c <display_refresh+0x58>
     ed0:	01c12083          	lw	ra,28(sp)
     ed4:	01812403          	lw	s0,24(sp)
     ed8:	01412483          	lw	s1,20(sp)
     edc:	01012903          	lw	s2,16(sp)
     ee0:	00c12983          	lw	s3,12(sp)
     ee4:	00812a03          	lw	s4,8(sp)
     ee8:	00412a83          	lw	s5,4(sp)
     eec:	00012b03          	lw	s6,0(sp)
     ef0:	02010113          	add	sp,sp,32
     ef4:	00008067          	ret

00000ef8 <dual_putchar>:
     ef8:	ff010113          	add	sp,sp,-16
     efc:	00812423          	sw	s0,8(sp)
     f00:	00112623          	sw	ra,12(sp)
     f04:	00050413          	mv	s0,a0
     f08:	00000097          	auipc	ra,0x0
     f0c:	df4080e7          	jalr	-524(ra) # cfc <display_putchar>
     f10:	00040513          	mv	a0,s0
     f14:	00812403          	lw	s0,8(sp)
     f18:	00c12083          	lw	ra,12(sp)
     f1c:	01010113          	add	sp,sp,16
     f20:	00000317          	auipc	t1,0x0
     f24:	91c30067          	jr	-1764(t1) # 83c <uart_putchar>

00000f28 <print_string>:
     f28:	ff010113          	add	sp,sp,-16
     f2c:	00812423          	sw	s0,8(sp)
     f30:	00912223          	sw	s1,4(sp)
     f34:	00112623          	sw	ra,12(sp)
     f38:	00050413          	mv	s0,a0
     f3c:	000074b7          	lui	s1,0x7
     f40:	00044503          	lbu	a0,0(s0)
     f44:	00051c63          	bnez	a0,f5c <print_string+0x34>
     f48:	00c12083          	lw	ra,12(sp)
     f4c:	00812403          	lw	s0,8(sp)
     f50:	00412483          	lw	s1,4(sp)
     f54:	01010113          	add	sp,sp,16
     f58:	00008067          	ret
     f5c:	74c4a783          	lw	a5,1868(s1) # 774c <f_putchar>
     f60:	00140413          	add	s0,s0,1
     f64:	000780e7          	jalr	a5
     f68:	fd9ff06f          	j	f40 <print_string+0x18>

00000f6c <print_dec>:
     f6c:	ef010113          	add	sp,sp,-272
     f70:	10812423          	sw	s0,264(sp)
     f74:	10912223          	sw	s1,260(sp)
     f78:	10112623          	sw	ra,268(sp)
     f7c:	11212023          	sw	s2,256(sp)
     f80:	00050413          	mv	s0,a0
     f84:	000074b7          	lui	s1,0x7
     f88:	08045063          	bgez	s0,1008 <print_dec+0x9c>
     f8c:	74c4a783          	lw	a5,1868(s1) # 774c <f_putchar>
     f90:	02d00513          	li	a0,45
     f94:	40800433          	neg	s0,s0
     f98:	000780e7          	jalr	a5
     f9c:	fedff06f          	j	f88 <print_dec+0x1c>
     fa0:	00040513          	mv	a0,s0
     fa4:	00a00593          	li	a1,10
     fa8:	fffff097          	auipc	ra,0xfffff
     fac:	7e0080e7          	jalr	2016(ra) # 788 <__divsi3>
     fb0:	00251793          	sll	a5,a0,0x2
     fb4:	00f507b3          	add	a5,a0,a5
     fb8:	00179793          	sll	a5,a5,0x1
     fbc:	40f40433          	sub	s0,s0,a5
     fc0:	00148493          	add	s1,s1,1
     fc4:	fe848fa3          	sb	s0,-1(s1)
     fc8:	00050413          	mv	s0,a0
     fcc:	fc041ae3          	bnez	s0,fa0 <print_dec+0x34>
     fd0:	fd2488e3          	beq	s1,s2,fa0 <print_dec+0x34>
     fd4:	00007437          	lui	s0,0x7
     fd8:	fff4c503          	lbu	a0,-1(s1)
     fdc:	74c42783          	lw	a5,1868(s0) # 774c <f_putchar>
     fe0:	fff48493          	add	s1,s1,-1
     fe4:	03050513          	add	a0,a0,48
     fe8:	000780e7          	jalr	a5
     fec:	ff2496e3          	bne	s1,s2,fd8 <print_dec+0x6c>
     ff0:	10c12083          	lw	ra,268(sp)
     ff4:	10812403          	lw	s0,264(sp)
     ff8:	10412483          	lw	s1,260(sp)
     ffc:	10012903          	lw	s2,256(sp)
    1000:	11010113          	add	sp,sp,272
    1004:	00008067          	ret
    1008:	00010493          	mv	s1,sp
    100c:	00010913          	mv	s2,sp
    1010:	fbdff06f          	j	fcc <print_dec+0x60>

00001014 <print_hex_digits>:
    1014:	fe010113          	add	sp,sp,-32
    1018:	00812c23          	sw	s0,24(sp)
    101c:	fff58413          	add	s0,a1,-1
    1020:	00912a23          	sw	s1,20(sp)
    1024:	01212823          	sw	s2,16(sp)
    1028:	01312623          	sw	s3,12(sp)
    102c:	00112e23          	sw	ra,28(sp)
    1030:	00050493          	mv	s1,a0
    1034:	00241413          	sll	s0,s0,0x2
    1038:	00007937          	lui	s2,0x7
    103c:	000079b7          	lui	s3,0x7
    1040:	02045063          	bgez	s0,1060 <print_hex_digits+0x4c>
    1044:	01c12083          	lw	ra,28(sp)
    1048:	01812403          	lw	s0,24(sp)
    104c:	01412483          	lw	s1,20(sp)
    1050:	01012903          	lw	s2,16(sp)
    1054:	00c12983          	lw	s3,12(sp)
    1058:	02010113          	add	sp,sp,32
    105c:	00008067          	ret
    1060:	0084d733          	srl	a4,s1,s0
    1064:	00f77713          	and	a4,a4,15
    1068:	3d090793          	add	a5,s2,976 # 73d0 <font+0x2b0>
    106c:	00e787b3          	add	a5,a5,a4
    1070:	0007c503          	lbu	a0,0(a5)
    1074:	74c9a703          	lw	a4,1868(s3) # 774c <f_putchar>
    1078:	ffc40413          	add	s0,s0,-4
    107c:	000700e7          	jalr	a4
    1080:	fc1ff06f          	j	1040 <print_hex_digits+0x2c>

00001084 <print_hex>:
    1084:	00800593          	li	a1,8
    1088:	00000317          	auipc	t1,0x0
    108c:	f8c30067          	jr	-116(t1) # 1014 <print_hex_digits>

00001090 <printf>:
    1090:	fb010113          	add	sp,sp,-80
    1094:	04f12223          	sw	a5,68(sp)
    1098:	03410793          	add	a5,sp,52
    109c:	02812423          	sw	s0,40(sp)
    10a0:	02912223          	sw	s1,36(sp)
    10a4:	03212023          	sw	s2,32(sp)
    10a8:	01312e23          	sw	s3,28(sp)
    10ac:	01412c23          	sw	s4,24(sp)
    10b0:	01512a23          	sw	s5,20(sp)
    10b4:	01612823          	sw	s6,16(sp)
    10b8:	02112623          	sw	ra,44(sp)
    10bc:	00050413          	mv	s0,a0
    10c0:	02b12a23          	sw	a1,52(sp)
    10c4:	02c12c23          	sw	a2,56(sp)
    10c8:	02d12e23          	sw	a3,60(sp)
    10cc:	04e12023          	sw	a4,64(sp)
    10d0:	05012423          	sw	a6,72(sp)
    10d4:	05112623          	sw	a7,76(sp)
    10d8:	00f12623          	sw	a5,12(sp)
    10dc:	02500913          	li	s2,37
    10e0:	000074b7          	lui	s1,0x7
    10e4:	07300993          	li	s3,115
    10e8:	07800a13          	li	s4,120
    10ec:	06400a93          	li	s5,100
    10f0:	06300b13          	li	s6,99
    10f4:	00044503          	lbu	a0,0(s0)
    10f8:	02051663          	bnez	a0,1124 <printf+0x94>
    10fc:	02c12083          	lw	ra,44(sp)
    1100:	02812403          	lw	s0,40(sp)
    1104:	02412483          	lw	s1,36(sp)
    1108:	02012903          	lw	s2,32(sp)
    110c:	01c12983          	lw	s3,28(sp)
    1110:	01812a03          	lw	s4,24(sp)
    1114:	01412a83          	lw	s5,20(sp)
    1118:	01012b03          	lw	s6,16(sp)
    111c:	05010113          	add	sp,sp,80
    1120:	00008067          	ret
    1124:	09251863          	bne	a0,s2,11b4 <printf+0x124>
    1128:	00144503          	lbu	a0,1(s0)
    112c:	03351463          	bne	a0,s3,1154 <printf+0xc4>
    1130:	00c12783          	lw	a5,12(sp)
    1134:	0007a503          	lw	a0,0(a5)
    1138:	00478713          	add	a4,a5,4
    113c:	00e12623          	sw	a4,12(sp)
    1140:	00000097          	auipc	ra,0x0
    1144:	de8080e7          	jalr	-536(ra) # f28 <print_string>
    1148:	00140413          	add	s0,s0,1
    114c:	00140413          	add	s0,s0,1
    1150:	fa5ff06f          	j	10f4 <printf+0x64>
    1154:	03451063          	bne	a0,s4,1174 <printf+0xe4>
    1158:	00c12783          	lw	a5,12(sp)
    115c:	0007a503          	lw	a0,0(a5)
    1160:	00478713          	add	a4,a5,4
    1164:	00e12623          	sw	a4,12(sp)
    1168:	00000097          	auipc	ra,0x0
    116c:	f1c080e7          	jalr	-228(ra) # 1084 <print_hex>
    1170:	fd9ff06f          	j	1148 <printf+0xb8>
    1174:	03551063          	bne	a0,s5,1194 <printf+0x104>
    1178:	00c12783          	lw	a5,12(sp)
    117c:	0007a503          	lw	a0,0(a5)
    1180:	00478713          	add	a4,a5,4
    1184:	00e12623          	sw	a4,12(sp)
    1188:	00000097          	auipc	ra,0x0
    118c:	de4080e7          	jalr	-540(ra) # f6c <print_dec>
    1190:	fb9ff06f          	j	1148 <printf+0xb8>
    1194:	74c4a783          	lw	a5,1868(s1) # 774c <f_putchar>
    1198:	01651a63          	bne	a0,s6,11ac <printf+0x11c>
    119c:	00c12703          	lw	a4,12(sp)
    11a0:	00072503          	lw	a0,0(a4)
    11a4:	00470693          	add	a3,a4,4
    11a8:	00d12623          	sw	a3,12(sp)
    11ac:	000780e7          	jalr	a5
    11b0:	f99ff06f          	j	1148 <printf+0xb8>
    11b4:	74c4a783          	lw	a5,1868(s1)
    11b8:	000780e7          	jalr	a5
    11bc:	f91ff06f          	j	114c <printf+0xbc>

000011c0 <__mulsi3>:
    11c0:	00050793          	mv	a5,a0
    11c4:	00000513          	li	a0,0
    11c8:	00079463          	bnez	a5,11d0 <__mulsi3+0x10>
    11cc:	00008067          	ret
    11d0:	0017f713          	and	a4,a5,1
    11d4:	40e00733          	neg	a4,a4
    11d8:	00b77733          	and	a4,a4,a1
    11dc:	00e50533          	add	a0,a0,a4
    11e0:	0017d793          	srl	a5,a5,0x1
    11e4:	00159593          	sll	a1,a1,0x1
    11e8:	fe1ff06f          	j	11c8 <__mulsi3+0x8>

000011ec <fat_list_insert_last>:
    11ec:	00452783          	lw	a5,4(a0)
    11f0:	04079263          	bnez	a5,1234 <fat_list_insert_last+0x48>
    11f4:	00052783          	lw	a5,0(a0)
    11f8:	00079c63          	bnez	a5,1210 <fat_list_insert_last+0x24>
    11fc:	00b52023          	sw	a1,0(a0)
    1200:	00b52223          	sw	a1,4(a0)
    1204:	0005a023          	sw	zero,0(a1)
    1208:	0005a223          	sw	zero,4(a1)
    120c:	00008067          	ret
    1210:	0007a703          	lw	a4,0(a5)
    1214:	00f5a223          	sw	a5,4(a1)
    1218:	00e5a023          	sw	a4,0(a1)
    121c:	00071863          	bnez	a4,122c <fat_list_insert_last+0x40>
    1220:	00b52023          	sw	a1,0(a0)
    1224:	00b7a023          	sw	a1,0(a5)
    1228:	00008067          	ret
    122c:	00b72223          	sw	a1,4(a4)
    1230:	ff5ff06f          	j	1224 <fat_list_insert_last+0x38>
    1234:	0047a703          	lw	a4,4(a5)
    1238:	00f5a023          	sw	a5,0(a1)
    123c:	00e5a223          	sw	a4,4(a1)
    1240:	00071863          	bnez	a4,1250 <fat_list_insert_last+0x64>
    1244:	00b52223          	sw	a1,4(a0)
    1248:	00b7a223          	sw	a1,4(a5)
    124c:	00008067          	ret
    1250:	00b72023          	sw	a1,0(a4)
    1254:	ff5ff06f          	j	1248 <fat_list_insert_last+0x5c>

00001258 <FileString_StrCmpNoCase>:
    1258:	00050313          	mv	t1,a0
    125c:	00000793          	li	a5,0
    1260:	01900e13          	li	t3,25
    1264:	00c79663          	bne	a5,a2,1270 <FileString_StrCmpNoCase+0x18>
    1268:	00000513          	li	a0,0
    126c:	00008067          	ret
    1270:	00f30733          	add	a4,t1,a5
    1274:	00074883          	lbu	a7,0(a4)
    1278:	00f58733          	add	a4,a1,a5
    127c:	00074803          	lbu	a6,0(a4)
    1280:	fbf88713          	add	a4,a7,-65
    1284:	0ff77713          	zext.b	a4,a4
    1288:	00088693          	mv	a3,a7
    128c:	00ee6663          	bltu	t3,a4,1298 <FileString_StrCmpNoCase+0x40>
    1290:	02088693          	add	a3,a7,32
    1294:	0ff6f693          	zext.b	a3,a3
    1298:	fbf80513          	add	a0,a6,-65
    129c:	0ff57513          	zext.b	a0,a0
    12a0:	00080713          	mv	a4,a6
    12a4:	00ae6663          	bltu	t3,a0,12b0 <FileString_StrCmpNoCase+0x58>
    12a8:	02080713          	add	a4,a6,32
    12ac:	0ff77713          	zext.b	a4,a4
    12b0:	40e68533          	sub	a0,a3,a4
    12b4:	00e69863          	bne	a3,a4,12c4 <FileString_StrCmpNoCase+0x6c>
    12b8:	00088663          	beqz	a7,12c4 <FileString_StrCmpNoCase+0x6c>
    12bc:	00178793          	add	a5,a5,1
    12c0:	fa0812e3          	bnez	a6,1264 <FileString_StrCmpNoCase+0xc>
    12c4:	00008067          	ret

000012c8 <FileString_GetExtension>:
    12c8:	00050713          	mv	a4,a0
    12cc:	00050793          	mv	a5,a0
    12d0:	02e00613          	li	a2,46
    12d4:	fff00513          	li	a0,-1
    12d8:	0007c683          	lbu	a3,0(a5)
    12dc:	00069463          	bnez	a3,12e4 <FileString_GetExtension+0x1c>
    12e0:	00008067          	ret
    12e4:	00c69463          	bne	a3,a2,12ec <FileString_GetExtension+0x24>
    12e8:	40e78533          	sub	a0,a5,a4
    12ec:	00178793          	add	a5,a5,1
    12f0:	fe9ff06f          	j	12d8 <FileString_GetExtension+0x10>

000012f4 <fatfs_fat_writeback>:
    12f4:	00059663          	bnez	a1,1300 <fatfs_fat_writeback+0xc>
    12f8:	00000513          	li	a0,0
    12fc:	00008067          	ret
    1300:	2045a703          	lw	a4,516(a1)
    1304:	ff010113          	add	sp,sp,-16
    1308:	00812423          	sw	s0,8(sp)
    130c:	00112623          	sw	ra,12(sp)
    1310:	00058413          	mv	s0,a1
    1314:	00070a63          	beqz	a4,1328 <fatfs_fat_writeback+0x34>
    1318:	03852683          	lw	a3,56(a0)
    131c:	00050793          	mv	a5,a0
    1320:	00069863          	bnez	a3,1330 <fatfs_fat_writeback+0x3c>
    1324:	20042223          	sw	zero,516(s0)
    1328:	00100513          	li	a0,1
    132c:	0380006f          	j	1364 <fatfs_fat_writeback+0x70>
    1330:	0147a703          	lw	a4,20(a5)
    1334:	2005a503          	lw	a0,512(a1)
    1338:	00100613          	li	a2,1
    133c:	0207a583          	lw	a1,32(a5)
    1340:	40e607b3          	sub	a5,a2,a4
    1344:	00a787b3          	add	a5,a5,a0
    1348:	00f5f663          	bgeu	a1,a5,1354 <fatfs_fat_writeback+0x60>
    134c:	00b70733          	add	a4,a4,a1
    1350:	40a70633          	sub	a2,a4,a0
    1354:	00040593          	mv	a1,s0
    1358:	000680e7          	jalr	a3
    135c:	fc0514e3          	bnez	a0,1324 <fatfs_fat_writeback+0x30>
    1360:	00000513          	li	a0,0
    1364:	00c12083          	lw	ra,12(sp)
    1368:	00812403          	lw	s0,8(sp)
    136c:	01010113          	add	sp,sp,16
    1370:	00008067          	ret

00001374 <fatfs_fat_read_sector>:
    1374:	fe010113          	add	sp,sp,-32
    1378:	01212823          	sw	s2,16(sp)
    137c:	25452903          	lw	s2,596(a0)
    1380:	00812c23          	sw	s0,24(sp)
    1384:	00912a23          	sw	s1,20(sp)
    1388:	01312623          	sw	s3,12(sp)
    138c:	00112e23          	sw	ra,28(sp)
    1390:	00050993          	mv	s3,a0
    1394:	00058493          	mv	s1,a1
    1398:	00000413          	li	s0,0
    139c:	04091063          	bnez	s2,13dc <fatfs_fat_read_sector+0x68>
    13a0:	2549a783          	lw	a5,596(s3)
    13a4:	20f42623          	sw	a5,524(s0)
    13a8:	20442783          	lw	a5,516(s0)
    13ac:	2489aa23          	sw	s0,596(s3)
    13b0:	08079863          	bnez	a5,1440 <fatfs_fat_read_sector+0xcc>
    13b4:	0349a783          	lw	a5,52(s3)
    13b8:	20942023          	sw	s1,512(s0)
    13bc:	00100613          	li	a2,1
    13c0:	00040593          	mv	a1,s0
    13c4:	00048513          	mv	a0,s1
    13c8:	000780e7          	jalr	a5
    13cc:	08051663          	bnez	a0,1458 <fatfs_fat_read_sector+0xe4>
    13d0:	fff00793          	li	a5,-1
    13d4:	20f42023          	sw	a5,512(s0)
    13d8:	0480006f          	j	1420 <fatfs_fat_read_sector+0xac>
    13dc:	20092783          	lw	a5,512(s2)
    13e0:	00f4e663          	bltu	s1,a5,13ec <fatfs_fat_read_sector+0x78>
    13e4:	00178713          	add	a4,a5,1
    13e8:	02e4e463          	bltu	s1,a4,1410 <fatfs_fat_read_sector+0x9c>
    13ec:	20c92783          	lw	a5,524(s2)
    13f0:	00079663          	bnez	a5,13fc <fatfs_fat_read_sector+0x88>
    13f4:	00040a63          	beqz	s0,1408 <fatfs_fat_read_sector+0x94>
    13f8:	20042623          	sw	zero,524(s0)
    13fc:	00090413          	mv	s0,s2
    1400:	20c92903          	lw	s2,524(s2)
    1404:	f99ff06f          	j	139c <fatfs_fat_read_sector+0x28>
    1408:	2409aa23          	sw	zero,596(s3)
    140c:	ff1ff06f          	j	13fc <fatfs_fat_read_sector+0x88>
    1410:	40f484b3          	sub	s1,s1,a5
    1414:	00949493          	sll	s1,s1,0x9
    1418:	009904b3          	add	s1,s2,s1
    141c:	20992423          	sw	s1,520(s2)
    1420:	01c12083          	lw	ra,28(sp)
    1424:	01812403          	lw	s0,24(sp)
    1428:	01412483          	lw	s1,20(sp)
    142c:	00c12983          	lw	s3,12(sp)
    1430:	00090513          	mv	a0,s2
    1434:	01012903          	lw	s2,16(sp)
    1438:	02010113          	add	sp,sp,32
    143c:	00008067          	ret
    1440:	00040593          	mv	a1,s0
    1444:	00098513          	mv	a0,s3
    1448:	00000097          	auipc	ra,0x0
    144c:	eac080e7          	jalr	-340(ra) # 12f4 <fatfs_fat_writeback>
    1450:	f60512e3          	bnez	a0,13b4 <fatfs_fat_read_sector+0x40>
    1454:	fcdff06f          	j	1420 <fatfs_fat_read_sector+0xac>
    1458:	20842423          	sw	s0,520(s0)
    145c:	00040913          	mv	s2,s0
    1460:	fc1ff06f          	j	1420 <fatfs_fat_read_sector+0xac>

00001464 <fatfs_erase_fat>:
    1464:	ff010113          	add	sp,sp,-16
    1468:	01212023          	sw	s2,0(sp)
    146c:	04450913          	add	s2,a0,68
    1470:	00812423          	sw	s0,8(sp)
    1474:	00912223          	sw	s1,4(sp)
    1478:	00050413          	mv	s0,a0
    147c:	00058493          	mv	s1,a1
    1480:	20000613          	li	a2,512
    1484:	00000593          	li	a1,0
    1488:	00090513          	mv	a0,s2
    148c:	00112623          	sw	ra,12(sp)
    1490:	fffff097          	auipc	ra,0xfffff
    1494:	3d4080e7          	jalr	980(ra) # 864 <memset>
    1498:	04049063          	bnez	s1,14d8 <fatfs_erase_fat+0x74>
    149c:	ff800793          	li	a5,-8
    14a0:	04f42223          	sw	a5,68(s0)
    14a4:	03842783          	lw	a5,56(s0)
    14a8:	01442503          	lw	a0,20(s0)
    14ac:	00100613          	li	a2,1
    14b0:	00090593          	mv	a1,s2
    14b4:	000780e7          	jalr	a5
    14b8:	04051263          	bnez	a0,14fc <fatfs_erase_fat+0x98>
    14bc:	00000513          	li	a0,0
    14c0:	00c12083          	lw	ra,12(sp)
    14c4:	00812403          	lw	s0,8(sp)
    14c8:	00412483          	lw	s1,4(sp)
    14cc:	00012903          	lw	s2,0(sp)
    14d0:	01010113          	add	sp,sp,16
    14d4:	00008067          	ret
    14d8:	100007b7          	lui	a5,0x10000
    14dc:	ff878793          	add	a5,a5,-8 # ffffff8 <__stacktop+0xffefff8>
    14e0:	04f42223          	sw	a5,68(s0)
    14e4:	fff00793          	li	a5,-1
    14e8:	04f42423          	sw	a5,72(s0)
    14ec:	100007b7          	lui	a5,0x10000
    14f0:	fff78793          	add	a5,a5,-1 # fffffff <__stacktop+0xffeffff>
    14f4:	04f42623          	sw	a5,76(s0)
    14f8:	fadff06f          	j	14a4 <fatfs_erase_fat+0x40>
    14fc:	20000613          	li	a2,512
    1500:	00000593          	li	a1,0
    1504:	00090513          	mv	a0,s2
    1508:	fffff097          	auipc	ra,0xfffff
    150c:	35c080e7          	jalr	860(ra) # 864 <memset>
    1510:	00100493          	li	s1,1
    1514:	02042583          	lw	a1,32(s0)
    1518:	02c44503          	lbu	a0,44(s0)
    151c:	00000097          	auipc	ra,0x0
    1520:	ca4080e7          	jalr	-860(ra) # 11c0 <__mulsi3>
    1524:	00a4e663          	bltu	s1,a0,1530 <fatfs_erase_fat+0xcc>
    1528:	00100513          	li	a0,1
    152c:	f95ff06f          	j	14c0 <fatfs_erase_fat+0x5c>
    1530:	01442503          	lw	a0,20(s0)
    1534:	03842783          	lw	a5,56(s0)
    1538:	00100613          	li	a2,1
    153c:	00090593          	mv	a1,s2
    1540:	00a48533          	add	a0,s1,a0
    1544:	000780e7          	jalr	a5
    1548:	f6050ae3          	beqz	a0,14bc <fatfs_erase_fat+0x58>
    154c:	00148493          	add	s1,s1,1
    1550:	fc5ff06f          	j	1514 <fatfs_erase_fat+0xb0>

00001554 <fatfs_erase_sectors>:
    1554:	fe010113          	add	sp,sp,-32
    1558:	01412423          	sw	s4,8(sp)
    155c:	04450a13          	add	s4,a0,68
    1560:	00912a23          	sw	s1,20(sp)
    1564:	01212823          	sw	s2,16(sp)
    1568:	01312623          	sw	s3,12(sp)
    156c:	00050493          	mv	s1,a0
    1570:	00058993          	mv	s3,a1
    1574:	00060913          	mv	s2,a2
    1578:	00000593          	li	a1,0
    157c:	20000613          	li	a2,512
    1580:	000a0513          	mv	a0,s4
    1584:	00812c23          	sw	s0,24(sp)
    1588:	00112e23          	sw	ra,28(sp)
    158c:	00000413          	li	s0,0
    1590:	fffff097          	auipc	ra,0xfffff
    1594:	2d4080e7          	jalr	724(ra) # 864 <memset>
    1598:	03244463          	blt	s0,s2,15c0 <fatfs_erase_sectors+0x6c>
    159c:	00100513          	li	a0,1
    15a0:	01c12083          	lw	ra,28(sp)
    15a4:	01812403          	lw	s0,24(sp)
    15a8:	01412483          	lw	s1,20(sp)
    15ac:	01012903          	lw	s2,16(sp)
    15b0:	00c12983          	lw	s3,12(sp)
    15b4:	00812a03          	lw	s4,8(sp)
    15b8:	02010113          	add	sp,sp,32
    15bc:	00008067          	ret
    15c0:	0384a783          	lw	a5,56(s1)
    15c4:	00100613          	li	a2,1
    15c8:	000a0593          	mv	a1,s4
    15cc:	01340533          	add	a0,s0,s3
    15d0:	000780e7          	jalr	a5
    15d4:	fc0506e3          	beqz	a0,15a0 <fatfs_erase_sectors+0x4c>
    15d8:	00140413          	add	s0,s0,1
    15dc:	fbdff06f          	j	1598 <fatfs_erase_sectors+0x44>

000015e0 <_allocate_file>:
    15e0:	ff010113          	add	sp,sp,-16
    15e4:	000077b7          	lui	a5,0x7
    15e8:	00812423          	sw	s0,8(sp)
    15ec:	7507a403          	lw	s0,1872(a5) # 7750 <_free_file_list>
    15f0:	00112623          	sw	ra,12(sp)
    15f4:	02040e63          	beqz	s0,1630 <_allocate_file+0x50>
    15f8:	00042703          	lw	a4,0(s0)
    15fc:	00442683          	lw	a3,4(s0)
    1600:	75078793          	add	a5,a5,1872
    1604:	04071063          	bnez	a4,1644 <_allocate_file+0x64>
    1608:	00d7a023          	sw	a3,0(a5)
    160c:	00442683          	lw	a3,4(s0)
    1610:	02069e63          	bnez	a3,164c <_allocate_file+0x6c>
    1614:	00e7a223          	sw	a4,4(a5)
    1618:	00007537          	lui	a0,0x7
    161c:	00040593          	mv	a1,s0
    1620:	75850513          	add	a0,a0,1880 # 7758 <_open_file_list>
    1624:	00000097          	auipc	ra,0x0
    1628:	bc8080e7          	jalr	-1080(ra) # 11ec <fat_list_insert_last>
    162c:	bc440413          	add	s0,s0,-1084
    1630:	00c12083          	lw	ra,12(sp)
    1634:	00040513          	mv	a0,s0
    1638:	00812403          	lw	s0,8(sp)
    163c:	01010113          	add	sp,sp,16
    1640:	00008067          	ret
    1644:	00d72223          	sw	a3,4(a4)
    1648:	fc5ff06f          	j	160c <_allocate_file+0x2c>
    164c:	00e6a023          	sw	a4,0(a3)
    1650:	fc9ff06f          	j	1618 <_allocate_file+0x38>

00001654 <_free_file>:
    1654:	43c52783          	lw	a5,1084(a0)
    1658:	44052703          	lw	a4,1088(a0)
    165c:	43c50593          	add	a1,a0,1084
    1660:	02079663          	bnez	a5,168c <_free_file+0x38>
    1664:	000076b7          	lui	a3,0x7
    1668:	74e6ac23          	sw	a4,1880(a3) # 7758 <_open_file_list>
    166c:	44052703          	lw	a4,1088(a0)
    1670:	02071263          	bnez	a4,1694 <_free_file+0x40>
    1674:	00007737          	lui	a4,0x7
    1678:	74f72e23          	sw	a5,1884(a4) # 775c <_open_file_list+0x4>
    167c:	00007537          	lui	a0,0x7
    1680:	75050513          	add	a0,a0,1872 # 7750 <_free_file_list>
    1684:	00000317          	auipc	t1,0x0
    1688:	b6830067          	jr	-1176(t1) # 11ec <fat_list_insert_last>
    168c:	00e7a223          	sw	a4,4(a5)
    1690:	fddff06f          	j	166c <_free_file+0x18>
    1694:	00f72023          	sw	a5,0(a4)
    1698:	fe5ff06f          	j	167c <_free_file+0x28>

0000169c <fatfs_lba_of_cluster>:
    169c:	ff010113          	add	sp,sp,-16
    16a0:	00812423          	sw	s0,8(sp)
    16a4:	00112623          	sw	ra,12(sp)
    16a8:	00050413          	mv	s0,a0
    16ac:	00058513          	mv	a0,a1
    16b0:	00044583          	lbu	a1,0(s0)
    16b4:	ffe50513          	add	a0,a0,-2
    16b8:	00000097          	auipc	ra,0x0
    16bc:	b08080e7          	jalr	-1272(ra) # 11c0 <__mulsi3>
    16c0:	00442783          	lw	a5,4(s0)
    16c4:	00f50533          	add	a0,a0,a5
    16c8:	03042783          	lw	a5,48(s0)
    16cc:	00079863          	bnez	a5,16dc <fatfs_lba_of_cluster+0x40>
    16d0:	02845783          	lhu	a5,40(s0)
    16d4:	4047d793          	sra	a5,a5,0x4
    16d8:	00f50533          	add	a0,a0,a5
    16dc:	00c12083          	lw	ra,12(sp)
    16e0:	00812403          	lw	s0,8(sp)
    16e4:	01010113          	add	sp,sp,16
    16e8:	00008067          	ret

000016ec <fatfs_sector_read>:
    16ec:	03452783          	lw	a5,52(a0)
    16f0:	00058713          	mv	a4,a1
    16f4:	00070513          	mv	a0,a4
    16f8:	00060593          	mv	a1,a2
    16fc:	00068613          	mv	a2,a3
    1700:	00078067          	jr	a5

00001704 <fatfs_sector_write>:
    1704:	03852783          	lw	a5,56(a0)
    1708:	00058713          	mv	a4,a1
    170c:	00070513          	mv	a0,a4
    1710:	00060593          	mv	a1,a2
    1714:	00068613          	mv	a2,a3
    1718:	00078067          	jr	a5

0000171c <fatfs_read_sector>:
    171c:	03052783          	lw	a5,48(a0)
    1720:	ff010113          	add	sp,sp,-16
    1724:	00812423          	sw	s0,8(sp)
    1728:	00912223          	sw	s1,4(sp)
    172c:	01212023          	sw	s2,0(sp)
    1730:	00112623          	sw	ra,12(sp)
    1734:	00f5e7b3          	or	a5,a1,a5
    1738:	00050413          	mv	s0,a0
    173c:	00060493          	mv	s1,a2
    1740:	00068913          	mv	s2,a3
    1744:	04079263          	bnez	a5,1788 <fatfs_read_sector+0x6c>
    1748:	01052783          	lw	a5,16(a0)
    174c:	04f67c63          	bgeu	a2,a5,17a4 <fatfs_read_sector+0x88>
    1750:	01c52503          	lw	a0,28(a0)
    1754:	00c42783          	lw	a5,12(s0)
    1758:	00f50533          	add	a0,a0,a5
    175c:	03442783          	lw	a5,52(s0)
    1760:	00a48533          	add	a0,s1,a0
    1764:	02090863          	beqz	s2,1794 <fatfs_read_sector+0x78>
    1768:	00100613          	li	a2,1
    176c:	00090593          	mv	a1,s2
    1770:	00812403          	lw	s0,8(sp)
    1774:	00c12083          	lw	ra,12(sp)
    1778:	00412483          	lw	s1,4(sp)
    177c:	00012903          	lw	s2,0(sp)
    1780:	01010113          	add	sp,sp,16
    1784:	00078067          	jr	a5
    1788:	00000097          	auipc	ra,0x0
    178c:	f14080e7          	jalr	-236(ra) # 169c <fatfs_lba_of_cluster>
    1790:	fcdff06f          	j	175c <fatfs_read_sector+0x40>
    1794:	24a42223          	sw	a0,580(s0)
    1798:	00100613          	li	a2,1
    179c:	04440593          	add	a1,s0,68
    17a0:	fd1ff06f          	j	1770 <fatfs_read_sector+0x54>
    17a4:	00c12083          	lw	ra,12(sp)
    17a8:	00812403          	lw	s0,8(sp)
    17ac:	00412483          	lw	s1,4(sp)
    17b0:	00012903          	lw	s2,0(sp)
    17b4:	00000513          	li	a0,0
    17b8:	01010113          	add	sp,sp,16
    17bc:	00008067          	ret

000017c0 <fatfs_write_sector>:
    17c0:	03852783          	lw	a5,56(a0)
    17c4:	0a078863          	beqz	a5,1874 <fatfs_write_sector+0xb4>
    17c8:	fe010113          	add	sp,sp,-32
    17cc:	01212823          	sw	s2,16(sp)
    17d0:	00068913          	mv	s2,a3
    17d4:	03052683          	lw	a3,48(a0)
    17d8:	00812c23          	sw	s0,24(sp)
    17dc:	00912a23          	sw	s1,20(sp)
    17e0:	00112e23          	sw	ra,28(sp)
    17e4:	00d5e733          	or	a4,a1,a3
    17e8:	00050413          	mv	s0,a0
    17ec:	00060493          	mv	s1,a2
    17f0:	04071063          	bnez	a4,1830 <fatfs_write_sector+0x70>
    17f4:	01052703          	lw	a4,16(a0)
    17f8:	06e67063          	bgeu	a2,a4,1858 <fatfs_write_sector+0x98>
    17fc:	01c52503          	lw	a0,28(a0)
    1800:	00c42703          	lw	a4,12(s0)
    1804:	00e50533          	add	a0,a0,a4
    1808:	00c50533          	add	a0,a0,a2
    180c:	02090e63          	beqz	s2,1848 <fatfs_write_sector+0x88>
    1810:	00100613          	li	a2,1
    1814:	00090593          	mv	a1,s2
    1818:	01812403          	lw	s0,24(sp)
    181c:	01c12083          	lw	ra,28(sp)
    1820:	01412483          	lw	s1,20(sp)
    1824:	01012903          	lw	s2,16(sp)
    1828:	02010113          	add	sp,sp,32
    182c:	00078067          	jr	a5
    1830:	00f12623          	sw	a5,12(sp)
    1834:	00000097          	auipc	ra,0x0
    1838:	e68080e7          	jalr	-408(ra) # 169c <fatfs_lba_of_cluster>
    183c:	00c12783          	lw	a5,12(sp)
    1840:	00a48533          	add	a0,s1,a0
    1844:	fc9ff06f          	j	180c <fatfs_write_sector+0x4c>
    1848:	24a42223          	sw	a0,580(s0)
    184c:	00100613          	li	a2,1
    1850:	04440593          	add	a1,s0,68
    1854:	fc5ff06f          	j	1818 <fatfs_write_sector+0x58>
    1858:	01c12083          	lw	ra,28(sp)
    185c:	01812403          	lw	s0,24(sp)
    1860:	01412483          	lw	s1,20(sp)
    1864:	01012903          	lw	s2,16(sp)
    1868:	00000513          	li	a0,0
    186c:	02010113          	add	sp,sp,32
    1870:	00008067          	ret
    1874:	00000513          	li	a0,0
    1878:	00008067          	ret

0000187c <fatfs_show_details>:
    187c:	ff010113          	add	sp,sp,-16
    1880:	00812423          	sw	s0,8(sp)
    1884:	00050413          	mv	s0,a0
    1888:	00007537          	lui	a0,0x7
    188c:	3f450513          	add	a0,a0,1012 # 73f4 <font+0x2d4>
    1890:	00112623          	sw	ra,12(sp)
    1894:	fffff097          	auipc	ra,0xfffff
    1898:	7fc080e7          	jalr	2044(ra) # 1090 <printf>
    189c:	03042703          	lw	a4,48(s0)
    18a0:	00100793          	li	a5,1
    18a4:	06f71c63          	bne	a4,a5,191c <fatfs_show_details+0xa0>
    18a8:	000075b7          	lui	a1,0x7
    18ac:	3e458593          	add	a1,a1,996 # 73e4 <font+0x2c4>
    18b0:	00007537          	lui	a0,0x7
    18b4:	40450513          	add	a0,a0,1028 # 7404 <font+0x2e4>
    18b8:	fffff097          	auipc	ra,0xfffff
    18bc:	7d8080e7          	jalr	2008(ra) # 1090 <printf>
    18c0:	00842583          	lw	a1,8(s0)
    18c4:	00007537          	lui	a0,0x7
    18c8:	41050513          	add	a0,a0,1040 # 7410 <font+0x2f0>
    18cc:	fffff097          	auipc	ra,0xfffff
    18d0:	7c4080e7          	jalr	1988(ra) # 1090 <printf>
    18d4:	01442583          	lw	a1,20(s0)
    18d8:	00007537          	lui	a0,0x7
    18dc:	43050513          	add	a0,a0,1072 # 7430 <font+0x310>
    18e0:	fffff097          	auipc	ra,0xfffff
    18e4:	7b0080e7          	jalr	1968(ra) # 1090 <printf>
    18e8:	00442583          	lw	a1,4(s0)
    18ec:	00007537          	lui	a0,0x7
    18f0:	44850513          	add	a0,a0,1096 # 7448 <font+0x328>
    18f4:	fffff097          	auipc	ra,0xfffff
    18f8:	79c080e7          	jalr	1948(ra) # 1090 <printf>
    18fc:	00044583          	lbu	a1,0(s0)
    1900:	00812403          	lw	s0,8(sp)
    1904:	00c12083          	lw	ra,12(sp)
    1908:	00007537          	lui	a0,0x7
    190c:	46450513          	add	a0,a0,1124 # 7464 <font+0x344>
    1910:	01010113          	add	sp,sp,16
    1914:	fffff317          	auipc	t1,0xfffff
    1918:	77c30067          	jr	1916(t1) # 1090 <printf>
    191c:	000075b7          	lui	a1,0x7
    1920:	3ec58593          	add	a1,a1,1004 # 73ec <font+0x2cc>
    1924:	f8dff06f          	j	18b0 <fatfs_show_details+0x34>

00001928 <fatfs_get_root_cluster>:
    1928:	00852503          	lw	a0,8(a0)
    192c:	00008067          	ret

00001930 <fatfs_list_directory_start>:
    1930:	00c5a223          	sw	a2,4(a1)
    1934:	0005a023          	sw	zero,0(a1)
    1938:	00058423          	sb	zero,8(a1)
    193c:	00008067          	ret

00001940 <fatfs_cache_init>:
    1940:	00100513          	li	a0,1
    1944:	00008067          	ret

00001948 <fatfs_cache_get_next_cluster>:
    1948:	00000513          	li	a0,0
    194c:	00008067          	ret

00001950 <fatfs_cache_set_next_cluster>:
    1950:	00100513          	li	a0,1
    1954:	00008067          	ret

00001958 <fl_init>:
    1958:	ff010113          	add	sp,sp,-16
    195c:	00812423          	sw	s0,8(sp)
    1960:	00007437          	lui	s0,0x7
    1964:	00112623          	sw	ra,12(sp)
    1968:	75040793          	add	a5,s0,1872 # 7750 <_free_file_list>
    196c:	0007a223          	sw	zero,4(a5)
    1970:	0007a023          	sw	zero,0(a5)
    1974:	0000d5b7          	lui	a1,0xd
    1978:	000077b7          	lui	a5,0x7
    197c:	75878793          	add	a5,a5,1880 # 7758 <_open_file_list>
    1980:	75040513          	add	a0,s0,1872
    1984:	d9058593          	add	a1,a1,-624 # cd90 <_files+0x43c>
    1988:	0007a223          	sw	zero,4(a5)
    198c:	0007a023          	sw	zero,0(a5)
    1990:	00000097          	auipc	ra,0x0
    1994:	85c080e7          	jalr	-1956(ra) # 11ec <fat_list_insert_last>
    1998:	0000d5b7          	lui	a1,0xd
    199c:	75040513          	add	a0,s0,1872
    19a0:	1d458593          	add	a1,a1,468 # d1d4 <_files+0x880>
    19a4:	00000097          	auipc	ra,0x0
    19a8:	848080e7          	jalr	-1976(ra) # 11ec <fat_list_insert_last>
    19ac:	00c12083          	lw	ra,12(sp)
    19b0:	00812403          	lw	s0,8(sp)
    19b4:	000077b7          	lui	a5,0x7
    19b8:	00100713          	li	a4,1
    19bc:	76e7a223          	sw	a4,1892(a5) # 7764 <_filelib_init>
    19c0:	01010113          	add	sp,sp,16
    19c4:	00008067          	ret

000019c8 <fl_attach_locks>:
    19c8:	0000c7b7          	lui	a5,0xc
    19cc:	4ec78793          	add	a5,a5,1260 # c4ec <_fs>
    19d0:	02a7ae23          	sw	a0,60(a5)
    19d4:	04b7a023          	sw	a1,64(a5)
    19d8:	00008067          	ret

000019dc <fl_fseek>:
    19dc:	000077b7          	lui	a5,0x7
    19e0:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    19e4:	fd010113          	add	sp,sp,-48
    19e8:	02812423          	sw	s0,40(sp)
    19ec:	02912223          	sw	s1,36(sp)
    19f0:	03212023          	sw	s2,32(sp)
    19f4:	02112623          	sw	ra,44(sp)
    19f8:	01312e23          	sw	s3,28(sp)
    19fc:	00050413          	mv	s0,a0
    1a00:	00058493          	mv	s1,a1
    1a04:	00060913          	mv	s2,a2
    1a08:	00079663          	bnez	a5,1a14 <fl_fseek+0x38>
    1a0c:	00000097          	auipc	ra,0x0
    1a10:	f4c080e7          	jalr	-180(ra) # 1958 <fl_init>
    1a14:	fff00513          	li	a0,-1
    1a18:	08040463          	beqz	s0,1aa0 <fl_fseek+0xc4>
    1a1c:	00200793          	li	a5,2
    1a20:	00f91463          	bne	s2,a5,1a28 <fl_fseek+0x4c>
    1a24:	06049e63          	bnez	s1,1aa0 <fl_fseek+0xc4>
    1a28:	0000c7b7          	lui	a5,0xc
    1a2c:	4ec78713          	add	a4,a5,1260 # c4ec <_fs>
    1a30:	03c72703          	lw	a4,60(a4)
    1a34:	4ec78993          	add	s3,a5,1260
    1a38:	00070463          	beqz	a4,1a40 <fl_fseek+0x64>
    1a3c:	000700e7          	jalr	a4
    1a40:	fff00513          	li	a0,-1
    1a44:	42a42823          	sw	a0,1072(s0)
    1a48:	42042a23          	sw	zero,1076(s0)
    1a4c:	00091c63          	bnez	s2,1a64 <fl_fseek+0x88>
    1a50:	00c42783          	lw	a5,12(s0)
    1a54:	00942423          	sw	s1,8(s0)
    1a58:	0297f863          	bgeu	a5,s1,1a88 <fl_fseek+0xac>
    1a5c:	00f42423          	sw	a5,8(s0)
    1a60:	0280006f          	j	1a88 <fl_fseek+0xac>
    1a64:	00100793          	li	a5,1
    1a68:	06f91063          	bne	s2,a5,1ac8 <fl_fseek+0xec>
    1a6c:	00842783          	lw	a5,8(s0)
    1a70:	0004c663          	bltz	s1,1a7c <fl_fseek+0xa0>
    1a74:	00f484b3          	add	s1,s1,a5
    1a78:	fd9ff06f          	j	1a50 <fl_fseek+0x74>
    1a7c:	40900733          	neg	a4,s1
    1a80:	02e7fe63          	bgeu	a5,a4,1abc <fl_fseek+0xe0>
    1a84:	00042423          	sw	zero,8(s0)
    1a88:	00000513          	li	a0,0
    1a8c:	0409a783          	lw	a5,64(s3)
    1a90:	00078863          	beqz	a5,1aa0 <fl_fseek+0xc4>
    1a94:	00a12623          	sw	a0,12(sp)
    1a98:	000780e7          	jalr	a5
    1a9c:	00c12503          	lw	a0,12(sp)
    1aa0:	02c12083          	lw	ra,44(sp)
    1aa4:	02812403          	lw	s0,40(sp)
    1aa8:	02412483          	lw	s1,36(sp)
    1aac:	02012903          	lw	s2,32(sp)
    1ab0:	01c12983          	lw	s3,28(sp)
    1ab4:	03010113          	add	sp,sp,48
    1ab8:	00008067          	ret
    1abc:	00f484b3          	add	s1,s1,a5
    1ac0:	00942423          	sw	s1,8(s0)
    1ac4:	fc5ff06f          	j	1a88 <fl_fseek+0xac>
    1ac8:	00200793          	li	a5,2
    1acc:	fcf910e3          	bne	s2,a5,1a8c <fl_fseek+0xb0>
    1ad0:	00c42783          	lw	a5,12(s0)
    1ad4:	f89ff06f          	j	1a5c <fl_fseek+0x80>

00001ad8 <fl_fgetpos>:
    1ad8:	06050663          	beqz	a0,1b44 <fl_fgetpos+0x6c>
    1adc:	0000c7b7          	lui	a5,0xc
    1ae0:	4ec78713          	add	a4,a5,1260 # c4ec <_fs>
    1ae4:	03c72703          	lw	a4,60(a4)
    1ae8:	ff010113          	add	sp,sp,-16
    1aec:	00812423          	sw	s0,8(sp)
    1af0:	00912223          	sw	s1,4(sp)
    1af4:	01212023          	sw	s2,0(sp)
    1af8:	00112623          	sw	ra,12(sp)
    1afc:	00050493          	mv	s1,a0
    1b00:	00058913          	mv	s2,a1
    1b04:	4ec78413          	add	s0,a5,1260
    1b08:	00070463          	beqz	a4,1b10 <fl_fgetpos+0x38>
    1b0c:	000700e7          	jalr	a4
    1b10:	0084a783          	lw	a5,8(s1)
    1b14:	00f92023          	sw	a5,0(s2)
    1b18:	04042783          	lw	a5,64(s0)
    1b1c:	02079063          	bnez	a5,1b3c <fl_fgetpos+0x64>
    1b20:	00c12083          	lw	ra,12(sp)
    1b24:	00812403          	lw	s0,8(sp)
    1b28:	00412483          	lw	s1,4(sp)
    1b2c:	00012903          	lw	s2,0(sp)
    1b30:	00000513          	li	a0,0
    1b34:	01010113          	add	sp,sp,16
    1b38:	00008067          	ret
    1b3c:	000780e7          	jalr	a5
    1b40:	fe1ff06f          	j	1b20 <fl_fgetpos+0x48>
    1b44:	fff00513          	li	a0,-1
    1b48:	00008067          	ret

00001b4c <fl_ftell>:
    1b4c:	fe010113          	add	sp,sp,-32
    1b50:	00c10593          	add	a1,sp,12
    1b54:	00112e23          	sw	ra,28(sp)
    1b58:	00012623          	sw	zero,12(sp)
    1b5c:	00000097          	auipc	ra,0x0
    1b60:	f7c080e7          	jalr	-132(ra) # 1ad8 <fl_fgetpos>
    1b64:	01c12083          	lw	ra,28(sp)
    1b68:	00c12503          	lw	a0,12(sp)
    1b6c:	02010113          	add	sp,sp,32
    1b70:	00008067          	ret

00001b74 <fl_feof>:
    1b74:	06050663          	beqz	a0,1be0 <fl_feof+0x6c>
    1b78:	0000c7b7          	lui	a5,0xc
    1b7c:	4ec78713          	add	a4,a5,1260 # c4ec <_fs>
    1b80:	03c72703          	lw	a4,60(a4)
    1b84:	fe010113          	add	sp,sp,-32
    1b88:	00812c23          	sw	s0,24(sp)
    1b8c:	00912a23          	sw	s1,20(sp)
    1b90:	00112e23          	sw	ra,28(sp)
    1b94:	00050413          	mv	s0,a0
    1b98:	4ec78493          	add	s1,a5,1260
    1b9c:	00070463          	beqz	a4,1ba4 <fl_feof+0x30>
    1ba0:	000700e7          	jalr	a4
    1ba4:	00842783          	lw	a5,8(s0)
    1ba8:	00c42703          	lw	a4,12(s0)
    1bac:	40e78533          	sub	a0,a5,a4
    1bb0:	0404a783          	lw	a5,64(s1)
    1bb4:	00153513          	seqz	a0,a0
    1bb8:	40a00533          	neg	a0,a0
    1bbc:	00078863          	beqz	a5,1bcc <fl_feof+0x58>
    1bc0:	00a12623          	sw	a0,12(sp)
    1bc4:	000780e7          	jalr	a5
    1bc8:	00c12503          	lw	a0,12(sp)
    1bcc:	01c12083          	lw	ra,28(sp)
    1bd0:	01812403          	lw	s0,24(sp)
    1bd4:	01412483          	lw	s1,20(sp)
    1bd8:	02010113          	add	sp,sp,32
    1bdc:	00008067          	ret
    1be0:	fff00513          	li	a0,-1
    1be4:	00008067          	ret

00001be8 <fl_closedir>:
    1be8:	00000513          	li	a0,0
    1bec:	00008067          	ret

00001bf0 <fatfs_lfn_cache_init>:
    1bf0:	100502a3          	sb	zero,261(a0)
    1bf4:	04058663          	beqz	a1,1c40 <fatfs_lfn_cache_init+0x50>
    1bf8:	ff010113          	add	sp,sp,-16
    1bfc:	00812423          	sw	s0,8(sp)
    1c00:	00912223          	sw	s1,4(sp)
    1c04:	00112623          	sw	ra,12(sp)
    1c08:	00050413          	mv	s0,a0
    1c0c:	10450493          	add	s1,a0,260
    1c10:	00040513          	mv	a0,s0
    1c14:	00d00613          	li	a2,13
    1c18:	00000593          	li	a1,0
    1c1c:	00d40413          	add	s0,s0,13
    1c20:	fffff097          	auipc	ra,0xfffff
    1c24:	c44080e7          	jalr	-956(ra) # 864 <memset>
    1c28:	fe9414e3          	bne	s0,s1,1c10 <fatfs_lfn_cache_init+0x20>
    1c2c:	00c12083          	lw	ra,12(sp)
    1c30:	00812403          	lw	s0,8(sp)
    1c34:	00412483          	lw	s1,4(sp)
    1c38:	01010113          	add	sp,sp,16
    1c3c:	00008067          	ret
    1c40:	00008067          	ret

00001c44 <fatfs_lfn_cache_entry>:
    1c44:	0005c783          	lbu	a5,0(a1)
    1c48:	01300693          	li	a3,19
    1c4c:	01f7f793          	and	a5,a5,31
    1c50:	fff78713          	add	a4,a5,-1
    1c54:	0ff77613          	zext.b	a2,a4
    1c58:	0ac6ea63          	bltu	a3,a2,1d0c <fatfs_lfn_cache_entry+0xc8>
    1c5c:	10554683          	lbu	a3,261(a0)
    1c60:	00069463          	bnez	a3,1c68 <fatfs_lfn_cache_entry+0x24>
    1c64:	10f502a3          	sb	a5,261(a0)
    1c68:	00171793          	sll	a5,a4,0x1
    1c6c:	00e787b3          	add	a5,a5,a4
    1c70:	0015c683          	lbu	a3,1(a1)
    1c74:	00279793          	sll	a5,a5,0x2
    1c78:	00e787b3          	add	a5,a5,a4
    1c7c:	00f50533          	add	a0,a0,a5
    1c80:	00d50023          	sb	a3,0(a0)
    1c84:	0035c783          	lbu	a5,3(a1)
    1c88:	0ff00713          	li	a4,255
    1c8c:	02000693          	li	a3,32
    1c90:	00f500a3          	sb	a5,1(a0)
    1c94:	0055c783          	lbu	a5,5(a1)
    1c98:	00f50123          	sb	a5,2(a0)
    1c9c:	0075c783          	lbu	a5,7(a1)
    1ca0:	00f501a3          	sb	a5,3(a0)
    1ca4:	0095c783          	lbu	a5,9(a1)
    1ca8:	00f50223          	sb	a5,4(a0)
    1cac:	00e5c783          	lbu	a5,14(a1)
    1cb0:	00f502a3          	sb	a5,5(a0)
    1cb4:	0105c783          	lbu	a5,16(a1)
    1cb8:	00f50323          	sb	a5,6(a0)
    1cbc:	0125c783          	lbu	a5,18(a1)
    1cc0:	00f503a3          	sb	a5,7(a0)
    1cc4:	0145c783          	lbu	a5,20(a1)
    1cc8:	00f50423          	sb	a5,8(a0)
    1ccc:	0165c783          	lbu	a5,22(a1)
    1cd0:	00f504a3          	sb	a5,9(a0)
    1cd4:	0185c783          	lbu	a5,24(a1)
    1cd8:	00f50523          	sb	a5,10(a0)
    1cdc:	01c5c783          	lbu	a5,28(a1)
    1ce0:	00f505a3          	sb	a5,11(a0)
    1ce4:	01e5c783          	lbu	a5,30(a1)
    1ce8:	00f50623          	sb	a5,12(a0)
    1cec:	00d00793          	li	a5,13
    1cf0:	00054603          	lbu	a2,0(a0)
    1cf4:	00e61463          	bne	a2,a4,1cfc <fatfs_lfn_cache_entry+0xb8>
    1cf8:	00d50023          	sb	a3,0(a0)
    1cfc:	fff78793          	add	a5,a5,-1
    1d00:	0ff7f793          	zext.b	a5,a5
    1d04:	00150513          	add	a0,a0,1
    1d08:	fe0794e3          	bnez	a5,1cf0 <fatfs_lfn_cache_entry+0xac>
    1d0c:	00008067          	ret

00001d10 <fatfs_lfn_cache_get>:
    1d10:	10554703          	lbu	a4,261(a0)
    1d14:	01400793          	li	a5,20
    1d18:	00f71663          	bne	a4,a5,1d24 <fatfs_lfn_cache_get+0x14>
    1d1c:	10050223          	sb	zero,260(a0)
    1d20:	00008067          	ret
    1d24:	02070063          	beqz	a4,1d44 <fatfs_lfn_cache_get+0x34>
    1d28:	00171793          	sll	a5,a4,0x1
    1d2c:	00e787b3          	add	a5,a5,a4
    1d30:	00279793          	sll	a5,a5,0x2
    1d34:	00e787b3          	add	a5,a5,a4
    1d38:	00f507b3          	add	a5,a0,a5
    1d3c:	00078023          	sb	zero,0(a5)
    1d40:	00008067          	ret
    1d44:	00050023          	sb	zero,0(a0)
    1d48:	00008067          	ret

00001d4c <fatfs_entry_lfn_text>:
    1d4c:	00b54503          	lbu	a0,11(a0)
    1d50:	00f57513          	and	a0,a0,15
    1d54:	ff150513          	add	a0,a0,-15
    1d58:	00153513          	seqz	a0,a0
    1d5c:	00008067          	ret

00001d60 <fatfs_entry_lfn_invalid>:
    1d60:	00054703          	lbu	a4,0(a0)
    1d64:	00050793          	mv	a5,a0
    1d68:	02070463          	beqz	a4,1d90 <fatfs_entry_lfn_invalid+0x30>
    1d6c:	0e500693          	li	a3,229
    1d70:	00100513          	li	a0,1
    1d74:	02d70063          	beq	a4,a3,1d94 <fatfs_entry_lfn_invalid+0x34>
    1d78:	00b7c783          	lbu	a5,11(a5)
    1d7c:	00800713          	li	a4,8
    1d80:	00e78a63          	beq	a5,a4,1d94 <fatfs_entry_lfn_invalid+0x34>
    1d84:	0067f793          	and	a5,a5,6
    1d88:	00f03533          	snez	a0,a5
    1d8c:	00008067          	ret
    1d90:	00100513          	li	a0,1
    1d94:	00008067          	ret

00001d98 <fatfs_entry_lfn_exists>:
    1d98:	00b5c783          	lbu	a5,11(a1)
    1d9c:	00f00693          	li	a3,15
    1da0:	00050713          	mv	a4,a0
    1da4:	02d78a63          	beq	a5,a3,1dd8 <fatfs_entry_lfn_exists+0x40>
    1da8:	0005c683          	lbu	a3,0(a1)
    1dac:	00000513          	li	a0,0
    1db0:	02068663          	beqz	a3,1ddc <fatfs_entry_lfn_exists+0x44>
    1db4:	0e500613          	li	a2,229
    1db8:	02c68263          	beq	a3,a2,1ddc <fatfs_entry_lfn_exists+0x44>
    1dbc:	00800693          	li	a3,8
    1dc0:	00d78e63          	beq	a5,a3,1ddc <fatfs_entry_lfn_exists+0x44>
    1dc4:	0067f793          	and	a5,a5,6
    1dc8:	00079a63          	bnez	a5,1ddc <fatfs_entry_lfn_exists+0x44>
    1dcc:	10574503          	lbu	a0,261(a4)
    1dd0:	00a03533          	snez	a0,a0
    1dd4:	00008067          	ret
    1dd8:	00000513          	li	a0,0
    1ddc:	00008067          	ret

00001de0 <fatfs_entry_sfn_only>:
    1de0:	00b54783          	lbu	a5,11(a0)
    1de4:	00f00713          	li	a4,15
    1de8:	02e78663          	beq	a5,a4,1e14 <fatfs_entry_sfn_only+0x34>
    1dec:	00054703          	lbu	a4,0(a0)
    1df0:	00000513          	li	a0,0
    1df4:	02070263          	beqz	a4,1e18 <fatfs_entry_sfn_only+0x38>
    1df8:	0e500693          	li	a3,229
    1dfc:	00d70e63          	beq	a4,a3,1e18 <fatfs_entry_sfn_only+0x38>
    1e00:	00800713          	li	a4,8
    1e04:	00e78a63          	beq	a5,a4,1e18 <fatfs_entry_sfn_only+0x38>
    1e08:	0067f793          	and	a5,a5,6
    1e0c:	0017b513          	seqz	a0,a5
    1e10:	00008067          	ret
    1e14:	00000513          	li	a0,0
    1e18:	00008067          	ret

00001e1c <fatfs_entry_is_dir>:
    1e1c:	00b54503          	lbu	a0,11(a0)
    1e20:	00455513          	srl	a0,a0,0x4
    1e24:	00157513          	and	a0,a0,1
    1e28:	00008067          	ret

00001e2c <fatfs_entry_is_file>:
    1e2c:	00b54503          	lbu	a0,11(a0)
    1e30:	00555513          	srl	a0,a0,0x5
    1e34:	00157513          	and	a0,a0,1
    1e38:	00008067          	ret

00001e3c <fatfs_lfn_entries_required>:
    1e3c:	ff010113          	add	sp,sp,-16
    1e40:	00112623          	sw	ra,12(sp)
    1e44:	fffff097          	auipc	ra,0xfffff
    1e48:	a60080e7          	jalr	-1440(ra) # 8a4 <strlen>
    1e4c:	00050a63          	beqz	a0,1e60 <fatfs_lfn_entries_required+0x24>
    1e50:	00d00593          	li	a1,13
    1e54:	00c50513          	add	a0,a0,12
    1e58:	fffff097          	auipc	ra,0xfffff
    1e5c:	930080e7          	jalr	-1744(ra) # 788 <__divsi3>
    1e60:	00c12083          	lw	ra,12(sp)
    1e64:	01010113          	add	sp,sp,16
    1e68:	00008067          	ret

00001e6c <fatfs_filename_to_lfn>:
    1e6c:	fa010113          	add	sp,sp,-96
    1e70:	04912a23          	sw	s1,84(sp)
    1e74:	00058493          	mv	s1,a1
    1e78:	000075b7          	lui	a1,0x7
    1e7c:	30058593          	add	a1,a1,768 # 7300 <font+0x1e0>
    1e80:	05212823          	sw	s2,80(sp)
    1e84:	05312623          	sw	s3,76(sp)
    1e88:	00060913          	mv	s2,a2
    1e8c:	00050993          	mv	s3,a0
    1e90:	03400613          	li	a2,52
    1e94:	00c10513          	add	a0,sp,12
    1e98:	04112e23          	sw	ra,92(sp)
    1e9c:	04812c23          	sw	s0,88(sp)
    1ea0:	05412423          	sw	s4,72(sp)
    1ea4:	05512223          	sw	s5,68(sp)
    1ea8:	05612023          	sw	s6,64(sp)
    1eac:	00068b13          	mv	s6,a3
    1eb0:	fffff097          	auipc	ra,0xfffff
    1eb4:	9d0080e7          	jalr	-1584(ra) # 880 <memcpy>
    1eb8:	00098513          	mv	a0,s3
    1ebc:	fffff097          	auipc	ra,0xfffff
    1ec0:	9e8080e7          	jalr	-1560(ra) # 8a4 <strlen>
    1ec4:	00050a93          	mv	s5,a0
    1ec8:	00098513          	mv	a0,s3
    1ecc:	00000097          	auipc	ra,0x0
    1ed0:	f70080e7          	jalr	-144(ra) # 1e3c <fatfs_lfn_entries_required>
    1ed4:	00191793          	sll	a5,s2,0x1
    1ed8:	012787b3          	add	a5,a5,s2
    1edc:	00279793          	sll	a5,a5,0x2
    1ee0:	00050a13          	mv	s4,a0
    1ee4:	02000613          	li	a2,32
    1ee8:	00000593          	li	a1,0
    1eec:	00048513          	mv	a0,s1
    1ef0:	01278433          	add	s0,a5,s2
    1ef4:	fffff097          	auipc	ra,0xfffff
    1ef8:	970080e7          	jalr	-1680(ra) # 864 <memset>
    1efc:	00190793          	add	a5,s2,1
    1f00:	fffa0a13          	add	s4,s4,-1
    1f04:	0ff7f793          	zext.b	a5,a5
    1f08:	012a1463          	bne	s4,s2,1f10 <fatfs_filename_to_lfn+0xa4>
    1f0c:	0407e793          	or	a5,a5,64
    1f10:	00f48023          	sb	a5,0(s1)
    1f14:	00f00793          	li	a5,15
    1f18:	00f485a3          	sb	a5,11(s1)
    1f1c:	016486a3          	sb	s6,13(s1)
    1f20:	00c10713          	add	a4,sp,12
    1f24:	00040793          	mv	a5,s0
    1f28:	fff00613          	li	a2,-1
    1f2c:	00072683          	lw	a3,0(a4)
    1f30:	00d486b3          	add	a3,s1,a3
    1f34:	0557d463          	bge	a5,s5,1f7c <fatfs_filename_to_lfn+0x110>
    1f38:	00f985b3          	add	a1,s3,a5
    1f3c:	0005c583          	lbu	a1,0(a1)
    1f40:	00b68023          	sb	a1,0(a3)
    1f44:	00470713          	add	a4,a4,4
    1f48:	04010693          	add	a3,sp,64
    1f4c:	00178793          	add	a5,a5,1
    1f50:	fcd71ee3          	bne	a4,a3,1f2c <fatfs_filename_to_lfn+0xc0>
    1f54:	05c12083          	lw	ra,92(sp)
    1f58:	05812403          	lw	s0,88(sp)
    1f5c:	05412483          	lw	s1,84(sp)
    1f60:	05012903          	lw	s2,80(sp)
    1f64:	04c12983          	lw	s3,76(sp)
    1f68:	04812a03          	lw	s4,72(sp)
    1f6c:	04412a83          	lw	s5,68(sp)
    1f70:	04012b03          	lw	s6,64(sp)
    1f74:	06010113          	add	sp,sp,96
    1f78:	00008067          	ret
    1f7c:	01579663          	bne	a5,s5,1f88 <fatfs_filename_to_lfn+0x11c>
    1f80:	00068023          	sb	zero,0(a3)
    1f84:	fc1ff06f          	j	1f44 <fatfs_filename_to_lfn+0xd8>
    1f88:	00c68023          	sb	a2,0(a3)
    1f8c:	00c680a3          	sb	a2,1(a3)
    1f90:	fb5ff06f          	j	1f44 <fatfs_filename_to_lfn+0xd8>

00001f94 <fatfs_sfn_create_entry>:
    1f94:	00000793          	li	a5,0
    1f98:	00b00813          	li	a6,11
    1f9c:	00f508b3          	add	a7,a0,a5
    1fa0:	0008c303          	lbu	t1,0(a7)
    1fa4:	00f688b3          	add	a7,a3,a5
    1fa8:	00178793          	add	a5,a5,1
    1fac:	00688023          	sb	t1,0(a7)
    1fb0:	ff0796e3          	bne	a5,a6,1f9c <fatfs_sfn_create_entry+0x8>
    1fb4:	02000793          	li	a5,32
    1fb8:	00f68823          	sb	a5,16(a3)
    1fbc:	00f68923          	sb	a5,18(a3)
    1fc0:	00f68c23          	sb	a5,24(a3)
    1fc4:	00e037b3          	snez	a5,a4
    1fc8:	40f007b3          	neg	a5,a5
    1fcc:	ff07f793          	and	a5,a5,-16
    1fd0:	02078793          	add	a5,a5,32
    1fd4:	00f685a3          	sb	a5,11(a3)
    1fd8:	01065793          	srl	a5,a2,0x10
    1fdc:	00f68a23          	sb	a5,20(a3)
    1fe0:	01865793          	srl	a5,a2,0x18
    1fe4:	00f68aa3          	sb	a5,21(a3)
    1fe8:	01061793          	sll	a5,a2,0x10
    1fec:	0107d793          	srl	a5,a5,0x10
    1ff0:	0087d793          	srl	a5,a5,0x8
    1ff4:	00f68da3          	sb	a5,27(a3)
    1ff8:	0085d793          	srl	a5,a1,0x8
    1ffc:	00b68e23          	sb	a1,28(a3)
    2000:	00f68ea3          	sb	a5,29(a3)
    2004:	0105d793          	srl	a5,a1,0x10
    2008:	0185d593          	srl	a1,a1,0x18
    200c:	000686a3          	sb	zero,13(a3)
    2010:	00068723          	sb	zero,14(a3)
    2014:	000687a3          	sb	zero,15(a3)
    2018:	000688a3          	sb	zero,17(a3)
    201c:	000689a3          	sb	zero,19(a3)
    2020:	00068b23          	sb	zero,22(a3)
    2024:	00068ba3          	sb	zero,23(a3)
    2028:	00068ca3          	sb	zero,25(a3)
    202c:	00068623          	sb	zero,12(a3)
    2030:	00c68d23          	sb	a2,26(a3)
    2034:	00f68f23          	sb	a5,30(a3)
    2038:	00b68fa3          	sb	a1,31(a3)
    203c:	00008067          	ret

00002040 <fatfs_lfn_create_sfn>:
    2040:	fd010113          	add	sp,sp,-48
    2044:	02912223          	sw	s1,36(sp)
    2048:	00050493          	mv	s1,a0
    204c:	00058513          	mv	a0,a1
    2050:	02812423          	sw	s0,40(sp)
    2054:	01312e23          	sw	s3,28(sp)
    2058:	00058413          	mv	s0,a1
    205c:	02112623          	sw	ra,44(sp)
    2060:	03212023          	sw	s2,32(sp)
    2064:	fffff097          	auipc	ra,0xfffff
    2068:	840080e7          	jalr	-1984(ra) # 8a4 <strlen>
    206c:	00044783          	lbu	a5,0(s0)
    2070:	02e00993          	li	s3,46
    2074:	15378263          	beq	a5,s3,21b8 <fatfs_lfn_create_sfn+0x178>
    2078:	00b00613          	li	a2,11
    207c:	02000593          	li	a1,32
    2080:	00050913          	mv	s2,a0
    2084:	00048513          	mv	a0,s1
    2088:	ffffe097          	auipc	ra,0xffffe
    208c:	7dc080e7          	jalr	2012(ra) # 864 <memset>
    2090:	00300613          	li	a2,3
    2094:	02000593          	li	a1,32
    2098:	00c10513          	add	a0,sp,12
    209c:	ffffe097          	auipc	ra,0xffffe
    20a0:	7c8080e7          	jalr	1992(ra) # 864 <memset>
    20a4:	fff00713          	li	a4,-1
    20a8:	00000793          	li	a5,0
    20ac:	0d27c463          	blt	a5,s2,2174 <fatfs_lfn_create_sfn+0x134>
    20b0:	fff00793          	li	a5,-1
    20b4:	0ef70a63          	beq	a4,a5,21a8 <fatfs_lfn_create_sfn+0x168>
    20b8:	00170793          	add	a5,a4,1
    20bc:	00c10693          	add	a3,sp,12
    20c0:	00470613          	add	a2,a4,4
    20c4:	0cf61463          	bne	a2,a5,218c <fatfs_lfn_create_sfn+0x14c>
    20c8:	00000613          	li	a2,0
    20cc:	00000693          	li	a3,0
    20d0:	02000513          	li	a0,32
    20d4:	02e00813          	li	a6,46
    20d8:	01900893          	li	a7,25
    20dc:	00800313          	li	t1,8
    20e0:	02e6dc63          	bge	a3,a4,2118 <fatfs_lfn_create_sfn+0xd8>
    20e4:	00d407b3          	add	a5,s0,a3
    20e8:	0007c783          	lbu	a5,0(a5)
    20ec:	0ca78263          	beq	a5,a0,21b0 <fatfs_lfn_create_sfn+0x170>
    20f0:	0d078063          	beq	a5,a6,21b0 <fatfs_lfn_create_sfn+0x170>
    20f4:	f9f78593          	add	a1,a5,-97
    20f8:	0ff5f593          	zext.b	a1,a1
    20fc:	00c48e33          	add	t3,s1,a2
    2100:	00160613          	add	a2,a2,1
    2104:	00b8e663          	bltu	a7,a1,2110 <fatfs_lfn_create_sfn+0xd0>
    2108:	fe078793          	add	a5,a5,-32
    210c:	0ff7f793          	zext.b	a5,a5
    2110:	00fe0023          	sb	a5,0(t3)
    2114:	08661e63          	bne	a2,t1,21b0 <fatfs_lfn_create_sfn+0x170>
    2118:	00c10793          	add	a5,sp,12
    211c:	00800693          	li	a3,8
    2120:	01900513          	li	a0,25
    2124:	00b00593          	li	a1,11
    2128:	0007c703          	lbu	a4,0(a5)
    212c:	f9f70613          	add	a2,a4,-97
    2130:	0ff67613          	zext.b	a2,a2
    2134:	00c56663          	bltu	a0,a2,2140 <fatfs_lfn_create_sfn+0x100>
    2138:	fe070713          	add	a4,a4,-32
    213c:	0ff77713          	zext.b	a4,a4
    2140:	00d48633          	add	a2,s1,a3
    2144:	00e60023          	sb	a4,0(a2)
    2148:	00168693          	add	a3,a3,1
    214c:	00178793          	add	a5,a5,1
    2150:	fcb69ce3          	bne	a3,a1,2128 <fatfs_lfn_create_sfn+0xe8>
    2154:	00100513          	li	a0,1
    2158:	02c12083          	lw	ra,44(sp)
    215c:	02812403          	lw	s0,40(sp)
    2160:	02412483          	lw	s1,36(sp)
    2164:	02012903          	lw	s2,32(sp)
    2168:	01c12983          	lw	s3,28(sp)
    216c:	03010113          	add	sp,sp,48
    2170:	00008067          	ret
    2174:	00f406b3          	add	a3,s0,a5
    2178:	0006c683          	lbu	a3,0(a3)
    217c:	01369463          	bne	a3,s3,2184 <fatfs_lfn_create_sfn+0x144>
    2180:	00078713          	mv	a4,a5
    2184:	00178793          	add	a5,a5,1
    2188:	f25ff06f          	j	20ac <fatfs_lfn_create_sfn+0x6c>
    218c:	0127d863          	bge	a5,s2,219c <fatfs_lfn_create_sfn+0x15c>
    2190:	00f405b3          	add	a1,s0,a5
    2194:	0005c583          	lbu	a1,0(a1)
    2198:	00b68023          	sb	a1,0(a3)
    219c:	00178793          	add	a5,a5,1
    21a0:	00168693          	add	a3,a3,1
    21a4:	f21ff06f          	j	20c4 <fatfs_lfn_create_sfn+0x84>
    21a8:	00090713          	mv	a4,s2
    21ac:	f1dff06f          	j	20c8 <fatfs_lfn_create_sfn+0x88>
    21b0:	00168693          	add	a3,a3,1
    21b4:	f2dff06f          	j	20e0 <fatfs_lfn_create_sfn+0xa0>
    21b8:	00000513          	li	a0,0
    21bc:	f9dff06f          	j	2158 <fatfs_lfn_create_sfn+0x118>

000021c0 <fatfs_lfn_generate_tail>:
    21c0:	000187b7          	lui	a5,0x18
    21c4:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    21c8:	16c7e463          	bltu	a5,a2,2330 <fatfs_lfn_generate_tail+0x170>
    21cc:	fa010113          	add	sp,sp,-96
    21d0:	04812c23          	sw	s0,88(sp)
    21d4:	04912a23          	sw	s1,84(sp)
    21d8:	05412423          	sw	s4,72(sp)
    21dc:	00050493          	mv	s1,a0
    21e0:	00058a13          	mv	s4,a1
    21e4:	00060413          	mv	s0,a2
    21e8:	00000593          	li	a1,0
    21ec:	00c00613          	li	a2,12
    21f0:	00410513          	add	a0,sp,4
    21f4:	04112e23          	sw	ra,92(sp)
    21f8:	05312623          	sw	s3,76(sp)
    21fc:	05512223          	sw	s5,68(sp)
    2200:	03712e23          	sw	s7,60(sp)
    2204:	05212823          	sw	s2,80(sp)
    2208:	05612023          	sw	s6,64(sp)
    220c:	ffffe097          	auipc	ra,0xffffe
    2210:	658080e7          	jalr	1624(ra) # 864 <memset>
    2214:	000075b7          	lui	a1,0x7
    2218:	07e00793          	li	a5,126
    221c:	01100613          	li	a2,17
    2220:	3d058593          	add	a1,a1,976 # 73d0 <font+0x2b0>
    2224:	01c10513          	add	a0,sp,28
    2228:	01010993          	add	s3,sp,16
    222c:	00f10223          	sb	a5,4(sp)
    2230:	00098a93          	mv	s5,s3
    2234:	ffffe097          	auipc	ra,0xffffe
    2238:	64c080e7          	jalr	1612(ra) # 880 <memcpy>
    223c:	00900b93          	li	s7,9
    2240:	00a00593          	li	a1,10
    2244:	00040513          	mv	a0,s0
    2248:	ffffe097          	auipc	ra,0xffffe
    224c:	590080e7          	jalr	1424(ra) # 7d8 <__umodsi3>
    2250:	03050793          	add	a5,a0,48
    2254:	00278533          	add	a0,a5,sp
    2258:	fec54783          	lbu	a5,-20(a0)
    225c:	00098913          	mv	s2,s3
    2260:	00040513          	mv	a0,s0
    2264:	00a00593          	li	a1,10
    2268:	00f98023          	sb	a5,0(s3)
    226c:	00040b13          	mv	s6,s0
    2270:	ffffe097          	auipc	ra,0xffffe
    2274:	520080e7          	jalr	1312(ra) # 790 <__udivsi3>
    2278:	00198993          	add	s3,s3,1
    227c:	00050413          	mv	s0,a0
    2280:	fd6be0e3          	bltu	s7,s6,2240 <fatfs_lfn_generate_tail+0x80>
    2284:	00098023          	sb	zero,0(s3)
    2288:	00410713          	add	a4,sp,4
    228c:	00090793          	mv	a5,s2
    2290:	00170713          	add	a4,a4,1
    2294:	0957f663          	bgeu	a5,s5,2320 <fatfs_lfn_generate_tail+0x160>
    2298:	00f10713          	add	a4,sp,15
    229c:	00000793          	li	a5,0
    22a0:	00e96663          	bltu	s2,a4,22ac <fatfs_lfn_generate_tail+0xec>
    22a4:	41590933          	sub	s2,s2,s5
    22a8:	00190793          	add	a5,s2,1
    22ac:	03078793          	add	a5,a5,48
    22b0:	002787b3          	add	a5,a5,sp
    22b4:	000a0593          	mv	a1,s4
    22b8:	fc078aa3          	sb	zero,-43(a5)
    22bc:	00b00613          	li	a2,11
    22c0:	00048513          	mv	a0,s1
    22c4:	ffffe097          	auipc	ra,0xffffe
    22c8:	5bc080e7          	jalr	1468(ra) # 880 <memcpy>
    22cc:	00410513          	add	a0,sp,4
    22d0:	ffffe097          	auipc	ra,0xffffe
    22d4:	5d4080e7          	jalr	1492(ra) # 8a4 <strlen>
    22d8:	40a484b3          	sub	s1,s1,a0
    22dc:	00050613          	mv	a2,a0
    22e0:	00410593          	add	a1,sp,4
    22e4:	00848513          	add	a0,s1,8
    22e8:	ffffe097          	auipc	ra,0xffffe
    22ec:	598080e7          	jalr	1432(ra) # 880 <memcpy>
    22f0:	05c12083          	lw	ra,92(sp)
    22f4:	05812403          	lw	s0,88(sp)
    22f8:	05412483          	lw	s1,84(sp)
    22fc:	05012903          	lw	s2,80(sp)
    2300:	04c12983          	lw	s3,76(sp)
    2304:	04812a03          	lw	s4,72(sp)
    2308:	04412a83          	lw	s5,68(sp)
    230c:	04012b03          	lw	s6,64(sp)
    2310:	03c12b83          	lw	s7,60(sp)
    2314:	00100513          	li	a0,1
    2318:	06010113          	add	sp,sp,96
    231c:	00008067          	ret
    2320:	0007c683          	lbu	a3,0(a5)
    2324:	fff78793          	add	a5,a5,-1
    2328:	00d70023          	sb	a3,0(a4)
    232c:	f65ff06f          	j	2290 <fatfs_lfn_generate_tail+0xd0>
    2330:	00000513          	li	a0,0
    2334:	00008067          	ret

00002338 <fatfs_total_path_levels>:
    2338:	00050793          	mv	a5,a0
    233c:	06050463          	beqz	a0,23a4 <fatfs_total_path_levels+0x6c>
    2340:	00054703          	lbu	a4,0(a0)
    2344:	02f00693          	li	a3,47
    2348:	00d71863          	bne	a4,a3,2358 <fatfs_total_path_levels+0x20>
    234c:	00150793          	add	a5,a0,1
    2350:	00000513          	li	a0,0
    2354:	0400006f          	j	2394 <fatfs_total_path_levels+0x5c>
    2358:	00154683          	lbu	a3,1(a0)
    235c:	03a00713          	li	a4,58
    2360:	00e68a63          	beq	a3,a4,2374 <fatfs_total_path_levels+0x3c>
    2364:	00254683          	lbu	a3,2(a0)
    2368:	05c00713          	li	a4,92
    236c:	fff00513          	li	a0,-1
    2370:	02e69c63          	bne	a3,a4,23a8 <fatfs_total_path_levels+0x70>
    2374:	00378793          	add	a5,a5,3
    2378:	05c00713          	li	a4,92
    237c:	fd5ff06f          	j	2350 <fatfs_total_path_levels+0x18>
    2380:	00178793          	add	a5,a5,1
    2384:	00e68663          	beq	a3,a4,2390 <fatfs_total_path_levels+0x58>
    2388:	0007c683          	lbu	a3,0(a5)
    238c:	fe069ae3          	bnez	a3,2380 <fatfs_total_path_levels+0x48>
    2390:	00150513          	add	a0,a0,1
    2394:	0007c683          	lbu	a3,0(a5)
    2398:	fe0698e3          	bnez	a3,2388 <fatfs_total_path_levels+0x50>
    239c:	fff50513          	add	a0,a0,-1
    23a0:	00008067          	ret
    23a4:	fff00513          	li	a0,-1
    23a8:	00008067          	ret

000023ac <fatfs_get_substring>:
    23ac:	0c050c63          	beqz	a0,2484 <fatfs_get_substring+0xd8>
    23b0:	fe010113          	add	sp,sp,-32
    23b4:	00912a23          	sw	s1,20(sp)
    23b8:	00112e23          	sw	ra,28(sp)
    23bc:	00812c23          	sw	s0,24(sp)
    23c0:	01212823          	sw	s2,16(sp)
    23c4:	01312623          	sw	s3,12(sp)
    23c8:	01412423          	sw	s4,8(sp)
    23cc:	00050793          	mv	a5,a0
    23d0:	00068493          	mv	s1,a3
    23d4:	fff00513          	li	a0,-1
    23d8:	06d05a63          	blez	a3,244c <fatfs_get_substring+0xa0>
    23dc:	0007c983          	lbu	s3,0(a5)
    23e0:	02f00713          	li	a4,47
    23e4:	00058a13          	mv	s4,a1
    23e8:	00060913          	mv	s2,a2
    23ec:	00178413          	add	s0,a5,1
    23f0:	02e98463          	beq	s3,a4,2418 <fatfs_get_substring+0x6c>
    23f4:	0017c683          	lbu	a3,1(a5)
    23f8:	03a00713          	li	a4,58
    23fc:	00e68a63          	beq	a3,a4,2410 <fatfs_get_substring+0x64>
    2400:	0027c683          	lbu	a3,2(a5)
    2404:	05c00713          	li	a4,92
    2408:	fff00513          	li	a0,-1
    240c:	04e69063          	bne	a3,a4,244c <fatfs_get_substring+0xa0>
    2410:	00378413          	add	s0,a5,3
    2414:	05c00993          	li	s3,92
    2418:	00040513          	mv	a0,s0
    241c:	ffffe097          	auipc	ra,0xffffe
    2420:	488080e7          	jalr	1160(ra) # 8a4 <strlen>
    2424:	00000713          	li	a4,0
    2428:	00000693          	li	a3,0
    242c:	00000793          	li	a5,0
    2430:	fff48493          	add	s1,s1,-1
    2434:	00e905b3          	add	a1,s2,a4
    2438:	02a7ca63          	blt	a5,a0,246c <fatfs_get_substring+0xc0>
    243c:	00058023          	sb	zero,0(a1)
    2440:	00094503          	lbu	a0,0(s2)
    2444:	00153513          	seqz	a0,a0
    2448:	40a00533          	neg	a0,a0
    244c:	01c12083          	lw	ra,28(sp)
    2450:	01812403          	lw	s0,24(sp)
    2454:	01412483          	lw	s1,20(sp)
    2458:	01012903          	lw	s2,16(sp)
    245c:	00c12983          	lw	s3,12(sp)
    2460:	00812a03          	lw	s4,8(sp)
    2464:	02010113          	add	sp,sp,32
    2468:	00008067          	ret
    246c:	00f40633          	add	a2,s0,a5
    2470:	00064603          	lbu	a2,0(a2)
    2474:	01361c63          	bne	a2,s3,248c <fatfs_get_substring+0xe0>
    2478:	00168693          	add	a3,a3,1
    247c:	00178793          	add	a5,a5,1
    2480:	fb5ff06f          	j	2434 <fatfs_get_substring+0x88>
    2484:	fff00513          	li	a0,-1
    2488:	00008067          	ret
    248c:	ff4698e3          	bne	a3,s4,247c <fatfs_get_substring+0xd0>
    2490:	fe9756e3          	bge	a4,s1,247c <fatfs_get_substring+0xd0>
    2494:	00170713          	add	a4,a4,1
    2498:	00c58023          	sb	a2,0(a1)
    249c:	fe1ff06f          	j	247c <fatfs_get_substring+0xd0>

000024a0 <fatfs_split_path>:
    24a0:	fd010113          	add	sp,sp,-48
    24a4:	02912223          	sw	s1,36(sp)
    24a8:	01312e23          	sw	s3,28(sp)
    24ac:	01412c23          	sw	s4,24(sp)
    24b0:	01512a23          	sw	s5,20(sp)
    24b4:	02112623          	sw	ra,44(sp)
    24b8:	00068a93          	mv	s5,a3
    24bc:	02812423          	sw	s0,40(sp)
    24c0:	03212023          	sw	s2,32(sp)
    24c4:	00050993          	mv	s3,a0
    24c8:	00058493          	mv	s1,a1
    24cc:	00060a13          	mv	s4,a2
    24d0:	00e12623          	sw	a4,12(sp)
    24d4:	00000097          	auipc	ra,0x0
    24d8:	e64080e7          	jalr	-412(ra) # 2338 <fatfs_total_path_levels>
    24dc:	fff00793          	li	a5,-1
    24e0:	00c12683          	lw	a3,12(sp)
    24e4:	02f51863          	bne	a0,a5,2514 <fatfs_split_path+0x74>
    24e8:	fff00913          	li	s2,-1
    24ec:	02c12083          	lw	ra,44(sp)
    24f0:	02812403          	lw	s0,40(sp)
    24f4:	02412483          	lw	s1,36(sp)
    24f8:	01c12983          	lw	s3,28(sp)
    24fc:	01812a03          	lw	s4,24(sp)
    2500:	01412a83          	lw	s5,20(sp)
    2504:	00090513          	mv	a0,s2
    2508:	02012903          	lw	s2,32(sp)
    250c:	03010113          	add	sp,sp,48
    2510:	00008067          	ret
    2514:	00050593          	mv	a1,a0
    2518:	00050413          	mv	s0,a0
    251c:	000a8613          	mv	a2,s5
    2520:	00098513          	mv	a0,s3
    2524:	00000097          	auipc	ra,0x0
    2528:	e88080e7          	jalr	-376(ra) # 23ac <fatfs_get_substring>
    252c:	00050913          	mv	s2,a0
    2530:	fa051ce3          	bnez	a0,24e8 <fatfs_split_path+0x48>
    2534:	00041663          	bnez	s0,2540 <fatfs_split_path+0xa0>
    2538:	00048023          	sb	zero,0(s1)
    253c:	fb1ff06f          	j	24ec <fatfs_split_path+0x4c>
    2540:	00098513          	mv	a0,s3
    2544:	ffffe097          	auipc	ra,0xffffe
    2548:	360080e7          	jalr	864(ra) # 8a4 <strlen>
    254c:	00050413          	mv	s0,a0
    2550:	000a8513          	mv	a0,s5
    2554:	ffffe097          	auipc	ra,0xffffe
    2558:	350080e7          	jalr	848(ra) # 8a4 <strlen>
    255c:	40a40433          	sub	s0,s0,a0
    2560:	008a5463          	bge	s4,s0,2568 <fatfs_split_path+0xc8>
    2564:	000a0413          	mv	s0,s4
    2568:	00048513          	mv	a0,s1
    256c:	00040613          	mv	a2,s0
    2570:	00098593          	mv	a1,s3
    2574:	008484b3          	add	s1,s1,s0
    2578:	ffffe097          	auipc	ra,0xffffe
    257c:	308080e7          	jalr	776(ra) # 880 <memcpy>
    2580:	fe048fa3          	sb	zero,-1(s1)
    2584:	f69ff06f          	j	24ec <fatfs_split_path+0x4c>

00002588 <fatfs_compare_names>:
    2588:	fd010113          	add	sp,sp,-48
    258c:	02112623          	sw	ra,44(sp)
    2590:	03212023          	sw	s2,32(sp)
    2594:	01312e23          	sw	s3,28(sp)
    2598:	01412c23          	sw	s4,24(sp)
    259c:	01512a23          	sw	s5,20(sp)
    25a0:	00058a13          	mv	s4,a1
    25a4:	02812423          	sw	s0,40(sp)
    25a8:	02912223          	sw	s1,36(sp)
    25ac:	01612823          	sw	s6,16(sp)
    25b0:	01712623          	sw	s7,12(sp)
    25b4:	01812423          	sw	s8,8(sp)
    25b8:	00050a93          	mv	s5,a0
    25bc:	fffff097          	auipc	ra,0xfffff
    25c0:	d0c080e7          	jalr	-756(ra) # 12c8 <FileString_GetExtension>
    25c4:	00050993          	mv	s3,a0
    25c8:	000a0513          	mv	a0,s4
    25cc:	fffff097          	auipc	ra,0xfffff
    25d0:	cfc080e7          	jalr	-772(ra) # 12c8 <FileString_GetExtension>
    25d4:	fff00793          	li	a5,-1
    25d8:	00050913          	mv	s2,a0
    25dc:	02f99e63          	bne	s3,a5,2618 <fatfs_compare_names+0x90>
    25e0:	0f350463          	beq	a0,s3,26c8 <fatfs_compare_names+0x140>
    25e4:	00000513          	li	a0,0
    25e8:	02c12083          	lw	ra,44(sp)
    25ec:	02812403          	lw	s0,40(sp)
    25f0:	02412483          	lw	s1,36(sp)
    25f4:	02012903          	lw	s2,32(sp)
    25f8:	01c12983          	lw	s3,28(sp)
    25fc:	01812a03          	lw	s4,24(sp)
    2600:	01412a83          	lw	s5,20(sp)
    2604:	01012b03          	lw	s6,16(sp)
    2608:	00c12b83          	lw	s7,12(sp)
    260c:	00812c03          	lw	s8,8(sp)
    2610:	03010113          	add	sp,sp,48
    2614:	00008067          	ret
    2618:	fcf506e3          	beq	a0,a5,25e4 <fatfs_compare_names+0x5c>
    261c:	00198b13          	add	s6,s3,1
    2620:	016a8b33          	add	s6,s5,s6
    2624:	00150b93          	add	s7,a0,1
    2628:	00050413          	mv	s0,a0
    262c:	000b0513          	mv	a0,s6
    2630:	ffffe097          	auipc	ra,0xffffe
    2634:	274080e7          	jalr	628(ra) # 8a4 <strlen>
    2638:	017a0bb3          	add	s7,s4,s7
    263c:	00050c13          	mv	s8,a0
    2640:	000b8513          	mv	a0,s7
    2644:	00098493          	mv	s1,s3
    2648:	ffffe097          	auipc	ra,0xffffe
    264c:	25c080e7          	jalr	604(ra) # 8a4 <strlen>
    2650:	f8ac1ae3          	bne	s8,a0,25e4 <fatfs_compare_names+0x5c>
    2654:	000b0513          	mv	a0,s6
    2658:	ffffe097          	auipc	ra,0xffffe
    265c:	24c080e7          	jalr	588(ra) # 8a4 <strlen>
    2660:	00050613          	mv	a2,a0
    2664:	000b8593          	mv	a1,s7
    2668:	000b0513          	mv	a0,s6
    266c:	fffff097          	auipc	ra,0xfffff
    2670:	bec080e7          	jalr	-1044(ra) # 1258 <FileString_StrCmpNoCase>
    2674:	f60518e3          	bnez	a0,25e4 <fatfs_compare_names+0x5c>
    2678:	fff48793          	add	a5,s1,-1
    267c:	00fa87b3          	add	a5,s5,a5
    2680:	41378733          	sub	a4,a5,s3
    2684:	02000613          	li	a2,32
    2688:	00078693          	mv	a3,a5
    268c:	06e79463          	bne	a5,a4,26f4 <fatfs_compare_names+0x16c>
    2690:	fff40793          	add	a5,s0,-1
    2694:	00fa07b3          	add	a5,s4,a5
    2698:	41278733          	sub	a4,a5,s2
    269c:	02000613          	li	a2,32
    26a0:	00078693          	mv	a3,a5
    26a4:	06e79263          	bne	a5,a4,2708 <fatfs_compare_names+0x180>
    26a8:	f3391ee3          	bne	s2,s3,25e4 <fatfs_compare_names+0x5c>
    26ac:	00090613          	mv	a2,s2
    26b0:	000a0593          	mv	a1,s4
    26b4:	000a8513          	mv	a0,s5
    26b8:	fffff097          	auipc	ra,0xfffff
    26bc:	ba0080e7          	jalr	-1120(ra) # 1258 <FileString_StrCmpNoCase>
    26c0:	00153513          	seqz	a0,a0
    26c4:	f25ff06f          	j	25e8 <fatfs_compare_names+0x60>
    26c8:	000a8513          	mv	a0,s5
    26cc:	ffffe097          	auipc	ra,0xffffe
    26d0:	1d8080e7          	jalr	472(ra) # 8a4 <strlen>
    26d4:	00050493          	mv	s1,a0
    26d8:	00050993          	mv	s3,a0
    26dc:	000a0513          	mv	a0,s4
    26e0:	ffffe097          	auipc	ra,0xffffe
    26e4:	1c4080e7          	jalr	452(ra) # 8a4 <strlen>
    26e8:	00050413          	mv	s0,a0
    26ec:	00050913          	mv	s2,a0
    26f0:	f89ff06f          	j	2678 <fatfs_compare_names+0xf0>
    26f4:	0007c583          	lbu	a1,0(a5)
    26f8:	fff78793          	add	a5,a5,-1
    26fc:	f8c59ae3          	bne	a1,a2,2690 <fatfs_compare_names+0x108>
    2700:	415689b3          	sub	s3,a3,s5
    2704:	f85ff06f          	j	2688 <fatfs_compare_names+0x100>
    2708:	0007c583          	lbu	a1,0(a5)
    270c:	fff78793          	add	a5,a5,-1
    2710:	f8c59ce3          	bne	a1,a2,26a8 <fatfs_compare_names+0x120>
    2714:	41468933          	sub	s2,a3,s4
    2718:	f89ff06f          	j	26a0 <fatfs_compare_names+0x118>

0000271c <_check_file_open>:
    271c:	fe010113          	add	sp,sp,-32
    2720:	000077b7          	lui	a5,0x7
    2724:	00812c23          	sw	s0,24(sp)
    2728:	7587a403          	lw	s0,1880(a5) # 7758 <_open_file_list>
    272c:	00912a23          	sw	s1,20(sp)
    2730:	01212823          	sw	s2,16(sp)
    2734:	01312623          	sw	s3,12(sp)
    2738:	00112e23          	sw	ra,28(sp)
    273c:	00050493          	mv	s1,a0
    2740:	01450913          	add	s2,a0,20
    2744:	11850993          	add	s3,a0,280
    2748:	00041663          	bnez	s0,2754 <_check_file_open+0x38>
    274c:	00000513          	li	a0,0
    2750:	03c0006f          	j	278c <_check_file_open+0x70>
    2754:	bc440793          	add	a5,s0,-1084
    2758:	00f49663          	bne	s1,a5,2764 <_check_file_open+0x48>
    275c:	00442403          	lw	s0,4(s0)
    2760:	fe9ff06f          	j	2748 <_check_file_open+0x2c>
    2764:	00090593          	mv	a1,s2
    2768:	bd840513          	add	a0,s0,-1064
    276c:	00000097          	auipc	ra,0x0
    2770:	e1c080e7          	jalr	-484(ra) # 2588 <fatfs_compare_names>
    2774:	fe0504e3          	beqz	a0,275c <_check_file_open+0x40>
    2778:	00098593          	mv	a1,s3
    277c:	cdc40513          	add	a0,s0,-804
    2780:	00000097          	auipc	ra,0x0
    2784:	e08080e7          	jalr	-504(ra) # 2588 <fatfs_compare_names>
    2788:	fc050ae3          	beqz	a0,275c <_check_file_open+0x40>
    278c:	01c12083          	lw	ra,28(sp)
    2790:	01812403          	lw	s0,24(sp)
    2794:	01412483          	lw	s1,20(sp)
    2798:	01012903          	lw	s2,16(sp)
    279c:	00c12983          	lw	s3,12(sp)
    27a0:	02010113          	add	sp,sp,32
    27a4:	00008067          	ret

000027a8 <fatfs_string_ends_with_slash>:
    27a8:	00050a63          	beqz	a0,27bc <fatfs_string_ends_with_slash+0x14>
    27ac:	05c00713          	li	a4,92
    27b0:	02f00693          	li	a3,47
    27b4:	00054783          	lbu	a5,0(a0)
    27b8:	00079663          	bnez	a5,27c4 <fatfs_string_ends_with_slash+0x1c>
    27bc:	00000513          	li	a0,0
    27c0:	00008067          	ret
    27c4:	00154603          	lbu	a2,1(a0)
    27c8:	00061663          	bnez	a2,27d4 <fatfs_string_ends_with_slash+0x2c>
    27cc:	00e78863          	beq	a5,a4,27dc <fatfs_string_ends_with_slash+0x34>
    27d0:	00d78663          	beq	a5,a3,27dc <fatfs_string_ends_with_slash+0x34>
    27d4:	00150513          	add	a0,a0,1
    27d8:	fddff06f          	j	27b4 <fatfs_string_ends_with_slash+0xc>
    27dc:	00100513          	li	a0,1
    27e0:	00008067          	ret

000027e4 <fatfs_get_sfn_display_name>:
    27e4:	00000713          	li	a4,0
    27e8:	00c00613          	li	a2,12
    27ec:	02000813          	li	a6,32
    27f0:	01900893          	li	a7,25
    27f4:	0005c783          	lbu	a5,0(a1)
    27f8:	00078463          	beqz	a5,2800 <fatfs_get_sfn_display_name+0x1c>
    27fc:	00c71863          	bne	a4,a2,280c <fatfs_get_sfn_display_name+0x28>
    2800:	00050023          	sb	zero,0(a0)
    2804:	00100513          	li	a0,1
    2808:	00008067          	ret
    280c:	00158593          	add	a1,a1,1
    2810:	ff0782e3          	beq	a5,a6,27f4 <fatfs_get_sfn_display_name+0x10>
    2814:	fbf78693          	add	a3,a5,-65
    2818:	0ff6f693          	zext.b	a3,a3
    281c:	00d8e663          	bltu	a7,a3,2828 <fatfs_get_sfn_display_name+0x44>
    2820:	02078793          	add	a5,a5,32
    2824:	0ff7f793          	zext.b	a5,a5
    2828:	00f50023          	sb	a5,0(a0)
    282c:	00170713          	add	a4,a4,1
    2830:	00150513          	add	a0,a0,1
    2834:	fc1ff06f          	j	27f4 <fatfs_get_sfn_display_name+0x10>

00002838 <fatfs_get_extension>:
    2838:	ff010113          	add	sp,sp,-16
    283c:	00812423          	sw	s0,8(sp)
    2840:	00912223          	sw	s1,4(sp)
    2844:	01212023          	sw	s2,0(sp)
    2848:	00112623          	sw	ra,12(sp)
    284c:	00050913          	mv	s2,a0
    2850:	00058493          	mv	s1,a1
    2854:	00060413          	mv	s0,a2
    2858:	fffff097          	auipc	ra,0xfffff
    285c:	a70080e7          	jalr	-1424(ra) # 12c8 <FileString_GetExtension>
    2860:	06a05c63          	blez	a0,28d8 <fatfs_get_extension+0xa0>
    2864:	06048a63          	beqz	s1,28d8 <fatfs_get_extension+0xa0>
    2868:	02040863          	beqz	s0,2898 <fatfs_get_extension+0x60>
    286c:	00150513          	add	a0,a0,1
    2870:	00000713          	li	a4,0
    2874:	fff40413          	add	s0,s0,-1
    2878:	01900593          	li	a1,25
    287c:	00e507b3          	add	a5,a0,a4
    2880:	00f907b3          	add	a5,s2,a5
    2884:	0007c783          	lbu	a5,0(a5)
    2888:	00e48633          	add	a2,s1,a4
    288c:	02079463          	bnez	a5,28b4 <fatfs_get_extension+0x7c>
    2890:	00060023          	sb	zero,0(a2)
    2894:	00100413          	li	s0,1
    2898:	00c12083          	lw	ra,12(sp)
    289c:	00040513          	mv	a0,s0
    28a0:	00812403          	lw	s0,8(sp)
    28a4:	00412483          	lw	s1,4(sp)
    28a8:	00012903          	lw	s2,0(sp)
    28ac:	01010113          	add	sp,sp,16
    28b0:	00008067          	ret
    28b4:	fc875ee3          	bge	a4,s0,2890 <fatfs_get_extension+0x58>
    28b8:	fbf78693          	add	a3,a5,-65
    28bc:	0ff6f693          	zext.b	a3,a3
    28c0:	00d5e663          	bltu	a1,a3,28cc <fatfs_get_extension+0x94>
    28c4:	02078793          	add	a5,a5,32
    28c8:	0ff7f793          	zext.b	a5,a5
    28cc:	00f60023          	sb	a5,0(a2)
    28d0:	00170713          	add	a4,a4,1
    28d4:	fa9ff06f          	j	287c <fatfs_get_extension+0x44>
    28d8:	00000413          	li	s0,0
    28dc:	fbdff06f          	j	2898 <fatfs_get_extension+0x60>

000028e0 <fatfs_create_path_string>:
    28e0:	00050893          	mv	a7,a0
    28e4:	00000513          	li	a0,0
    28e8:	0a088063          	beqz	a7,2988 <fatfs_create_path_string+0xa8>
    28ec:	08058e63          	beqz	a1,2988 <fatfs_create_path_string+0xa8>
    28f0:	08060c63          	beqz	a2,2988 <fatfs_create_path_string+0xa8>
    28f4:	00d04463          	bgtz	a3,28fc <fatfs_create_path_string+0x1c>
    28f8:	00008067          	ret
    28fc:	02f00e13          	li	t3,47
    2900:	00000513          	li	a0,0
    2904:	00000713          	li	a4,0
    2908:	05c00313          	li	t1,92
    290c:	ffe68e93          	add	t4,a3,-2
    2910:	01c0006f          	j	292c <fatfs_create_path_string+0x4c>
    2914:	03d75463          	bge	a4,t4,293c <fatfs_create_path_string+0x5c>
    2918:	00681463          	bne	a6,t1,2920 <fatfs_create_path_string+0x40>
    291c:	00030e13          	mv	t3,t1
    2920:	01078023          	sb	a6,0(a5)
    2924:	00170713          	add	a4,a4,1
    2928:	00080513          	mv	a0,a6
    292c:	00e887b3          	add	a5,a7,a4
    2930:	0007c803          	lbu	a6,0(a5)
    2934:	00e607b3          	add	a5,a2,a4
    2938:	fc081ee3          	bnez	a6,2914 <fatfs_create_path_string+0x34>
    293c:	02651063          	bne	a0,t1,295c <fatfs_create_path_string+0x7c>
    2940:	fff68693          	add	a3,a3,-1
    2944:	40b70733          	sub	a4,a4,a1
    2948:	0005c603          	lbu	a2,0(a1)
    294c:	02061263          	bnez	a2,2970 <fatfs_create_path_string+0x90>
    2950:	00078023          	sb	zero,0(a5)
    2954:	00100513          	li	a0,1
    2958:	00008067          	ret
    295c:	02f00613          	li	a2,47
    2960:	fec500e3          	beq	a0,a2,2940 <fatfs_create_path_string+0x60>
    2964:	01c78023          	sb	t3,0(a5)
    2968:	00178793          	add	a5,a5,1
    296c:	fd5ff06f          	j	2940 <fatfs_create_path_string+0x60>
    2970:	00e58533          	add	a0,a1,a4
    2974:	fcd55ee3          	bge	a0,a3,2950 <fatfs_create_path_string+0x70>
    2978:	00178793          	add	a5,a5,1
    297c:	00158593          	add	a1,a1,1
    2980:	fec78fa3          	sb	a2,-1(a5)
    2984:	fc5ff06f          	j	2948 <fatfs_create_path_string+0x68>
    2988:	00008067          	ret

0000298c <fatfs_fat_init>:
    298c:	ff010113          	add	sp,sp,-16
    2990:	00812423          	sw	s0,8(sp)
    2994:	00912223          	sw	s1,4(sp)
    2998:	00112623          	sw	ra,12(sp)
    299c:	fff00793          	li	a5,-1
    29a0:	25850493          	add	s1,a0,600
    29a4:	00050413          	mv	s0,a0
    29a8:	44f52c23          	sw	a5,1112(a0)
    29ac:	24052a23          	sw	zero,596(a0)
    29b0:	44052e23          	sw	zero,1116(a0)
    29b4:	20000613          	li	a2,512
    29b8:	00048513          	mv	a0,s1
    29bc:	00000593          	li	a1,0
    29c0:	ffffe097          	auipc	ra,0xffffe
    29c4:	ea4080e7          	jalr	-348(ra) # 864 <memset>
    29c8:	25442783          	lw	a5,596(s0)
    29cc:	00c12083          	lw	ra,12(sp)
    29d0:	24942a23          	sw	s1,596(s0)
    29d4:	46042023          	sw	zero,1120(s0)
    29d8:	46f42223          	sw	a5,1124(s0)
    29dc:	00812403          	lw	s0,8(sp)
    29e0:	00412483          	lw	s1,4(sp)
    29e4:	01010113          	add	sp,sp,16
    29e8:	00008067          	ret

000029ec <fatfs_init>:
    29ec:	fd010113          	add	sp,sp,-48
    29f0:	02812423          	sw	s0,40(sp)
    29f4:	02112623          	sw	ra,44(sp)
    29f8:	02912223          	sw	s1,36(sp)
    29fc:	03212023          	sw	s2,32(sp)
    2a00:	01312e23          	sw	s3,28(sp)
    2a04:	fff00793          	li	a5,-1
    2a08:	24f52223          	sw	a5,580(a0)
    2a0c:	24052423          	sw	zero,584(a0)
    2a10:	02052223          	sw	zero,36(a0)
    2a14:	00050413          	mv	s0,a0
    2a18:	00000097          	auipc	ra,0x0
    2a1c:	f74080e7          	jalr	-140(ra) # 298c <fatfs_fat_init>
    2a20:	03442783          	lw	a5,52(s0)
    2a24:	02079263          	bnez	a5,2a48 <fatfs_init+0x5c>
    2a28:	fff00513          	li	a0,-1
    2a2c:	02c12083          	lw	ra,44(sp)
    2a30:	02812403          	lw	s0,40(sp)
    2a34:	02412483          	lw	s1,36(sp)
    2a38:	02012903          	lw	s2,32(sp)
    2a3c:	01c12983          	lw	s3,28(sp)
    2a40:	03010113          	add	sp,sp,48
    2a44:	00008067          	ret
    2a48:	04440593          	add	a1,s0,68
    2a4c:	00100613          	li	a2,1
    2a50:	00000513          	li	a0,0
    2a54:	00b12623          	sw	a1,12(sp)
    2a58:	000780e7          	jalr	a5
    2a5c:	fc0506e3          	beqz	a0,2a28 <fatfs_init+0x3c>
    2a60:	24042783          	lw	a5,576(s0)
    2a64:	ffff0737          	lui	a4,0xffff0
    2a68:	00c12583          	lw	a1,12(sp)
    2a6c:	00e7f7b3          	and	a5,a5,a4
    2a70:	aa550737          	lui	a4,0xaa550
    2a74:	00e78663          	beq	a5,a4,2a80 <fatfs_init+0x94>
    2a78:	ffd00513          	li	a0,-3
    2a7c:	fb1ff06f          	j	2a2c <fatfs_init+0x40>
    2a80:	24245703          	lhu	a4,578(s0)
    2a84:	0000b7b7          	lui	a5,0xb
    2a88:	a5578793          	add	a5,a5,-1451 # aa55 <framebuffer+0x2569>
    2a8c:	ffc00513          	li	a0,-4
    2a90:	f8f71ee3          	bne	a4,a5,2a2c <fatfs_init+0x40>
    2a94:	20644783          	lbu	a5,518(s0)
    2a98:	00600713          	li	a4,6
    2a9c:	02f76463          	bltu	a4,a5,2ac4 <fatfs_init+0xd8>
    2aa0:	00400713          	li	a4,4
    2aa4:	00f76663          	bltu	a4,a5,2ab0 <fatfs_init+0xc4>
    2aa8:	00000513          	li	a0,0
    2aac:	02078663          	beqz	a5,2ad8 <fatfs_init+0xec>
    2ab0:	20c45503          	lhu	a0,524(s0)
    2ab4:	20a45783          	lhu	a5,522(s0)
    2ab8:	01051513          	sll	a0,a0,0x10
    2abc:	00f56533          	or	a0,a0,a5
    2ac0:	0180006f          	j	2ad8 <fatfs_init+0xec>
    2ac4:	00c00713          	li	a4,12
    2ac8:	12f76a63          	bltu	a4,a5,2bfc <fatfs_init+0x210>
    2acc:	00a00713          	li	a4,10
    2ad0:	00000513          	li	a0,0
    2ad4:	fcf76ee3          	bltu	a4,a5,2ab0 <fatfs_init+0xc4>
    2ad8:	03442783          	lw	a5,52(s0)
    2adc:	00a42e23          	sw	a0,28(s0)
    2ae0:	00100613          	li	a2,1
    2ae4:	000780e7          	jalr	a5
    2ae8:	f40500e3          	beqz	a0,2a28 <fatfs_init+0x3c>
    2aec:	05044783          	lbu	a5,80(s0)
    2af0:	04f44703          	lbu	a4,79(s0)
    2af4:	ffe00513          	li	a0,-2
    2af8:	00879793          	sll	a5,a5,0x8
    2afc:	00e7e7b3          	or	a5,a5,a4
    2b00:	20000713          	li	a4,512
    2b04:	f2e794e3          	bne	a5,a4,2a2c <fatfs_init+0x40>
    2b08:	05644483          	lbu	s1,86(s0)
    2b0c:	05544783          	lbu	a5,85(s0)
    2b10:	05144983          	lbu	s3,81(s0)
    2b14:	00849493          	sll	s1,s1,0x8
    2b18:	05a45583          	lhu	a1,90(s0)
    2b1c:	00f4e4b3          	or	s1,s1,a5
    2b20:	01340023          	sb	s3,0(s0)
    2b24:	02941423          	sh	s1,40(s0)
    2b28:	05245903          	lhu	s2,82(s0)
    2b2c:	05444503          	lbu	a0,84(s0)
    2b30:	00059463          	bnez	a1,2b38 <fatfs_init+0x14c>
    2b34:	06842583          	lw	a1,104(s0)
    2b38:	07042783          	lw	a5,112(s0)
    2b3c:	02b42023          	sw	a1,32(s0)
    2b40:	00549493          	sll	s1,s1,0x5
    2b44:	00f42423          	sw	a5,8(s0)
    2b48:	07445783          	lhu	a5,116(s0)
    2b4c:	1ff48493          	add	s1,s1,511
    2b50:	4094d493          	sra	s1,s1,0x9
    2b54:	00f41c23          	sh	a5,24(s0)
    2b58:	ffffe097          	auipc	ra,0xffffe
    2b5c:	668080e7          	jalr	1640(ra) # 11c0 <__mulsi3>
    2b60:	00a907b3          	add	a5,s2,a0
    2b64:	00f42623          	sw	a5,12(s0)
    2b68:	01c42783          	lw	a5,28(s0)
    2b6c:	24245703          	lhu	a4,578(s0)
    2b70:	00942823          	sw	s1,16(s0)
    2b74:	00f907b3          	add	a5,s2,a5
    2b78:	00f42a23          	sw	a5,20(s0)
    2b7c:	00f507b3          	add	a5,a0,a5
    2b80:	00f42223          	sw	a5,4(s0)
    2b84:	0000b7b7          	lui	a5,0xb
    2b88:	a5578793          	add	a5,a5,-1451 # aa55 <framebuffer+0x2569>
    2b8c:	eef716e3          	bne	a4,a5,2a78 <fatfs_init+0x8c>
    2b90:	05844783          	lbu	a5,88(s0)
    2b94:	05744703          	lbu	a4,87(s0)
    2b98:	00879793          	sll	a5,a5,0x8
    2b9c:	00e7e7b3          	or	a5,a5,a4
    2ba0:	00079463          	bnez	a5,2ba8 <fatfs_init+0x1bc>
    2ba4:	06442783          	lw	a5,100(s0)
    2ba8:	00990933          	add	s2,s2,s1
    2bac:	00a90533          	add	a0,s2,a0
    2bb0:	40a787b3          	sub	a5,a5,a0
    2bb4:	ffb00513          	li	a0,-5
    2bb8:	e6098ae3          	beqz	s3,2a2c <fatfs_init+0x40>
    2bbc:	00078513          	mv	a0,a5
    2bc0:	00098593          	mv	a1,s3
    2bc4:	ffffe097          	auipc	ra,0xffffe
    2bc8:	bcc080e7          	jalr	-1076(ra) # 790 <__udivsi3>
    2bcc:	00001737          	lui	a4,0x1
    2bd0:	00050793          	mv	a5,a0
    2bd4:	ff470713          	add	a4,a4,-12 # ff4 <print_dec+0x88>
    2bd8:	ffb00513          	li	a0,-5
    2bdc:	e4f778e3          	bgeu	a4,a5,2a2c <fatfs_init+0x40>
    2be0:	00010737          	lui	a4,0x10
    2be4:	ff470713          	add	a4,a4,-12 # fff4 <board+0x2e18>
    2be8:	02f76663          	bltu	a4,a5,2c14 <fatfs_init+0x228>
    2bec:	00042423          	sw	zero,8(s0)
    2bf0:	02042823          	sw	zero,48(s0)
    2bf4:	00000513          	li	a0,0
    2bf8:	e35ff06f          	j	2a2c <fatfs_init+0x40>
    2bfc:	ff278793          	add	a5,a5,-14
    2c00:	0ff7f793          	zext.b	a5,a5
    2c04:	00100713          	li	a4,1
    2c08:	00000513          	li	a0,0
    2c0c:	eaf772e3          	bgeu	a4,a5,2ab0 <fatfs_init+0xc4>
    2c10:	ec9ff06f          	j	2ad8 <fatfs_init+0xec>
    2c14:	00100793          	li	a5,1
    2c18:	02f42823          	sw	a5,48(s0)
    2c1c:	fd9ff06f          	j	2bf4 <fatfs_init+0x208>

00002c20 <fl_attach_media>:
    2c20:	000077b7          	lui	a5,0x7
    2c24:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    2c28:	ff010113          	add	sp,sp,-16
    2c2c:	00812423          	sw	s0,8(sp)
    2c30:	00912223          	sw	s1,4(sp)
    2c34:	00112623          	sw	ra,12(sp)
    2c38:	00050493          	mv	s1,a0
    2c3c:	00058413          	mv	s0,a1
    2c40:	00079663          	bnez	a5,2c4c <fl_attach_media+0x2c>
    2c44:	fffff097          	auipc	ra,0xfffff
    2c48:	d14080e7          	jalr	-748(ra) # 1958 <fl_init>
    2c4c:	0000c537          	lui	a0,0xc
    2c50:	4ec50793          	add	a5,a0,1260 # c4ec <_fs>
    2c54:	4ec50513          	add	a0,a0,1260
    2c58:	0287ac23          	sw	s0,56(a5)
    2c5c:	0297aa23          	sw	s1,52(a5)
    2c60:	00000097          	auipc	ra,0x0
    2c64:	d8c080e7          	jalr	-628(ra) # 29ec <fatfs_init>
    2c68:	00050413          	mv	s0,a0
    2c6c:	02050863          	beqz	a0,2c9c <fl_attach_media+0x7c>
    2c70:	00050593          	mv	a1,a0
    2c74:	00007537          	lui	a0,0x7
    2c78:	48050513          	add	a0,a0,1152 # 7480 <font+0x360>
    2c7c:	ffffe097          	auipc	ra,0xffffe
    2c80:	414080e7          	jalr	1044(ra) # 1090 <printf>
    2c84:	00c12083          	lw	ra,12(sp)
    2c88:	00040513          	mv	a0,s0
    2c8c:	00812403          	lw	s0,8(sp)
    2c90:	00412483          	lw	s1,4(sp)
    2c94:	01010113          	add	sp,sp,16
    2c98:	00008067          	ret
    2c9c:	000077b7          	lui	a5,0x7
    2ca0:	00100713          	li	a4,1
    2ca4:	76e7a023          	sw	a4,1888(a5) # 7760 <_filelib_valid>
    2ca8:	fddff06f          	j	2c84 <fl_attach_media+0x64>

00002cac <fatfs_format_fat16>:
    2cac:	fe010113          	add	sp,sp,-32
    2cb0:	00812c23          	sw	s0,24(sp)
    2cb4:	00912a23          	sw	s1,20(sp)
    2cb8:	01212823          	sw	s2,16(sp)
    2cbc:	01312623          	sw	s3,12(sp)
    2cc0:	00112e23          	sw	ra,28(sp)
    2cc4:	01412423          	sw	s4,8(sp)
    2cc8:	fff00493          	li	s1,-1
    2ccc:	24952223          	sw	s1,580(a0)
    2cd0:	24052423          	sw	zero,584(a0)
    2cd4:	02052223          	sw	zero,36(a0)
    2cd8:	00050413          	mv	s0,a0
    2cdc:	00058913          	mv	s2,a1
    2ce0:	00060993          	mv	s3,a2
    2ce4:	00000097          	auipc	ra,0x0
    2ce8:	ca8080e7          	jalr	-856(ra) # 298c <fatfs_fat_init>
    2cec:	03442783          	lw	a5,52(s0)
    2cf0:	22078a63          	beqz	a5,2f24 <fatfs_format_fat16+0x278>
    2cf4:	03842783          	lw	a5,56(s0)
    2cf8:	22078663          	beqz	a5,2f24 <fatfs_format_fat16+0x278>
    2cfc:	04440a13          	add	s4,s0,68
    2d00:	02042823          	sw	zero,48(s0)
    2d04:	00041c23          	sh	zero,24(s0)
    2d08:	00042423          	sw	zero,8(s0)
    2d0c:	00042e23          	sw	zero,28(s0)
    2d10:	20000613          	li	a2,512
    2d14:	00000593          	li	a1,0
    2d18:	000a0513          	mv	a0,s4
    2d1c:	ffffe097          	auipc	ra,0xffffe
    2d20:	b48080e7          	jalr	-1208(ra) # 864 <memset>
    2d24:	4d9047b7          	lui	a5,0x4d904
    2d28:	ceb78793          	add	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2d2c:	04f42223          	sw	a5,68(s0)
    2d30:	534f47b7          	lui	a5,0x534f4
    2d34:	45378793          	add	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2d38:	04f42423          	sw	a5,72(s0)
    2d3c:	003037b7          	lui	a5,0x303
    2d40:	e3578793          	add	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2d44:	04f42623          	sw	a5,76(s0)
    2d48:	00200793          	li	a5,2
    2d4c:	04f40823          	sb	a5,80(s0)
    2d50:	000077b7          	lui	a5,0x7
    2d54:	6c078793          	add	a5,a5,1728 # 76c0 <_cluster_size_table16>
    2d58:	0047c583          	lbu	a1,4(a5)
    2d5c:	02059663          	bnez	a1,2d88 <fatfs_format_fat16+0xdc>
    2d60:	00040023          	sb	zero,0(s0)
    2d64:	00000513          	li	a0,0
    2d68:	01c12083          	lw	ra,28(sp)
    2d6c:	01812403          	lw	s0,24(sp)
    2d70:	01412483          	lw	s1,20(sp)
    2d74:	01012903          	lw	s2,16(sp)
    2d78:	00c12983          	lw	s3,12(sp)
    2d7c:	00812a03          	lw	s4,8(sp)
    2d80:	02010113          	add	sp,sp,32
    2d84:	00008067          	ret
    2d88:	0007a703          	lw	a4,0(a5)
    2d8c:	00878793          	add	a5,a5,8
    2d90:	fd2764e3          	bltu	a4,s2,2d58 <fatfs_format_fat16+0xac>
    2d94:	000807b7          	lui	a5,0x80
    2d98:	20078793          	add	a5,a5,512 # 80200 <__stacktop+0x70200>
    2d9c:	02f42423          	sw	a5,40(s0)
    2da0:	00200793          	li	a5,2
    2da4:	02f40623          	sb	a5,44(s0)
    2da8:	00800793          	li	a5,8
    2dac:	04f41923          	sh	a5,82(s0)
    2db0:	000207b7          	lui	a5,0x20
    2db4:	00278793          	add	a5,a5,2 # 20002 <__stacktop+0x10002>
    2db8:	04f42a23          	sw	a5,84(s0)
    2dbc:	80000793          	li	a5,-2048
    2dc0:	04f41c23          	sh	a5,88(s0)
    2dc4:	00090513          	mv	a0,s2
    2dc8:	00b40023          	sb	a1,0(s0)
    2dcc:	04b408a3          	sb	a1,81(s0)
    2dd0:	ffffe097          	auipc	ra,0xffffe
    2dd4:	9c0080e7          	jalr	-1600(ra) # 790 <__udivsi3>
    2dd8:	00150793          	add	a5,a0,1
    2ddc:	0087d793          	srl	a5,a5,0x8
    2de0:	00178793          	add	a5,a5,1
    2de4:	02f42023          	sw	a5,32(s0)
    2de8:	04f41d23          	sh	a5,90(s0)
    2dec:	02000793          	li	a5,32
    2df0:	06f42023          	sw	a5,96(s0)
    2df4:	122907b7          	lui	a5,0x12290
    2df8:	06f42423          	sw	a5,104(s0)
    2dfc:	000057b7          	lui	a5,0x5
    2e00:	63478793          	add	a5,a5,1588 # 5634 <fl_fopen+0xac>
    2e04:	06f41623          	sh	a5,108(s0)
    2e08:	07800793          	li	a5,120
    2e0c:	07242223          	sw	s2,100(s0)
    2e10:	04042e23          	sw	zero,92(s0)
    2e14:	06f40723          	sb	a5,110(s0)
    2e18:	00000493          	li	s1,0
    2e1c:	00b00913          	li	s2,11
    2e20:	00098513          	mv	a0,s3
    2e24:	ffffe097          	auipc	ra,0xffffe
    2e28:	a80080e7          	jalr	-1408(ra) # 8a4 <strlen>
    2e2c:	02000793          	li	a5,32
    2e30:	00a4d663          	bge	s1,a0,2e3c <fatfs_format_fat16+0x190>
    2e34:	009987b3          	add	a5,s3,s1
    2e38:	0007c783          	lbu	a5,0(a5)
    2e3c:	00940733          	add	a4,s0,s1
    2e40:	06f707a3          	sb	a5,111(a4)
    2e44:	00148493          	add	s1,s1,1
    2e48:	fd249ce3          	bne	s1,s2,2e20 <fatfs_format_fat16+0x174>
    2e4c:	000047b7          	lui	a5,0x4
    2e50:	14678793          	add	a5,a5,326 # 4146 <fl_listdirectory+0x42>
    2e54:	06f41d23          	sh	a5,122(s0)
    2e58:	203637b7          	lui	a5,0x20363
    2e5c:	15478793          	add	a5,a5,340 # 20363154 <__stacktop+0x20353154>
    2e60:	06f42e23          	sw	a5,124(s0)
    2e64:	000027b7          	lui	a5,0x2
    2e68:	02078793          	add	a5,a5,32 # 2020 <fatfs_sfn_create_entry+0x8c>
    2e6c:	08f41023          	sh	a5,128(s0)
    2e70:	ffffb7b7          	lui	a5,0xffffb
    2e74:	a5578793          	add	a5,a5,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    2e78:	24f41123          	sh	a5,578(s0)
    2e7c:	03842783          	lw	a5,56(s0)
    2e80:	00100613          	li	a2,1
    2e84:	000a0593          	mv	a1,s4
    2e88:	00000513          	li	a0,0
    2e8c:	000780e7          	jalr	a5
    2e90:	ec050ae3          	beqz	a0,2d64 <fatfs_format_fat16+0xb8>
    2e94:	02042583          	lw	a1,32(s0)
    2e98:	02c44503          	lbu	a0,44(s0)
    2e9c:	02a45483          	lhu	s1,42(s0)
    2ea0:	ffffe097          	auipc	ra,0xffffe
    2ea4:	320080e7          	jalr	800(ra) # 11c0 <__mulsi3>
    2ea8:	00a487b3          	add	a5,s1,a0
    2eac:	00f42623          	sw	a5,12(s0)
    2eb0:	02845783          	lhu	a5,40(s0)
    2eb4:	00000593          	li	a1,0
    2eb8:	00579793          	sll	a5,a5,0x5
    2ebc:	1ff78793          	add	a5,a5,511
    2ec0:	4097d793          	sra	a5,a5,0x9
    2ec4:	00f42823          	sw	a5,16(s0)
    2ec8:	01c42783          	lw	a5,28(s0)
    2ecc:	00f484b3          	add	s1,s1,a5
    2ed0:	00950533          	add	a0,a0,s1
    2ed4:	00a42223          	sw	a0,4(s0)
    2ed8:	00942a23          	sw	s1,20(s0)
    2edc:	00040513          	mv	a0,s0
    2ee0:	ffffe097          	auipc	ra,0xffffe
    2ee4:	584080e7          	jalr	1412(ra) # 1464 <fatfs_erase_fat>
    2ee8:	e6050ee3          	beqz	a0,2d64 <fatfs_format_fat16+0xb8>
    2eec:	01c42583          	lw	a1,28(s0)
    2ef0:	00c42783          	lw	a5,12(s0)
    2ef4:	01042603          	lw	a2,16(s0)
    2ef8:	00040513          	mv	a0,s0
    2efc:	01812403          	lw	s0,24(sp)
    2f00:	01c12083          	lw	ra,28(sp)
    2f04:	01412483          	lw	s1,20(sp)
    2f08:	01012903          	lw	s2,16(sp)
    2f0c:	00c12983          	lw	s3,12(sp)
    2f10:	00812a03          	lw	s4,8(sp)
    2f14:	00f585b3          	add	a1,a1,a5
    2f18:	02010113          	add	sp,sp,32
    2f1c:	ffffe317          	auipc	t1,0xffffe
    2f20:	63830067          	jr	1592(t1) # 1554 <fatfs_erase_sectors>
    2f24:	00048513          	mv	a0,s1
    2f28:	e41ff06f          	j	2d68 <fatfs_format_fat16+0xbc>

00002f2c <fatfs_format_fat32>:
    2f2c:	fe010113          	add	sp,sp,-32
    2f30:	00812c23          	sw	s0,24(sp)
    2f34:	00912a23          	sw	s1,20(sp)
    2f38:	01212823          	sw	s2,16(sp)
    2f3c:	01412423          	sw	s4,8(sp)
    2f40:	00112e23          	sw	ra,28(sp)
    2f44:	01312623          	sw	s3,12(sp)
    2f48:	fff00493          	li	s1,-1
    2f4c:	24952223          	sw	s1,580(a0)
    2f50:	24052423          	sw	zero,584(a0)
    2f54:	02052223          	sw	zero,36(a0)
    2f58:	00050413          	mv	s0,a0
    2f5c:	00058913          	mv	s2,a1
    2f60:	00060a13          	mv	s4,a2
    2f64:	00000097          	auipc	ra,0x0
    2f68:	a28080e7          	jalr	-1496(ra) # 298c <fatfs_fat_init>
    2f6c:	03442783          	lw	a5,52(s0)
    2f70:	28078e63          	beqz	a5,320c <fatfs_format_fat32+0x2e0>
    2f74:	03842783          	lw	a5,56(s0)
    2f78:	28078a63          	beqz	a5,320c <fatfs_format_fat32+0x2e0>
    2f7c:	00100793          	li	a5,1
    2f80:	00200493          	li	s1,2
    2f84:	04440993          	add	s3,s0,68
    2f88:	02f42823          	sw	a5,48(s0)
    2f8c:	00f41c23          	sh	a5,24(s0)
    2f90:	00942423          	sw	s1,8(s0)
    2f94:	00042e23          	sw	zero,28(s0)
    2f98:	20000613          	li	a2,512
    2f9c:	00000593          	li	a1,0
    2fa0:	00098513          	mv	a0,s3
    2fa4:	ffffe097          	auipc	ra,0xffffe
    2fa8:	8c0080e7          	jalr	-1856(ra) # 864 <memset>
    2fac:	4d9047b7          	lui	a5,0x4d904
    2fb0:	ceb78793          	add	a5,a5,-789 # 4d903ceb <__stacktop+0x4d8f3ceb>
    2fb4:	04f42223          	sw	a5,68(s0)
    2fb8:	534f47b7          	lui	a5,0x534f4
    2fbc:	45378793          	add	a5,a5,1107 # 534f4453 <__stacktop+0x534e4453>
    2fc0:	04f42423          	sw	a5,72(s0)
    2fc4:	003037b7          	lui	a5,0x303
    2fc8:	e3578793          	add	a5,a5,-459 # 302e35 <__stacktop+0x2f2e35>
    2fcc:	04f42623          	sw	a5,76(s0)
    2fd0:	000077b7          	lui	a5,0x7
    2fd4:	04940823          	sb	s1,80(s0)
    2fd8:	70078793          	add	a5,a5,1792 # 7700 <_cluster_size_table32>
    2fdc:	0047c583          	lbu	a1,4(a5)
    2fe0:	02059663          	bnez	a1,300c <fatfs_format_fat32+0xe0>
    2fe4:	00040023          	sb	zero,0(s0)
    2fe8:	00000513          	li	a0,0
    2fec:	01c12083          	lw	ra,28(sp)
    2ff0:	01812403          	lw	s0,24(sp)
    2ff4:	01412483          	lw	s1,20(sp)
    2ff8:	01012903          	lw	s2,16(sp)
    2ffc:	00c12983          	lw	s3,12(sp)
    3000:	00812a03          	lw	s4,8(sp)
    3004:	02010113          	add	sp,sp,32
    3008:	00008067          	ret
    300c:	0007a703          	lw	a4,0(a5)
    3010:	00878793          	add	a5,a5,8
    3014:	fd2764e3          	bltu	a4,s2,2fdc <fatfs_format_fat32+0xb0>
    3018:	002007b7          	lui	a5,0x200
    301c:	02f42423          	sw	a5,40(s0)
    3020:	00200793          	li	a5,2
    3024:	02f40623          	sb	a5,44(s0)
    3028:	04f42a23          	sw	a5,84(s0)
    302c:	000107b7          	lui	a5,0x10
    3030:	80078793          	add	a5,a5,-2048 # f800 <board+0x2624>
    3034:	04f42c23          	sw	a5,88(s0)
    3038:	00ff07b7          	lui	a5,0xff0
    303c:	03f78793          	add	a5,a5,63 # ff003f <__stacktop+0xfe003f>
    3040:	02000713          	li	a4,32
    3044:	04f42e23          	sw	a5,92(s0)
    3048:	07242223          	sw	s2,100(s0)
    304c:	00090513          	mv	a0,s2
    3050:	00b40023          	sb	a1,0(s0)
    3054:	04b408a3          	sb	a1,81(s0)
    3058:	04e41923          	sh	a4,82(s0)
    305c:	06042023          	sw	zero,96(s0)
    3060:	ffffd097          	auipc	ra,0xffffd
    3064:	730080e7          	jalr	1840(ra) # 790 <__udivsi3>
    3068:	00150793          	add	a5,a0,1
    306c:	0077d793          	srl	a5,a5,0x7
    3070:	00178793          	add	a5,a5,1
    3074:	02f42023          	sw	a5,32(s0)
    3078:	06f42423          	sw	a5,104(s0)
    307c:	00842783          	lw	a5,8(s0)
    3080:	06042623          	sw	zero,108(s0)
    3084:	08040223          	sb	zero,132(s0)
    3088:	06f42823          	sw	a5,112(s0)
    308c:	01845783          	lhu	a5,24(s0)
    3090:	00000493          	li	s1,0
    3094:	00b00913          	li	s2,11
    3098:	06f41a23          	sh	a5,116(s0)
    309c:	00600793          	li	a5,6
    30a0:	06f41b23          	sh	a5,118(s0)
    30a4:	000017b7          	lui	a5,0x1
    30a8:	22978793          	add	a5,a5,553 # 1229 <fat_list_insert_last+0x3d>
    30ac:	08f41323          	sh	a5,134(s0)
    30b0:	000057b7          	lui	a5,0x5
    30b4:	63478793          	add	a5,a5,1588 # 5634 <fl_fopen+0xac>
    30b8:	08f41423          	sh	a5,136(s0)
    30bc:	07800793          	li	a5,120
    30c0:	08f40523          	sb	a5,138(s0)
    30c4:	000a0513          	mv	a0,s4
    30c8:	ffffd097          	auipc	ra,0xffffd
    30cc:	7dc080e7          	jalr	2012(ra) # 8a4 <strlen>
    30d0:	02000793          	li	a5,32
    30d4:	00a4d663          	bge	s1,a0,30e0 <fatfs_format_fat32+0x1b4>
    30d8:	009a07b3          	add	a5,s4,s1
    30dc:	0007c783          	lbu	a5,0(a5)
    30e0:	00940733          	add	a4,s0,s1
    30e4:	08f705a3          	sb	a5,139(a4)
    30e8:	00148493          	add	s1,s1,1
    30ec:	fd249ce3          	bne	s1,s2,30c4 <fatfs_format_fat32+0x198>
    30f0:	000047b7          	lui	a5,0x4
    30f4:	14678793          	add	a5,a5,326 # 4146 <fl_listdirectory+0x42>
    30f8:	08f41b23          	sh	a5,150(s0)
    30fc:	203237b7          	lui	a5,0x20323
    3100:	35478793          	add	a5,a5,852 # 20323354 <__stacktop+0x20313354>
    3104:	08f42c23          	sw	a5,152(s0)
    3108:	000027b7          	lui	a5,0x2
    310c:	02078793          	add	a5,a5,32 # 2020 <fatfs_sfn_create_entry+0x8c>
    3110:	08f41e23          	sh	a5,156(s0)
    3114:	ffffb4b7          	lui	s1,0xffffb
    3118:	03842783          	lw	a5,56(s0)
    311c:	a5548493          	add	s1,s1,-1451 # ffffaa55 <__stacktop+0xfffeaa55>
    3120:	24941123          	sh	s1,578(s0)
    3124:	00100613          	li	a2,1
    3128:	00098593          	mv	a1,s3
    312c:	00000513          	li	a0,0
    3130:	000780e7          	jalr	a5
    3134:	ea050ae3          	beqz	a0,2fe8 <fatfs_format_fat32+0xbc>
    3138:	01c42783          	lw	a5,28(s0)
    313c:	02a45903          	lhu	s2,42(s0)
    3140:	02042583          	lw	a1,32(s0)
    3144:	02c44503          	lbu	a0,44(s0)
    3148:	00f90933          	add	s2,s2,a5
    314c:	01242a23          	sw	s2,20(s0)
    3150:	ffffe097          	auipc	ra,0xffffe
    3154:	070080e7          	jalr	112(ra) # 11c0 <__mulsi3>
    3158:	01250533          	add	a0,a0,s2
    315c:	00a42223          	sw	a0,4(s0)
    3160:	20000613          	li	a2,512
    3164:	00000593          	li	a1,0
    3168:	00098513          	mv	a0,s3
    316c:	01845903          	lhu	s2,24(s0)
    3170:	ffffd097          	auipc	ra,0xffffd
    3174:	6f4080e7          	jalr	1780(ra) # 864 <memset>
    3178:	416157b7          	lui	a5,0x41615
    317c:	25278793          	add	a5,a5,594 # 41615252 <__stacktop+0x41605252>
    3180:	04f42223          	sw	a5,68(s0)
    3184:	614177b7          	lui	a5,0x61417
    3188:	27278793          	add	a5,a5,626 # 61417272 <__stacktop+0x61407272>
    318c:	22f42423          	sw	a5,552(s0)
    3190:	fff00793          	li	a5,-1
    3194:	22f42623          	sw	a5,556(s0)
    3198:	22f42823          	sw	a5,560(s0)
    319c:	03842783          	lw	a5,56(s0)
    31a0:	24941123          	sh	s1,578(s0)
    31a4:	00100613          	li	a2,1
    31a8:	00098593          	mv	a1,s3
    31ac:	00090513          	mv	a0,s2
    31b0:	000780e7          	jalr	a5
    31b4:	e2050ae3          	beqz	a0,2fe8 <fatfs_format_fat32+0xbc>
    31b8:	00100593          	li	a1,1
    31bc:	00040513          	mv	a0,s0
    31c0:	ffffe097          	auipc	ra,0xffffe
    31c4:	2a4080e7          	jalr	676(ra) # 1464 <fatfs_erase_fat>
    31c8:	e20500e3          	beqz	a0,2fe8 <fatfs_format_fat32+0xbc>
    31cc:	00842583          	lw	a1,8(s0)
    31d0:	00040513          	mv	a0,s0
    31d4:	ffffe097          	auipc	ra,0xffffe
    31d8:	4c8080e7          	jalr	1224(ra) # 169c <fatfs_lba_of_cluster>
    31dc:	00044603          	lbu	a2,0(s0)
    31e0:	00050593          	mv	a1,a0
    31e4:	00040513          	mv	a0,s0
    31e8:	01812403          	lw	s0,24(sp)
    31ec:	01c12083          	lw	ra,28(sp)
    31f0:	01412483          	lw	s1,20(sp)
    31f4:	01012903          	lw	s2,16(sp)
    31f8:	00c12983          	lw	s3,12(sp)
    31fc:	00812a03          	lw	s4,8(sp)
    3200:	02010113          	add	sp,sp,32
    3204:	ffffe317          	auipc	t1,0xffffe
    3208:	35030067          	jr	848(t1) # 1554 <fatfs_erase_sectors>
    320c:	00048513          	mv	a0,s1
    3210:	dddff06f          	j	2fec <fatfs_format_fat32+0xc0>

00003214 <fatfs_format>:
    3214:	004007b7          	lui	a5,0x400
    3218:	00b7e663          	bltu	a5,a1,3224 <fatfs_format+0x10>
    321c:	00000317          	auipc	t1,0x0
    3220:	a9030067          	jr	-1392(t1) # 2cac <fatfs_format_fat16>
    3224:	00000317          	auipc	t1,0x0
    3228:	d0830067          	jr	-760(t1) # 2f2c <fatfs_format_fat32>

0000322c <fl_format>:
    322c:	00058613          	mv	a2,a1
    3230:	00050593          	mv	a1,a0
    3234:	0000c537          	lui	a0,0xc
    3238:	4ec50513          	add	a0,a0,1260 # c4ec <_fs>
    323c:	00000317          	auipc	t1,0x0
    3240:	fd830067          	jr	-40(t1) # 3214 <fatfs_format>

00003244 <fatfs_fat_purge>:
    3244:	ff010113          	add	sp,sp,-16
    3248:	00812423          	sw	s0,8(sp)
    324c:	25452403          	lw	s0,596(a0)
    3250:	00912223          	sw	s1,4(sp)
    3254:	00112623          	sw	ra,12(sp)
    3258:	00050493          	mv	s1,a0
    325c:	00041663          	bnez	s0,3268 <fatfs_fat_purge+0x24>
    3260:	00100513          	li	a0,1
    3264:	0280006f          	j	328c <fatfs_fat_purge+0x48>
    3268:	20442783          	lw	a5,516(s0)
    326c:	00079663          	bnez	a5,3278 <fatfs_fat_purge+0x34>
    3270:	20c42403          	lw	s0,524(s0)
    3274:	fe9ff06f          	j	325c <fatfs_fat_purge+0x18>
    3278:	00040593          	mv	a1,s0
    327c:	00048513          	mv	a0,s1
    3280:	ffffe097          	auipc	ra,0xffffe
    3284:	074080e7          	jalr	116(ra) # 12f4 <fatfs_fat_writeback>
    3288:	fe0514e3          	bnez	a0,3270 <fatfs_fat_purge+0x2c>
    328c:	00c12083          	lw	ra,12(sp)
    3290:	00812403          	lw	s0,8(sp)
    3294:	00412483          	lw	s1,4(sp)
    3298:	01010113          	add	sp,sp,16
    329c:	00008067          	ret

000032a0 <fl_shutdown>:
    32a0:	000077b7          	lui	a5,0x7
    32a4:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    32a8:	ff010113          	add	sp,sp,-16
    32ac:	00112623          	sw	ra,12(sp)
    32b0:	00812423          	sw	s0,8(sp)
    32b4:	00912223          	sw	s1,4(sp)
    32b8:	00079663          	bnez	a5,32c4 <fl_shutdown+0x24>
    32bc:	ffffe097          	auipc	ra,0xffffe
    32c0:	69c080e7          	jalr	1692(ra) # 1958 <fl_init>
    32c4:	0000c437          	lui	s0,0xc
    32c8:	4ec40793          	add	a5,s0,1260 # c4ec <_fs>
    32cc:	03c7a783          	lw	a5,60(a5)
    32d0:	4ec40493          	add	s1,s0,1260
    32d4:	00078463          	beqz	a5,32dc <fl_shutdown+0x3c>
    32d8:	000780e7          	jalr	a5
    32dc:	4ec40513          	add	a0,s0,1260
    32e0:	00000097          	auipc	ra,0x0
    32e4:	f64080e7          	jalr	-156(ra) # 3244 <fatfs_fat_purge>
    32e8:	0404a783          	lw	a5,64(s1)
    32ec:	00078c63          	beqz	a5,3304 <fl_shutdown+0x64>
    32f0:	00812403          	lw	s0,8(sp)
    32f4:	00c12083          	lw	ra,12(sp)
    32f8:	00412483          	lw	s1,4(sp)
    32fc:	01010113          	add	sp,sp,16
    3300:	00078067          	jr	a5
    3304:	00c12083          	lw	ra,12(sp)
    3308:	00812403          	lw	s0,8(sp)
    330c:	00412483          	lw	s1,4(sp)
    3310:	01010113          	add	sp,sp,16
    3314:	00008067          	ret

00003318 <fatfs_find_next_cluster>:
    3318:	ff010113          	add	sp,sp,-16
    331c:	00812423          	sw	s0,8(sp)
    3320:	01212023          	sw	s2,0(sp)
    3324:	00112623          	sw	ra,12(sp)
    3328:	00912223          	sw	s1,4(sp)
    332c:	00050913          	mv	s2,a0
    3330:	00200413          	li	s0,2
    3334:	00058463          	beqz	a1,333c <fatfs_find_next_cluster+0x24>
    3338:	00058413          	mv	s0,a1
    333c:	03092783          	lw	a5,48(s2)
    3340:	00745493          	srl	s1,s0,0x7
    3344:	00079463          	bnez	a5,334c <fatfs_find_next_cluster+0x34>
    3348:	00845493          	srl	s1,s0,0x8
    334c:	01492583          	lw	a1,20(s2)
    3350:	00090513          	mv	a0,s2
    3354:	00b485b3          	add	a1,s1,a1
    3358:	ffffe097          	auipc	ra,0xffffe
    335c:	01c080e7          	jalr	28(ra) # 1374 <fatfs_fat_read_sector>
    3360:	00050793          	mv	a5,a0
    3364:	fff00513          	li	a0,-1
    3368:	04078863          	beqz	a5,33b8 <fatfs_find_next_cluster+0xa0>
    336c:	03092703          	lw	a4,48(s2)
    3370:	2087a783          	lw	a5,520(a5)
    3374:	04071e63          	bnez	a4,33d0 <fatfs_find_next_cluster+0xb8>
    3378:	00849493          	sll	s1,s1,0x8
    337c:	40940433          	sub	s0,s0,s1
    3380:	00141413          	sll	s0,s0,0x1
    3384:	01041413          	sll	s0,s0,0x10
    3388:	01045413          	srl	s0,s0,0x10
    338c:	008787b3          	add	a5,a5,s0
    3390:	0017c503          	lbu	a0,1(a5)
    3394:	0007c783          	lbu	a5,0(a5)
    3398:	00851513          	sll	a0,a0,0x8
    339c:	00f50533          	add	a0,a0,a5
    33a0:	ffff07b7          	lui	a5,0xffff0
    33a4:	00878793          	add	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    33a8:	00f507b3          	add	a5,a0,a5
    33ac:	00700713          	li	a4,7
    33b0:	00f76463          	bltu	a4,a5,33b8 <fatfs_find_next_cluster+0xa0>
    33b4:	fff00513          	li	a0,-1
    33b8:	00c12083          	lw	ra,12(sp)
    33bc:	00812403          	lw	s0,8(sp)
    33c0:	00412483          	lw	s1,4(sp)
    33c4:	00012903          	lw	s2,0(sp)
    33c8:	01010113          	add	sp,sp,16
    33cc:	00008067          	ret
    33d0:	00749493          	sll	s1,s1,0x7
    33d4:	40940433          	sub	s0,s0,s1
    33d8:	00241413          	sll	s0,s0,0x2
    33dc:	01041413          	sll	s0,s0,0x10
    33e0:	01045413          	srl	s0,s0,0x10
    33e4:	008787b3          	add	a5,a5,s0
    33e8:	0037c503          	lbu	a0,3(a5)
    33ec:	0027c703          	lbu	a4,2(a5)
    33f0:	01851513          	sll	a0,a0,0x18
    33f4:	01071713          	sll	a4,a4,0x10
    33f8:	00e50533          	add	a0,a0,a4
    33fc:	0007c703          	lbu	a4,0(a5)
    3400:	0017c783          	lbu	a5,1(a5)
    3404:	00e50533          	add	a0,a0,a4
    3408:	00879793          	sll	a5,a5,0x8
    340c:	00f50533          	add	a0,a0,a5
    3410:	00451513          	sll	a0,a0,0x4
    3414:	00455513          	srl	a0,a0,0x4
    3418:	f00007b7          	lui	a5,0xf0000
    341c:	f89ff06f          	j	33a4 <fatfs_find_next_cluster+0x8c>

00003420 <fatfs_sector_reader>:
    3420:	03052783          	lw	a5,48(a0)
    3424:	fd010113          	add	sp,sp,-48
    3428:	02812423          	sw	s0,40(sp)
    342c:	03212023          	sw	s2,32(sp)
    3430:	01312e23          	sw	s3,28(sp)
    3434:	02112623          	sw	ra,44(sp)
    3438:	02912223          	sw	s1,36(sp)
    343c:	01412c23          	sw	s4,24(sp)
    3440:	01512a23          	sw	s5,20(sp)
    3444:	00f5e7b3          	or	a5,a1,a5
    3448:	00050413          	mv	s0,a0
    344c:	00060913          	mv	s2,a2
    3450:	00068993          	mv	s3,a3
    3454:	06079c63          	bnez	a5,34cc <fatfs_sector_reader+0xac>
    3458:	01052783          	lw	a5,16(a0)
    345c:	02f66663          	bltu	a2,a5,3488 <fatfs_sector_reader+0x68>
    3460:	00000513          	li	a0,0
    3464:	02c12083          	lw	ra,44(sp)
    3468:	02812403          	lw	s0,40(sp)
    346c:	02412483          	lw	s1,36(sp)
    3470:	02012903          	lw	s2,32(sp)
    3474:	01c12983          	lw	s3,28(sp)
    3478:	01812a03          	lw	s4,24(sp)
    347c:	01412a83          	lw	s5,20(sp)
    3480:	03010113          	add	sp,sp,48
    3484:	00008067          	ret
    3488:	01c52503          	lw	a0,28(a0)
    348c:	00c42783          	lw	a5,12(s0)
    3490:	00f50533          	add	a0,a0,a5
    3494:	01250533          	add	a0,a0,s2
    3498:	0a098263          	beqz	s3,353c <fatfs_sector_reader+0x11c>
    349c:	03442783          	lw	a5,52(s0)
    34a0:	00100613          	li	a2,1
    34a4:	00098593          	mv	a1,s3
    34a8:	02812403          	lw	s0,40(sp)
    34ac:	02c12083          	lw	ra,44(sp)
    34b0:	02412483          	lw	s1,36(sp)
    34b4:	02012903          	lw	s2,32(sp)
    34b8:	01c12983          	lw	s3,28(sp)
    34bc:	01812a03          	lw	s4,24(sp)
    34c0:	01412a83          	lw	s5,20(sp)
    34c4:	03010113          	add	sp,sp,48
    34c8:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    34cc:	00058493          	mv	s1,a1
    34d0:	00054583          	lbu	a1,0(a0)
    34d4:	00060513          	mv	a0,a2
    34d8:	00000a93          	li	s5,0
    34dc:	00b12623          	sw	a1,12(sp)
    34e0:	ffffd097          	auipc	ra,0xffffd
    34e4:	2b0080e7          	jalr	688(ra) # 790 <__udivsi3>
    34e8:	00c12583          	lw	a1,12(sp)
    34ec:	00050a13          	mv	s4,a0
    34f0:	00090513          	mv	a0,s2
    34f4:	ffffd097          	auipc	ra,0xffffd
    34f8:	2e4080e7          	jalr	740(ra) # 7d8 <__umodsi3>
    34fc:	00050913          	mv	s2,a0
    3500:	034a9063          	bne	s5,s4,3520 <fatfs_sector_reader+0x100>
    3504:	fff00793          	li	a5,-1
    3508:	f4f48ce3          	beq	s1,a5,3460 <fatfs_sector_reader+0x40>
    350c:	00048593          	mv	a1,s1
    3510:	00040513          	mv	a0,s0
    3514:	ffffe097          	auipc	ra,0xffffe
    3518:	188080e7          	jalr	392(ra) # 169c <fatfs_lba_of_cluster>
    351c:	f79ff06f          	j	3494 <fatfs_sector_reader+0x74>
    3520:	00048593          	mv	a1,s1
    3524:	00040513          	mv	a0,s0
    3528:	00000097          	auipc	ra,0x0
    352c:	df0080e7          	jalr	-528(ra) # 3318 <fatfs_find_next_cluster>
    3530:	00050493          	mv	s1,a0
    3534:	001a8a93          	add	s5,s5,1
    3538:	fc9ff06f          	j	3500 <fatfs_sector_reader+0xe0>
    353c:	24442783          	lw	a5,580(s0)
    3540:	00a78c63          	beq	a5,a0,3558 <fatfs_sector_reader+0x138>
    3544:	03442783          	lw	a5,52(s0)
    3548:	24a42223          	sw	a0,580(s0)
    354c:	00100613          	li	a2,1
    3550:	04440593          	add	a1,s0,68
    3554:	f55ff06f          	j	34a8 <fatfs_sector_reader+0x88>
    3558:	00100513          	li	a0,1
    355c:	f09ff06f          	j	3464 <fatfs_sector_reader+0x44>

00003560 <fatfs_get_file_entry>:
    3560:	eb010113          	add	sp,sp,-336
    3564:	14812423          	sw	s0,328(sp)
    3568:	14912223          	sw	s1,324(sp)
    356c:	15212023          	sw	s2,320(sp)
    3570:	13312e23          	sw	s3,316(sp)
    3574:	13412c23          	sw	s4,312(sp)
    3578:	13512a23          	sw	s5,308(sp)
    357c:	14112623          	sw	ra,332(sp)
    3580:	13612823          	sw	s6,304(sp)
    3584:	13712623          	sw	s7,300(sp)
    3588:	13812423          	sw	s8,296(sp)
    358c:	13912223          	sw	s9,292(sp)
    3590:	13a12023          	sw	s10,288(sp)
    3594:	00050493          	mv	s1,a0
    3598:	00058a93          	mv	s5,a1
    359c:	00060913          	mv	s2,a2
    35a0:	00068993          	mv	s3,a3
    35a4:	10010ea3          	sb	zero,285(sp)
    35a8:	01810413          	add	s0,sp,24
    35ac:	11c10a13          	add	s4,sp,284
    35b0:	00040513          	mv	a0,s0
    35b4:	00d00613          	li	a2,13
    35b8:	00000593          	li	a1,0
    35bc:	00d40413          	add	s0,s0,13
    35c0:	ffffd097          	auipc	ra,0xffffd
    35c4:	2a4080e7          	jalr	676(ra) # 864 <memset>
    35c8:	ff4414e3          	bne	s0,s4,35b0 <fatfs_get_file_entry+0x50>
    35cc:	00000a13          	li	s4,0
    35d0:	24448c13          	add	s8,s1,580
    35d4:	00810b13          	add	s6,sp,8
    35d8:	00800c93          	li	s9,8
    35dc:	02000b93          	li	s7,32
    35e0:	02e00d13          	li	s10,46
    35e4:	00000693          	li	a3,0
    35e8:	000a0613          	mv	a2,s4
    35ec:	000a8593          	mv	a1,s5
    35f0:	00048513          	mv	a0,s1
    35f4:	00000097          	auipc	ra,0x0
    35f8:	e2c080e7          	jalr	-468(ra) # 3420 <fatfs_sector_reader>
    35fc:	16050063          	beqz	a0,375c <fatfs_get_file_entry+0x1fc>
    3600:	04448413          	add	s0,s1,68
    3604:	00040513          	mv	a0,s0
    3608:	ffffe097          	auipc	ra,0xffffe
    360c:	744080e7          	jalr	1860(ra) # 1d4c <fatfs_entry_lfn_text>
    3610:	02050263          	beqz	a0,3634 <fatfs_get_file_entry+0xd4>
    3614:	00040593          	mv	a1,s0
    3618:	01810513          	add	a0,sp,24
    361c:	ffffe097          	auipc	ra,0xffffe
    3620:	628080e7          	jalr	1576(ra) # 1c44 <fatfs_lfn_cache_entry>
    3624:	02040413          	add	s0,s0,32
    3628:	fd841ee3          	bne	s0,s8,3604 <fatfs_get_file_entry+0xa4>
    362c:	001a0a13          	add	s4,s4,1
    3630:	fb5ff06f          	j	35e4 <fatfs_get_file_entry+0x84>
    3634:	00040513          	mv	a0,s0
    3638:	ffffe097          	auipc	ra,0xffffe
    363c:	728080e7          	jalr	1832(ra) # 1d60 <fatfs_entry_lfn_invalid>
    3640:	00050663          	beqz	a0,364c <fatfs_get_file_entry+0xec>
    3644:	10010ea3          	sb	zero,285(sp)
    3648:	fddff06f          	j	3624 <fatfs_get_file_entry+0xc4>
    364c:	00040593          	mv	a1,s0
    3650:	01810513          	add	a0,sp,24
    3654:	ffffe097          	auipc	ra,0xffffe
    3658:	744080e7          	jalr	1860(ra) # 1d98 <fatfs_entry_lfn_exists>
    365c:	06050863          	beqz	a0,36cc <fatfs_get_file_entry+0x16c>
    3660:	01810513          	add	a0,sp,24
    3664:	ffffe097          	auipc	ra,0xffffe
    3668:	6ac080e7          	jalr	1708(ra) # 1d10 <fatfs_lfn_cache_get>
    366c:	00090593          	mv	a1,s2
    3670:	fffff097          	auipc	ra,0xfffff
    3674:	f18080e7          	jalr	-232(ra) # 2588 <fatfs_compare_names>
    3678:	fc0506e3          	beqz	a0,3644 <fatfs_get_file_entry+0xe4>
    367c:	02000613          	li	a2,32
    3680:	00040593          	mv	a1,s0
    3684:	00098513          	mv	a0,s3
    3688:	ffffd097          	auipc	ra,0xffffd
    368c:	1f8080e7          	jalr	504(ra) # 880 <memcpy>
    3690:	00100513          	li	a0,1
    3694:	14c12083          	lw	ra,332(sp)
    3698:	14812403          	lw	s0,328(sp)
    369c:	14412483          	lw	s1,324(sp)
    36a0:	14012903          	lw	s2,320(sp)
    36a4:	13c12983          	lw	s3,316(sp)
    36a8:	13812a03          	lw	s4,312(sp)
    36ac:	13412a83          	lw	s5,308(sp)
    36b0:	13012b03          	lw	s6,304(sp)
    36b4:	12c12b83          	lw	s7,300(sp)
    36b8:	12812c03          	lw	s8,296(sp)
    36bc:	12412c83          	lw	s9,292(sp)
    36c0:	12012d03          	lw	s10,288(sp)
    36c4:	15010113          	add	sp,sp,336
    36c8:	00008067          	ret
    36cc:	00040513          	mv	a0,s0
    36d0:	ffffe097          	auipc	ra,0xffffe
    36d4:	710080e7          	jalr	1808(ra) # 1de0 <fatfs_entry_sfn_only>
    36d8:	f40506e3          	beqz	a0,3624 <fatfs_get_file_entry+0xc4>
    36dc:	00d00613          	li	a2,13
    36e0:	00000593          	li	a1,0
    36e4:	000b0513          	mv	a0,s6
    36e8:	ffffd097          	auipc	ra,0xffffd
    36ec:	17c080e7          	jalr	380(ra) # 864 <memset>
    36f0:	00000793          	li	a5,0
    36f4:	00f406b3          	add	a3,s0,a5
    36f8:	0006c683          	lbu	a3,0(a3)
    36fc:	00fb0733          	add	a4,s6,a5
    3700:	00178793          	add	a5,a5,1
    3704:	00d70023          	sb	a3,0(a4)
    3708:	ff9796e3          	bne	a5,s9,36f4 <fatfs_get_file_entry+0x194>
    370c:	00844703          	lbu	a4,8(s0)
    3710:	00944783          	lbu	a5,9(s0)
    3714:	00a44683          	lbu	a3,10(s0)
    3718:	00e108a3          	sb	a4,17(sp)
    371c:	00f10923          	sb	a5,18(sp)
    3720:	00d109a3          	sb	a3,19(sp)
    3724:	01769c63          	bne	a3,s7,373c <fatfs_get_file_entry+0x1dc>
    3728:	fe070713          	add	a4,a4,-32
    372c:	00071863          	bnez	a4,373c <fatfs_get_file_entry+0x1dc>
    3730:	fe078793          	add	a5,a5,-32
    3734:	000b8713          	mv	a4,s7
    3738:	00078a63          	beqz	a5,374c <fatfs_get_file_entry+0x1ec>
    373c:	00814783          	lbu	a5,8(sp)
    3740:	02e00713          	li	a4,46
    3744:	01a79463          	bne	a5,s10,374c <fatfs_get_file_entry+0x1ec>
    3748:	02000713          	li	a4,32
    374c:	00e10823          	sb	a4,16(sp)
    3750:	00090593          	mv	a1,s2
    3754:	000b0513          	mv	a0,s6
    3758:	f19ff06f          	j	3670 <fatfs_get_file_entry+0x110>
    375c:	00000513          	li	a0,0
    3760:	f35ff06f          	j	3694 <fatfs_get_file_entry+0x134>

00003764 <_open_directory>:
    3764:	eb010113          	add	sp,sp,-336
    3768:	13512a23          	sw	s5,308(sp)
    376c:	0000cab7          	lui	s5,0xc
    3770:	4eca8793          	add	a5,s5,1260 # c4ec <_fs>
    3774:	14812423          	sw	s0,328(sp)
    3778:	14912223          	sw	s1,324(sp)
    377c:	15212023          	sw	s2,320(sp)
    3780:	13312e23          	sw	s3,316(sp)
    3784:	13412c23          	sw	s4,312(sp)
    3788:	13612823          	sw	s6,304(sp)
    378c:	0087a403          	lw	s0,8(a5)
    3790:	14112623          	sw	ra,332(sp)
    3794:	00050a13          	mv	s4,a0
    3798:	00058913          	mv	s2,a1
    379c:	fffff097          	auipc	ra,0xfffff
    37a0:	b9c080e7          	jalr	-1124(ra) # 2338 <fatfs_total_path_levels>
    37a4:	00050993          	mv	s3,a0
    37a8:	00000493          	li	s1,0
    37ac:	fff00b13          	li	s6,-1
    37b0:	0099d863          	bge	s3,s1,37c0 <_open_directory+0x5c>
    37b4:	00892023          	sw	s0,0(s2)
    37b8:	00100513          	li	a0,1
    37bc:	0240006f          	j	37e0 <_open_directory+0x7c>
    37c0:	10400693          	li	a3,260
    37c4:	02c10613          	add	a2,sp,44
    37c8:	00048593          	mv	a1,s1
    37cc:	000a0513          	mv	a0,s4
    37d0:	fffff097          	auipc	ra,0xfffff
    37d4:	bdc080e7          	jalr	-1060(ra) # 23ac <fatfs_get_substring>
    37d8:	03651863          	bne	a0,s6,3808 <_open_directory+0xa4>
    37dc:	00000513          	li	a0,0
    37e0:	14c12083          	lw	ra,332(sp)
    37e4:	14812403          	lw	s0,328(sp)
    37e8:	14412483          	lw	s1,324(sp)
    37ec:	14012903          	lw	s2,320(sp)
    37f0:	13c12983          	lw	s3,316(sp)
    37f4:	13812a03          	lw	s4,312(sp)
    37f8:	13412a83          	lw	s5,308(sp)
    37fc:	13012b03          	lw	s6,304(sp)
    3800:	15010113          	add	sp,sp,336
    3804:	00008067          	ret
    3808:	00c10693          	add	a3,sp,12
    380c:	02c10613          	add	a2,sp,44
    3810:	00040593          	mv	a1,s0
    3814:	4eca8513          	add	a0,s5,1260
    3818:	00000097          	auipc	ra,0x0
    381c:	d48080e7          	jalr	-696(ra) # 3560 <fatfs_get_file_entry>
    3820:	fa050ee3          	beqz	a0,37dc <_open_directory+0x78>
    3824:	01714783          	lbu	a5,23(sp)
    3828:	0107f793          	and	a5,a5,16
    382c:	fa0788e3          	beqz	a5,37dc <_open_directory+0x78>
    3830:	02015403          	lhu	s0,32(sp)
    3834:	02615783          	lhu	a5,38(sp)
    3838:	00148493          	add	s1,s1,1
    383c:	01041413          	sll	s0,s0,0x10
    3840:	00f40433          	add	s0,s0,a5
    3844:	f6dff06f          	j	37b0 <_open_directory+0x4c>

00003848 <fl_opendir>:
    3848:	fe010113          	add	sp,sp,-32
    384c:	fff00793          	li	a5,-1
    3850:	00f12623          	sw	a5,12(sp)
    3854:	000077b7          	lui	a5,0x7
    3858:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    385c:	00812c23          	sw	s0,24(sp)
    3860:	01212823          	sw	s2,16(sp)
    3864:	00112e23          	sw	ra,28(sp)
    3868:	00912a23          	sw	s1,20(sp)
    386c:	00050913          	mv	s2,a0
    3870:	00058413          	mv	s0,a1
    3874:	00079663          	bnez	a5,3880 <fl_opendir+0x38>
    3878:	ffffe097          	auipc	ra,0xffffe
    387c:	0e0080e7          	jalr	224(ra) # 1958 <fl_init>
    3880:	0000c4b7          	lui	s1,0xc
    3884:	4ec48793          	add	a5,s1,1260 # c4ec <_fs>
    3888:	03c7a783          	lw	a5,60(a5)
    388c:	4ec48493          	add	s1,s1,1260
    3890:	00078463          	beqz	a5,3898 <fl_opendir+0x50>
    3894:	000780e7          	jalr	a5
    3898:	00090513          	mv	a0,s2
    389c:	fffff097          	auipc	ra,0xfffff
    38a0:	a9c080e7          	jalr	-1380(ra) # 2338 <fatfs_total_path_levels>
    38a4:	fff00793          	li	a5,-1
    38a8:	02f51063          	bne	a0,a5,38c8 <fl_opendir+0x80>
    38ac:	0084a783          	lw	a5,8(s1)
    38b0:	00f12623          	sw	a5,12(sp)
    38b4:	00c12783          	lw	a5,12(sp)
    38b8:	00042023          	sw	zero,0(s0)
    38bc:	00040423          	sb	zero,8(s0)
    38c0:	00f42223          	sw	a5,4(s0)
    38c4:	0180006f          	j	38dc <fl_opendir+0x94>
    38c8:	00c10593          	add	a1,sp,12
    38cc:	00090513          	mv	a0,s2
    38d0:	00000097          	auipc	ra,0x0
    38d4:	e94080e7          	jalr	-364(ra) # 3764 <_open_directory>
    38d8:	fc051ee3          	bnez	a0,38b4 <fl_opendir+0x6c>
    38dc:	0404a783          	lw	a5,64(s1)
    38e0:	00078463          	beqz	a5,38e8 <fl_opendir+0xa0>
    38e4:	000780e7          	jalr	a5
    38e8:	00c12703          	lw	a4,12(sp)
    38ec:	fff00793          	li	a5,-1
    38f0:	00f71463          	bne	a4,a5,38f8 <fl_opendir+0xb0>
    38f4:	00000413          	li	s0,0
    38f8:	01c12083          	lw	ra,28(sp)
    38fc:	00040513          	mv	a0,s0
    3900:	01812403          	lw	s0,24(sp)
    3904:	01412483          	lw	s1,20(sp)
    3908:	01012903          	lw	s2,16(sp)
    390c:	02010113          	add	sp,sp,32
    3910:	00008067          	ret

00003914 <fl_is_dir>:
    3914:	fe010113          	add	sp,sp,-32
    3918:	00410593          	add	a1,sp,4
    391c:	00112e23          	sw	ra,28(sp)
    3920:	00000097          	auipc	ra,0x0
    3924:	f28080e7          	jalr	-216(ra) # 3848 <fl_opendir>
    3928:	01c12083          	lw	ra,28(sp)
    392c:	00a03533          	snez	a0,a0
    3930:	02010113          	add	sp,sp,32
    3934:	00008067          	ret

00003938 <_open_file>:
    3938:	fc010113          	add	sp,sp,-64
    393c:	03312623          	sw	s3,44(sp)
    3940:	02112e23          	sw	ra,60(sp)
    3944:	02812c23          	sw	s0,56(sp)
    3948:	02912a23          	sw	s1,52(sp)
    394c:	03212823          	sw	s2,48(sp)
    3950:	00050993          	mv	s3,a0
    3954:	ffffe097          	auipc	ra,0xffffe
    3958:	c8c080e7          	jalr	-884(ra) # 15e0 <_allocate_file>
    395c:	06050463          	beqz	a0,39c4 <_open_file+0x8c>
    3960:	01450913          	add	s2,a0,20
    3964:	00050413          	mv	s0,a0
    3968:	10400613          	li	a2,260
    396c:	00000593          	li	a1,0
    3970:	00090513          	mv	a0,s2
    3974:	ffffd097          	auipc	ra,0xffffd
    3978:	ef0080e7          	jalr	-272(ra) # 864 <memset>
    397c:	11840493          	add	s1,s0,280
    3980:	10400613          	li	a2,260
    3984:	00000593          	li	a1,0
    3988:	00048513          	mv	a0,s1
    398c:	ffffd097          	auipc	ra,0xffffd
    3990:	ed8080e7          	jalr	-296(ra) # 864 <memset>
    3994:	10400713          	li	a4,260
    3998:	00048693          	mv	a3,s1
    399c:	00070613          	mv	a2,a4
    39a0:	00090593          	mv	a1,s2
    39a4:	00098513          	mv	a0,s3
    39a8:	fffff097          	auipc	ra,0xfffff
    39ac:	af8080e7          	jalr	-1288(ra) # 24a0 <fatfs_split_path>
    39b0:	fff00793          	li	a5,-1
    39b4:	02f51a63          	bne	a0,a5,39e8 <_open_file+0xb0>
    39b8:	00040513          	mv	a0,s0
    39bc:	ffffe097          	auipc	ra,0xffffe
    39c0:	c98080e7          	jalr	-872(ra) # 1654 <_free_file>
    39c4:	00000413          	li	s0,0
    39c8:	03c12083          	lw	ra,60(sp)
    39cc:	00040513          	mv	a0,s0
    39d0:	03812403          	lw	s0,56(sp)
    39d4:	03412483          	lw	s1,52(sp)
    39d8:	03012903          	lw	s2,48(sp)
    39dc:	02c12983          	lw	s3,44(sp)
    39e0:	04010113          	add	sp,sp,64
    39e4:	00008067          	ret
    39e8:	00040513          	mv	a0,s0
    39ec:	fffff097          	auipc	ra,0xfffff
    39f0:	d30080e7          	jalr	-720(ra) # 271c <_check_file_open>
    39f4:	fc0512e3          	bnez	a0,39b8 <_open_file+0x80>
    39f8:	01444783          	lbu	a5,20(s0)
    39fc:	08079c63          	bnez	a5,3a94 <_open_file+0x15c>
    3a00:	0000c7b7          	lui	a5,0xc
    3a04:	4f47a783          	lw	a5,1268(a5) # c4f4 <_fs+0x8>
    3a08:	00f42023          	sw	a5,0(s0)
    3a0c:	00042583          	lw	a1,0(s0)
    3a10:	0000c937          	lui	s2,0xc
    3a14:	00010693          	mv	a3,sp
    3a18:	00048613          	mv	a2,s1
    3a1c:	4ec90513          	add	a0,s2,1260 # c4ec <_fs>
    3a20:	00000097          	auipc	ra,0x0
    3a24:	b40080e7          	jalr	-1216(ra) # 3560 <fatfs_get_file_entry>
    3a28:	f80508e3          	beqz	a0,39b8 <_open_file+0x80>
    3a2c:	00b14783          	lbu	a5,11(sp)
    3a30:	0207f793          	and	a5,a5,32
    3a34:	f80782e3          	beqz	a5,39b8 <_open_file+0x80>
    3a38:	00b00613          	li	a2,11
    3a3c:	00010593          	mv	a1,sp
    3a40:	21c40513          	add	a0,s0,540
    3a44:	ffffd097          	auipc	ra,0xffffd
    3a48:	e3c080e7          	jalr	-452(ra) # 880 <memcpy>
    3a4c:	01c12783          	lw	a5,28(sp)
    3a50:	01a15703          	lhu	a4,26(sp)
    3a54:	00042423          	sw	zero,8(s0)
    3a58:	00f42623          	sw	a5,12(s0)
    3a5c:	01415783          	lhu	a5,20(sp)
    3a60:	42042a23          	sw	zero,1076(s0)
    3a64:	00042823          	sw	zero,16(s0)
    3a68:	01079793          	sll	a5,a5,0x10
    3a6c:	00e787b3          	add	a5,a5,a4
    3a70:	00f42223          	sw	a5,4(s0)
    3a74:	fff00793          	li	a5,-1
    3a78:	42f42823          	sw	a5,1072(s0)
    3a7c:	22f42423          	sw	a5,552(s0)
    3a80:	22f42623          	sw	a5,556(s0)
    3a84:	4ec90513          	add	a0,s2,1260
    3a88:	fffff097          	auipc	ra,0xfffff
    3a8c:	7bc080e7          	jalr	1980(ra) # 3244 <fatfs_fat_purge>
    3a90:	f39ff06f          	j	39c8 <_open_file+0x90>
    3a94:	00040593          	mv	a1,s0
    3a98:	00090513          	mv	a0,s2
    3a9c:	00000097          	auipc	ra,0x0
    3aa0:	cc8080e7          	jalr	-824(ra) # 3764 <_open_directory>
    3aa4:	f60514e3          	bnez	a0,3a0c <_open_file+0xd4>
    3aa8:	f11ff06f          	j	39b8 <_open_file+0x80>

00003aac <fatfs_sfn_exists>:
    3aac:	fe010113          	add	sp,sp,-32
    3ab0:	01212823          	sw	s2,16(sp)
    3ab4:	01312623          	sw	s3,12(sp)
    3ab8:	01412423          	sw	s4,8(sp)
    3abc:	01512223          	sw	s5,4(sp)
    3ac0:	01612023          	sw	s6,0(sp)
    3ac4:	00112e23          	sw	ra,28(sp)
    3ac8:	00812c23          	sw	s0,24(sp)
    3acc:	00912a23          	sw	s1,20(sp)
    3ad0:	00050913          	mv	s2,a0
    3ad4:	00058a93          	mv	s5,a1
    3ad8:	00060993          	mv	s3,a2
    3adc:	00000a13          	li	s4,0
    3ae0:	24450b13          	add	s6,a0,580
    3ae4:	00000693          	li	a3,0
    3ae8:	000a0613          	mv	a2,s4
    3aec:	000a8593          	mv	a1,s5
    3af0:	00090513          	mv	a0,s2
    3af4:	00000097          	auipc	ra,0x0
    3af8:	92c080e7          	jalr	-1748(ra) # 3420 <fatfs_sector_reader>
    3afc:	00050413          	mv	s0,a0
    3b00:	06050263          	beqz	a0,3b64 <fatfs_sfn_exists+0xb8>
    3b04:	04490493          	add	s1,s2,68
    3b08:	00048513          	mv	a0,s1
    3b0c:	ffffe097          	auipc	ra,0xffffe
    3b10:	240080e7          	jalr	576(ra) # 1d4c <fatfs_entry_lfn_text>
    3b14:	00050a63          	beqz	a0,3b28 <fatfs_sfn_exists+0x7c>
    3b18:	02048493          	add	s1,s1,32
    3b1c:	ff6496e3          	bne	s1,s6,3b08 <fatfs_sfn_exists+0x5c>
    3b20:	001a0a13          	add	s4,s4,1
    3b24:	fc1ff06f          	j	3ae4 <fatfs_sfn_exists+0x38>
    3b28:	00048513          	mv	a0,s1
    3b2c:	ffffe097          	auipc	ra,0xffffe
    3b30:	234080e7          	jalr	564(ra) # 1d60 <fatfs_entry_lfn_invalid>
    3b34:	fe0512e3          	bnez	a0,3b18 <fatfs_sfn_exists+0x6c>
    3b38:	00048513          	mv	a0,s1
    3b3c:	ffffe097          	auipc	ra,0xffffe
    3b40:	2a4080e7          	jalr	676(ra) # 1de0 <fatfs_entry_sfn_only>
    3b44:	00050413          	mv	s0,a0
    3b48:	fc0508e3          	beqz	a0,3b18 <fatfs_sfn_exists+0x6c>
    3b4c:	00b00613          	li	a2,11
    3b50:	00098593          	mv	a1,s3
    3b54:	00048513          	mv	a0,s1
    3b58:	ffffd097          	auipc	ra,0xffffd
    3b5c:	d6c080e7          	jalr	-660(ra) # 8c4 <strncmp>
    3b60:	fa051ce3          	bnez	a0,3b18 <fatfs_sfn_exists+0x6c>
    3b64:	01c12083          	lw	ra,28(sp)
    3b68:	00040513          	mv	a0,s0
    3b6c:	01812403          	lw	s0,24(sp)
    3b70:	01412483          	lw	s1,20(sp)
    3b74:	01012903          	lw	s2,16(sp)
    3b78:	00c12983          	lw	s3,12(sp)
    3b7c:	00812a03          	lw	s4,8(sp)
    3b80:	00412a83          	lw	s5,4(sp)
    3b84:	00012b03          	lw	s6,0(sp)
    3b88:	02010113          	add	sp,sp,32
    3b8c:	00008067          	ret

00003b90 <fatfs_update_file_length>:
    3b90:	03852783          	lw	a5,56(a0)
    3b94:	14078e63          	beqz	a5,3cf0 <fatfs_update_file_length+0x160>
    3b98:	fd010113          	add	sp,sp,-48
    3b9c:	02912223          	sw	s1,36(sp)
    3ba0:	03212023          	sw	s2,32(sp)
    3ba4:	01312e23          	sw	s3,28(sp)
    3ba8:	01412c23          	sw	s4,24(sp)
    3bac:	01512a23          	sw	s5,20(sp)
    3bb0:	01612823          	sw	s6,16(sp)
    3bb4:	01712623          	sw	s7,12(sp)
    3bb8:	02112623          	sw	ra,44(sp)
    3bbc:	02812423          	sw	s0,40(sp)
    3bc0:	00050493          	mv	s1,a0
    3bc4:	00058a13          	mv	s4,a1
    3bc8:	00060a93          	mv	s5,a2
    3bcc:	00068913          	mv	s2,a3
    3bd0:	00000993          	li	s3,0
    3bd4:	04450b93          	add	s7,a0,68
    3bd8:	24450b13          	add	s6,a0,580
    3bdc:	00000693          	li	a3,0
    3be0:	00098613          	mv	a2,s3
    3be4:	000a0593          	mv	a1,s4
    3be8:	00048513          	mv	a0,s1
    3bec:	00000097          	auipc	ra,0x0
    3bf0:	834080e7          	jalr	-1996(ra) # 3420 <fatfs_sector_reader>
    3bf4:	0c050663          	beqz	a0,3cc0 <fatfs_update_file_length+0x130>
    3bf8:	000b8413          	mv	s0,s7
    3bfc:	00040513          	mv	a0,s0
    3c00:	ffffe097          	auipc	ra,0xffffe
    3c04:	14c080e7          	jalr	332(ra) # 1d4c <fatfs_entry_lfn_text>
    3c08:	0a051463          	bnez	a0,3cb0 <fatfs_update_file_length+0x120>
    3c0c:	00040513          	mv	a0,s0
    3c10:	ffffe097          	auipc	ra,0xffffe
    3c14:	150080e7          	jalr	336(ra) # 1d60 <fatfs_entry_lfn_invalid>
    3c18:	08051c63          	bnez	a0,3cb0 <fatfs_update_file_length+0x120>
    3c1c:	00040513          	mv	a0,s0
    3c20:	ffffe097          	auipc	ra,0xffffe
    3c24:	1c0080e7          	jalr	448(ra) # 1de0 <fatfs_entry_sfn_only>
    3c28:	08050463          	beqz	a0,3cb0 <fatfs_update_file_length+0x120>
    3c2c:	00b00613          	li	a2,11
    3c30:	000a8593          	mv	a1,s5
    3c34:	00040513          	mv	a0,s0
    3c38:	ffffd097          	auipc	ra,0xffffd
    3c3c:	c8c080e7          	jalr	-884(ra) # 8c4 <strncmp>
    3c40:	06051863          	bnez	a0,3cb0 <fatfs_update_file_length+0x120>
    3c44:	00895793          	srl	a5,s2,0x8
    3c48:	01240e23          	sb	s2,28(s0)
    3c4c:	00f40ea3          	sb	a5,29(s0)
    3c50:	01095793          	srl	a5,s2,0x10
    3c54:	01895913          	srl	s2,s2,0x18
    3c58:	00f40f23          	sb	a5,30(s0)
    3c5c:	01240fa3          	sb	s2,31(s0)
    3c60:	00040593          	mv	a1,s0
    3c64:	02000613          	li	a2,32
    3c68:	00040513          	mv	a0,s0
    3c6c:	ffffd097          	auipc	ra,0xffffd
    3c70:	c14080e7          	jalr	-1004(ra) # 880 <memcpy>
    3c74:	02812403          	lw	s0,40(sp)
    3c78:	0384a783          	lw	a5,56(s1)
    3c7c:	2444a503          	lw	a0,580(s1)
    3c80:	02c12083          	lw	ra,44(sp)
    3c84:	02412483          	lw	s1,36(sp)
    3c88:	02012903          	lw	s2,32(sp)
    3c8c:	01c12983          	lw	s3,28(sp)
    3c90:	01812a03          	lw	s4,24(sp)
    3c94:	01412a83          	lw	s5,20(sp)
    3c98:	01012b03          	lw	s6,16(sp)
    3c9c:	000b8593          	mv	a1,s7
    3ca0:	00c12b83          	lw	s7,12(sp)
    3ca4:	00100613          	li	a2,1
    3ca8:	03010113          	add	sp,sp,48
    3cac:	00078067          	jr	a5
    3cb0:	02040413          	add	s0,s0,32
    3cb4:	f56414e3          	bne	s0,s6,3bfc <fatfs_update_file_length+0x6c>
    3cb8:	00198993          	add	s3,s3,1
    3cbc:	f21ff06f          	j	3bdc <fatfs_update_file_length+0x4c>
    3cc0:	02c12083          	lw	ra,44(sp)
    3cc4:	02812403          	lw	s0,40(sp)
    3cc8:	02412483          	lw	s1,36(sp)
    3ccc:	02012903          	lw	s2,32(sp)
    3cd0:	01c12983          	lw	s3,28(sp)
    3cd4:	01812a03          	lw	s4,24(sp)
    3cd8:	01412a83          	lw	s5,20(sp)
    3cdc:	01012b03          	lw	s6,16(sp)
    3ce0:	00c12b83          	lw	s7,12(sp)
    3ce4:	00000513          	li	a0,0
    3ce8:	03010113          	add	sp,sp,48
    3cec:	00008067          	ret
    3cf0:	00000513          	li	a0,0
    3cf4:	00008067          	ret

00003cf8 <fatfs_mark_file_deleted>:
    3cf8:	03852783          	lw	a5,56(a0)
    3cfc:	12078c63          	beqz	a5,3e34 <fatfs_mark_file_deleted+0x13c>
    3d00:	fe010113          	add	sp,sp,-32
    3d04:	00912a23          	sw	s1,20(sp)
    3d08:	01212823          	sw	s2,16(sp)
    3d0c:	01312623          	sw	s3,12(sp)
    3d10:	01412423          	sw	s4,8(sp)
    3d14:	01512223          	sw	s5,4(sp)
    3d18:	01612023          	sw	s6,0(sp)
    3d1c:	00112e23          	sw	ra,28(sp)
    3d20:	00812c23          	sw	s0,24(sp)
    3d24:	00050493          	mv	s1,a0
    3d28:	00058993          	mv	s3,a1
    3d2c:	00060a13          	mv	s4,a2
    3d30:	00000913          	li	s2,0
    3d34:	04450a93          	add	s5,a0,68
    3d38:	24450b13          	add	s6,a0,580
    3d3c:	00000693          	li	a3,0
    3d40:	00090613          	mv	a2,s2
    3d44:	00098593          	mv	a1,s3
    3d48:	00048513          	mv	a0,s1
    3d4c:	fffff097          	auipc	ra,0xfffff
    3d50:	6d4080e7          	jalr	1748(ra) # 3420 <fatfs_sector_reader>
    3d54:	0a050a63          	beqz	a0,3e08 <fatfs_mark_file_deleted+0x110>
    3d58:	000a8413          	mv	s0,s5
    3d5c:	00040513          	mv	a0,s0
    3d60:	ffffe097          	auipc	ra,0xffffe
    3d64:	fec080e7          	jalr	-20(ra) # 1d4c <fatfs_entry_lfn_text>
    3d68:	08051863          	bnez	a0,3df8 <fatfs_mark_file_deleted+0x100>
    3d6c:	00040513          	mv	a0,s0
    3d70:	ffffe097          	auipc	ra,0xffffe
    3d74:	ff0080e7          	jalr	-16(ra) # 1d60 <fatfs_entry_lfn_invalid>
    3d78:	08051063          	bnez	a0,3df8 <fatfs_mark_file_deleted+0x100>
    3d7c:	00040513          	mv	a0,s0
    3d80:	ffffe097          	auipc	ra,0xffffe
    3d84:	060080e7          	jalr	96(ra) # 1de0 <fatfs_entry_sfn_only>
    3d88:	06050863          	beqz	a0,3df8 <fatfs_mark_file_deleted+0x100>
    3d8c:	00b00613          	li	a2,11
    3d90:	000a0593          	mv	a1,s4
    3d94:	00040513          	mv	a0,s0
    3d98:	ffffd097          	auipc	ra,0xffffd
    3d9c:	b2c080e7          	jalr	-1236(ra) # 8c4 <strncmp>
    3da0:	04051c63          	bnez	a0,3df8 <fatfs_mark_file_deleted+0x100>
    3da4:	fe500793          	li	a5,-27
    3da8:	00f40023          	sb	a5,0(s0)
    3dac:	00040593          	mv	a1,s0
    3db0:	02000613          	li	a2,32
    3db4:	00040513          	mv	a0,s0
    3db8:	ffffd097          	auipc	ra,0xffffd
    3dbc:	ac8080e7          	jalr	-1336(ra) # 880 <memcpy>
    3dc0:	01812403          	lw	s0,24(sp)
    3dc4:	0384a783          	lw	a5,56(s1)
    3dc8:	2444a503          	lw	a0,580(s1)
    3dcc:	01c12083          	lw	ra,28(sp)
    3dd0:	01412483          	lw	s1,20(sp)
    3dd4:	01012903          	lw	s2,16(sp)
    3dd8:	00c12983          	lw	s3,12(sp)
    3ddc:	00812a03          	lw	s4,8(sp)
    3de0:	00012b03          	lw	s6,0(sp)
    3de4:	000a8593          	mv	a1,s5
    3de8:	00412a83          	lw	s5,4(sp)
    3dec:	00100613          	li	a2,1
    3df0:	02010113          	add	sp,sp,32
    3df4:	00078067          	jr	a5
    3df8:	02040413          	add	s0,s0,32
    3dfc:	f76410e3          	bne	s0,s6,3d5c <fatfs_mark_file_deleted+0x64>
    3e00:	00190913          	add	s2,s2,1
    3e04:	f39ff06f          	j	3d3c <fatfs_mark_file_deleted+0x44>
    3e08:	01c12083          	lw	ra,28(sp)
    3e0c:	01812403          	lw	s0,24(sp)
    3e10:	01412483          	lw	s1,20(sp)
    3e14:	01012903          	lw	s2,16(sp)
    3e18:	00c12983          	lw	s3,12(sp)
    3e1c:	00812a03          	lw	s4,8(sp)
    3e20:	00412a83          	lw	s5,4(sp)
    3e24:	00012b03          	lw	s6,0(sp)
    3e28:	00000513          	li	a0,0
    3e2c:	02010113          	add	sp,sp,32
    3e30:	00008067          	ret
    3e34:	00000513          	li	a0,0
    3e38:	00008067          	ret

00003e3c <fatfs_list_directory_next>:
    3e3c:	ec010113          	add	sp,sp,-320
    3e40:	13212823          	sw	s2,304(sp)
    3e44:	13312623          	sw	s3,300(sp)
    3e48:	13412423          	sw	s4,296(sp)
    3e4c:	13512223          	sw	s5,292(sp)
    3e50:	12112e23          	sw	ra,316(sp)
    3e54:	12812c23          	sw	s0,312(sp)
    3e58:	12912a23          	sw	s1,308(sp)
    3e5c:	00050a13          	mv	s4,a0
    3e60:	00058913          	mv	s2,a1
    3e64:	00060993          	mv	s3,a2
    3e68:	10010ea3          	sb	zero,285(sp)
    3e6c:	00f00a93          	li	s5,15
    3e70:	00092603          	lw	a2,0(s2)
    3e74:	00492583          	lw	a1,4(s2)
    3e78:	00000693          	li	a3,0
    3e7c:	000a0513          	mv	a0,s4
    3e80:	fffff097          	auipc	ra,0xfffff
    3e84:	5a0080e7          	jalr	1440(ra) # 3420 <fatfs_sector_reader>
    3e88:	12050063          	beqz	a0,3fa8 <fatfs_list_directory_next+0x16c>
    3e8c:	00894483          	lbu	s1,8(s2)
    3e90:	00549413          	sll	s0,s1,0x5
    3e94:	04440413          	add	s0,s0,68
    3e98:	008a0433          	add	s0,s4,s0
    3e9c:	009afc63          	bgeu	s5,s1,3eb4 <fatfs_list_directory_next+0x78>
    3ea0:	00092783          	lw	a5,0(s2)
    3ea4:	00090423          	sb	zero,8(s2)
    3ea8:	00178793          	add	a5,a5,1
    3eac:	00f92023          	sw	a5,0(s2)
    3eb0:	fc1ff06f          	j	3e70 <fatfs_list_directory_next+0x34>
    3eb4:	00040513          	mv	a0,s0
    3eb8:	ffffe097          	auipc	ra,0xffffe
    3ebc:	e94080e7          	jalr	-364(ra) # 1d4c <fatfs_entry_lfn_text>
    3ec0:	02050263          	beqz	a0,3ee4 <fatfs_list_directory_next+0xa8>
    3ec4:	00040593          	mv	a1,s0
    3ec8:	01810513          	add	a0,sp,24
    3ecc:	ffffe097          	auipc	ra,0xffffe
    3ed0:	d78080e7          	jalr	-648(ra) # 1c44 <fatfs_lfn_cache_entry>
    3ed4:	00148493          	add	s1,s1,1
    3ed8:	0ff4f493          	zext.b	s1,s1
    3edc:	02040413          	add	s0,s0,32
    3ee0:	fbdff06f          	j	3e9c <fatfs_list_directory_next+0x60>
    3ee4:	00040513          	mv	a0,s0
    3ee8:	ffffe097          	auipc	ra,0xffffe
    3eec:	e78080e7          	jalr	-392(ra) # 1d60 <fatfs_entry_lfn_invalid>
    3ef0:	00050663          	beqz	a0,3efc <fatfs_list_directory_next+0xc0>
    3ef4:	10010ea3          	sb	zero,285(sp)
    3ef8:	fddff06f          	j	3ed4 <fatfs_list_directory_next+0x98>
    3efc:	00040593          	mv	a1,s0
    3f00:	01810513          	add	a0,sp,24
    3f04:	ffffe097          	auipc	ra,0xffffe
    3f08:	e94080e7          	jalr	-364(ra) # 1d98 <fatfs_entry_lfn_exists>
    3f0c:	0c050063          	beqz	a0,3fcc <fatfs_list_directory_next+0x190>
    3f10:	01810513          	add	a0,sp,24
    3f14:	ffffe097          	auipc	ra,0xffffe
    3f18:	dfc080e7          	jalr	-516(ra) # 1d10 <fatfs_lfn_cache_get>
    3f1c:	00050593          	mv	a1,a0
    3f20:	10300613          	li	a2,259
    3f24:	00098513          	mv	a0,s3
    3f28:	ffffd097          	auipc	ra,0xffffd
    3f2c:	9dc080e7          	jalr	-1572(ra) # 904 <strncpy>
    3f30:	00040513          	mv	a0,s0
    3f34:	ffffe097          	auipc	ra,0xffffe
    3f38:	ee8080e7          	jalr	-280(ra) # 1e1c <fatfs_entry_is_dir>
    3f3c:	10a98223          	sb	a0,260(s3)
    3f40:	01d44783          	lbu	a5,29(s0)
    3f44:	01c44703          	lbu	a4,28(s0)
    3f48:	00148493          	add	s1,s1,1
    3f4c:	00879793          	sll	a5,a5,0x8
    3f50:	00e7e7b3          	or	a5,a5,a4
    3f54:	01e44703          	lbu	a4,30(s0)
    3f58:	0ff4f493          	zext.b	s1,s1
    3f5c:	00100513          	li	a0,1
    3f60:	01071713          	sll	a4,a4,0x10
    3f64:	00f76733          	or	a4,a4,a5
    3f68:	01f44783          	lbu	a5,31(s0)
    3f6c:	01879793          	sll	a5,a5,0x18
    3f70:	00e7e7b3          	or	a5,a5,a4
    3f74:	10f9a623          	sw	a5,268(s3)
    3f78:	01544783          	lbu	a5,21(s0)
    3f7c:	01444703          	lbu	a4,20(s0)
    3f80:	01a44683          	lbu	a3,26(s0)
    3f84:	00879793          	sll	a5,a5,0x8
    3f88:	00e7e7b3          	or	a5,a5,a4
    3f8c:	01b44703          	lbu	a4,27(s0)
    3f90:	01079793          	sll	a5,a5,0x10
    3f94:	00871713          	sll	a4,a4,0x8
    3f98:	00d76733          	or	a4,a4,a3
    3f9c:	00e7e7b3          	or	a5,a5,a4
    3fa0:	10f9a423          	sw	a5,264(s3)
    3fa4:	00990423          	sb	s1,8(s2)
    3fa8:	13c12083          	lw	ra,316(sp)
    3fac:	13812403          	lw	s0,312(sp)
    3fb0:	13412483          	lw	s1,308(sp)
    3fb4:	13012903          	lw	s2,304(sp)
    3fb8:	12c12983          	lw	s3,300(sp)
    3fbc:	12812a03          	lw	s4,296(sp)
    3fc0:	12412a83          	lw	s5,292(sp)
    3fc4:	14010113          	add	sp,sp,320
    3fc8:	00008067          	ret
    3fcc:	00040513          	mv	a0,s0
    3fd0:	ffffe097          	auipc	ra,0xffffe
    3fd4:	e10080e7          	jalr	-496(ra) # 1de0 <fatfs_entry_sfn_only>
    3fd8:	ee050ee3          	beqz	a0,3ed4 <fatfs_list_directory_next+0x98>
    3fdc:	00810a13          	add	s4,sp,8
    3fe0:	00d00613          	li	a2,13
    3fe4:	00000593          	li	a1,0
    3fe8:	000a0513          	mv	a0,s4
    3fec:	10010ea3          	sb	zero,285(sp)
    3ff0:	ffffd097          	auipc	ra,0xffffd
    3ff4:	874080e7          	jalr	-1932(ra) # 864 <memset>
    3ff8:	00000793          	li	a5,0
    3ffc:	00800713          	li	a4,8
    4000:	00f40633          	add	a2,s0,a5
    4004:	00064603          	lbu	a2,0(a2)
    4008:	00fa06b3          	add	a3,s4,a5
    400c:	00178793          	add	a5,a5,1
    4010:	00c68023          	sb	a2,0(a3)
    4014:	fee796e3          	bne	a5,a4,4000 <fatfs_list_directory_next+0x1c4>
    4018:	00844683          	lbu	a3,8(s0)
    401c:	00944703          	lbu	a4,9(s0)
    4020:	00a44783          	lbu	a5,10(s0)
    4024:	00d108a3          	sb	a3,17(sp)
    4028:	00e10923          	sb	a4,18(sp)
    402c:	00f109a3          	sb	a5,19(sp)
    4030:	02000613          	li	a2,32
    4034:	00c79a63          	bne	a5,a2,4048 <fatfs_list_directory_next+0x20c>
    4038:	fe068693          	add	a3,a3,-32
    403c:	00069663          	bnez	a3,4048 <fatfs_list_directory_next+0x20c>
    4040:	fe070713          	add	a4,a4,-32
    4044:	00070a63          	beqz	a4,4058 <fatfs_list_directory_next+0x21c>
    4048:	00814703          	lbu	a4,8(sp)
    404c:	02e00793          	li	a5,46
    4050:	00f71463          	bne	a4,a5,4058 <fatfs_list_directory_next+0x21c>
    4054:	02000793          	li	a5,32
    4058:	000a0593          	mv	a1,s4
    405c:	00098513          	mv	a0,s3
    4060:	00f10823          	sb	a5,16(sp)
    4064:	ffffe097          	auipc	ra,0xffffe
    4068:	780080e7          	jalr	1920(ra) # 27e4 <fatfs_get_sfn_display_name>
    406c:	ec5ff06f          	j	3f30 <fatfs_list_directory_next+0xf4>

00004070 <fl_readdir>:
    4070:	000077b7          	lui	a5,0x7
    4074:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    4078:	fe010113          	add	sp,sp,-32
    407c:	00912a23          	sw	s1,20(sp)
    4080:	01212823          	sw	s2,16(sp)
    4084:	00112e23          	sw	ra,28(sp)
    4088:	00812c23          	sw	s0,24(sp)
    408c:	01312623          	sw	s3,12(sp)
    4090:	00050493          	mv	s1,a0
    4094:	00058913          	mv	s2,a1
    4098:	00079663          	bnez	a5,40a4 <fl_readdir+0x34>
    409c:	ffffe097          	auipc	ra,0xffffe
    40a0:	8bc080e7          	jalr	-1860(ra) # 1958 <fl_init>
    40a4:	0000c437          	lui	s0,0xc
    40a8:	4ec40793          	add	a5,s0,1260 # c4ec <_fs>
    40ac:	03c7a783          	lw	a5,60(a5)
    40b0:	4ec40993          	add	s3,s0,1260
    40b4:	00078463          	beqz	a5,40bc <fl_readdir+0x4c>
    40b8:	000780e7          	jalr	a5
    40bc:	4ec40513          	add	a0,s0,1260
    40c0:	00090613          	mv	a2,s2
    40c4:	00048593          	mv	a1,s1
    40c8:	00000097          	auipc	ra,0x0
    40cc:	d74080e7          	jalr	-652(ra) # 3e3c <fatfs_list_directory_next>
    40d0:	0409a783          	lw	a5,64(s3)
    40d4:	00050413          	mv	s0,a0
    40d8:	00078463          	beqz	a5,40e0 <fl_readdir+0x70>
    40dc:	000780e7          	jalr	a5
    40e0:	01c12083          	lw	ra,28(sp)
    40e4:	00144513          	xor	a0,s0,1
    40e8:	01812403          	lw	s0,24(sp)
    40ec:	01412483          	lw	s1,20(sp)
    40f0:	01012903          	lw	s2,16(sp)
    40f4:	00c12983          	lw	s3,12(sp)
    40f8:	40a00533          	neg	a0,a0
    40fc:	02010113          	add	sp,sp,32
    4100:	00008067          	ret

00004104 <fl_listdirectory>:
    4104:	000077b7          	lui	a5,0x7
    4108:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    410c:	ed010113          	add	sp,sp,-304
    4110:	12912223          	sw	s1,292(sp)
    4114:	12112623          	sw	ra,300(sp)
    4118:	12812423          	sw	s0,296(sp)
    411c:	13212023          	sw	s2,288(sp)
    4120:	00050493          	mv	s1,a0
    4124:	00079663          	bnez	a5,4130 <fl_listdirectory+0x2c>
    4128:	ffffe097          	auipc	ra,0xffffe
    412c:	830080e7          	jalr	-2000(ra) # 1958 <fl_init>
    4130:	0000c7b7          	lui	a5,0xc
    4134:	4ec78713          	add	a4,a5,1260 # c4ec <_fs>
    4138:	03c72703          	lw	a4,60(a4)
    413c:	4ec78413          	add	s0,a5,1260
    4140:	00070463          	beqz	a4,4148 <fl_listdirectory+0x44>
    4144:	000700e7          	jalr	a4
    4148:	00007537          	lui	a0,0x7
    414c:	00048593          	mv	a1,s1
    4150:	4b450513          	add	a0,a0,1204 # 74b4 <font+0x394>
    4154:	ffffd097          	auipc	ra,0xffffd
    4158:	f3c080e7          	jalr	-196(ra) # 1090 <printf>
    415c:	00410593          	add	a1,sp,4
    4160:	00048513          	mv	a0,s1
    4164:	fffff097          	auipc	ra,0xfffff
    4168:	6e4080e7          	jalr	1764(ra) # 3848 <fl_opendir>
    416c:	02050063          	beqz	a0,418c <fl_listdirectory+0x88>
    4170:	000074b7          	lui	s1,0x7
    4174:	00007937          	lui	s2,0x7
    4178:	01010593          	add	a1,sp,16
    417c:	00410513          	add	a0,sp,4
    4180:	00000097          	auipc	ra,0x0
    4184:	ef0080e7          	jalr	-272(ra) # 4070 <fl_readdir>
    4188:	02050263          	beqz	a0,41ac <fl_listdirectory+0xa8>
    418c:	04042783          	lw	a5,64(s0)
    4190:	04078863          	beqz	a5,41e0 <fl_listdirectory+0xdc>
    4194:	12812403          	lw	s0,296(sp)
    4198:	12c12083          	lw	ra,300(sp)
    419c:	12412483          	lw	s1,292(sp)
    41a0:	12012903          	lw	s2,288(sp)
    41a4:	13010113          	add	sp,sp,304
    41a8:	00078067          	jr	a5
    41ac:	11414783          	lbu	a5,276(sp)
    41b0:	00078c63          	beqz	a5,41c8 <fl_listdirectory+0xc4>
    41b4:	01010593          	add	a1,sp,16
    41b8:	4c890513          	add	a0,s2,1224 # 74c8 <font+0x3a8>
    41bc:	ffffd097          	auipc	ra,0xffffd
    41c0:	ed4080e7          	jalr	-300(ra) # 1090 <printf>
    41c4:	fb5ff06f          	j	4178 <fl_listdirectory+0x74>
    41c8:	11c12603          	lw	a2,284(sp)
    41cc:	01010593          	add	a1,sp,16
    41d0:	4d448513          	add	a0,s1,1236 # 74d4 <font+0x3b4>
    41d4:	ffffd097          	auipc	ra,0xffffd
    41d8:	ebc080e7          	jalr	-324(ra) # 1090 <printf>
    41dc:	f9dff06f          	j	4178 <fl_listdirectory+0x74>
    41e0:	12c12083          	lw	ra,300(sp)
    41e4:	12812403          	lw	s0,296(sp)
    41e8:	12412483          	lw	s1,292(sp)
    41ec:	12012903          	lw	s2,288(sp)
    41f0:	13010113          	add	sp,sp,304
    41f4:	00008067          	ret

000041f8 <_read_sectors>:
    41f8:	fd010113          	add	sp,sp,-48
    41fc:	01612823          	sw	s6,16(sp)
    4200:	0000cb37          	lui	s6,0xc
    4204:	01512a23          	sw	s5,20(sp)
    4208:	4ecb4a83          	lbu	s5,1260(s6) # c4ec <_fs>
    420c:	01412c23          	sw	s4,24(sp)
    4210:	00058a13          	mv	s4,a1
    4214:	02912223          	sw	s1,36(sp)
    4218:	000a8593          	mv	a1,s5
    421c:	00050493          	mv	s1,a0
    4220:	000a0513          	mv	a0,s4
    4224:	02112623          	sw	ra,44(sp)
    4228:	02812423          	sw	s0,40(sp)
    422c:	03212023          	sw	s2,32(sp)
    4230:	00068413          	mv	s0,a3
    4234:	01712623          	sw	s7,12(sp)
    4238:	01812423          	sw	s8,8(sp)
    423c:	01312e23          	sw	s3,28(sp)
    4240:	00060c13          	mv	s8,a2
    4244:	ffffc097          	auipc	ra,0xffffc
    4248:	54c080e7          	jalr	1356(ra) # 790 <__udivsi3>
    424c:	00050913          	mv	s2,a0
    4250:	000a8593          	mv	a1,s5
    4254:	000a0513          	mv	a0,s4
    4258:	ffffc097          	auipc	ra,0xffffc
    425c:	580080e7          	jalr	1408(ra) # 7d8 <__umodsi3>
    4260:	00a407b3          	add	a5,s0,a0
    4264:	00050b93          	mv	s7,a0
    4268:	00fafe63          	bgeu	s5,a5,4284 <_read_sectors+0x8c>
    426c:	00090593          	mv	a1,s2
    4270:	000a8513          	mv	a0,s5
    4274:	ffffd097          	auipc	ra,0xffffd
    4278:	f4c080e7          	jalr	-180(ra) # 11c0 <__mulsi3>
    427c:	414a87b3          	sub	a5,s5,s4
    4280:	00f50433          	add	s0,a0,a5
    4284:	2284a983          	lw	s3,552(s1)
    4288:	07299863          	bne	s3,s2,42f8 <_read_sectors+0x100>
    428c:	22c4a583          	lw	a1,556(s1)
    4290:	fff00793          	li	a5,-1
    4294:	02f58663          	beq	a1,a5,42c0 <_read_sectors+0xc8>
    4298:	4ecb0513          	add	a0,s6,1260
    429c:	ffffd097          	auipc	ra,0xffffd
    42a0:	400080e7          	jalr	1024(ra) # 169c <fatfs_lba_of_cluster>
    42a4:	017505b3          	add	a1,a0,s7
    42a8:	00040693          	mv	a3,s0
    42ac:	000c0613          	mv	a2,s8
    42b0:	4ecb0513          	add	a0,s6,1260
    42b4:	ffffd097          	auipc	ra,0xffffd
    42b8:	438080e7          	jalr	1080(ra) # 16ec <fatfs_sector_read>
    42bc:	00051463          	bnez	a0,42c4 <_read_sectors+0xcc>
    42c0:	00000413          	li	s0,0
    42c4:	02c12083          	lw	ra,44(sp)
    42c8:	00040513          	mv	a0,s0
    42cc:	02812403          	lw	s0,40(sp)
    42d0:	02412483          	lw	s1,36(sp)
    42d4:	02012903          	lw	s2,32(sp)
    42d8:	01c12983          	lw	s3,28(sp)
    42dc:	01812a03          	lw	s4,24(sp)
    42e0:	01412a83          	lw	s5,20(sp)
    42e4:	01012b03          	lw	s6,16(sp)
    42e8:	00c12b83          	lw	s7,12(sp)
    42ec:	00812c03          	lw	s8,8(sp)
    42f0:	03010113          	add	sp,sp,48
    42f4:	00008067          	ret
    42f8:	035a6463          	bltu	s4,s5,4320 <_read_sectors+0x128>
    42fc:	00198793          	add	a5,s3,1
    4300:	03279063          	bne	a5,s2,4320 <_read_sectors+0x128>
    4304:	22c4a583          	lw	a1,556(s1)
    4308:	0329e263          	bltu	s3,s2,432c <_read_sectors+0x134>
    430c:	fff00793          	li	a5,-1
    4310:	faf588e3          	beq	a1,a5,42c0 <_read_sectors+0xc8>
    4314:	22b4a623          	sw	a1,556(s1)
    4318:	2324a423          	sw	s2,552(s1)
    431c:	f7dff06f          	j	4298 <_read_sectors+0xa0>
    4320:	0044a583          	lw	a1,4(s1)
    4324:	00000993          	li	s3,0
    4328:	fe1ff06f          	j	4308 <_read_sectors+0x110>
    432c:	4ecb0513          	add	a0,s6,1260
    4330:	fffff097          	auipc	ra,0xfffff
    4334:	fe8080e7          	jalr	-24(ra) # 3318 <fatfs_find_next_cluster>
    4338:	00050593          	mv	a1,a0
    433c:	00198993          	add	s3,s3,1
    4340:	fc9ff06f          	j	4308 <_read_sectors+0x110>

00004344 <fatfs_set_fs_info_next_free_cluster>:
    4344:	03052783          	lw	a5,48(a0)
    4348:	0a078663          	beqz	a5,43f4 <fatfs_set_fs_info_next_free_cluster+0xb0>
    434c:	ff010113          	add	sp,sp,-16
    4350:	01c52783          	lw	a5,28(a0)
    4354:	01212023          	sw	s2,0(sp)
    4358:	00058913          	mv	s2,a1
    435c:	01855583          	lhu	a1,24(a0)
    4360:	00812423          	sw	s0,8(sp)
    4364:	00912223          	sw	s1,4(sp)
    4368:	00f585b3          	add	a1,a1,a5
    436c:	00112623          	sw	ra,12(sp)
    4370:	00050493          	mv	s1,a0
    4374:	ffffd097          	auipc	ra,0xffffd
    4378:	000080e7          	jalr	ra # 1374 <fatfs_fat_read_sector>
    437c:	00050413          	mv	s0,a0
    4380:	04050e63          	beqz	a0,43dc <fatfs_set_fs_info_next_free_cluster+0x98>
    4384:	20852783          	lw	a5,520(a0)
    4388:	00895713          	srl	a4,s2,0x8
    438c:	00100613          	li	a2,1
    4390:	1f278623          	sb	s2,492(a5)
    4394:	20852783          	lw	a5,520(a0)
    4398:	1ee786a3          	sb	a4,493(a5)
    439c:	20852783          	lw	a5,520(a0)
    43a0:	01095713          	srl	a4,s2,0x10
    43a4:	1ee78723          	sb	a4,494(a5)
    43a8:	20852783          	lw	a5,520(a0)
    43ac:	01895713          	srl	a4,s2,0x18
    43b0:	1ee787a3          	sb	a4,495(a5)
    43b4:	0384a783          	lw	a5,56(s1)
    43b8:	20c52223          	sw	a2,516(a0)
    43bc:	0324a223          	sw	s2,36(s1)
    43c0:	00078863          	beqz	a5,43d0 <fatfs_set_fs_info_next_free_cluster+0x8c>
    43c4:	00050593          	mv	a1,a0
    43c8:	20052503          	lw	a0,512(a0)
    43cc:	000780e7          	jalr	a5
    43d0:	fff00793          	li	a5,-1
    43d4:	20f42023          	sw	a5,512(s0)
    43d8:	20042223          	sw	zero,516(s0)
    43dc:	00c12083          	lw	ra,12(sp)
    43e0:	00812403          	lw	s0,8(sp)
    43e4:	00412483          	lw	s1,4(sp)
    43e8:	00012903          	lw	s2,0(sp)
    43ec:	01010113          	add	sp,sp,16
    43f0:	00008067          	ret
    43f4:	00008067          	ret

000043f8 <fatfs_find_blank_cluster>:
    43f8:	fe010113          	add	sp,sp,-32
    43fc:	01412423          	sw	s4,8(sp)
    4400:	10000a37          	lui	s4,0x10000
    4404:	00912a23          	sw	s1,20(sp)
    4408:	01212823          	sw	s2,16(sp)
    440c:	01312623          	sw	s3,12(sp)
    4410:	00112e23          	sw	ra,28(sp)
    4414:	00812c23          	sw	s0,24(sp)
    4418:	00050913          	mv	s2,a0
    441c:	00058493          	mv	s1,a1
    4420:	00060993          	mv	s3,a2
    4424:	fffa0a13          	add	s4,s4,-1 # fffffff <__stacktop+0xffeffff>
    4428:	03092783          	lw	a5,48(s2)
    442c:	0074d413          	srl	s0,s1,0x7
    4430:	00079463          	bnez	a5,4438 <fatfs_find_blank_cluster+0x40>
    4434:	0084d413          	srl	s0,s1,0x8
    4438:	02092783          	lw	a5,32(s2)
    443c:	0cf47663          	bgeu	s0,a5,4508 <fatfs_find_blank_cluster+0x110>
    4440:	01492583          	lw	a1,20(s2)
    4444:	00090513          	mv	a0,s2
    4448:	00b405b3          	add	a1,s0,a1
    444c:	ffffd097          	auipc	ra,0xffffd
    4450:	f28080e7          	jalr	-216(ra) # 1374 <fatfs_fat_read_sector>
    4454:	0a050a63          	beqz	a0,4508 <fatfs_find_blank_cluster+0x110>
    4458:	03092783          	lw	a5,48(s2)
    445c:	20852703          	lw	a4,520(a0)
    4460:	04079c63          	bnez	a5,44b8 <fatfs_find_blank_cluster+0xc0>
    4464:	00841413          	sll	s0,s0,0x8
    4468:	40848433          	sub	s0,s1,s0
    446c:	00141413          	sll	s0,s0,0x1
    4470:	01041413          	sll	s0,s0,0x10
    4474:	01045413          	srl	s0,s0,0x10
    4478:	00870733          	add	a4,a4,s0
    447c:	00174783          	lbu	a5,1(a4)
    4480:	00074703          	lbu	a4,0(a4)
    4484:	00879793          	sll	a5,a5,0x8
    4488:	00e787b3          	add	a5,a5,a4
    448c:	06079a63          	bnez	a5,4500 <fatfs_find_blank_cluster+0x108>
    4490:	0099a023          	sw	s1,0(s3)
    4494:	00100513          	li	a0,1
    4498:	01c12083          	lw	ra,28(sp)
    449c:	01812403          	lw	s0,24(sp)
    44a0:	01412483          	lw	s1,20(sp)
    44a4:	01012903          	lw	s2,16(sp)
    44a8:	00c12983          	lw	s3,12(sp)
    44ac:	00812a03          	lw	s4,8(sp)
    44b0:	02010113          	add	sp,sp,32
    44b4:	00008067          	ret
    44b8:	00741413          	sll	s0,s0,0x7
    44bc:	40848433          	sub	s0,s1,s0
    44c0:	00241413          	sll	s0,s0,0x2
    44c4:	01041413          	sll	s0,s0,0x10
    44c8:	01045413          	srl	s0,s0,0x10
    44cc:	00870733          	add	a4,a4,s0
    44d0:	00374783          	lbu	a5,3(a4)
    44d4:	00274683          	lbu	a3,2(a4)
    44d8:	01879793          	sll	a5,a5,0x18
    44dc:	01069693          	sll	a3,a3,0x10
    44e0:	00d787b3          	add	a5,a5,a3
    44e4:	00074683          	lbu	a3,0(a4)
    44e8:	00174703          	lbu	a4,1(a4)
    44ec:	00d787b3          	add	a5,a5,a3
    44f0:	00871713          	sll	a4,a4,0x8
    44f4:	00e787b3          	add	a5,a5,a4
    44f8:	0147f7b3          	and	a5,a5,s4
    44fc:	f91ff06f          	j	448c <fatfs_find_blank_cluster+0x94>
    4500:	00148493          	add	s1,s1,1
    4504:	f25ff06f          	j	4428 <fatfs_find_blank_cluster+0x30>
    4508:	00000513          	li	a0,0
    450c:	f8dff06f          	j	4498 <fatfs_find_blank_cluster+0xa0>

00004510 <fatfs_fat_set_cluster>:
    4510:	03052783          	lw	a5,48(a0)
    4514:	fe010113          	add	sp,sp,-32
    4518:	00812c23          	sw	s0,24(sp)
    451c:	00912a23          	sw	s1,20(sp)
    4520:	01212823          	sw	s2,16(sp)
    4524:	01312623          	sw	s3,12(sp)
    4528:	00112e23          	sw	ra,28(sp)
    452c:	00050993          	mv	s3,a0
    4530:	00058413          	mv	s0,a1
    4534:	00060493          	mv	s1,a2
    4538:	0085d913          	srl	s2,a1,0x8
    453c:	00078463          	beqz	a5,4544 <fatfs_fat_set_cluster+0x34>
    4540:	0075d913          	srl	s2,a1,0x7
    4544:	0149a583          	lw	a1,20(s3)
    4548:	00098513          	mv	a0,s3
    454c:	00b905b3          	add	a1,s2,a1
    4550:	ffffd097          	auipc	ra,0xffffd
    4554:	e24080e7          	jalr	-476(ra) # 1374 <fatfs_fat_read_sector>
    4558:	00050713          	mv	a4,a0
    455c:	00000513          	li	a0,0
    4560:	04070a63          	beqz	a4,45b4 <fatfs_fat_set_cluster+0xa4>
    4564:	0309a603          	lw	a2,48(s3)
    4568:	20872783          	lw	a5,520(a4)
    456c:	0ff4f693          	zext.b	a3,s1
    4570:	06061063          	bnez	a2,45d0 <fatfs_fat_set_cluster+0xc0>
    4574:	00891913          	sll	s2,s2,0x8
    4578:	41240433          	sub	s0,s0,s2
    457c:	00141413          	sll	s0,s0,0x1
    4580:	01041413          	sll	s0,s0,0x10
    4584:	01045413          	srl	s0,s0,0x10
    4588:	008787b3          	add	a5,a5,s0
    458c:	00d78023          	sb	a3,0(a5)
    4590:	20872783          	lw	a5,520(a4)
    4594:	01049493          	sll	s1,s1,0x10
    4598:	0104d493          	srl	s1,s1,0x10
    459c:	008787b3          	add	a5,a5,s0
    45a0:	0084d493          	srl	s1,s1,0x8
    45a4:	009780a3          	sb	s1,1(a5)
    45a8:	00100793          	li	a5,1
    45ac:	20f72223          	sw	a5,516(a4)
    45b0:	00100513          	li	a0,1
    45b4:	01c12083          	lw	ra,28(sp)
    45b8:	01812403          	lw	s0,24(sp)
    45bc:	01412483          	lw	s1,20(sp)
    45c0:	01012903          	lw	s2,16(sp)
    45c4:	00c12983          	lw	s3,12(sp)
    45c8:	02010113          	add	sp,sp,32
    45cc:	00008067          	ret
    45d0:	00791913          	sll	s2,s2,0x7
    45d4:	41240433          	sub	s0,s0,s2
    45d8:	00241413          	sll	s0,s0,0x2
    45dc:	01041413          	sll	s0,s0,0x10
    45e0:	01045413          	srl	s0,s0,0x10
    45e4:	008787b3          	add	a5,a5,s0
    45e8:	00d78023          	sb	a3,0(a5)
    45ec:	20872783          	lw	a5,520(a4)
    45f0:	0084d693          	srl	a3,s1,0x8
    45f4:	008787b3          	add	a5,a5,s0
    45f8:	00d780a3          	sb	a3,1(a5)
    45fc:	20872783          	lw	a5,520(a4)
    4600:	0104d693          	srl	a3,s1,0x10
    4604:	0184d493          	srl	s1,s1,0x18
    4608:	008787b3          	add	a5,a5,s0
    460c:	00d78123          	sb	a3,2(a5)
    4610:	20872783          	lw	a5,520(a4)
    4614:	008787b3          	add	a5,a5,s0
    4618:	009781a3          	sb	s1,3(a5)
    461c:	f8dff06f          	j	45a8 <fatfs_fat_set_cluster+0x98>

00004620 <fatfs_free_cluster_chain>:
    4620:	fe010113          	add	sp,sp,-32
    4624:	00812c23          	sw	s0,24(sp)
    4628:	01212823          	sw	s2,16(sp)
    462c:	00112e23          	sw	ra,28(sp)
    4630:	00912a23          	sw	s1,20(sp)
    4634:	00050413          	mv	s0,a0
    4638:	ffd00913          	li	s2,-3
    463c:	fff58793          	add	a5,a1,-1
    4640:	02f97063          	bgeu	s2,a5,4660 <fatfs_free_cluster_chain+0x40>
    4644:	01c12083          	lw	ra,28(sp)
    4648:	01812403          	lw	s0,24(sp)
    464c:	01412483          	lw	s1,20(sp)
    4650:	01012903          	lw	s2,16(sp)
    4654:	00100513          	li	a0,1
    4658:	02010113          	add	sp,sp,32
    465c:	00008067          	ret
    4660:	00040513          	mv	a0,s0
    4664:	00b12623          	sw	a1,12(sp)
    4668:	fffff097          	auipc	ra,0xfffff
    466c:	cb0080e7          	jalr	-848(ra) # 3318 <fatfs_find_next_cluster>
    4670:	00c12583          	lw	a1,12(sp)
    4674:	00050493          	mv	s1,a0
    4678:	00000613          	li	a2,0
    467c:	00040513          	mv	a0,s0
    4680:	00000097          	auipc	ra,0x0
    4684:	e90080e7          	jalr	-368(ra) # 4510 <fatfs_fat_set_cluster>
    4688:	00048593          	mv	a1,s1
    468c:	fb1ff06f          	j	463c <fatfs_free_cluster_chain+0x1c>

00004690 <fatfs_fat_add_cluster_to_chain>:
    4690:	fff00793          	li	a5,-1
    4694:	02f59663          	bne	a1,a5,46c0 <fatfs_fat_add_cluster_to_chain+0x30>
    4698:	00000513          	li	a0,0
    469c:	00008067          	ret
    46a0:	00000513          	li	a0,0
    46a4:	02c12083          	lw	ra,44(sp)
    46a8:	02812403          	lw	s0,40(sp)
    46ac:	02412483          	lw	s1,36(sp)
    46b0:	02012903          	lw	s2,32(sp)
    46b4:	01c12983          	lw	s3,28(sp)
    46b8:	03010113          	add	sp,sp,48
    46bc:	00008067          	ret
    46c0:	fd010113          	add	sp,sp,-48
    46c4:	02812423          	sw	s0,40(sp)
    46c8:	02912223          	sw	s1,36(sp)
    46cc:	03212023          	sw	s2,32(sp)
    46d0:	01312e23          	sw	s3,28(sp)
    46d4:	02112623          	sw	ra,44(sp)
    46d8:	00050493          	mv	s1,a0
    46dc:	00058413          	mv	s0,a1
    46e0:	00060913          	mv	s2,a2
    46e4:	00078993          	mv	s3,a5
    46e8:	00040593          	mv	a1,s0
    46ec:	00048513          	mv	a0,s1
    46f0:	00812623          	sw	s0,12(sp)
    46f4:	fffff097          	auipc	ra,0xfffff
    46f8:	c24080e7          	jalr	-988(ra) # 3318 <fatfs_find_next_cluster>
    46fc:	00050413          	mv	s0,a0
    4700:	fa0500e3          	beqz	a0,46a0 <fatfs_fat_add_cluster_to_chain+0x10>
    4704:	00c12583          	lw	a1,12(sp)
    4708:	ff3510e3          	bne	a0,s3,46e8 <fatfs_fat_add_cluster_to_chain+0x58>
    470c:	00090613          	mv	a2,s2
    4710:	00048513          	mv	a0,s1
    4714:	00000097          	auipc	ra,0x0
    4718:	dfc080e7          	jalr	-516(ra) # 4510 <fatfs_fat_set_cluster>
    471c:	00040613          	mv	a2,s0
    4720:	00090593          	mv	a1,s2
    4724:	00048513          	mv	a0,s1
    4728:	00000097          	auipc	ra,0x0
    472c:	de8080e7          	jalr	-536(ra) # 4510 <fatfs_fat_set_cluster>
    4730:	00100513          	li	a0,1
    4734:	f71ff06f          	j	46a4 <fatfs_fat_add_cluster_to_chain+0x14>

00004738 <fatfs_count_free_clusters>:
    4738:	fe010113          	add	sp,sp,-32
    473c:	00812c23          	sw	s0,24(sp)
    4740:	00912a23          	sw	s1,20(sp)
    4744:	01212823          	sw	s2,16(sp)
    4748:	01312623          	sw	s3,12(sp)
    474c:	00112e23          	sw	ra,28(sp)
    4750:	00050413          	mv	s0,a0
    4754:	00000493          	li	s1,0
    4758:	00000913          	li	s2,0
    475c:	1ff00993          	li	s3,511
    4760:	02042783          	lw	a5,32(s0)
    4764:	02f96263          	bltu	s2,a5,4788 <fatfs_count_free_clusters+0x50>
    4768:	01c12083          	lw	ra,28(sp)
    476c:	01812403          	lw	s0,24(sp)
    4770:	01012903          	lw	s2,16(sp)
    4774:	00c12983          	lw	s3,12(sp)
    4778:	00048513          	mv	a0,s1
    477c:	01412483          	lw	s1,20(sp)
    4780:	02010113          	add	sp,sp,32
    4784:	00008067          	ret
    4788:	01442583          	lw	a1,20(s0)
    478c:	00040513          	mv	a0,s0
    4790:	00b905b3          	add	a1,s2,a1
    4794:	ffffd097          	auipc	ra,0xffffd
    4798:	be0080e7          	jalr	-1056(ra) # 1374 <fatfs_fat_read_sector>
    479c:	fc0506e3          	beqz	a0,4768 <fatfs_count_free_clusters+0x30>
    47a0:	03042803          	lw	a6,48(s0)
    47a4:	20852583          	lw	a1,520(a0)
    47a8:	00000693          	li	a3,0
    47ac:	00d587b3          	add	a5,a1,a3
    47b0:	0017c703          	lbu	a4,1(a5)
    47b4:	0007c503          	lbu	a0,0(a5)
    47b8:	00268613          	add	a2,a3,2
    47bc:	00871713          	sll	a4,a4,0x8
    47c0:	02081063          	bnez	a6,47e0 <fatfs_count_free_clusters+0xa8>
    47c4:	00a70733          	add	a4,a4,a0
    47c8:	00173713          	seqz	a4,a4
    47cc:	00e484b3          	add	s1,s1,a4
    47d0:	00060693          	mv	a3,a2
    47d4:	fcd9fce3          	bgeu	s3,a3,47ac <fatfs_count_free_clusters+0x74>
    47d8:	00190913          	add	s2,s2,1
    47dc:	f85ff06f          	j	4760 <fatfs_count_free_clusters+0x28>
    47e0:	00c58633          	add	a2,a1,a2
    47e4:	0037c783          	lbu	a5,3(a5)
    47e8:	00064603          	lbu	a2,0(a2)
    47ec:	00468693          	add	a3,a3,4
    47f0:	01879793          	sll	a5,a5,0x18
    47f4:	01061613          	sll	a2,a2,0x10
    47f8:	00c787b3          	add	a5,a5,a2
    47fc:	00a787b3          	add	a5,a5,a0
    4800:	00e787b3          	add	a5,a5,a4
    4804:	0017b793          	seqz	a5,a5
    4808:	00f484b3          	add	s1,s1,a5
    480c:	fc9ff06f          	j	47d4 <fatfs_count_free_clusters+0x9c>

00004810 <fatfs_add_free_space>:
    4810:	02452783          	lw	a5,36(a0)
    4814:	fd010113          	add	sp,sp,-48
    4818:	02812423          	sw	s0,40(sp)
    481c:	03212023          	sw	s2,32(sp)
    4820:	01412c23          	sw	s4,24(sp)
    4824:	01512a23          	sw	s5,20(sp)
    4828:	00058913          	mv	s2,a1
    482c:	0005aa83          	lw	s5,0(a1)
    4830:	02112623          	sw	ra,44(sp)
    4834:	02912223          	sw	s1,36(sp)
    4838:	01312e23          	sw	s3,28(sp)
    483c:	fff00593          	li	a1,-1
    4840:	00050413          	mv	s0,a0
    4844:	00060a13          	mv	s4,a2
    4848:	00b78663          	beq	a5,a1,4854 <fatfs_add_free_space+0x44>
    484c:	00000097          	auipc	ra,0x0
    4850:	af8080e7          	jalr	-1288(ra) # 4344 <fatfs_set_fs_info_next_free_cluster>
    4854:	00000493          	li	s1,0
    4858:	03449663          	bne	s1,s4,4884 <fatfs_add_free_space+0x74>
    485c:	00100513          	li	a0,1
    4860:	02c12083          	lw	ra,44(sp)
    4864:	02812403          	lw	s0,40(sp)
    4868:	02412483          	lw	s1,36(sp)
    486c:	02012903          	lw	s2,32(sp)
    4870:	01c12983          	lw	s3,28(sp)
    4874:	01812a03          	lw	s4,24(sp)
    4878:	01412a83          	lw	s5,20(sp)
    487c:	03010113          	add	sp,sp,48
    4880:	00008067          	ret
    4884:	00842583          	lw	a1,8(s0)
    4888:	00c10613          	add	a2,sp,12
    488c:	00040513          	mv	a0,s0
    4890:	00000097          	auipc	ra,0x0
    4894:	b68080e7          	jalr	-1176(ra) # 43f8 <fatfs_find_blank_cluster>
    4898:	fc0504e3          	beqz	a0,4860 <fatfs_add_free_space+0x50>
    489c:	00c12983          	lw	s3,12(sp)
    48a0:	000a8593          	mv	a1,s5
    48a4:	00040513          	mv	a0,s0
    48a8:	00098613          	mv	a2,s3
    48ac:	00000097          	auipc	ra,0x0
    48b0:	c64080e7          	jalr	-924(ra) # 4510 <fatfs_fat_set_cluster>
    48b4:	fff00613          	li	a2,-1
    48b8:	00098593          	mv	a1,s3
    48bc:	00040513          	mv	a0,s0
    48c0:	00000097          	auipc	ra,0x0
    48c4:	c50080e7          	jalr	-944(ra) # 4510 <fatfs_fat_set_cluster>
    48c8:	00049463          	bnez	s1,48d0 <fatfs_add_free_space+0xc0>
    48cc:	01392023          	sw	s3,0(s2)
    48d0:	00148493          	add	s1,s1,1
    48d4:	00098a93          	mv	s5,s3
    48d8:	f81ff06f          	j	4858 <fatfs_add_free_space+0x48>

000048dc <_write_sectors>:
    48dc:	fb010113          	add	sp,sp,-80
    48e0:	03312e23          	sw	s3,60(sp)
    48e4:	0000c9b7          	lui	s3,0xc
    48e8:	03612823          	sw	s6,48(sp)
    48ec:	4ec9cb03          	lbu	s6,1260(s3) # c4ec <_fs>
    48f0:	03512a23          	sw	s5,52(sp)
    48f4:	00058a93          	mv	s5,a1
    48f8:	fff00793          	li	a5,-1
    48fc:	04812423          	sw	s0,72(sp)
    4900:	000b0593          	mv	a1,s6
    4904:	00050413          	mv	s0,a0
    4908:	000a8513          	mv	a0,s5
    490c:	00f12e23          	sw	a5,28(sp)
    4910:	04112623          	sw	ra,76(sp)
    4914:	04912223          	sw	s1,68(sp)
    4918:	05212023          	sw	s2,64(sp)
    491c:	03712623          	sw	s7,44(sp)
    4920:	03812423          	sw	s8,40(sp)
    4924:	00068b93          	mv	s7,a3
    4928:	03912223          	sw	s9,36(sp)
    492c:	03a12023          	sw	s10,32(sp)
    4930:	00060c93          	mv	s9,a2
    4934:	03412c23          	sw	s4,56(sp)
    4938:	ffffc097          	auipc	ra,0xffffc
    493c:	e58080e7          	jalr	-424(ra) # 790 <__udivsi3>
    4940:	00050493          	mv	s1,a0
    4944:	000b0593          	mv	a1,s6
    4948:	000a8513          	mv	a0,s5
    494c:	ffffc097          	auipc	ra,0xffffc
    4950:	e8c080e7          	jalr	-372(ra) # 7d8 <__umodsi3>
    4954:	00ab87b3          	add	a5,s7,a0
    4958:	00050c13          	mv	s8,a0
    495c:	4ec98d13          	add	s10,s3,1260
    4960:	000b8913          	mv	s2,s7
    4964:	00fb7e63          	bgeu	s6,a5,4980 <_write_sectors+0xa4>
    4968:	00048593          	mv	a1,s1
    496c:	000b0513          	mv	a0,s6
    4970:	ffffd097          	auipc	ra,0xffffd
    4974:	850080e7          	jalr	-1968(ra) # 11c0 <__mulsi3>
    4978:	415b07b3          	sub	a5,s6,s5
    497c:	00f50933          	add	s2,a0,a5
    4980:	22842a03          	lw	s4,552(s0)
    4984:	029a1a63          	bne	s4,s1,49b8 <_write_sectors+0xdc>
    4988:	22c42583          	lw	a1,556(s0)
    498c:	4ec98513          	add	a0,s3,1260
    4990:	ffffd097          	auipc	ra,0xffffd
    4994:	d0c080e7          	jalr	-756(ra) # 169c <fatfs_lba_of_cluster>
    4998:	018505b3          	add	a1,a0,s8
    499c:	00090693          	mv	a3,s2
    49a0:	000c8613          	mv	a2,s9
    49a4:	4ec98513          	add	a0,s3,1260
    49a8:	ffffd097          	auipc	ra,0xffffd
    49ac:	d5c080e7          	jalr	-676(ra) # 1704 <fatfs_sector_write>
    49b0:	04050a63          	beqz	a0,4a04 <_write_sectors+0x128>
    49b4:	0540006f          	j	4a08 <_write_sectors+0x12c>
    49b8:	096ae663          	bltu	s5,s6,4a44 <_write_sectors+0x168>
    49bc:	001a0793          	add	a5,s4,1
    49c0:	08979263          	bne	a5,s1,4a44 <_write_sectors+0x168>
    49c4:	22c42583          	lw	a1,556(s0)
    49c8:	fff00a93          	li	s5,-1
    49cc:	089a6263          	bltu	s4,s1,4a50 <_write_sectors+0x174>
    49d0:	fff00793          	li	a5,-1
    49d4:	0af59463          	bne	a1,a5,4a7c <_write_sectors+0x1a0>
    49d8:	000d4583          	lbu	a1,0(s10)
    49dc:	fff58513          	add	a0,a1,-1
    49e0:	01750533          	add	a0,a0,s7
    49e4:	ffffc097          	auipc	ra,0xffffc
    49e8:	dac080e7          	jalr	-596(ra) # 790 <__udivsi3>
    49ec:	00050613          	mv	a2,a0
    49f0:	01c10593          	add	a1,sp,28
    49f4:	4ec98513          	add	a0,s3,1260
    49f8:	00000097          	auipc	ra,0x0
    49fc:	e18080e7          	jalr	-488(ra) # 4810 <fatfs_add_free_space>
    4a00:	06051c63          	bnez	a0,4a78 <_write_sectors+0x19c>
    4a04:	00000913          	li	s2,0
    4a08:	04c12083          	lw	ra,76(sp)
    4a0c:	04812403          	lw	s0,72(sp)
    4a10:	04412483          	lw	s1,68(sp)
    4a14:	03c12983          	lw	s3,60(sp)
    4a18:	03812a03          	lw	s4,56(sp)
    4a1c:	03412a83          	lw	s5,52(sp)
    4a20:	03012b03          	lw	s6,48(sp)
    4a24:	02c12b83          	lw	s7,44(sp)
    4a28:	02812c03          	lw	s8,40(sp)
    4a2c:	02412c83          	lw	s9,36(sp)
    4a30:	02012d03          	lw	s10,32(sp)
    4a34:	00090513          	mv	a0,s2
    4a38:	04012903          	lw	s2,64(sp)
    4a3c:	05010113          	add	sp,sp,80
    4a40:	00008067          	ret
    4a44:	00442583          	lw	a1,4(s0)
    4a48:	00000a13          	li	s4,0
    4a4c:	f7dff06f          	j	49c8 <_write_sectors+0xec>
    4a50:	4ec98513          	add	a0,s3,1260
    4a54:	00b12623          	sw	a1,12(sp)
    4a58:	fffff097          	auipc	ra,0xfffff
    4a5c:	8c0080e7          	jalr	-1856(ra) # 3318 <fatfs_find_next_cluster>
    4a60:	00c12583          	lw	a1,12(sp)
    4a64:	00b12e23          	sw	a1,28(sp)
    4a68:	f75508e3          	beq	a0,s5,49d8 <_write_sectors+0xfc>
    4a6c:	001a0a13          	add	s4,s4,1
    4a70:	00050593          	mv	a1,a0
    4a74:	f59ff06f          	j	49cc <_write_sectors+0xf0>
    4a78:	01c12583          	lw	a1,28(sp)
    4a7c:	22b42623          	sw	a1,556(s0)
    4a80:	22942423          	sw	s1,552(s0)
    4a84:	f09ff06f          	j	498c <_write_sectors+0xb0>

00004a88 <fl_fflush>:
    4a88:	000077b7          	lui	a5,0x7
    4a8c:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    4a90:	ff010113          	add	sp,sp,-16
    4a94:	00812423          	sw	s0,8(sp)
    4a98:	00112623          	sw	ra,12(sp)
    4a9c:	00912223          	sw	s1,4(sp)
    4aa0:	00050413          	mv	s0,a0
    4aa4:	00079663          	bnez	a5,4ab0 <fl_fflush+0x28>
    4aa8:	ffffd097          	auipc	ra,0xffffd
    4aac:	eb0080e7          	jalr	-336(ra) # 1958 <fl_init>
    4ab0:	04040863          	beqz	s0,4b00 <fl_fflush+0x78>
    4ab4:	0000c7b7          	lui	a5,0xc
    4ab8:	4ec78713          	add	a4,a5,1260 # c4ec <_fs>
    4abc:	03c72703          	lw	a4,60(a4)
    4ac0:	4ec78493          	add	s1,a5,1260
    4ac4:	00070463          	beqz	a4,4acc <fl_fflush+0x44>
    4ac8:	000700e7          	jalr	a4
    4acc:	43442783          	lw	a5,1076(s0)
    4ad0:	02078263          	beqz	a5,4af4 <fl_fflush+0x6c>
    4ad4:	43042583          	lw	a1,1072(s0)
    4ad8:	00100693          	li	a3,1
    4adc:	23040613          	add	a2,s0,560
    4ae0:	00040513          	mv	a0,s0
    4ae4:	00000097          	auipc	ra,0x0
    4ae8:	df8080e7          	jalr	-520(ra) # 48dc <_write_sectors>
    4aec:	00050463          	beqz	a0,4af4 <fl_fflush+0x6c>
    4af0:	42042a23          	sw	zero,1076(s0)
    4af4:	0404a783          	lw	a5,64(s1)
    4af8:	00078463          	beqz	a5,4b00 <fl_fflush+0x78>
    4afc:	000780e7          	jalr	a5
    4b00:	00c12083          	lw	ra,12(sp)
    4b04:	00812403          	lw	s0,8(sp)
    4b08:	00412483          	lw	s1,4(sp)
    4b0c:	00000513          	li	a0,0
    4b10:	01010113          	add	sp,sp,16
    4b14:	00008067          	ret

00004b18 <fl_fclose>:
    4b18:	000077b7          	lui	a5,0x7
    4b1c:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    4b20:	ff010113          	add	sp,sp,-16
    4b24:	00812423          	sw	s0,8(sp)
    4b28:	00112623          	sw	ra,12(sp)
    4b2c:	00912223          	sw	s1,4(sp)
    4b30:	01212023          	sw	s2,0(sp)
    4b34:	00050413          	mv	s0,a0
    4b38:	00079663          	bnez	a5,4b44 <fl_fclose+0x2c>
    4b3c:	ffffd097          	auipc	ra,0xffffd
    4b40:	e1c080e7          	jalr	-484(ra) # 1958 <fl_init>
    4b44:	08040e63          	beqz	s0,4be0 <fl_fclose+0xc8>
    4b48:	0000c4b7          	lui	s1,0xc
    4b4c:	4ec48793          	add	a5,s1,1260 # c4ec <_fs>
    4b50:	03c7a783          	lw	a5,60(a5)
    4b54:	4ec48913          	add	s2,s1,1260
    4b58:	00078463          	beqz	a5,4b60 <fl_fclose+0x48>
    4b5c:	000780e7          	jalr	a5
    4b60:	00040513          	mv	a0,s0
    4b64:	00000097          	auipc	ra,0x0
    4b68:	f24080e7          	jalr	-220(ra) # 4a88 <fl_fflush>
    4b6c:	01042783          	lw	a5,16(s0)
    4b70:	00078e63          	beqz	a5,4b8c <fl_fclose+0x74>
    4b74:	00c42683          	lw	a3,12(s0)
    4b78:	00042583          	lw	a1,0(s0)
    4b7c:	21c40613          	add	a2,s0,540
    4b80:	4ec48513          	add	a0,s1,1260
    4b84:	fffff097          	auipc	ra,0xfffff
    4b88:	00c080e7          	jalr	12(ra) # 3b90 <fatfs_update_file_length>
    4b8c:	fff00793          	li	a5,-1
    4b90:	42f42823          	sw	a5,1072(s0)
    4b94:	00040513          	mv	a0,s0
    4b98:	00042423          	sw	zero,8(s0)
    4b9c:	00042623          	sw	zero,12(s0)
    4ba0:	00042223          	sw	zero,4(s0)
    4ba4:	42042a23          	sw	zero,1076(s0)
    4ba8:	00042823          	sw	zero,16(s0)
    4bac:	ffffd097          	auipc	ra,0xffffd
    4bb0:	aa8080e7          	jalr	-1368(ra) # 1654 <_free_file>
    4bb4:	4ec48513          	add	a0,s1,1260
    4bb8:	ffffe097          	auipc	ra,0xffffe
    4bbc:	68c080e7          	jalr	1676(ra) # 3244 <fatfs_fat_purge>
    4bc0:	04092783          	lw	a5,64(s2)
    4bc4:	00078e63          	beqz	a5,4be0 <fl_fclose+0xc8>
    4bc8:	00812403          	lw	s0,8(sp)
    4bcc:	00c12083          	lw	ra,12(sp)
    4bd0:	00412483          	lw	s1,4(sp)
    4bd4:	00012903          	lw	s2,0(sp)
    4bd8:	01010113          	add	sp,sp,16
    4bdc:	00078067          	jr	a5
    4be0:	00c12083          	lw	ra,12(sp)
    4be4:	00812403          	lw	s0,8(sp)
    4be8:	00412483          	lw	s1,4(sp)
    4bec:	00012903          	lw	s2,0(sp)
    4bf0:	01010113          	add	sp,sp,16
    4bf4:	00008067          	ret

00004bf8 <fl_fread>:
    4bf8:	fd010113          	add	sp,sp,-48
    4bfc:	01612823          	sw	s6,16(sp)
    4c00:	00050b13          	mv	s6,a0
    4c04:	00058513          	mv	a0,a1
    4c08:	00060593          	mv	a1,a2
    4c0c:	02812423          	sw	s0,40(sp)
    4c10:	02912223          	sw	s1,36(sp)
    4c14:	02112623          	sw	ra,44(sp)
    4c18:	03212023          	sw	s2,32(sp)
    4c1c:	01312e23          	sw	s3,28(sp)
    4c20:	01412c23          	sw	s4,24(sp)
    4c24:	01512a23          	sw	s5,20(sp)
    4c28:	01712623          	sw	s7,12(sp)
    4c2c:	01812423          	sw	s8,8(sp)
    4c30:	01912223          	sw	s9,4(sp)
    4c34:	01a12023          	sw	s10,0(sp)
    4c38:	00068413          	mv	s0,a3
    4c3c:	ffffc097          	auipc	ra,0xffffc
    4c40:	584080e7          	jalr	1412(ra) # 11c0 <__mulsi3>
    4c44:	000077b7          	lui	a5,0x7
    4c48:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    4c4c:	00050493          	mv	s1,a0
    4c50:	00079663          	bnez	a5,4c5c <fl_fread+0x64>
    4c54:	ffffd097          	auipc	ra,0xffffd
    4c58:	d04080e7          	jalr	-764(ra) # 1958 <fl_init>
    4c5c:	140b0463          	beqz	s6,4da4 <fl_fread+0x1ac>
    4c60:	14040263          	beqz	s0,4da4 <fl_fread+0x1ac>
    4c64:	43844783          	lbu	a5,1080(s0)
    4c68:	0017f793          	and	a5,a5,1
    4c6c:	12078c63          	beqz	a5,4da4 <fl_fread+0x1ac>
    4c70:	0c048063          	beqz	s1,4d30 <fl_fread+0x138>
    4c74:	00842583          	lw	a1,8(s0)
    4c78:	00c42783          	lw	a5,12(s0)
    4c7c:	12f5f463          	bgeu	a1,a5,4da4 <fl_fread+0x1ac>
    4c80:	00b48733          	add	a4,s1,a1
    4c84:	00e7f463          	bgeu	a5,a4,4c8c <fl_fread+0x94>
    4c88:	40b784b3          	sub	s1,a5,a1
    4c8c:	0095da13          	srl	s4,a1,0x9
    4c90:	1ff5f913          	and	s2,a1,511
    4c94:	00000993          	li	s3,0
    4c98:	23040b93          	add	s7,s0,560
    4c9c:	20000c13          	li	s8,512
    4ca0:	1ff00c93          	li	s9,511
    4ca4:	0899d463          	bge	s3,s1,4d2c <fl_fread+0x134>
    4ca8:	04091663          	bnez	s2,4cf4 <fl_fread+0xfc>
    4cac:	413486b3          	sub	a3,s1,s3
    4cb0:	04dcd263          	bge	s9,a3,4cf4 <fl_fread+0xfc>
    4cb4:	4096d693          	sra	a3,a3,0x9
    4cb8:	013b0633          	add	a2,s6,s3
    4cbc:	000a0593          	mv	a1,s4
    4cc0:	00040513          	mv	a0,s0
    4cc4:	fffff097          	auipc	ra,0xfffff
    4cc8:	534080e7          	jalr	1332(ra) # 41f8 <_read_sectors>
    4ccc:	06050063          	beqz	a0,4d2c <fl_fread+0x134>
    4cd0:	00951d13          	sll	s10,a0,0x9
    4cd4:	000d0a93          	mv	s5,s10
    4cd8:	00aa0a33          	add	s4,s4,a0
    4cdc:	00842783          	lw	a5,8(s0)
    4ce0:	015989b3          	add	s3,s3,s5
    4ce4:	00000913          	li	s2,0
    4ce8:	01a787b3          	add	a5,a5,s10
    4cec:	00f42423          	sw	a5,8(s0)
    4cf0:	fb5ff06f          	j	4ca4 <fl_fread+0xac>
    4cf4:	43042783          	lw	a5,1072(s0)
    4cf8:	07478e63          	beq	a5,s4,4d74 <fl_fread+0x17c>
    4cfc:	43442783          	lw	a5,1076(s0)
    4d00:	00078863          	beqz	a5,4d10 <fl_fread+0x118>
    4d04:	00040513          	mv	a0,s0
    4d08:	00000097          	auipc	ra,0x0
    4d0c:	d80080e7          	jalr	-640(ra) # 4a88 <fl_fflush>
    4d10:	00100693          	li	a3,1
    4d14:	000b8613          	mv	a2,s7
    4d18:	000a0593          	mv	a1,s4
    4d1c:	00040513          	mv	a0,s0
    4d20:	fffff097          	auipc	ra,0xfffff
    4d24:	4d8080e7          	jalr	1240(ra) # 41f8 <_read_sectors>
    4d28:	04051263          	bnez	a0,4d6c <fl_fread+0x174>
    4d2c:	00098493          	mv	s1,s3
    4d30:	02c12083          	lw	ra,44(sp)
    4d34:	02812403          	lw	s0,40(sp)
    4d38:	02012903          	lw	s2,32(sp)
    4d3c:	01c12983          	lw	s3,28(sp)
    4d40:	01812a03          	lw	s4,24(sp)
    4d44:	01412a83          	lw	s5,20(sp)
    4d48:	01012b03          	lw	s6,16(sp)
    4d4c:	00c12b83          	lw	s7,12(sp)
    4d50:	00812c03          	lw	s8,8(sp)
    4d54:	00412c83          	lw	s9,4(sp)
    4d58:	00012d03          	lw	s10,0(sp)
    4d5c:	00048513          	mv	a0,s1
    4d60:	02412483          	lw	s1,36(sp)
    4d64:	03010113          	add	sp,sp,48
    4d68:	00008067          	ret
    4d6c:	43442823          	sw	s4,1072(s0)
    4d70:	42042a23          	sw	zero,1076(s0)
    4d74:	412c07b3          	sub	a5,s8,s2
    4d78:	41348ab3          	sub	s5,s1,s3
    4d7c:	0157d463          	bge	a5,s5,4d84 <fl_fread+0x18c>
    4d80:	00078a93          	mv	s5,a5
    4d84:	000a8613          	mv	a2,s5
    4d88:	012b85b3          	add	a1,s7,s2
    4d8c:	013b0533          	add	a0,s6,s3
    4d90:	000a8d13          	mv	s10,s5
    4d94:	ffffc097          	auipc	ra,0xffffc
    4d98:	aec080e7          	jalr	-1300(ra) # 880 <memcpy>
    4d9c:	001a0a13          	add	s4,s4,1
    4da0:	f3dff06f          	j	4cdc <fl_fread+0xe4>
    4da4:	fff00493          	li	s1,-1
    4da8:	f89ff06f          	j	4d30 <fl_fread+0x138>

00004dac <fl_fgetc>:
    4dac:	fe010113          	add	sp,sp,-32
    4db0:	00100613          	li	a2,1
    4db4:	00050693          	mv	a3,a0
    4db8:	00060593          	mv	a1,a2
    4dbc:	00f10513          	add	a0,sp,15
    4dc0:	00112e23          	sw	ra,28(sp)
    4dc4:	000107a3          	sb	zero,15(sp)
    4dc8:	00000097          	auipc	ra,0x0
    4dcc:	e30080e7          	jalr	-464(ra) # 4bf8 <fl_fread>
    4dd0:	00100793          	li	a5,1
    4dd4:	00f51463          	bne	a0,a5,4ddc <fl_fgetc+0x30>
    4dd8:	00f14503          	lbu	a0,15(sp)
    4ddc:	01c12083          	lw	ra,28(sp)
    4de0:	02010113          	add	sp,sp,32
    4de4:	00008067          	ret

00004de8 <fl_fgets>:
    4de8:	fe010113          	add	sp,sp,-32
    4dec:	00112e23          	sw	ra,28(sp)
    4df0:	00812c23          	sw	s0,24(sp)
    4df4:	00912a23          	sw	s1,20(sp)
    4df8:	01212823          	sw	s2,16(sp)
    4dfc:	01312623          	sw	s3,12(sp)
    4e00:	01412423          	sw	s4,8(sp)
    4e04:	02b05063          	blez	a1,4e24 <fl_fgets+0x3c>
    4e08:	00050493          	mv	s1,a0
    4e0c:	00060993          	mv	s3,a2
    4e10:	00000413          	li	s0,0
    4e14:	fff58913          	add	s2,a1,-1
    4e18:	00a00a13          	li	s4,10
    4e1c:	03244863          	blt	s0,s2,4e4c <fl_fgets+0x64>
    4e20:	04041663          	bnez	s0,4e6c <fl_fgets+0x84>
    4e24:	00000493          	li	s1,0
    4e28:	01c12083          	lw	ra,28(sp)
    4e2c:	01812403          	lw	s0,24(sp)
    4e30:	01012903          	lw	s2,16(sp)
    4e34:	00c12983          	lw	s3,12(sp)
    4e38:	00812a03          	lw	s4,8(sp)
    4e3c:	00048513          	mv	a0,s1
    4e40:	01412483          	lw	s1,20(sp)
    4e44:	02010113          	add	sp,sp,32
    4e48:	00008067          	ret
    4e4c:	00098513          	mv	a0,s3
    4e50:	00000097          	auipc	ra,0x0
    4e54:	f5c080e7          	jalr	-164(ra) # 4dac <fl_fgetc>
    4e58:	fc0544e3          	bltz	a0,4e20 <fl_fgets+0x38>
    4e5c:	00140413          	add	s0,s0,1
    4e60:	008487b3          	add	a5,s1,s0
    4e64:	fea78fa3          	sb	a0,-1(a5)
    4e68:	fb451ae3          	bne	a0,s4,4e1c <fl_fgets+0x34>
    4e6c:	00848433          	add	s0,s1,s0
    4e70:	00040023          	sb	zero,0(s0)
    4e74:	fb5ff06f          	j	4e28 <fl_fgets+0x40>

00004e78 <fl_fwrite>:
    4e78:	fb010113          	add	sp,sp,-80
    4e7c:	00a12423          	sw	a0,8(sp)
    4e80:	00058513          	mv	a0,a1
    4e84:	00060593          	mv	a1,a2
    4e88:	03312e23          	sw	s3,60(sp)
    4e8c:	03912223          	sw	s9,36(sp)
    4e90:	04112623          	sw	ra,76(sp)
    4e94:	04812423          	sw	s0,72(sp)
    4e98:	04912223          	sw	s1,68(sp)
    4e9c:	05212023          	sw	s2,64(sp)
    4ea0:	03412c23          	sw	s4,56(sp)
    4ea4:	03512a23          	sw	s5,52(sp)
    4ea8:	03612823          	sw	s6,48(sp)
    4eac:	03712623          	sw	s7,44(sp)
    4eb0:	03812423          	sw	s8,40(sp)
    4eb4:	03a12023          	sw	s10,32(sp)
    4eb8:	01b12e23          	sw	s11,28(sp)
    4ebc:	00068c93          	mv	s9,a3
    4ec0:	ffffc097          	auipc	ra,0xffffc
    4ec4:	300080e7          	jalr	768(ra) # 11c0 <__mulsi3>
    4ec8:	00007737          	lui	a4,0x7
    4ecc:	76472703          	lw	a4,1892(a4) # 7764 <_filelib_init>
    4ed0:	00050993          	mv	s3,a0
    4ed4:	00071663          	bnez	a4,4ee0 <fl_fwrite+0x68>
    4ed8:	ffffd097          	auipc	ra,0xffffd
    4edc:	a80080e7          	jalr	-1408(ra) # 1958 <fl_init>
    4ee0:	020c8a63          	beqz	s9,4f14 <fl_fwrite+0x9c>
    4ee4:	0000cab7          	lui	s5,0xc
    4ee8:	4eca8713          	add	a4,s5,1260 # c4ec <_fs>
    4eec:	03c72703          	lw	a4,60(a4)
    4ef0:	4eca8a93          	add	s5,s5,1260
    4ef4:	00070463          	beqz	a4,4efc <fl_fwrite+0x84>
    4ef8:	000700e7          	jalr	a4
    4efc:	438cc703          	lbu	a4,1080(s9)
    4f00:	00277693          	and	a3,a4,2
    4f04:	04069a63          	bnez	a3,4f58 <fl_fwrite+0xe0>
    4f08:	040aa783          	lw	a5,64(s5)
    4f0c:	00078463          	beqz	a5,4f14 <fl_fwrite+0x9c>
    4f10:	000780e7          	jalr	a5
    4f14:	fff00993          	li	s3,-1
    4f18:	04c12083          	lw	ra,76(sp)
    4f1c:	04812403          	lw	s0,72(sp)
    4f20:	04412483          	lw	s1,68(sp)
    4f24:	04012903          	lw	s2,64(sp)
    4f28:	03812a03          	lw	s4,56(sp)
    4f2c:	03412a83          	lw	s5,52(sp)
    4f30:	03012b03          	lw	s6,48(sp)
    4f34:	02c12b83          	lw	s7,44(sp)
    4f38:	02812c03          	lw	s8,40(sp)
    4f3c:	02412c83          	lw	s9,36(sp)
    4f40:	02012d03          	lw	s10,32(sp)
    4f44:	01c12d83          	lw	s11,28(sp)
    4f48:	00098513          	mv	a0,s3
    4f4c:	03c12983          	lw	s3,60(sp)
    4f50:	05010113          	add	sp,sp,80
    4f54:	00008067          	ret
    4f58:	00477713          	and	a4,a4,4
    4f5c:	00070663          	beqz	a4,4f68 <fl_fwrite+0xf0>
    4f60:	00cca703          	lw	a4,12(s9)
    4f64:	00eca423          	sw	a4,8(s9)
    4f68:	008ca903          	lw	s2,8(s9)
    4f6c:	00000493          	li	s1,0
    4f70:	20000b93          	li	s7,512
    4f74:	00995413          	srl	s0,s2,0x9
    4f78:	230c8b13          	add	s6,s9,560
    4f7c:	1ff97913          	and	s2,s2,511
    4f80:	00100d13          	li	s10,1
    4f84:	1ff00d93          	li	s11,511
    4f88:	fff00c13          	li	s8,-1
    4f8c:	0734fe63          	bgeu	s1,s3,5008 <fl_fwrite+0x190>
    4f90:	00812783          	lw	a5,8(sp)
    4f94:	430ca703          	lw	a4,1072(s9)
    4f98:	409986b3          	sub	a3,s3,s1
    4f9c:	009787b3          	add	a5,a5,s1
    4fa0:	00f12223          	sw	a5,4(sp)
    4fa4:	08091063          	bnez	s2,5024 <fl_fwrite+0x1ac>
    4fa8:	06ddfe63          	bgeu	s11,a3,5024 <fl_fwrite+0x1ac>
    4fac:	03870463          	beq	a4,s8,4fd4 <fl_fwrite+0x15c>
    4fb0:	434ca703          	lw	a4,1076(s9)
    4fb4:	00070c63          	beqz	a4,4fcc <fl_fwrite+0x154>
    4fb8:	000c8513          	mv	a0,s9
    4fbc:	00d12623          	sw	a3,12(sp)
    4fc0:	00000097          	auipc	ra,0x0
    4fc4:	ac8080e7          	jalr	-1336(ra) # 4a88 <fl_fflush>
    4fc8:	00c12683          	lw	a3,12(sp)
    4fcc:	438ca823          	sw	s8,1072(s9)
    4fd0:	420caa23          	sw	zero,1076(s9)
    4fd4:	00412603          	lw	a2,4(sp)
    4fd8:	0096d693          	srl	a3,a3,0x9
    4fdc:	00040593          	mv	a1,s0
    4fe0:	000c8513          	mv	a0,s9
    4fe4:	00000097          	auipc	ra,0x0
    4fe8:	8f8080e7          	jalr	-1800(ra) # 48dc <_write_sectors>
    4fec:	008ca703          	lw	a4,8(s9)
    4ff0:	00951693          	sll	a3,a0,0x9
    4ff4:	00d484b3          	add	s1,s1,a3
    4ff8:	00d70733          	add	a4,a4,a3
    4ffc:	00eca423          	sw	a4,8(s9)
    5000:	00a40433          	add	s0,s0,a0
    5004:	0a051663          	bnez	a0,50b0 <fl_fwrite+0x238>
    5008:	008ca703          	lw	a4,8(s9)
    500c:	00cca683          	lw	a3,12(s9)
    5010:	0ae6e463          	bltu	a3,a4,50b8 <fl_fwrite+0x240>
    5014:	040aa783          	lw	a5,64(s5)
    5018:	f00780e3          	beqz	a5,4f18 <fl_fwrite+0xa0>
    501c:	000780e7          	jalr	a5
    5020:	ef9ff06f          	j	4f18 <fl_fwrite+0xa0>
    5024:	412b8a33          	sub	s4,s7,s2
    5028:	0146f463          	bgeu	a3,s4,5030 <fl_fwrite+0x1b8>
    502c:	00068a13          	mv	s4,a3
    5030:	04e40a63          	beq	s0,a4,5084 <fl_fwrite+0x20c>
    5034:	434ca703          	lw	a4,1076(s9)
    5038:	00070863          	beqz	a4,5048 <fl_fwrite+0x1d0>
    503c:	000c8513          	mv	a0,s9
    5040:	00000097          	auipc	ra,0x0
    5044:	a48080e7          	jalr	-1464(ra) # 4a88 <fl_fflush>
    5048:	037a0a63          	beq	s4,s7,507c <fl_fwrite+0x204>
    504c:	00100693          	li	a3,1
    5050:	000b0613          	mv	a2,s6
    5054:	00040593          	mv	a1,s0
    5058:	000c8513          	mv	a0,s9
    505c:	fffff097          	auipc	ra,0xfffff
    5060:	19c080e7          	jalr	412(ra) # 41f8 <_read_sectors>
    5064:	00051c63          	bnez	a0,507c <fl_fwrite+0x204>
    5068:	20000613          	li	a2,512
    506c:	00000593          	li	a1,0
    5070:	000b0513          	mv	a0,s6
    5074:	ffffb097          	auipc	ra,0xffffb
    5078:	7f0080e7          	jalr	2032(ra) # 864 <memset>
    507c:	428ca823          	sw	s0,1072(s9)
    5080:	420caa23          	sw	zero,1076(s9)
    5084:	00412583          	lw	a1,4(sp)
    5088:	000a0613          	mv	a2,s4
    508c:	012b0533          	add	a0,s6,s2
    5090:	ffffb097          	auipc	ra,0xffffb
    5094:	7f0080e7          	jalr	2032(ra) # 880 <memcpy>
    5098:	008ca703          	lw	a4,8(s9)
    509c:	43acaa23          	sw	s10,1076(s9)
    50a0:	014484b3          	add	s1,s1,s4
    50a4:	01470733          	add	a4,a4,s4
    50a8:	00eca423          	sw	a4,8(s9)
    50ac:	00140413          	add	s0,s0,1
    50b0:	00000913          	li	s2,0
    50b4:	ed9ff06f          	j	4f8c <fl_fwrite+0x114>
    50b8:	00eca623          	sw	a4,12(s9)
    50bc:	00100713          	li	a4,1
    50c0:	00eca823          	sw	a4,16(s9)
    50c4:	f51ff06f          	j	5014 <fl_fwrite+0x19c>

000050c8 <fl_fputc>:
    50c8:	fe010113          	add	sp,sp,-32
    50cc:	00100613          	li	a2,1
    50d0:	00812c23          	sw	s0,24(sp)
    50d4:	00058693          	mv	a3,a1
    50d8:	00a107a3          	sb	a0,15(sp)
    50dc:	00050413          	mv	s0,a0
    50e0:	00060593          	mv	a1,a2
    50e4:	00f10513          	add	a0,sp,15
    50e8:	00112e23          	sw	ra,28(sp)
    50ec:	00000097          	auipc	ra,0x0
    50f0:	d8c080e7          	jalr	-628(ra) # 4e78 <fl_fwrite>
    50f4:	00100793          	li	a5,1
    50f8:	00f51463          	bne	a0,a5,5100 <fl_fputc+0x38>
    50fc:	00040513          	mv	a0,s0
    5100:	01c12083          	lw	ra,28(sp)
    5104:	01812403          	lw	s0,24(sp)
    5108:	02010113          	add	sp,sp,32
    510c:	00008067          	ret

00005110 <fl_fputs>:
    5110:	fe010113          	add	sp,sp,-32
    5114:	00812c23          	sw	s0,24(sp)
    5118:	00112e23          	sw	ra,28(sp)
    511c:	00050413          	mv	s0,a0
    5120:	00b12623          	sw	a1,12(sp)
    5124:	ffffb097          	auipc	ra,0xffffb
    5128:	780080e7          	jalr	1920(ra) # 8a4 <strlen>
    512c:	00050613          	mv	a2,a0
    5130:	00040513          	mv	a0,s0
    5134:	01812403          	lw	s0,24(sp)
    5138:	00c12683          	lw	a3,12(sp)
    513c:	01c12083          	lw	ra,28(sp)
    5140:	00100593          	li	a1,1
    5144:	02010113          	add	sp,sp,32
    5148:	00000317          	auipc	t1,0x0
    514c:	d3030067          	jr	-720(t1) # 4e78 <fl_fwrite>

00005150 <fatfs_allocate_free_space>:
    5150:	fd010113          	add	sp,sp,-48
    5154:	02112623          	sw	ra,44(sp)
    5158:	02812423          	sw	s0,40(sp)
    515c:	02912223          	sw	s1,36(sp)
    5160:	03212023          	sw	s2,32(sp)
    5164:	01312e23          	sw	s3,28(sp)
    5168:	01412c23          	sw	s4,24(sp)
    516c:	01512a23          	sw	s5,20(sp)
    5170:	02069863          	bnez	a3,51a0 <fatfs_allocate_free_space+0x50>
    5174:	00000413          	li	s0,0
    5178:	02c12083          	lw	ra,44(sp)
    517c:	00040513          	mv	a0,s0
    5180:	02812403          	lw	s0,40(sp)
    5184:	02412483          	lw	s1,36(sp)
    5188:	02012903          	lw	s2,32(sp)
    518c:	01c12983          	lw	s3,28(sp)
    5190:	01812a03          	lw	s4,24(sp)
    5194:	01412a83          	lw	s5,20(sp)
    5198:	03010113          	add	sp,sp,48
    519c:	00008067          	ret
    51a0:	02452783          	lw	a5,36(a0)
    51a4:	00058a93          	mv	s5,a1
    51a8:	fff00593          	li	a1,-1
    51ac:	00050493          	mv	s1,a0
    51b0:	00060993          	mv	s3,a2
    51b4:	00068413          	mv	s0,a3
    51b8:	00b78663          	beq	a5,a1,51c4 <fatfs_allocate_free_space+0x74>
    51bc:	fffff097          	auipc	ra,0xfffff
    51c0:	188080e7          	jalr	392(ra) # 4344 <fatfs_set_fs_info_next_free_cluster>
    51c4:	0004ca03          	lbu	s4,0(s1)
    51c8:	00040513          	mv	a0,s0
    51cc:	009a1a13          	sll	s4,s4,0x9
    51d0:	000a0593          	mv	a1,s4
    51d4:	ffffb097          	auipc	ra,0xffffb
    51d8:	5bc080e7          	jalr	1468(ra) # 790 <__udivsi3>
    51dc:	00050913          	mv	s2,a0
    51e0:	00050593          	mv	a1,a0
    51e4:	000a0513          	mv	a0,s4
    51e8:	ffffc097          	auipc	ra,0xffffc
    51ec:	fd8080e7          	jalr	-40(ra) # 11c0 <__mulsi3>
    51f0:	40850533          	sub	a0,a0,s0
    51f4:	00a03533          	snez	a0,a0
    51f8:	00a90933          	add	s2,s2,a0
    51fc:	040a8463          	beqz	s5,5244 <fatfs_allocate_free_space+0xf4>
    5200:	0084a583          	lw	a1,8(s1)
    5204:	00c10613          	add	a2,sp,12
    5208:	00048513          	mv	a0,s1
    520c:	fffff097          	auipc	ra,0xfffff
    5210:	1ec080e7          	jalr	492(ra) # 43f8 <fatfs_find_blank_cluster>
    5214:	00050413          	mv	s0,a0
    5218:	f4050ee3          	beqz	a0,5174 <fatfs_allocate_free_space+0x24>
    521c:	00100793          	li	a5,1
    5220:	02f91663          	bne	s2,a5,524c <fatfs_allocate_free_space+0xfc>
    5224:	00c12903          	lw	s2,12(sp)
    5228:	fff00613          	li	a2,-1
    522c:	00048513          	mv	a0,s1
    5230:	00090593          	mv	a1,s2
    5234:	fffff097          	auipc	ra,0xfffff
    5238:	2dc080e7          	jalr	732(ra) # 4510 <fatfs_fat_set_cluster>
    523c:	0129a023          	sw	s2,0(s3)
    5240:	f39ff06f          	j	5178 <fatfs_allocate_free_space+0x28>
    5244:	0009a783          	lw	a5,0(s3)
    5248:	00f12623          	sw	a5,12(sp)
    524c:	00090613          	mv	a2,s2
    5250:	00c10593          	add	a1,sp,12
    5254:	00048513          	mv	a0,s1
    5258:	fffff097          	auipc	ra,0xfffff
    525c:	5b8080e7          	jalr	1464(ra) # 4810 <fatfs_add_free_space>
    5260:	00050413          	mv	s0,a0
    5264:	f15ff06f          	j	5178 <fatfs_allocate_free_space+0x28>

00005268 <fatfs_add_file_entry>:
    5268:	f8010113          	add	sp,sp,-128
    526c:	00f12a23          	sw	a5,20(sp)
    5270:	03852783          	lw	a5,56(a0)
    5274:	06112e23          	sw	ra,124(sp)
    5278:	06812c23          	sw	s0,120(sp)
    527c:	06912a23          	sw	s1,116(sp)
    5280:	07212823          	sw	s2,112(sp)
    5284:	07312623          	sw	s3,108(sp)
    5288:	07412423          	sw	s4,104(sp)
    528c:	07512223          	sw	s5,100(sp)
    5290:	07612023          	sw	s6,96(sp)
    5294:	05712e23          	sw	s7,92(sp)
    5298:	05812c23          	sw	s8,88(sp)
    529c:	05912a23          	sw	s9,84(sp)
    52a0:	05a12823          	sw	s10,80(sp)
    52a4:	05b12623          	sw	s11,76(sp)
    52a8:	00b12423          	sw	a1,8(sp)
    52ac:	00c12623          	sw	a2,12(sp)
    52b0:	00e12823          	sw	a4,16(sp)
    52b4:	01012c23          	sw	a6,24(sp)
    52b8:	2c078463          	beqz	a5,5580 <fatfs_add_file_entry+0x318>
    52bc:	00050413          	mv	s0,a0
    52c0:	00060513          	mv	a0,a2
    52c4:	00068a93          	mv	s5,a3
    52c8:	ffffd097          	auipc	ra,0xffffd
    52cc:	b74080e7          	jalr	-1164(ra) # 1e3c <fatfs_lfn_entries_required>
    52d0:	00150713          	add	a4,a0,1
    52d4:	00100793          	li	a5,1
    52d8:	00050493          	mv	s1,a0
    52dc:	2ae7f263          	bgeu	a5,a4,5580 <fatfs_add_file_entry+0x318>
    52e0:	00000913          	li	s2,0
    52e4:	00000a13          	li	s4,0
    52e8:	00000993          	li	s3,0
    52ec:	00000b13          	li	s6,0
    52f0:	00000d93          	li	s11,0
    52f4:	0e500b93          	li	s7,229
    52f8:	01000c13          	li	s8,16
    52fc:	00812583          	lw	a1,8(sp)
    5300:	00000693          	li	a3,0
    5304:	00090613          	mv	a2,s2
    5308:	00040513          	mv	a0,s0
    530c:	ffffe097          	auipc	ra,0xffffe
    5310:	114080e7          	jalr	276(ra) # 3420 <fatfs_sector_reader>
    5314:	18050463          	beqz	a0,549c <fatfs_add_file_entry+0x234>
    5318:	04440d13          	add	s10,s0,68
    531c:	000d8793          	mv	a5,s11
    5320:	00000c93          	li	s9,0
    5324:	000d0513          	mv	a0,s10
    5328:	00f12e23          	sw	a5,28(sp)
    532c:	ffffd097          	auipc	ra,0xffffd
    5330:	a20080e7          	jalr	-1504(ra) # 1d4c <fatfs_entry_lfn_text>
    5334:	01c12783          	lw	a5,28(sp)
    5338:	00050d93          	mv	s11,a0
    533c:	04050063          	beqz	a0,537c <fatfs_add_file_entry+0x114>
    5340:	02078863          	beqz	a5,5370 <fatfs_add_file_entry+0x108>
    5344:	000b0d93          	mv	s11,s6
    5348:	000d8b13          	mv	s6,s11
    534c:	00178d93          	add	s11,a5,1
    5350:	001c8713          	add	a4,s9,1
    5354:	0ff77c93          	zext.b	s9,a4
    5358:	020d0d13          	add	s10,s10,32
    535c:	018c9663          	bne	s9,s8,5368 <fatfs_add_file_entry+0x100>
    5360:	00190913          	add	s2,s2,1
    5364:	f99ff06f          	j	52fc <fatfs_add_file_entry+0x94>
    5368:	000d8793          	mv	a5,s11
    536c:	fb9ff06f          	j	5324 <fatfs_add_file_entry+0xbc>
    5370:	000c8a13          	mv	s4,s9
    5374:	00090993          	mv	s3,s2
    5378:	fd1ff06f          	j	5348 <fatfs_add_file_entry+0xe0>
    537c:	000d4603          	lbu	a2,0(s10)
    5380:	11761863          	bne	a2,s7,5490 <fatfs_add_file_entry+0x228>
    5384:	00079863          	bnez	a5,5394 <fatfs_add_file_entry+0x12c>
    5388:	000c8a13          	mv	s4,s9
    538c:	00090993          	mv	s3,s2
    5390:	00100b13          	li	s6,1
    5394:	00178d93          	add	s11,a5,1
    5398:	fa97cce3          	blt	a5,s1,5350 <fatfs_add_file_entry+0xe8>
    539c:	00ba8693          	add	a3,s5,11
    53a0:	000a8713          	mv	a4,s5
    53a4:	00000913          	li	s2,0
    53a8:	00074603          	lbu	a2,0(a4)
    53ac:	00195793          	srl	a5,s2,0x1
    53b0:	00791913          	sll	s2,s2,0x7
    53b4:	0127e7b3          	or	a5,a5,s2
    53b8:	00170713          	add	a4,a4,1
    53bc:	00c787b3          	add	a5,a5,a2
    53c0:	0ff7f913          	zext.b	s2,a5
    53c4:	fed712e3          	bne	a4,a3,53a8 <fatfs_add_file_entry+0x140>
    53c8:	00098b13          	mv	s6,s3
    53cc:	00000c93          	li	s9,0
    53d0:	04440c13          	add	s8,s0,68
    53d4:	01000d93          	li	s11,16
    53d8:	00812583          	lw	a1,8(sp)
    53dc:	00000693          	li	a3,0
    53e0:	000b0613          	mv	a2,s6
    53e4:	00040513          	mv	a0,s0
    53e8:	ffffe097          	auipc	ra,0xffffe
    53ec:	038080e7          	jalr	56(ra) # 3420 <fatfs_sector_reader>
    53f0:	18050863          	beqz	a0,5580 <fatfs_add_file_entry+0x318>
    53f4:	000c0b93          	mv	s7,s8
    53f8:	00000693          	li	a3,0
    53fc:	00000d13          	li	s10,0
    5400:	000c9663          	bnez	s9,540c <fatfs_add_file_entry+0x1a4>
    5404:	153b1863          	bne	s6,s3,5554 <fatfs_add_file_entry+0x2ec>
    5408:	154d1663          	bne	s10,s4,5554 <fatfs_add_file_entry+0x2ec>
    540c:	12049263          	bnez	s1,5530 <fatfs_add_file_entry+0x2c8>
    5410:	01812703          	lw	a4,24(sp)
    5414:	01012603          	lw	a2,16(sp)
    5418:	01412583          	lw	a1,20(sp)
    541c:	02010693          	add	a3,sp,32
    5420:	000a8513          	mv	a0,s5
    5424:	ffffd097          	auipc	ra,0xffffd
    5428:	b70080e7          	jalr	-1168(ra) # 1f94 <fatfs_sfn_create_entry>
    542c:	02000613          	li	a2,32
    5430:	00c105b3          	add	a1,sp,a2
    5434:	000b8513          	mv	a0,s7
    5438:	ffffb097          	auipc	ra,0xffffb
    543c:	448080e7          	jalr	1096(ra) # 880 <memcpy>
    5440:	03842783          	lw	a5,56(s0)
    5444:	24442503          	lw	a0,580(s0)
    5448:	00100613          	li	a2,1
    544c:	000c0593          	mv	a1,s8
    5450:	000780e7          	jalr	a5
    5454:	07c12083          	lw	ra,124(sp)
    5458:	07812403          	lw	s0,120(sp)
    545c:	07412483          	lw	s1,116(sp)
    5460:	07012903          	lw	s2,112(sp)
    5464:	06c12983          	lw	s3,108(sp)
    5468:	06812a03          	lw	s4,104(sp)
    546c:	06412a83          	lw	s5,100(sp)
    5470:	06012b03          	lw	s6,96(sp)
    5474:	05c12b83          	lw	s7,92(sp)
    5478:	05812c03          	lw	s8,88(sp)
    547c:	05412c83          	lw	s9,84(sp)
    5480:	05012d03          	lw	s10,80(sp)
    5484:	04c12d83          	lw	s11,76(sp)
    5488:	08010113          	add	sp,sp,128
    548c:	00008067          	ret
    5490:	ee060ae3          	beqz	a2,5384 <fatfs_add_file_entry+0x11c>
    5494:	00000b13          	li	s6,0
    5498:	eb9ff06f          	j	5350 <fatfs_add_file_entry+0xe8>
    549c:	00842583          	lw	a1,8(s0)
    54a0:	02010613          	add	a2,sp,32
    54a4:	00040513          	mv	a0,s0
    54a8:	fffff097          	auipc	ra,0xfffff
    54ac:	f50080e7          	jalr	-176(ra) # 43f8 <fatfs_find_blank_cluster>
    54b0:	0c050863          	beqz	a0,5580 <fatfs_add_file_entry+0x318>
    54b4:	02012b83          	lw	s7,32(sp)
    54b8:	00812583          	lw	a1,8(sp)
    54bc:	00040513          	mv	a0,s0
    54c0:	000b8613          	mv	a2,s7
    54c4:	fffff097          	auipc	ra,0xfffff
    54c8:	1cc080e7          	jalr	460(ra) # 4690 <fatfs_fat_add_cluster_to_chain>
    54cc:	0a050a63          	beqz	a0,5580 <fatfs_add_file_entry+0x318>
    54d0:	20000613          	li	a2,512
    54d4:	00000593          	li	a1,0
    54d8:	04440513          	add	a0,s0,68
    54dc:	ffffb097          	auipc	ra,0xffffb
    54e0:	388080e7          	jalr	904(ra) # 864 <memset>
    54e4:	00000c13          	li	s8,0
    54e8:	00044783          	lbu	a5,0(s0)
    54ec:	00fc6a63          	bltu	s8,a5,5500 <fatfs_add_file_entry+0x298>
    54f0:	ea0b16e3          	bnez	s6,539c <fatfs_add_file_entry+0x134>
    54f4:	00090993          	mv	s3,s2
    54f8:	00000a13          	li	s4,0
    54fc:	ea1ff06f          	j	539c <fatfs_add_file_entry+0x134>
    5500:	00000693          	li	a3,0
    5504:	000c0613          	mv	a2,s8
    5508:	000b8593          	mv	a1,s7
    550c:	00040513          	mv	a0,s0
    5510:	ffffc097          	auipc	ra,0xffffc
    5514:	2b0080e7          	jalr	688(ra) # 17c0 <fatfs_write_sector>
    5518:	06050463          	beqz	a0,5580 <fatfs_add_file_entry+0x318>
    551c:	001c0c13          	add	s8,s8,1
    5520:	0ffc7c13          	zext.b	s8,s8
    5524:	fc5ff06f          	j	54e8 <fatfs_add_file_entry+0x280>
    5528:	001b0b13          	add	s6,s6,1
    552c:	eadff06f          	j	53d8 <fatfs_add_file_entry+0x170>
    5530:	00c12503          	lw	a0,12(sp)
    5534:	fff48493          	add	s1,s1,-1
    5538:	00090693          	mv	a3,s2
    553c:	00048613          	mv	a2,s1
    5540:	000b8593          	mv	a1,s7
    5544:	ffffd097          	auipc	ra,0xffffd
    5548:	928080e7          	jalr	-1752(ra) # 1e6c <fatfs_filename_to_lfn>
    554c:	00100c93          	li	s9,1
    5550:	000c8693          	mv	a3,s9
    5554:	001d0793          	add	a5,s10,1
    5558:	0ff7fd13          	zext.b	s10,a5
    555c:	020b8b93          	add	s7,s7,32
    5560:	ebbd10e3          	bne	s10,s11,5400 <fatfs_add_file_entry+0x198>
    5564:	fc0682e3          	beqz	a3,5528 <fatfs_add_file_entry+0x2c0>
    5568:	03842783          	lw	a5,56(s0)
    556c:	24442503          	lw	a0,580(s0)
    5570:	00100613          	li	a2,1
    5574:	000c0593          	mv	a1,s8
    5578:	000780e7          	jalr	a5
    557c:	fa0516e3          	bnez	a0,5528 <fatfs_add_file_entry+0x2c0>
    5580:	00000513          	li	a0,0
    5584:	ed1ff06f          	j	5454 <fatfs_add_file_entry+0x1ec>

00005588 <fl_fopen>:
    5588:	000077b7          	lui	a5,0x7
    558c:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    5590:	fa010113          	add	sp,sp,-96
    5594:	04812c23          	sw	s0,88(sp)
    5598:	05412423          	sw	s4,72(sp)
    559c:	04112e23          	sw	ra,92(sp)
    55a0:	04912a23          	sw	s1,84(sp)
    55a4:	05212823          	sw	s2,80(sp)
    55a8:	05312623          	sw	s3,76(sp)
    55ac:	05512223          	sw	s5,68(sp)
    55b0:	05612023          	sw	s6,64(sp)
    55b4:	03712e23          	sw	s7,60(sp)
    55b8:	03812c23          	sw	s8,56(sp)
    55bc:	03912a23          	sw	s9,52(sp)
    55c0:	03a12823          	sw	s10,48(sp)
    55c4:	00050a13          	mv	s4,a0
    55c8:	00058413          	mv	s0,a1
    55cc:	00079663          	bnez	a5,55d8 <fl_fopen+0x50>
    55d0:	ffffc097          	auipc	ra,0xffffc
    55d4:	388080e7          	jalr	904(ra) # 1958 <fl_init>
    55d8:	000077b7          	lui	a5,0x7
    55dc:	7607a783          	lw	a5,1888(a5) # 7760 <_filelib_valid>
    55e0:	36078c63          	beqz	a5,5958 <fl_fopen+0x3d0>
    55e4:	360a0a63          	beqz	s4,5958 <fl_fopen+0x3d0>
    55e8:	10040463          	beqz	s0,56f0 <fl_fopen+0x168>
    55ec:	00000493          	li	s1,0
    55f0:	00000913          	li	s2,0
    55f4:	05700993          	li	s3,87
    55f8:	07200a93          	li	s5,114
    55fc:	07700b93          	li	s7,119
    5600:	06100c13          	li	s8,97
    5604:	06200c93          	li	s9,98
    5608:	04100b13          	li	s6,65
    560c:	04200d13          	li	s10,66
    5610:	00040513          	mv	a0,s0
    5614:	ffffb097          	auipc	ra,0xffffb
    5618:	290080e7          	jalr	656(ra) # 8a4 <strlen>
    561c:	10a94863          	blt	s2,a0,572c <fl_fopen+0x1a4>
    5620:	0000c937          	lui	s2,0xc
    5624:	4ec90793          	add	a5,s2,1260 # c4ec <_fs>
    5628:	0387a783          	lw	a5,56(a5)
    562c:	4ec90b13          	add	s6,s2,1260
    5630:	00079463          	bnez	a5,5638 <fl_fopen+0xb0>
    5634:	0d94f493          	and	s1,s1,217
    5638:	03cb2783          	lw	a5,60(s6)
    563c:	00078463          	beqz	a5,5644 <fl_fopen+0xbc>
    5640:	000780e7          	jalr	a5
    5644:	0014fc13          	and	s8,s1,1
    5648:	160c1e63          	bnez	s8,57c4 <fl_fopen+0x23c>
    564c:	0204f793          	and	a5,s1,32
    5650:	08078863          	beqz	a5,56e0 <fl_fopen+0x158>
    5654:	038b2783          	lw	a5,56(s6)
    5658:	06078a63          	beqz	a5,56cc <fl_fopen+0x144>
    565c:	ffffc097          	auipc	ra,0xffffc
    5660:	f84080e7          	jalr	-124(ra) # 15e0 <_allocate_file>
    5664:	00050413          	mv	s0,a0
    5668:	06050263          	beqz	a0,56cc <fl_fopen+0x144>
    566c:	01450b93          	add	s7,a0,20
    5670:	10400613          	li	a2,260
    5674:	00000593          	li	a1,0
    5678:	000b8513          	mv	a0,s7
    567c:	ffffb097          	auipc	ra,0xffffb
    5680:	1e8080e7          	jalr	488(ra) # 864 <memset>
    5684:	11840a93          	add	s5,s0,280
    5688:	10400613          	li	a2,260
    568c:	00000593          	li	a1,0
    5690:	000a8513          	mv	a0,s5
    5694:	ffffb097          	auipc	ra,0xffffb
    5698:	1d0080e7          	jalr	464(ra) # 864 <memset>
    569c:	10400713          	li	a4,260
    56a0:	000a8693          	mv	a3,s5
    56a4:	00070613          	mv	a2,a4
    56a8:	000b8593          	mv	a1,s7
    56ac:	000a0513          	mv	a0,s4
    56b0:	ffffd097          	auipc	ra,0xffffd
    56b4:	df0080e7          	jalr	-528(ra) # 24a0 <fatfs_split_path>
    56b8:	fff00793          	li	a5,-1
    56bc:	12f51263          	bne	a0,a5,57e0 <fl_fopen+0x258>
    56c0:	00040513          	mv	a0,s0
    56c4:	ffffc097          	auipc	ra,0xffffc
    56c8:	f90080e7          	jalr	-112(ra) # 1654 <_free_file>
    56cc:	00000413          	li	s0,0
    56d0:	280c1063          	bnez	s8,5950 <fl_fopen+0x3c8>
    56d4:	10041263          	bnez	s0,57d8 <fl_fopen+0x250>
    56d8:	0064f793          	and	a5,s1,6
    56dc:	26079263          	bnez	a5,5940 <fl_fopen+0x3b8>
    56e0:	00000413          	li	s0,0
    56e4:	040b2783          	lw	a5,64(s6)
    56e8:	00078463          	beqz	a5,56f0 <fl_fopen+0x168>
    56ec:	000780e7          	jalr	a5
    56f0:	05c12083          	lw	ra,92(sp)
    56f4:	00040513          	mv	a0,s0
    56f8:	05812403          	lw	s0,88(sp)
    56fc:	05412483          	lw	s1,84(sp)
    5700:	05012903          	lw	s2,80(sp)
    5704:	04c12983          	lw	s3,76(sp)
    5708:	04812a03          	lw	s4,72(sp)
    570c:	04412a83          	lw	s5,68(sp)
    5710:	04012b03          	lw	s6,64(sp)
    5714:	03c12b83          	lw	s7,60(sp)
    5718:	03812c03          	lw	s8,56(sp)
    571c:	03412c83          	lw	s9,52(sp)
    5720:	03012d03          	lw	s10,48(sp)
    5724:	06010113          	add	sp,sp,96
    5728:	00008067          	ret
    572c:	012407b3          	add	a5,s0,s2
    5730:	0007c783          	lbu	a5,0(a5)
    5734:	05378863          	beq	a5,s3,5784 <fl_fopen+0x1fc>
    5738:	02f9e863          	bltu	s3,a5,5768 <fl_fopen+0x1e0>
    573c:	05678863          	beq	a5,s6,578c <fl_fopen+0x204>
    5740:	00fb6a63          	bltu	s6,a5,5754 <fl_fopen+0x1cc>
    5744:	02b00713          	li	a4,43
    5748:	04e78663          	beq	a5,a4,5794 <fl_fopen+0x20c>
    574c:	00190913          	add	s2,s2,1
    5750:	ec1ff06f          	j	5610 <fl_fopen+0x88>
    5754:	03a78263          	beq	a5,s10,5778 <fl_fopen+0x1f0>
    5758:	05200713          	li	a4,82
    575c:	fee798e3          	bne	a5,a4,574c <fl_fopen+0x1c4>
    5760:	0014e493          	or	s1,s1,1
    5764:	fe9ff06f          	j	574c <fl_fopen+0x1c4>
    5768:	ff578ce3          	beq	a5,s5,5760 <fl_fopen+0x1d8>
    576c:	00faea63          	bltu	s5,a5,5780 <fl_fopen+0x1f8>
    5770:	01878e63          	beq	a5,s8,578c <fl_fopen+0x204>
    5774:	fd979ce3          	bne	a5,s9,574c <fl_fopen+0x1c4>
    5778:	0084e493          	or	s1,s1,8
    577c:	fd1ff06f          	j	574c <fl_fopen+0x1c4>
    5780:	fd7796e3          	bne	a5,s7,574c <fl_fopen+0x1c4>
    5784:	0324e493          	or	s1,s1,50
    5788:	fc5ff06f          	j	574c <fl_fopen+0x1c4>
    578c:	0264e493          	or	s1,s1,38
    5790:	fbdff06f          	j	574c <fl_fopen+0x1c4>
    5794:	0014f793          	and	a5,s1,1
    5798:	00078663          	beqz	a5,57a4 <fl_fopen+0x21c>
    579c:	0024e493          	or	s1,s1,2
    57a0:	fadff06f          	j	574c <fl_fopen+0x1c4>
    57a4:	0024f793          	and	a5,s1,2
    57a8:	00078663          	beqz	a5,57b4 <fl_fopen+0x22c>
    57ac:	0314e493          	or	s1,s1,49
    57b0:	f9dff06f          	j	574c <fl_fopen+0x1c4>
    57b4:	0044f793          	and	a5,s1,4
    57b8:	f8078ae3          	beqz	a5,574c <fl_fopen+0x1c4>
    57bc:	0274e493          	or	s1,s1,39
    57c0:	f8dff06f          	j	574c <fl_fopen+0x1c4>
    57c4:	000a0513          	mv	a0,s4
    57c8:	ffffe097          	auipc	ra,0xffffe
    57cc:	170080e7          	jalr	368(ra) # 3938 <_open_file>
    57d0:	00050413          	mv	s0,a0
    57d4:	e6050ce3          	beqz	a0,564c <fl_fopen+0xc4>
    57d8:	42940c23          	sb	s1,1080(s0)
    57dc:	f09ff06f          	j	56e4 <fl_fopen+0x15c>
    57e0:	00040513          	mv	a0,s0
    57e4:	ffffd097          	auipc	ra,0xffffd
    57e8:	f38080e7          	jalr	-200(ra) # 271c <_check_file_open>
    57ec:	00050993          	mv	s3,a0
    57f0:	ec0518e3          	bnez	a0,56c0 <fl_fopen+0x138>
    57f4:	01444783          	lbu	a5,20(s0)
    57f8:	0e079463          	bnez	a5,58e0 <fl_fopen+0x358>
    57fc:	008b2783          	lw	a5,8(s6)
    5800:	00f42023          	sw	a5,0(s0)
    5804:	00042583          	lw	a1,0(s0)
    5808:	01010693          	add	a3,sp,16
    580c:	000a8613          	mv	a2,s5
    5810:	4ec90513          	add	a0,s2,1260
    5814:	ffffe097          	auipc	ra,0xffffe
    5818:	d4c080e7          	jalr	-692(ra) # 3560 <fatfs_get_file_entry>
    581c:	00100693          	li	a3,1
    5820:	ead500e3          	beq	a0,a3,56c0 <fl_fopen+0x138>
    5824:	00042223          	sw	zero,4(s0)
    5828:	00440613          	add	a2,s0,4
    582c:	00068593          	mv	a1,a3
    5830:	4ec90513          	add	a0,s2,1260
    5834:	00000097          	auipc	ra,0x0
    5838:	91c080e7          	jalr	-1764(ra) # 5150 <fatfs_allocate_free_space>
    583c:	e80502e3          	beqz	a0,56c0 <fl_fopen+0x138>
    5840:	00002cb7          	lui	s9,0x2
    5844:	21c40b93          	add	s7,s0,540
    5848:	70fc8c93          	add	s9,s9,1807 # 270f <fatfs_compare_names+0x187>
    584c:	000a8593          	mv	a1,s5
    5850:	00410513          	add	a0,sp,4
    5854:	ffffc097          	auipc	ra,0xffffc
    5858:	7ec080e7          	jalr	2028(ra) # 2040 <fatfs_lfn_create_sfn>
    585c:	08098e63          	beqz	s3,58f8 <fl_fopen+0x370>
    5860:	00098613          	mv	a2,s3
    5864:	00410593          	add	a1,sp,4
    5868:	000b8513          	mv	a0,s7
    586c:	ffffd097          	auipc	ra,0xffffd
    5870:	954080e7          	jalr	-1708(ra) # 21c0 <fatfs_lfn_generate_tail>
    5874:	00042583          	lw	a1,0(s0)
    5878:	000b8613          	mv	a2,s7
    587c:	4ec90513          	add	a0,s2,1260
    5880:	ffffe097          	auipc	ra,0xffffe
    5884:	22c080e7          	jalr	556(ra) # 3aac <fatfs_sfn_exists>
    5888:	00050663          	beqz	a0,5894 <fl_fopen+0x30c>
    588c:	00198993          	add	s3,s3,1
    5890:	fb999ee3          	bne	s3,s9,584c <fl_fopen+0x2c4>
    5894:	00442703          	lw	a4,4(s0)
    5898:	000027b7          	lui	a5,0x2
    589c:	70f78793          	add	a5,a5,1807 # 270f <fatfs_compare_names+0x187>
    58a0:	00070593          	mv	a1,a4
    58a4:	02f98663          	beq	s3,a5,58d0 <fl_fopen+0x348>
    58a8:	00042583          	lw	a1,0(s0)
    58ac:	00000813          	li	a6,0
    58b0:	00000793          	li	a5,0
    58b4:	000b8693          	mv	a3,s7
    58b8:	000a8613          	mv	a2,s5
    58bc:	4ec90513          	add	a0,s2,1260
    58c0:	00000097          	auipc	ra,0x0
    58c4:	9a8080e7          	jalr	-1624(ra) # 5268 <fatfs_add_file_entry>
    58c8:	04051463          	bnez	a0,5910 <fl_fopen+0x388>
    58cc:	00442583          	lw	a1,4(s0)
    58d0:	4ec90513          	add	a0,s2,1260
    58d4:	fffff097          	auipc	ra,0xfffff
    58d8:	d4c080e7          	jalr	-692(ra) # 4620 <fatfs_free_cluster_chain>
    58dc:	de5ff06f          	j	56c0 <fl_fopen+0x138>
    58e0:	00040593          	mv	a1,s0
    58e4:	000b8513          	mv	a0,s7
    58e8:	ffffe097          	auipc	ra,0xffffe
    58ec:	e7c080e7          	jalr	-388(ra) # 3764 <_open_directory>
    58f0:	f0051ae3          	bnez	a0,5804 <fl_fopen+0x27c>
    58f4:	dcdff06f          	j	56c0 <fl_fopen+0x138>
    58f8:	00b00613          	li	a2,11
    58fc:	00410593          	add	a1,sp,4
    5900:	000b8513          	mv	a0,s7
    5904:	ffffb097          	auipc	ra,0xffffb
    5908:	f7c080e7          	jalr	-132(ra) # 880 <memcpy>
    590c:	f69ff06f          	j	5874 <fl_fopen+0x2ec>
    5910:	fff00793          	li	a5,-1
    5914:	00042623          	sw	zero,12(s0)
    5918:	00042423          	sw	zero,8(s0)
    591c:	42f42823          	sw	a5,1072(s0)
    5920:	42042a23          	sw	zero,1076(s0)
    5924:	00042823          	sw	zero,16(s0)
    5928:	22f42423          	sw	a5,552(s0)
    592c:	22f42623          	sw	a5,556(s0)
    5930:	4ec90513          	add	a0,s2,1260
    5934:	ffffe097          	auipc	ra,0xffffe
    5938:	910080e7          	jalr	-1776(ra) # 3244 <fatfs_fat_purge>
    593c:	d95ff06f          	j	56d0 <fl_fopen+0x148>
    5940:	000a0513          	mv	a0,s4
    5944:	ffffe097          	auipc	ra,0xffffe
    5948:	ff4080e7          	jalr	-12(ra) # 3938 <_open_file>
    594c:	00050413          	mv	s0,a0
    5950:	e80414e3          	bnez	s0,57d8 <fl_fopen+0x250>
    5954:	d8dff06f          	j	56e0 <fl_fopen+0x158>
    5958:	00000413          	li	s0,0
    595c:	d95ff06f          	j	56f0 <fl_fopen+0x168>

00005960 <fl_remove>:
    5960:	fe010113          	add	sp,sp,-32
    5964:	00912a23          	sw	s1,20(sp)
    5968:	0000c4b7          	lui	s1,0xc
    596c:	4ec48793          	add	a5,s1,1260 # c4ec <_fs>
    5970:	03c7a783          	lw	a5,60(a5)
    5974:	01212823          	sw	s2,16(sp)
    5978:	00112e23          	sw	ra,28(sp)
    597c:	00812c23          	sw	s0,24(sp)
    5980:	4ec48913          	add	s2,s1,1260
    5984:	00078863          	beqz	a5,5994 <fl_remove+0x34>
    5988:	00a12623          	sw	a0,12(sp)
    598c:	000780e7          	jalr	a5
    5990:	00c12503          	lw	a0,12(sp)
    5994:	000075b7          	lui	a1,0x7
    5998:	4e458593          	add	a1,a1,1252 # 74e4 <font+0x3c4>
    599c:	00000097          	auipc	ra,0x0
    59a0:	bec080e7          	jalr	-1044(ra) # 5588 <fl_fopen>
    59a4:	00050413          	mv	s0,a0
    59a8:	02051a63          	bnez	a0,59dc <fl_remove+0x7c>
    59ac:	fff00513          	li	a0,-1
    59b0:	04092783          	lw	a5,64(s2)
    59b4:	00078863          	beqz	a5,59c4 <fl_remove+0x64>
    59b8:	00a12623          	sw	a0,12(sp)
    59bc:	000780e7          	jalr	a5
    59c0:	00c12503          	lw	a0,12(sp)
    59c4:	01c12083          	lw	ra,28(sp)
    59c8:	01812403          	lw	s0,24(sp)
    59cc:	01412483          	lw	s1,20(sp)
    59d0:	01012903          	lw	s2,16(sp)
    59d4:	02010113          	add	sp,sp,32
    59d8:	00008067          	ret
    59dc:	00452583          	lw	a1,4(a0)
    59e0:	4ec48513          	add	a0,s1,1260
    59e4:	fffff097          	auipc	ra,0xfffff
    59e8:	c3c080e7          	jalr	-964(ra) # 4620 <fatfs_free_cluster_chain>
    59ec:	00042583          	lw	a1,0(s0)
    59f0:	21c40613          	add	a2,s0,540
    59f4:	4ec48513          	add	a0,s1,1260
    59f8:	ffffe097          	auipc	ra,0xffffe
    59fc:	300080e7          	jalr	768(ra) # 3cf8 <fatfs_mark_file_deleted>
    5a00:	fa0506e3          	beqz	a0,59ac <fl_remove+0x4c>
    5a04:	00040513          	mv	a0,s0
    5a08:	fffff097          	auipc	ra,0xfffff
    5a0c:	110080e7          	jalr	272(ra) # 4b18 <fl_fclose>
    5a10:	00000513          	li	a0,0
    5a14:	f9dff06f          	j	59b0 <fl_remove+0x50>

00005a18 <fl_createdirectory>:
    5a18:	000077b7          	lui	a5,0x7
    5a1c:	7647a783          	lw	a5,1892(a5) # 7764 <_filelib_init>
    5a20:	fa010113          	add	sp,sp,-96
    5a24:	05212823          	sw	s2,80(sp)
    5a28:	04112e23          	sw	ra,92(sp)
    5a2c:	04812c23          	sw	s0,88(sp)
    5a30:	04912a23          	sw	s1,84(sp)
    5a34:	05312623          	sw	s3,76(sp)
    5a38:	05412423          	sw	s4,72(sp)
    5a3c:	05512223          	sw	s5,68(sp)
    5a40:	05612023          	sw	s6,64(sp)
    5a44:	03712e23          	sw	s7,60(sp)
    5a48:	00050913          	mv	s2,a0
    5a4c:	00079663          	bnez	a5,5a58 <fl_createdirectory+0x40>
    5a50:	ffffc097          	auipc	ra,0xffffc
    5a54:	f08080e7          	jalr	-248(ra) # 1958 <fl_init>
    5a58:	0000c4b7          	lui	s1,0xc
    5a5c:	4ec48793          	add	a5,s1,1260 # c4ec <_fs>
    5a60:	03c7a783          	lw	a5,60(a5)
    5a64:	4ec48b13          	add	s6,s1,1260
    5a68:	00078463          	beqz	a5,5a70 <fl_createdirectory+0x58>
    5a6c:	000780e7          	jalr	a5
    5a70:	ffffc097          	auipc	ra,0xffffc
    5a74:	b70080e7          	jalr	-1168(ra) # 15e0 <_allocate_file>
    5a78:	00050413          	mv	s0,a0
    5a7c:	06050263          	beqz	a0,5ae0 <fl_createdirectory+0xc8>
    5a80:	01450993          	add	s3,a0,20
    5a84:	10400613          	li	a2,260
    5a88:	00000593          	li	a1,0
    5a8c:	00098513          	mv	a0,s3
    5a90:	ffffb097          	auipc	ra,0xffffb
    5a94:	dd4080e7          	jalr	-556(ra) # 864 <memset>
    5a98:	11840a13          	add	s4,s0,280
    5a9c:	10400613          	li	a2,260
    5aa0:	00000593          	li	a1,0
    5aa4:	000a0513          	mv	a0,s4
    5aa8:	ffffb097          	auipc	ra,0xffffb
    5aac:	dbc080e7          	jalr	-580(ra) # 864 <memset>
    5ab0:	10400713          	li	a4,260
    5ab4:	000a0693          	mv	a3,s4
    5ab8:	00070613          	mv	a2,a4
    5abc:	00098593          	mv	a1,s3
    5ac0:	00090513          	mv	a0,s2
    5ac4:	ffffd097          	auipc	ra,0xffffd
    5ac8:	9dc080e7          	jalr	-1572(ra) # 24a0 <fatfs_split_path>
    5acc:	fff00793          	li	a5,-1
    5ad0:	04f51863          	bne	a0,a5,5b20 <fl_createdirectory+0x108>
    5ad4:	00040513          	mv	a0,s0
    5ad8:	ffffc097          	auipc	ra,0xffffc
    5adc:	b7c080e7          	jalr	-1156(ra) # 1654 <_free_file>
    5ae0:	00000993          	li	s3,0
    5ae4:	040b2783          	lw	a5,64(s6)
    5ae8:	00078463          	beqz	a5,5af0 <fl_createdirectory+0xd8>
    5aec:	000780e7          	jalr	a5
    5af0:	05c12083          	lw	ra,92(sp)
    5af4:	05812403          	lw	s0,88(sp)
    5af8:	05412483          	lw	s1,84(sp)
    5afc:	05012903          	lw	s2,80(sp)
    5b00:	04812a03          	lw	s4,72(sp)
    5b04:	04412a83          	lw	s5,68(sp)
    5b08:	04012b03          	lw	s6,64(sp)
    5b0c:	03c12b83          	lw	s7,60(sp)
    5b10:	00098513          	mv	a0,s3
    5b14:	04c12983          	lw	s3,76(sp)
    5b18:	06010113          	add	sp,sp,96
    5b1c:	00008067          	ret
    5b20:	00040513          	mv	a0,s0
    5b24:	ffffd097          	auipc	ra,0xffffd
    5b28:	bf8080e7          	jalr	-1032(ra) # 271c <_check_file_open>
    5b2c:	00050913          	mv	s2,a0
    5b30:	fa0512e3          	bnez	a0,5ad4 <fl_createdirectory+0xbc>
    5b34:	01444783          	lbu	a5,20(s0)
    5b38:	10079863          	bnez	a5,5c48 <fl_createdirectory+0x230>
    5b3c:	008b2783          	lw	a5,8(s6)
    5b40:	00f42023          	sw	a5,0(s0)
    5b44:	00042583          	lw	a1,0(s0)
    5b48:	01010693          	add	a3,sp,16
    5b4c:	000a0613          	mv	a2,s4
    5b50:	4ec48513          	add	a0,s1,1260
    5b54:	ffffe097          	auipc	ra,0xffffe
    5b58:	a0c080e7          	jalr	-1524(ra) # 3560 <fatfs_get_file_entry>
    5b5c:	00100693          	li	a3,1
    5b60:	f6d50ae3          	beq	a0,a3,5ad4 <fl_createdirectory+0xbc>
    5b64:	00042223          	sw	zero,4(s0)
    5b68:	00440613          	add	a2,s0,4
    5b6c:	00068593          	mv	a1,a3
    5b70:	4ec48513          	add	a0,s1,1260
    5b74:	fffff097          	auipc	ra,0xfffff
    5b78:	5dc080e7          	jalr	1500(ra) # 5150 <fatfs_allocate_free_space>
    5b7c:	00050993          	mv	s3,a0
    5b80:	f4050ae3          	beqz	a0,5ad4 <fl_createdirectory+0xbc>
    5b84:	23040b93          	add	s7,s0,560
    5b88:	20000613          	li	a2,512
    5b8c:	00000593          	li	a1,0
    5b90:	000b8513          	mv	a0,s7
    5b94:	ffffb097          	auipc	ra,0xffffb
    5b98:	cd0080e7          	jalr	-816(ra) # 864 <memset>
    5b9c:	00000a93          	li	s5,0
    5ba0:	000b4783          	lbu	a5,0(s6)
    5ba4:	0aface63          	blt	s5,a5,5c60 <fl_createdirectory+0x248>
    5ba8:	00002bb7          	lui	s7,0x2
    5bac:	21c40a93          	add	s5,s0,540
    5bb0:	70fb8b93          	add	s7,s7,1807 # 270f <fatfs_compare_names+0x187>
    5bb4:	000a0593          	mv	a1,s4
    5bb8:	00410513          	add	a0,sp,4
    5bbc:	ffffc097          	auipc	ra,0xffffc
    5bc0:	484080e7          	jalr	1156(ra) # 2040 <fatfs_lfn_create_sfn>
    5bc4:	0c090063          	beqz	s2,5c84 <fl_createdirectory+0x26c>
    5bc8:	00090613          	mv	a2,s2
    5bcc:	00410593          	add	a1,sp,4
    5bd0:	000a8513          	mv	a0,s5
    5bd4:	ffffc097          	auipc	ra,0xffffc
    5bd8:	5ec080e7          	jalr	1516(ra) # 21c0 <fatfs_lfn_generate_tail>
    5bdc:	00042583          	lw	a1,0(s0)
    5be0:	000a8613          	mv	a2,s5
    5be4:	4ec48513          	add	a0,s1,1260
    5be8:	ffffe097          	auipc	ra,0xffffe
    5bec:	ec4080e7          	jalr	-316(ra) # 3aac <fatfs_sfn_exists>
    5bf0:	00050663          	beqz	a0,5bfc <fl_createdirectory+0x1e4>
    5bf4:	00190913          	add	s2,s2,1
    5bf8:	fb791ee3          	bne	s2,s7,5bb4 <fl_createdirectory+0x19c>
    5bfc:	00442703          	lw	a4,4(s0)
    5c00:	000027b7          	lui	a5,0x2
    5c04:	70f78793          	add	a5,a5,1807 # 270f <fatfs_compare_names+0x187>
    5c08:	00070593          	mv	a1,a4
    5c0c:	02f90663          	beq	s2,a5,5c38 <fl_createdirectory+0x220>
    5c10:	00042583          	lw	a1,0(s0)
    5c14:	00100813          	li	a6,1
    5c18:	00000793          	li	a5,0
    5c1c:	000a8693          	mv	a3,s5
    5c20:	000a0613          	mv	a2,s4
    5c24:	4ec48513          	add	a0,s1,1260
    5c28:	fffff097          	auipc	ra,0xfffff
    5c2c:	640080e7          	jalr	1600(ra) # 5268 <fatfs_add_file_entry>
    5c30:	06051663          	bnez	a0,5c9c <fl_createdirectory+0x284>
    5c34:	00442583          	lw	a1,4(s0)
    5c38:	4ec48513          	add	a0,s1,1260
    5c3c:	fffff097          	auipc	ra,0xfffff
    5c40:	9e4080e7          	jalr	-1564(ra) # 4620 <fatfs_free_cluster_chain>
    5c44:	e91ff06f          	j	5ad4 <fl_createdirectory+0xbc>
    5c48:	00040593          	mv	a1,s0
    5c4c:	00098513          	mv	a0,s3
    5c50:	ffffe097          	auipc	ra,0xffffe
    5c54:	b14080e7          	jalr	-1260(ra) # 3764 <_open_directory>
    5c58:	ee0516e3          	bnez	a0,5b44 <fl_createdirectory+0x12c>
    5c5c:	e79ff06f          	j	5ad4 <fl_createdirectory+0xbc>
    5c60:	00442583          	lw	a1,4(s0)
    5c64:	000b8693          	mv	a3,s7
    5c68:	000a8613          	mv	a2,s5
    5c6c:	4ec48513          	add	a0,s1,1260
    5c70:	ffffc097          	auipc	ra,0xffffc
    5c74:	b50080e7          	jalr	-1200(ra) # 17c0 <fatfs_write_sector>
    5c78:	e4050ee3          	beqz	a0,5ad4 <fl_createdirectory+0xbc>
    5c7c:	001a8a93          	add	s5,s5,1
    5c80:	f21ff06f          	j	5ba0 <fl_createdirectory+0x188>
    5c84:	00b00613          	li	a2,11
    5c88:	00410593          	add	a1,sp,4
    5c8c:	000a8513          	mv	a0,s5
    5c90:	ffffb097          	auipc	ra,0xffffb
    5c94:	bf0080e7          	jalr	-1040(ra) # 880 <memcpy>
    5c98:	f45ff06f          	j	5bdc <fl_createdirectory+0x1c4>
    5c9c:	fff00793          	li	a5,-1
    5ca0:	00042623          	sw	zero,12(s0)
    5ca4:	00042423          	sw	zero,8(s0)
    5ca8:	42f42823          	sw	a5,1072(s0)
    5cac:	42042a23          	sw	zero,1076(s0)
    5cb0:	00042823          	sw	zero,16(s0)
    5cb4:	22f42423          	sw	a5,552(s0)
    5cb8:	22f42623          	sw	a5,556(s0)
    5cbc:	4ec48513          	add	a0,s1,1260
    5cc0:	ffffd097          	auipc	ra,0xffffd
    5cc4:	584080e7          	jalr	1412(ra) # 3244 <fatfs_fat_purge>
    5cc8:	00040513          	mv	a0,s0
    5ccc:	ffffc097          	auipc	ra,0xffffc
    5cd0:	988080e7          	jalr	-1656(ra) # 1654 <_free_file>
    5cd4:	e11ff06f          	j	5ae4 <fl_createdirectory+0xcc>

00005cd8 <delay_ms>:
    5cd8:	00000793          	li	a5,0
    5cdc:	3e700693          	li	a3,999
    5ce0:	00a7cc63          	blt	a5,a0,5cf8 <delay_ms+0x20>
    5ce4:	00008067          	ret
    5ce8:	00c12703          	lw	a4,12(sp)
    5cec:	00170713          	add	a4,a4,1
    5cf0:	00e12623          	sw	a4,12(sp)
    5cf4:	00c0006f          	j	5d00 <delay_ms+0x28>
    5cf8:	ff010113          	add	sp,sp,-16
    5cfc:	00012623          	sw	zero,12(sp)
    5d00:	00c12703          	lw	a4,12(sp)
    5d04:	fee6d2e3          	bge	a3,a4,5ce8 <delay_ms+0x10>
    5d08:	00178793          	add	a5,a5,1
    5d0c:	fea7c8e3          	blt	a5,a0,5cfc <delay_ms+0x24>
    5d10:	01010113          	add	sp,sp,16
    5d14:	00008067          	ret

00005d18 <initBoard>:
    5d18:	0000d7b7          	lui	a5,0xd
    5d1c:	1dc78793          	add	a5,a5,476 # d1dc <board>
    5d20:	0007a023          	sw	zero,0(a5)
    5d24:	0007a223          	sw	zero,4(a5)
    5d28:	0007a423          	sw	zero,8(a5)
    5d2c:	0007a623          	sw	zero,12(a5)
    5d30:	0007a823          	sw	zero,16(a5)
    5d34:	0007aa23          	sw	zero,20(a5)
    5d38:	0007ac23          	sw	zero,24(a5)
    5d3c:	0007ae23          	sw	zero,28(a5)
    5d40:	0207a023          	sw	zero,32(a5)
    5d44:	00008067          	ret

00005d48 <checkGameOver>:
    5d48:	0000d7b7          	lui	a5,0xd
    5d4c:	1dc78713          	add	a4,a5,476 # d1dc <board>
    5d50:	1dc78613          	add	a2,a5,476
    5d54:	1dc78693          	add	a3,a5,476
    5d58:	02470593          	add	a1,a4,36
    5d5c:	1dc78793          	add	a5,a5,476
    5d60:	0006a503          	lw	a0,0(a3)
    5d64:	0046a803          	lw	a6,4(a3)
    5d68:	03051063          	bne	a0,a6,5d88 <checkGameOver+0x40>
    5d6c:	0086a803          	lw	a6,8(a3)
    5d70:	01051c63          	bne	a0,a6,5d88 <checkGameOver+0x40>
    5d74:	00050a63          	beqz	a0,5d88 <checkGameOver+0x40>
    5d78:	00100793          	li	a5,1
    5d7c:	08f50263          	beq	a0,a5,5e00 <checkGameOver+0xb8>
    5d80:	00200513          	li	a0,2
    5d84:	00008067          	ret
    5d88:	00062503          	lw	a0,0(a2)
    5d8c:	00c62803          	lw	a6,12(a2)
    5d90:	01051863          	bne	a0,a6,5da0 <checkGameOver+0x58>
    5d94:	01862803          	lw	a6,24(a2)
    5d98:	01051463          	bne	a0,a6,5da0 <checkGameOver+0x58>
    5d9c:	fc051ee3          	bnez	a0,5d78 <checkGameOver+0x30>
    5da0:	00c68693          	add	a3,a3,12
    5da4:	00460613          	add	a2,a2,4
    5da8:	fab69ce3          	bne	a3,a1,5d60 <checkGameOver+0x18>
    5dac:	0007a503          	lw	a0,0(a5)
    5db0:	0107a683          	lw	a3,16(a5)
    5db4:	00d51863          	bne	a0,a3,5dc4 <checkGameOver+0x7c>
    5db8:	0207a603          	lw	a2,32(a5)
    5dbc:	00c51463          	bne	a0,a2,5dc4 <checkGameOver+0x7c>
    5dc0:	fa051ce3          	bnez	a0,5d78 <checkGameOver+0x30>
    5dc4:	0087a503          	lw	a0,8(a5)
    5dc8:	00a69863          	bne	a3,a0,5dd8 <checkGameOver+0x90>
    5dcc:	0187a783          	lw	a5,24(a5)
    5dd0:	00f51463          	bne	a0,a5,5dd8 <checkGameOver+0x90>
    5dd4:	fa0512e3          	bnez	a0,5d78 <checkGameOver+0x30>
    5dd8:	00072503          	lw	a0,0(a4)
    5ddc:	02050263          	beqz	a0,5e00 <checkGameOver+0xb8>
    5de0:	00472503          	lw	a0,4(a4)
    5de4:	00050e63          	beqz	a0,5e00 <checkGameOver+0xb8>
    5de8:	00872503          	lw	a0,8(a4)
    5dec:	00051463          	bnez	a0,5df4 <checkGameOver+0xac>
    5df0:	00008067          	ret
    5df4:	00c70713          	add	a4,a4,12
    5df8:	feb710e3          	bne	a4,a1,5dd8 <checkGameOver+0x90>
    5dfc:	00300513          	li	a0,3
    5e00:	00008067          	ret

00005e04 <clearDisplay>:
    5e04:	ff010113          	add	sp,sp,-16
    5e08:	00112623          	sw	ra,12(sp)
    5e0c:	ffffb097          	auipc	ra,0xffffb
    5e10:	ebc080e7          	jalr	-324(ra) # cc8 <display_framebuffer>
    5e14:	00000593          	li	a1,0
    5e18:	00004637          	lui	a2,0x4
    5e1c:	ffffb097          	auipc	ra,0xffffb
    5e20:	a48080e7          	jalr	-1464(ra) # 864 <memset>
    5e24:	00000513          	li	a0,0
    5e28:	ffffb097          	auipc	ra,0xffffb
    5e2c:	d10080e7          	jalr	-752(ra) # b38 <oled_clear>
    5e30:	00c12083          	lw	ra,12(sp)
    5e34:	00000593          	li	a1,0
    5e38:	0ff00513          	li	a0,255
    5e3c:	01010113          	add	sp,sp,16
    5e40:	ffffb317          	auipc	t1,0xffffb
    5e44:	ea830067          	jr	-344(t1) # ce8 <display_set_front_back_color>

00005e48 <renderBoard>:
    5e48:	000077b7          	lui	a5,0x7
    5e4c:	0c87a703          	lw	a4,200(a5) # 70c8 <needsRedraw>
    5e50:	20070263          	beqz	a4,6054 <renderBoard+0x20c>
    5e54:	fb010113          	add	sp,sp,-80
    5e58:	04912223          	sw	s1,68(sp)
    5e5c:	0000d4b7          	lui	s1,0xd
    5e60:	04812423          	sw	s0,72(sp)
    5e64:	03312e23          	sw	s3,60(sp)
    5e68:	03612823          	sw	s6,48(sp)
    5e6c:	03712623          	sw	s7,44(sp)
    5e70:	03812423          	sw	s8,40(sp)
    5e74:	04112623          	sw	ra,76(sp)
    5e78:	05212023          	sw	s2,64(sp)
    5e7c:	03412c23          	sw	s4,56(sp)
    5e80:	03512a23          	sw	s5,52(sp)
    5e84:	03912223          	sw	s9,36(sp)
    5e88:	03a12023          	sw	s10,32(sp)
    5e8c:	01b12e23          	sw	s11,28(sp)
    5e90:	0c07a423          	sw	zero,200(a5)
    5e94:	1dc48493          	add	s1,s1,476 # d1dc <board>
    5e98:	00000097          	auipc	ra,0x0
    5e9c:	f6c080e7          	jalr	-148(ra) # 5e04 <clearDisplay>
    5ea0:	02a00413          	li	s0,42
    5ea4:	00000993          	li	s3,0
    5ea8:	00100b13          	li	s6,1
    5eac:	00200b93          	li	s7,2
    5eb0:	00007c37          	lui	s8,0x7
    5eb4:	fea40793          	add	a5,s0,-22
    5eb8:	00048a93          	mv	s5,s1
    5ebc:	01200a13          	li	s4,18
    5ec0:	00000913          	li	s2,0
    5ec4:	00f12423          	sw	a5,8(sp)
    5ec8:	fd640c93          	add	s9,s0,-42
    5ecc:	00007d37          	lui	s10,0x7
    5ed0:	00812583          	lw	a1,8(sp)
    5ed4:	000a0513          	mv	a0,s4
    5ed8:	ffffb097          	auipc	ra,0xffffb
    5edc:	dfc080e7          	jalr	-516(ra) # cd4 <display_set_cursor>
    5ee0:	000aa783          	lw	a5,0(s5)
    5ee4:	07679263          	bne	a5,s6,5f48 <renderBoard+0x100>
    5ee8:	00007537          	lui	a0,0x7
    5eec:	4e850513          	add	a0,a0,1256 # 74e8 <font+0x3c8>
    5ef0:	ffffb097          	auipc	ra,0xffffb
    5ef4:	1a0080e7          	jalr	416(ra) # 1090 <printf>
    5ef8:	09790c63          	beq	s2,s7,5f90 <renderBoard+0x148>
    5efc:	018a0793          	add	a5,s4,24
    5f00:	00f12223          	sw	a5,4(sp)
    5f04:	02800d93          	li	s11,40
    5f08:	00000793          	li	a5,0
    5f0c:	00412503          	lw	a0,4(sp)
    5f10:	00fc85b3          	add	a1,s9,a5
    5f14:	00f12623          	sw	a5,12(sp)
    5f18:	ffffb097          	auipc	ra,0xffffb
    5f1c:	dbc080e7          	jalr	-580(ra) # cd4 <display_set_cursor>
    5f20:	4f8d0513          	add	a0,s10,1272 # 74f8 <font+0x3d8>
    5f24:	ffffb097          	auipc	ra,0xffffb
    5f28:	16c080e7          	jalr	364(ra) # 1090 <printf>
    5f2c:	00c12783          	lw	a5,12(sp)
    5f30:	00178793          	add	a5,a5,1
    5f34:	fdb79ce3          	bne	a5,s11,5f0c <renderBoard+0xc4>
    5f38:	00190913          	add	s2,s2,1
    5f3c:	02ca0a13          	add	s4,s4,44
    5f40:	004a8a93          	add	s5,s5,4
    5f44:	f8dff06f          	j	5ed0 <renderBoard+0x88>
    5f48:	01779863          	bne	a5,s7,5f58 <renderBoard+0x110>
    5f4c:	00007537          	lui	a0,0x7
    5f50:	4ec50513          	add	a0,a0,1260 # 74ec <font+0x3cc>
    5f54:	f9dff06f          	j	5ef0 <renderBoard+0xa8>
    5f58:	770c2783          	lw	a5,1904(s8) # 7770 <selectedRow>
    5f5c:	03379463          	bne	a5,s3,5f84 <renderBoard+0x13c>
    5f60:	000077b7          	lui	a5,0x7
    5f64:	76c7a783          	lw	a5,1900(a5) # 776c <selectedCol>
    5f68:	01279e63          	bne	a5,s2,5f84 <renderBoard+0x13c>
    5f6c:	000077b7          	lui	a5,0x7
    5f70:	0cc7a783          	lw	a5,204(a5) # 70cc <currentPlayer>
    5f74:	01679863          	bne	a5,s6,5f84 <renderBoard+0x13c>
    5f78:	00007537          	lui	a0,0x7
    5f7c:	4f050513          	add	a0,a0,1264 # 74f0 <font+0x3d0>
    5f80:	f71ff06f          	j	5ef0 <renderBoard+0xa8>
    5f84:	000077b7          	lui	a5,0x7
    5f88:	4f478513          	add	a0,a5,1268 # 74f4 <font+0x3d4>
    5f8c:	f65ff06f          	j	5ef0 <renderBoard+0xa8>
    5f90:	05299263          	bne	s3,s2,5fd4 <renderBoard+0x18c>
    5f94:	04812403          	lw	s0,72(sp)
    5f98:	04c12083          	lw	ra,76(sp)
    5f9c:	04412483          	lw	s1,68(sp)
    5fa0:	04012903          	lw	s2,64(sp)
    5fa4:	03c12983          	lw	s3,60(sp)
    5fa8:	03812a03          	lw	s4,56(sp)
    5fac:	03412a83          	lw	s5,52(sp)
    5fb0:	03012b03          	lw	s6,48(sp)
    5fb4:	02c12b83          	lw	s7,44(sp)
    5fb8:	02812c03          	lw	s8,40(sp)
    5fbc:	02412c83          	lw	s9,36(sp)
    5fc0:	02012d03          	lw	s10,32(sp)
    5fc4:	01c12d83          	lw	s11,28(sp)
    5fc8:	05010113          	add	sp,sp,80
    5fcc:	ffffb317          	auipc	t1,0xffffb
    5fd0:	e4830067          	jr	-440(t1) # e14 <display_refresh>
    5fd4:	02a00913          	li	s2,42
    5fd8:	00007ab7          	lui	s5,0x7
    5fdc:	02800c93          	li	s9,40
    5fe0:	08200d13          	li	s10,130
    5fe4:	00007a37          	lui	s4,0x7
    5fe8:	00000d93          	li	s11,0
    5fec:	fd690793          	add	a5,s2,-42
    5ff0:	01b78533          	add	a0,a5,s11
    5ff4:	00040593          	mv	a1,s0
    5ff8:	00f12223          	sw	a5,4(sp)
    5ffc:	ffffb097          	auipc	ra,0xffffb
    6000:	cd8080e7          	jalr	-808(ra) # cd4 <display_set_cursor>
    6004:	4fca8513          	add	a0,s5,1276 # 74fc <font+0x3dc>
    6008:	ffffb097          	auipc	ra,0xffffb
    600c:	088080e7          	jalr	136(ra) # 1090 <printf>
    6010:	001d8d93          	add	s11,s11,1
    6014:	00412783          	lw	a5,4(sp)
    6018:	fd9d9ce3          	bne	s11,s9,5ff0 <renderBoard+0x1a8>
    601c:	01a91a63          	bne	s2,s10,6030 <renderBoard+0x1e8>
    6020:	00198993          	add	s3,s3,1
    6024:	02c40413          	add	s0,s0,44
    6028:	00c48493          	add	s1,s1,12
    602c:	e89ff06f          	j	5eb4 <renderBoard+0x6c>
    6030:	00090513          	mv	a0,s2
    6034:	00040593          	mv	a1,s0
    6038:	ffffb097          	auipc	ra,0xffffb
    603c:	c9c080e7          	jalr	-868(ra) # cd4 <display_set_cursor>
    6040:	500a0513          	add	a0,s4,1280 # 7500 <font+0x3e0>
    6044:	ffffb097          	auipc	ra,0xffffb
    6048:	04c080e7          	jalr	76(ra) # 1090 <printf>
    604c:	02c90913          	add	s2,s2,44
    6050:	f99ff06f          	j	5fe8 <renderBoard+0x1a0>
    6054:	00008067          	ret

00006058 <botMove>:
    6058:	fa010113          	add	sp,sp,-96
    605c:	04812c23          	sw	s0,88(sp)
    6060:	0000d437          	lui	s0,0xd
    6064:	1dc40713          	add	a4,s0,476 # d1dc <board>
    6068:	1dc40813          	add	a6,s0,476
    606c:	04112e23          	sw	ra,92(sp)
    6070:	00000693          	li	a3,0
    6074:	00000593          	li	a1,0
    6078:	1dc40413          	add	s0,s0,476
    607c:	00810313          	add	t1,sp,8
    6080:	00c10e13          	add	t3,sp,12
    6084:	00300893          	li	a7,3
    6088:	00080513          	mv	a0,a6
    608c:	00000793          	li	a5,0
    6090:	00052603          	lw	a2,0(a0)
    6094:	00061e63          	bnez	a2,60b0 <botMove+0x58>
    6098:	00359613          	sll	a2,a1,0x3
    609c:	00660eb3          	add	t4,a2,t1
    60a0:	01c60633          	add	a2,a2,t3
    60a4:	00dea023          	sw	a3,0(t4)
    60a8:	00f62023          	sw	a5,0(a2) # 4000 <fatfs_list_directory_next+0x1c4>
    60ac:	00158593          	add	a1,a1,1
    60b0:	00178793          	add	a5,a5,1
    60b4:	00450513          	add	a0,a0,4
    60b8:	fd179ce3          	bne	a5,a7,6090 <botMove+0x38>
    60bc:	00168693          	add	a3,a3,1
    60c0:	00c80813          	add	a6,a6,12
    60c4:	fcf692e3          	bne	a3,a5,6088 <botMove+0x30>
    60c8:	0c058463          	beqz	a1,6190 <botMove+0x138>
    60cc:	02470613          	add	a2,a4,36
    60d0:	00000793          	li	a5,0
    60d4:	00579693          	sll	a3,a5,0x5
    60d8:	40f687b3          	sub	a5,a3,a5
    60dc:	00072683          	lw	a3,0(a4)
    60e0:	00c70713          	add	a4,a4,12
    60e4:	00d787b3          	add	a5,a5,a3
    60e8:	00579693          	sll	a3,a5,0x5
    60ec:	40f686b3          	sub	a3,a3,a5
    60f0:	ff872783          	lw	a5,-8(a4)
    60f4:	00f686b3          	add	a3,a3,a5
    60f8:	00569793          	sll	a5,a3,0x5
    60fc:	40d787b3          	sub	a5,a5,a3
    6100:	ffc72683          	lw	a3,-4(a4)
    6104:	00d787b3          	add	a5,a5,a3
    6108:	fce616e3          	bne	a2,a4,60d4 <botMove+0x7c>
    610c:	000076b7          	lui	a3,0x7
    6110:	7686a703          	lw	a4,1896(a3) # 7768 <moveCounter.0>
    6114:	00170713          	add	a4,a4,1
    6118:	76e6a423          	sw	a4,1896(a3)
    611c:	00479693          	sll	a3,a5,0x4
    6120:	00f686b3          	add	a3,a3,a5
    6124:	00171793          	sll	a5,a4,0x1
    6128:	00e787b3          	add	a5,a5,a4
    612c:	00279793          	sll	a5,a5,0x2
    6130:	00e787b3          	add	a5,a5,a4
    6134:	00d787b3          	add	a5,a5,a3
    6138:	41f7d513          	sra	a0,a5,0x1f
    613c:	00f547b3          	xor	a5,a0,a5
    6140:	40a78533          	sub	a0,a5,a0
    6144:	ffffa097          	auipc	ra,0xffffa
    6148:	6c8080e7          	jalr	1736(ra) # 80c <__modsi3>
    614c:	00351513          	sll	a0,a0,0x3
    6150:	05050793          	add	a5,a0,80
    6154:	002787b3          	add	a5,a5,sp
    6158:	fb87a703          	lw	a4,-72(a5)
    615c:	05050793          	add	a5,a0,80
    6160:	00278533          	add	a0,a5,sp
    6164:	00171793          	sll	a5,a4,0x1
    6168:	00e787b3          	add	a5,a5,a4
    616c:	fbc52703          	lw	a4,-68(a0)
    6170:	00e787b3          	add	a5,a5,a4
    6174:	00279793          	sll	a5,a5,0x2
    6178:	00f40433          	add	s0,s0,a5
    617c:	00200793          	li	a5,2
    6180:	00f42023          	sw	a5,0(s0)
    6184:	00100713          	li	a4,1
    6188:	000077b7          	lui	a5,0x7
    618c:	0ce7a423          	sw	a4,200(a5) # 70c8 <needsRedraw>
    6190:	05c12083          	lw	ra,92(sp)
    6194:	05812403          	lw	s0,88(sp)
    6198:	06010113          	add	sp,sp,96
    619c:	00008067          	ret

000061a0 <handlePlayerInput>:
    61a0:	ff010113          	add	sp,sp,-16
    61a4:	000077b7          	lui	a5,0x7
    61a8:	00812423          	sw	s0,8(sp)
    61ac:	1087a403          	lw	s0,264(a5) # 7108 <BUTTONS>
    61b0:	00112623          	sw	ra,12(sp)
    61b4:	00912223          	sw	s1,4(sp)
    61b8:	00042783          	lw	a5,0(s0)
    61bc:	0087f793          	and	a5,a5,8
    61c0:	02078663          	beqz	a5,61ec <handlePlayerInput+0x4c>
    61c4:	000074b7          	lui	s1,0x7
    61c8:	7704a503          	lw	a0,1904(s1) # 7770 <selectedRow>
    61cc:	00300593          	li	a1,3
    61d0:	00250513          	add	a0,a0,2
    61d4:	ffffa097          	auipc	ra,0xffffa
    61d8:	638080e7          	jalr	1592(ra) # 80c <__modsi3>
    61dc:	000077b7          	lui	a5,0x7
    61e0:	00100713          	li	a4,1
    61e4:	76a4a823          	sw	a0,1904(s1)
    61e8:	0ce7a423          	sw	a4,200(a5) # 70c8 <needsRedraw>
    61ec:	00042783          	lw	a5,0(s0)
    61f0:	0107f793          	and	a5,a5,16
    61f4:	02078663          	beqz	a5,6220 <handlePlayerInput+0x80>
    61f8:	000074b7          	lui	s1,0x7
    61fc:	7704a503          	lw	a0,1904(s1) # 7770 <selectedRow>
    6200:	00300593          	li	a1,3
    6204:	00150513          	add	a0,a0,1
    6208:	ffffa097          	auipc	ra,0xffffa
    620c:	604080e7          	jalr	1540(ra) # 80c <__modsi3>
    6210:	000077b7          	lui	a5,0x7
    6214:	00100713          	li	a4,1
    6218:	76a4a823          	sw	a0,1904(s1)
    621c:	0ce7a423          	sw	a4,200(a5) # 70c8 <needsRedraw>
    6220:	00042783          	lw	a5,0(s0)
    6224:	0207f793          	and	a5,a5,32
    6228:	02078663          	beqz	a5,6254 <handlePlayerInput+0xb4>
    622c:	000074b7          	lui	s1,0x7
    6230:	76c4a503          	lw	a0,1900(s1) # 776c <selectedCol>
    6234:	00300593          	li	a1,3
    6238:	00250513          	add	a0,a0,2
    623c:	ffffa097          	auipc	ra,0xffffa
    6240:	5d0080e7          	jalr	1488(ra) # 80c <__modsi3>
    6244:	000077b7          	lui	a5,0x7
    6248:	00100713          	li	a4,1
    624c:	76a4a623          	sw	a0,1900(s1)
    6250:	0ce7a423          	sw	a4,200(a5) # 70c8 <needsRedraw>
    6254:	00042783          	lw	a5,0(s0)
    6258:	0407f793          	and	a5,a5,64
    625c:	02078663          	beqz	a5,6288 <handlePlayerInput+0xe8>
    6260:	000074b7          	lui	s1,0x7
    6264:	76c4a503          	lw	a0,1900(s1) # 776c <selectedCol>
    6268:	00300593          	li	a1,3
    626c:	00150513          	add	a0,a0,1
    6270:	ffffa097          	auipc	ra,0xffffa
    6274:	59c080e7          	jalr	1436(ra) # 80c <__modsi3>
    6278:	000077b7          	lui	a5,0x7
    627c:	00100713          	li	a4,1
    6280:	76a4a623          	sw	a0,1900(s1)
    6284:	0ce7a423          	sw	a4,200(a5) # 70c8 <needsRedraw>
    6288:	00042783          	lw	a5,0(s0)
    628c:	0047f793          	and	a5,a5,4
    6290:	06078263          	beqz	a5,62f4 <handlePlayerInput+0x154>
    6294:	000077b7          	lui	a5,0x7
    6298:	7707a703          	lw	a4,1904(a5) # 7770 <selectedRow>
    629c:	000077b7          	lui	a5,0x7
    62a0:	76c7a683          	lw	a3,1900(a5) # 776c <selectedCol>
    62a4:	00171793          	sll	a5,a4,0x1
    62a8:	00e787b3          	add	a5,a5,a4
    62ac:	00d787b3          	add	a5,a5,a3
    62b0:	0000d737          	lui	a4,0xd
    62b4:	1dc70713          	add	a4,a4,476 # d1dc <board>
    62b8:	00279793          	sll	a5,a5,0x2
    62bc:	00f707b3          	add	a5,a4,a5
    62c0:	0007a703          	lw	a4,0(a5)
    62c4:	02071863          	bnez	a4,62f4 <handlePlayerInput+0x154>
    62c8:	00100413          	li	s0,1
    62cc:	0087a023          	sw	s0,0(a5)
    62d0:	00000097          	auipc	ra,0x0
    62d4:	a78080e7          	jalr	-1416(ra) # 5d48 <checkGameOver>
    62d8:	000077b7          	lui	a5,0x7
    62dc:	76a7aa23          	sw	a0,1908(a5) # 7774 <gameOver>
    62e0:	00200713          	li	a4,2
    62e4:	000077b7          	lui	a5,0x7
    62e8:	0ce7a623          	sw	a4,204(a5) # 70cc <currentPlayer>
    62ec:	000077b7          	lui	a5,0x7
    62f0:	0c87a423          	sw	s0,200(a5) # 70c8 <needsRedraw>
    62f4:	00c12083          	lw	ra,12(sp)
    62f8:	00812403          	lw	s0,8(sp)
    62fc:	00412483          	lw	s1,4(sp)
    6300:	01010113          	add	sp,sp,16
    6304:	00008067          	ret

00006308 <startTicTacToe>:
    6308:	fe010113          	add	sp,sp,-32
    630c:	00812c23          	sw	s0,24(sp)
    6310:	00912a23          	sw	s1,20(sp)
    6314:	01212823          	sw	s2,16(sp)
    6318:	00007437          	lui	s0,0x7
    631c:	00100913          	li	s2,1
    6320:	000074b7          	lui	s1,0x7
    6324:	01312623          	sw	s3,12(sp)
    6328:	00112e23          	sw	ra,28(sp)
    632c:	00090993          	mv	s3,s2
    6330:	00000097          	auipc	ra,0x0
    6334:	9e8080e7          	jalr	-1560(ra) # 5d18 <initBoard>
    6338:	76042a23          	sw	zero,1908(s0) # 7774 <gameOver>
    633c:	0d24a623          	sw	s2,204(s1) # 70cc <currentPlayer>
    6340:	0cc4a783          	lw	a5,204(s1)
    6344:	09379663          	bne	a5,s3,63d0 <startTicTacToe+0xc8>
    6348:	00000097          	auipc	ra,0x0
    634c:	e58080e7          	jalr	-424(ra) # 61a0 <handlePlayerInput>
    6350:	00000097          	auipc	ra,0x0
    6354:	af8080e7          	jalr	-1288(ra) # 5e48 <renderBoard>
    6358:	00000097          	auipc	ra,0x0
    635c:	9f0080e7          	jalr	-1552(ra) # 5d48 <checkGameOver>
    6360:	76a42a23          	sw	a0,1908(s0)
    6364:	fc050ee3          	beqz	a0,6340 <startTicTacToe+0x38>
    6368:	03c00593          	li	a1,60
    636c:	00000513          	li	a0,0
    6370:	ffffb097          	auipc	ra,0xffffb
    6374:	964080e7          	jalr	-1692(ra) # cd4 <display_set_cursor>
    6378:	77442783          	lw	a5,1908(s0)
    637c:	00100713          	li	a4,1
    6380:	06e79063          	bne	a5,a4,63e0 <startTicTacToe+0xd8>
    6384:	00007537          	lui	a0,0x7
    6388:	50450513          	add	a0,a0,1284 # 7504 <font+0x3e4>
    638c:	ffffb097          	auipc	ra,0xffffb
    6390:	d04080e7          	jalr	-764(ra) # 1090 <printf>
    6394:	00007537          	lui	a0,0x7
    6398:	52050513          	add	a0,a0,1312 # 7520 <font+0x400>
    639c:	00000097          	auipc	ra,0x0
    63a0:	440080e7          	jalr	1088(ra) # 67dc <playMusicFromPath>
    63a4:	ffffb097          	auipc	ra,0xffffb
    63a8:	a70080e7          	jalr	-1424(ra) # e14 <display_refresh>
    63ac:	01812403          	lw	s0,24(sp)
    63b0:	01c12083          	lw	ra,28(sp)
    63b4:	01412483          	lw	s1,20(sp)
    63b8:	01012903          	lw	s2,16(sp)
    63bc:	00c12983          	lw	s3,12(sp)
    63c0:	7d000513          	li	a0,2000
    63c4:	02010113          	add	sp,sp,32
    63c8:	00000317          	auipc	t1,0x0
    63cc:	91030067          	jr	-1776(t1) # 5cd8 <delay_ms>
    63d0:	00000097          	auipc	ra,0x0
    63d4:	c88080e7          	jalr	-888(ra) # 6058 <botMove>
    63d8:	0d24a623          	sw	s2,204(s1)
    63dc:	f75ff06f          	j	6350 <startTicTacToe+0x48>
    63e0:	00200713          	li	a4,2
    63e4:	02e79063          	bne	a5,a4,6404 <startTicTacToe+0xfc>
    63e8:	00007537          	lui	a0,0x7
    63ec:	53450513          	add	a0,a0,1332 # 7534 <font+0x414>
    63f0:	ffffb097          	auipc	ra,0xffffb
    63f4:	ca0080e7          	jalr	-864(ra) # 1090 <printf>
    63f8:	00007537          	lui	a0,0x7
    63fc:	55050513          	add	a0,a0,1360 # 7550 <font+0x430>
    6400:	f9dff06f          	j	639c <startTicTacToe+0x94>
    6404:	00300713          	li	a4,3
    6408:	f8e79ee3          	bne	a5,a4,63a4 <startTicTacToe+0x9c>
    640c:	00007537          	lui	a0,0x7
    6410:	56450513          	add	a0,a0,1380 # 7564 <font+0x444>
    6414:	ffffb097          	auipc	ra,0xffffb
    6418:	c7c080e7          	jalr	-900(ra) # 1090 <printf>
    641c:	f89ff06f          	j	63a4 <startTicTacToe+0x9c>

00006420 <initializeSDCard>:
    6420:	ff010113          	add	sp,sp,-16
    6424:	00812423          	sw	s0,8(sp)
    6428:	00912223          	sw	s1,4(sp)
    642c:	00112623          	sw	ra,12(sp)
    6430:	000004b7          	lui	s1,0x0
    6434:	00000437          	lui	s0,0x0
    6438:	78048593          	add	a1,s1,1920 # 780 <sdcard_writesector>
    643c:	72c40513          	add	a0,s0,1836 # 72c <sdcard_readsector>
    6440:	ffffc097          	auipc	ra,0xffffc
    6444:	7e0080e7          	jalr	2016(ra) # 2c20 <fl_attach_media>
    6448:	fe0518e3          	bnez	a0,6438 <initializeSDCard+0x18>
    644c:	00c12083          	lw	ra,12(sp)
    6450:	00812403          	lw	s0,8(sp)
    6454:	00412483          	lw	s1,4(sp)
    6458:	00100513          	li	a0,1
    645c:	01010113          	add	sp,sp,16
    6460:	00008067          	ret

00006464 <clearAudioBuffer>:
    6464:	ff010113          	add	sp,sp,-16
    6468:	000077b7          	lui	a5,0x7
    646c:	00812423          	sw	s0,8(sp)
    6470:	1007a403          	lw	s0,256(a5) # 7100 <AUDIO>
    6474:	00112623          	sw	ra,12(sp)
    6478:	00912223          	sw	s1,4(sp)
    647c:	00042703          	lw	a4,0(s0)
    6480:	00042783          	lw	a5,0(s0)
    6484:	fef70ee3          	beq	a4,a5,6480 <clearAudioBuffer+0x1c>
    6488:	00042483          	lw	s1,0(s0)
    648c:	20000613          	li	a2,512
    6490:	00000593          	li	a1,0
    6494:	00048513          	mv	a0,s1
    6498:	ffffa097          	auipc	ra,0xffffa
    649c:	3cc080e7          	jalr	972(ra) # 864 <memset>
    64a0:	00042783          	lw	a5,0(s0)
    64a4:	fef48ee3          	beq	s1,a5,64a0 <clearAudioBuffer+0x3c>
    64a8:	00042483          	lw	s1,0(s0)
    64ac:	20000613          	li	a2,512
    64b0:	00000593          	li	a1,0
    64b4:	00048513          	mv	a0,s1
    64b8:	ffffa097          	auipc	ra,0xffffa
    64bc:	3ac080e7          	jalr	940(ra) # 864 <memset>
    64c0:	00042783          	lw	a5,0(s0)
    64c4:	fef48ee3          	beq	s1,a5,64c0 <clearAudioBuffer+0x5c>
    64c8:	00c12083          	lw	ra,12(sp)
    64cc:	00812403          	lw	s0,8(sp)
    64d0:	00412483          	lw	s1,4(sp)
    64d4:	01010113          	add	sp,sp,16
    64d8:	00008067          	ret

000064dc <listAlbums>:
    64dc:	ec010113          	add	sp,sp,-320
    64e0:	13312623          	sw	s3,300(sp)
    64e4:	12112e23          	sw	ra,316(sp)
    64e8:	12812c23          	sw	s0,312(sp)
    64ec:	12912a23          	sw	s1,308(sp)
    64f0:	13212823          	sw	s2,304(sp)
    64f4:	13412423          	sw	s4,296(sp)
    64f8:	00000097          	auipc	ra,0x0
    64fc:	f28080e7          	jalr	-216(ra) # 6420 <initializeSDCard>
    6500:	00007537          	lui	a0,0x7
    6504:	000079b7          	lui	s3,0x7
    6508:	00410593          	add	a1,sp,4
    650c:	58050513          	add	a0,a0,1408 # 7580 <font+0x460>
    6510:	7209aa23          	sw	zero,1844(s3) # 7734 <albumCount>
    6514:	ffffd097          	auipc	ra,0xffffd
    6518:	334080e7          	jalr	820(ra) # 3848 <fl_opendir>
    651c:	02050863          	beqz	a0,654c <listAlbums+0x70>
    6520:	00900413          	li	s0,9
    6524:	02e00493          	li	s1,46
    6528:	00008937          	lui	s2,0x8
    652c:	01010593          	add	a1,sp,16
    6530:	00410513          	add	a0,sp,4
    6534:	ffffe097          	auipc	ra,0xffffe
    6538:	b3c080e7          	jalr	-1220(ra) # 4070 <fl_readdir>
    653c:	02050863          	beqz	a0,656c <listAlbums+0x90>
    6540:	00410513          	add	a0,sp,4
    6544:	ffffb097          	auipc	ra,0xffffb
    6548:	6a4080e7          	jalr	1700(ra) # 1be8 <fl_closedir>
    654c:	13c12083          	lw	ra,316(sp)
    6550:	13812403          	lw	s0,312(sp)
    6554:	13412483          	lw	s1,308(sp)
    6558:	13012903          	lw	s2,304(sp)
    655c:	12c12983          	lw	s3,300(sp)
    6560:	12812a03          	lw	s4,296(sp)
    6564:	14010113          	add	sp,sp,320
    6568:	00008067          	ret
    656c:	7349a783          	lw	a5,1844(s3)
    6570:	fcf448e3          	blt	s0,a5,6540 <listAlbums+0x64>
    6574:	11414703          	lbu	a4,276(sp)
    6578:	fa070ae3          	beqz	a4,652c <listAlbums+0x50>
    657c:	01014703          	lbu	a4,16(sp)
    6580:	fa9706e3          	beq	a4,s1,652c <listAlbums+0x50>
    6584:	00179513          	sll	a0,a5,0x1
    6588:	00f50533          	add	a0,a0,a5
    658c:	00351513          	sll	a0,a0,0x3
    6590:	00f50533          	add	a0,a0,a5
    6594:	a1c90a13          	add	s4,s2,-1508 # 7a1c <musicAlbums>
    6598:	00251513          	sll	a0,a0,0x2
    659c:	00aa0533          	add	a0,s4,a0
    65a0:	06300613          	li	a2,99
    65a4:	01010593          	add	a1,sp,16
    65a8:	ffffa097          	auipc	ra,0xffffa
    65ac:	35c080e7          	jalr	860(ra) # 904 <strncpy>
    65b0:	7349a703          	lw	a4,1844(s3)
    65b4:	00171793          	sll	a5,a4,0x1
    65b8:	00e787b3          	add	a5,a5,a4
    65bc:	00379793          	sll	a5,a5,0x3
    65c0:	00e787b3          	add	a5,a5,a4
    65c4:	00279793          	sll	a5,a5,0x2
    65c8:	00fa0a33          	add	s4,s4,a5
    65cc:	00170713          	add	a4,a4,1
    65d0:	060a01a3          	sb	zero,99(s4)
    65d4:	72e9aa23          	sw	a4,1844(s3)
    65d8:	f55ff06f          	j	652c <listAlbums+0x50>

000065dc <listAlbumFiles>:
    65dc:	dd010113          	add	sp,sp,-560
    65e0:	000075b7          	lui	a1,0x7
    65e4:	22812423          	sw	s0,552(sp)
    65e8:	58858593          	add	a1,a1,1416 # 7588 <font+0x468>
    65ec:	00050413          	mv	s0,a0
    65f0:	01010513          	add	a0,sp,16
    65f4:	22112623          	sw	ra,556(sp)
    65f8:	23212023          	sw	s2,544(sp)
    65fc:	22912223          	sw	s1,548(sp)
    6600:	ffffa097          	auipc	ra,0xffffa
    6604:	328080e7          	jalr	808(ra) # 928 <strcpy>
    6608:	00040593          	mv	a1,s0
    660c:	01010513          	add	a0,sp,16
    6610:	ffffa097          	auipc	ra,0xffffa
    6614:	338080e7          	jalr	824(ra) # 948 <strcat>
    6618:	00000097          	auipc	ra,0x0
    661c:	e08080e7          	jalr	-504(ra) # 6420 <initializeSDCard>
    6620:	00007937          	lui	s2,0x7
    6624:	00410593          	add	a1,sp,4
    6628:	01010513          	add	a0,sp,16
    662c:	72092823          	sw	zero,1840(s2) # 7730 <musicFileCount>
    6630:	ffffd097          	auipc	ra,0xffffd
    6634:	218080e7          	jalr	536(ra) # 3848 <fl_opendir>
    6638:	00900413          	li	s0,9
    663c:	08051263          	bnez	a0,66c0 <listAlbumFiles+0xe4>
    6640:	22c12083          	lw	ra,556(sp)
    6644:	22812403          	lw	s0,552(sp)
    6648:	22412483          	lw	s1,548(sp)
    664c:	22012903          	lw	s2,544(sp)
    6650:	23010113          	add	sp,sp,560
    6654:	00008067          	ret
    6658:	73092783          	lw	a5,1840(s2)
    665c:	06f44c63          	blt	s0,a5,66d4 <listAlbumFiles+0xf8>
    6660:	21414703          	lbu	a4,532(sp)
    6664:	04071e63          	bnez	a4,66c0 <listAlbumFiles+0xe4>
    6668:	00179513          	sll	a0,a5,0x1
    666c:	00f50533          	add	a0,a0,a5
    6670:	00351513          	sll	a0,a0,0x3
    6674:	00f50533          	add	a0,a0,a5
    6678:	000084b7          	lui	s1,0x8
    667c:	e0448493          	add	s1,s1,-508 # 7e04 <musicFiles>
    6680:	00251513          	sll	a0,a0,0x2
    6684:	00a48533          	add	a0,s1,a0
    6688:	06300613          	li	a2,99
    668c:	11010593          	add	a1,sp,272
    6690:	ffffa097          	auipc	ra,0xffffa
    6694:	274080e7          	jalr	628(ra) # 904 <strncpy>
    6698:	73092703          	lw	a4,1840(s2)
    669c:	00171793          	sll	a5,a4,0x1
    66a0:	00e787b3          	add	a5,a5,a4
    66a4:	00379793          	sll	a5,a5,0x3
    66a8:	00e787b3          	add	a5,a5,a4
    66ac:	00279793          	sll	a5,a5,0x2
    66b0:	00f484b3          	add	s1,s1,a5
    66b4:	00170713          	add	a4,a4,1
    66b8:	060481a3          	sb	zero,99(s1)
    66bc:	72e92823          	sw	a4,1840(s2)
    66c0:	11010593          	add	a1,sp,272
    66c4:	00410513          	add	a0,sp,4
    66c8:	ffffe097          	auipc	ra,0xffffe
    66cc:	9a8080e7          	jalr	-1624(ra) # 4070 <fl_readdir>
    66d0:	f80504e3          	beqz	a0,6658 <listAlbumFiles+0x7c>
    66d4:	00410513          	add	a0,sp,4
    66d8:	ffffb097          	auipc	ra,0xffffb
    66dc:	510080e7          	jalr	1296(ra) # 1be8 <fl_closedir>
    66e0:	f61ff06f          	j	6640 <listAlbumFiles+0x64>

000066e4 <updateProgressBar>:
    66e4:	fe010113          	add	sp,sp,-32
    66e8:	00112e23          	sw	ra,28(sp)
    66ec:	00812c23          	sw	s0,24(sp)
    66f0:	00912a23          	sw	s1,20(sp)
    66f4:	01212823          	sw	s2,16(sp)
    66f8:	00058493          	mv	s1,a1
    66fc:	00060913          	mv	s2,a2
    6700:	01312623          	sw	s3,12(sp)
    6704:	01412423          	sw	s4,8(sp)
    6708:	01512223          	sw	s5,4(sp)
    670c:	01612023          	sw	s6,0(sp)
    6710:	ffffb097          	auipc	ra,0xffffb
    6714:	43c080e7          	jalr	1084(ra) # 1b4c <fl_ftell>
    6718:	00090593          	mv	a1,s2
    671c:	00050413          	mv	s0,a0
    6720:	ffffb097          	auipc	ra,0xffffb
    6724:	aa0080e7          	jalr	-1376(ra) # 11c0 <__mulsi3>
    6728:	00048593          	mv	a1,s1
    672c:	ffffa097          	auipc	ra,0xffffa
    6730:	05c080e7          	jalr	92(ra) # 788 <__divsi3>
    6734:	07300593          	li	a1,115
    6738:	00050a13          	mv	s4,a0
    673c:	00000513          	li	a0,0
    6740:	ffffa097          	auipc	ra,0xffffa
    6744:	594080e7          	jalr	1428(ra) # cd4 <display_set_cursor>
    6748:	00007537          	lui	a0,0x7
    674c:	59850513          	add	a0,a0,1432 # 7598 <font+0x478>
    6750:	ffffb097          	auipc	ra,0xffffb
    6754:	940080e7          	jalr	-1728(ra) # 1090 <printf>
    6758:	00000993          	li	s3,0
    675c:	00007ab7          	lui	s5,0x7
    6760:	00007b37          	lui	s6,0x7
    6764:	0529ce63          	blt	s3,s2,67c0 <updateProgressBar+0xdc>
    6768:	00141513          	sll	a0,s0,0x1
    676c:	00850533          	add	a0,a0,s0
    6770:	00351513          	sll	a0,a0,0x3
    6774:	00850533          	add	a0,a0,s0
    6778:	00048593          	mv	a1,s1
    677c:	00251513          	sll	a0,a0,0x2
    6780:	ffffa097          	auipc	ra,0xffffa
    6784:	008080e7          	jalr	8(ra) # 788 <__divsi3>
    6788:	01812403          	lw	s0,24(sp)
    678c:	01c12083          	lw	ra,28(sp)
    6790:	01412483          	lw	s1,20(sp)
    6794:	01012903          	lw	s2,16(sp)
    6798:	00c12983          	lw	s3,12(sp)
    679c:	00812a03          	lw	s4,8(sp)
    67a0:	00412a83          	lw	s5,4(sp)
    67a4:	00012b03          	lw	s6,0(sp)
    67a8:	00050593          	mv	a1,a0
    67ac:	00007537          	lui	a0,0x7
    67b0:	59c50513          	add	a0,a0,1436 # 759c <font+0x47c>
    67b4:	02010113          	add	sp,sp,32
    67b8:	ffffb317          	auipc	t1,0xffffb
    67bc:	8d830067          	jr	-1832(t1) # 1090 <printf>
    67c0:	594a8513          	add	a0,s5,1428 # 7594 <font+0x474>
    67c4:	0149d463          	bge	s3,s4,67cc <updateProgressBar+0xe8>
    67c8:	590b0513          	add	a0,s6,1424 # 7590 <font+0x470>
    67cc:	ffffb097          	auipc	ra,0xffffb
    67d0:	8c4080e7          	jalr	-1852(ra) # 1090 <printf>
    67d4:	00198993          	add	s3,s3,1
    67d8:	f8dff06f          	j	6764 <updateProgressBar+0x80>

000067dc <playMusicFromPath>:
    67dc:	fe010113          	add	sp,sp,-32
    67e0:	00912a23          	sw	s1,20(sp)
    67e4:	00112e23          	sw	ra,28(sp)
    67e8:	00812c23          	sw	s0,24(sp)
    67ec:	01212823          	sw	s2,16(sp)
    67f0:	01312623          	sw	s3,12(sp)
    67f4:	00050493          	mv	s1,a0
    67f8:	00000097          	auipc	ra,0x0
    67fc:	c28080e7          	jalr	-984(ra) # 6420 <initializeSDCard>
    6800:	000075b7          	lui	a1,0x7
    6804:	33458593          	add	a1,a1,820 # 7334 <font+0x214>
    6808:	00048513          	mv	a0,s1
    680c:	fffff097          	auipc	ra,0xfffff
    6810:	d7c080e7          	jalr	-644(ra) # 5588 <fl_fopen>
    6814:	02051863          	bnez	a0,6844 <playMusicFromPath+0x68>
    6818:	01812403          	lw	s0,24(sp)
    681c:	01c12083          	lw	ra,28(sp)
    6820:	01012903          	lw	s2,16(sp)
    6824:	00c12983          	lw	s3,12(sp)
    6828:	00048593          	mv	a1,s1
    682c:	01412483          	lw	s1,20(sp)
    6830:	00007537          	lui	a0,0x7
    6834:	5a450513          	add	a0,a0,1444 # 75a4 <font+0x484>
    6838:	02010113          	add	sp,sp,32
    683c:	ffffb317          	auipc	t1,0xffffb
    6840:	85430067          	jr	-1964(t1) # 1090 <printf>
    6844:	000077b7          	lui	a5,0x7
    6848:	1007a483          	lw	s1,256(a5) # 7100 <AUDIO>
    684c:	00050413          	mv	s0,a0
    6850:	1ff00993          	li	s3,511
    6854:	0004a783          	lw	a5,0(s1)
    6858:	0004a903          	lw	s2,0(s1)
    685c:	00040693          	mv	a3,s0
    6860:	20000613          	li	a2,512
    6864:	00100593          	li	a1,1
    6868:	00090513          	mv	a0,s2
    686c:	ffffe097          	auipc	ra,0xffffe
    6870:	38c080e7          	jalr	908(ra) # 4bf8 <fl_fread>
    6874:	00a9d863          	bge	s3,a0,6884 <playMusicFromPath+0xa8>
    6878:	0004a783          	lw	a5,0(s1)
    687c:	fef90ee3          	beq	s2,a5,6878 <playMusicFromPath+0x9c>
    6880:	fd9ff06f          	j	6858 <playMusicFromPath+0x7c>
    6884:	00000097          	auipc	ra,0x0
    6888:	be0080e7          	jalr	-1056(ra) # 6464 <clearAudioBuffer>
    688c:	00040513          	mv	a0,s0
    6890:	01812403          	lw	s0,24(sp)
    6894:	01c12083          	lw	ra,28(sp)
    6898:	01412483          	lw	s1,20(sp)
    689c:	01012903          	lw	s2,16(sp)
    68a0:	00c12983          	lw	s3,12(sp)
    68a4:	02010113          	add	sp,sp,32
    68a8:	ffffe317          	auipc	t1,0xffffe
    68ac:	27030067          	jr	624(t1) # 4b18 <fl_fclose>

000068b0 <playMusicFile>:
    68b0:	d9010113          	add	sp,sp,-624
    68b4:	26912223          	sw	s1,612(sp)
    68b8:	00058493          	mv	s1,a1
    68bc:	000075b7          	lui	a1,0x7
    68c0:	25312e23          	sw	s3,604(sp)
    68c4:	58858593          	add	a1,a1,1416 # 7588 <font+0x468>
    68c8:	00050993          	mv	s3,a0
    68cc:	03010513          	add	a0,sp,48
    68d0:	26112623          	sw	ra,620(sp)
    68d4:	26812423          	sw	s0,616(sp)
    68d8:	25412c23          	sw	s4,600(sp)
    68dc:	27212023          	sw	s2,608(sp)
    68e0:	25512a23          	sw	s5,596(sp)
    68e4:	25612823          	sw	s6,592(sp)
    68e8:	25712623          	sw	s7,588(sp)
    68ec:	25812423          	sw	s8,584(sp)
    68f0:	25912223          	sw	s9,580(sp)
    68f4:	25a12023          	sw	s10,576(sp)
    68f8:	23b12e23          	sw	s11,572(sp)
    68fc:	ffffa097          	auipc	ra,0xffffa
    6900:	02c080e7          	jalr	44(ra) # 928 <strcpy>
    6904:	00098593          	mv	a1,s3
    6908:	03010513          	add	a0,sp,48
    690c:	ffffa097          	auipc	ra,0xffffa
    6910:	03c080e7          	jalr	60(ra) # 948 <strcat>
    6914:	00007437          	lui	s0,0x7
    6918:	5b840593          	add	a1,s0,1464 # 75b8 <font+0x498>
    691c:	03010513          	add	a0,sp,48
    6920:	ffffa097          	auipc	ra,0xffffa
    6924:	028080e7          	jalr	40(ra) # 948 <strcat>
    6928:	00048593          	mv	a1,s1
    692c:	03010513          	add	a0,sp,48
    6930:	ffffa097          	auipc	ra,0xffffa
    6934:	018080e7          	jalr	24(ra) # 948 <strcat>
    6938:	000075b7          	lui	a1,0x7
    693c:	5bc58593          	add	a1,a1,1468 # 75bc <font+0x49c>
    6940:	13010513          	add	a0,sp,304
    6944:	ffffa097          	auipc	ra,0xffffa
    6948:	fe4080e7          	jalr	-28(ra) # 928 <strcpy>
    694c:	00098593          	mv	a1,s3
    6950:	13010513          	add	a0,sp,304
    6954:	ffffa097          	auipc	ra,0xffffa
    6958:	ff4080e7          	jalr	-12(ra) # 948 <strcat>
    695c:	5b840593          	add	a1,s0,1464
    6960:	13010513          	add	a0,sp,304
    6964:	ffffa097          	auipc	ra,0xffffa
    6968:	fe4080e7          	jalr	-28(ra) # 948 <strcat>
    696c:	00048593          	mv	a1,s1
    6970:	13010513          	add	a0,sp,304
    6974:	ffffa097          	auipc	ra,0xffffa
    6978:	fd4080e7          	jalr	-44(ra) # 948 <strcat>
    697c:	00000097          	auipc	ra,0x0
    6980:	aa4080e7          	jalr	-1372(ra) # 6420 <initializeSDCard>
    6984:	00007a37          	lui	s4,0x7
    6988:	334a0593          	add	a1,s4,820 # 7334 <font+0x214>
    698c:	03010513          	add	a0,sp,48
    6990:	fffff097          	auipc	ra,0xfffff
    6994:	bf8080e7          	jalr	-1032(ra) # 5588 <fl_fopen>
    6998:	04051c63          	bnez	a0,69f0 <playMusicFile+0x140>
    699c:	00007537          	lui	a0,0x7
    69a0:	5c450513          	add	a0,a0,1476 # 75c4 <font+0x4a4>
    69a4:	ffffa097          	auipc	ra,0xffffa
    69a8:	6ec080e7          	jalr	1772(ra) # 1090 <printf>
    69ac:	ffffa097          	auipc	ra,0xffffa
    69b0:	468080e7          	jalr	1128(ra) # e14 <display_refresh>
    69b4:	26c12083          	lw	ra,620(sp)
    69b8:	26812403          	lw	s0,616(sp)
    69bc:	26412483          	lw	s1,612(sp)
    69c0:	26012903          	lw	s2,608(sp)
    69c4:	25c12983          	lw	s3,604(sp)
    69c8:	25812a03          	lw	s4,600(sp)
    69cc:	25412a83          	lw	s5,596(sp)
    69d0:	25012b03          	lw	s6,592(sp)
    69d4:	24c12b83          	lw	s7,588(sp)
    69d8:	24812c03          	lw	s8,584(sp)
    69dc:	24412c83          	lw	s9,580(sp)
    69e0:	24012d03          	lw	s10,576(sp)
    69e4:	23c12d83          	lw	s11,572(sp)
    69e8:	27010113          	add	sp,sp,624
    69ec:	00008067          	ret
    69f0:	00200613          	li	a2,2
    69f4:	00000593          	li	a1,0
    69f8:	00050413          	mv	s0,a0
    69fc:	ffffb097          	auipc	ra,0xffffb
    6a00:	fe0080e7          	jalr	-32(ra) # 19dc <fl_fseek>
    6a04:	00040513          	mv	a0,s0
    6a08:	ffffb097          	auipc	ra,0xffffb
    6a0c:	144080e7          	jalr	324(ra) # 1b4c <fl_ftell>
    6a10:	00000613          	li	a2,0
    6a14:	00000593          	li	a1,0
    6a18:	00050913          	mv	s2,a0
    6a1c:	00040513          	mv	a0,s0
    6a20:	ffffb097          	auipc	ra,0xffffb
    6a24:	fbc080e7          	jalr	-68(ra) # 19dc <fl_fseek>
    6a28:	ffffa097          	auipc	ra,0xffffa
    6a2c:	2a0080e7          	jalr	672(ra) # cc8 <display_framebuffer>
    6a30:	00004637          	lui	a2,0x4
    6a34:	00000593          	li	a1,0
    6a38:	ffffa097          	auipc	ra,0xffffa
    6a3c:	e2c080e7          	jalr	-468(ra) # 864 <memset>
    6a40:	00000513          	li	a0,0
    6a44:	ffffa097          	auipc	ra,0xffffa
    6a48:	0f4080e7          	jalr	244(ra) # b38 <oled_clear>
    6a4c:	00000593          	li	a1,0
    6a50:	0ff00513          	li	a0,255
    6a54:	ffffa097          	auipc	ra,0xffffa
    6a58:	294080e7          	jalr	660(ra) # ce8 <display_set_front_back_color>
    6a5c:	334a0593          	add	a1,s4,820
    6a60:	13010513          	add	a0,sp,304
    6a64:	fffff097          	auipc	ra,0xfffff
    6a68:	b24080e7          	jalr	-1244(ra) # 5588 <fl_fopen>
    6a6c:	00050a13          	mv	s4,a0
    6a70:	02050663          	beqz	a0,6a9c <playMusicFile+0x1ec>
    6a74:	ffffa097          	auipc	ra,0xffffa
    6a78:	254080e7          	jalr	596(ra) # cc8 <display_framebuffer>
    6a7c:	000a0693          	mv	a3,s4
    6a80:	00004637          	lui	a2,0x4
    6a84:	00100593          	li	a1,1
    6a88:	ffffe097          	auipc	ra,0xffffe
    6a8c:	170080e7          	jalr	368(ra) # 4bf8 <fl_fread>
    6a90:	000a0513          	mv	a0,s4
    6a94:	ffffe097          	auipc	ra,0xffffe
    6a98:	084080e7          	jalr	132(ra) # 4b18 <fl_fclose>
    6a9c:	00a00593          	li	a1,10
    6aa0:	00000513          	li	a0,0
    6aa4:	ffffa097          	auipc	ra,0xffffa
    6aa8:	230080e7          	jalr	560(ra) # cd4 <display_set_cursor>
    6aac:	00007537          	lui	a0,0x7
    6ab0:	00098613          	mv	a2,s3
    6ab4:	00048593          	mv	a1,s1
    6ab8:	5d850513          	add	a0,a0,1496 # 75d8 <font+0x4b8>
    6abc:	ffffa097          	auipc	ra,0xffffa
    6ac0:	5d4080e7          	jalr	1492(ra) # 1090 <printf>
    6ac4:	ffffa097          	auipc	ra,0xffffa
    6ac8:	350080e7          	jalr	848(ra) # e14 <display_refresh>
    6acc:	000027b7          	lui	a5,0x2
    6ad0:	71078793          	add	a5,a5,1808 # 2710 <fatfs_compare_names+0x188>
    6ad4:	06400593          	li	a1,100
    6ad8:	00090513          	mv	a0,s2
    6adc:	00f12c23          	sw	a5,24(sp)
    6ae0:	ffffa097          	auipc	ra,0xffffa
    6ae4:	ca8080e7          	jalr	-856(ra) # 788 <__divsi3>
    6ae8:	06400593          	li	a1,100
    6aec:	00050c93          	mv	s9,a0
    6af0:	00000513          	li	a0,0
    6af4:	ffffa097          	auipc	ra,0xffffa
    6af8:	1e0080e7          	jalr	480(ra) # cd4 <display_set_cursor>
    6afc:	00007537          	lui	a0,0x7
    6b00:	5f050513          	add	a0,a0,1520 # 75f0 <font+0x4d0>
    6b04:	ffffa097          	auipc	ra,0xffffa
    6b08:	58c080e7          	jalr	1420(ra) # 1090 <printf>
    6b0c:	ffffa097          	auipc	ra,0xffffa
    6b10:	308080e7          	jalr	776(ra) # e14 <display_refresh>
    6b14:	000077b7          	lui	a5,0x7
    6b18:	1087a483          	lw	s1,264(a5) # 7108 <BUTTONS>
    6b1c:	000077b7          	lui	a5,0x7
    6b20:	1007a783          	lw	a5,256(a5) # 7100 <AUDIO>
    6b24:	00000d13          	li	s10,0
    6b28:	00000b13          	li	s6,0
    6b2c:	00f12223          	sw	a5,4(sp)
    6b30:	000077b7          	lui	a5,0x7
    6b34:	11c7a783          	lw	a5,284(a5) # 711c <LEDS>
    6b38:	00000713          	li	a4,0
    6b3c:	00000a93          	li	s5,0
    6b40:	00000a13          	li	s4,0
    6b44:	00000c13          	li	s8,0
    6b48:	00100993          	li	s3,1
    6b4c:	00f12423          	sw	a5,8(sp)
    6b50:	0004ab83          	lw	s7,0(s1)
    6b54:	020bfb93          	and	s7,s7,32
    6b58:	040b8263          	beqz	s7,6b9c <playMusicFile+0x2ec>
    6b5c:	04071063          	bnez	a4,6b9c <playMusicFile+0x2ec>
    6b60:	01812783          	lw	a5,24(sp)
    6b64:	00f12e23          	sw	a5,28(sp)
    6b68:	01c12783          	lw	a5,28(sp)
    6b6c:	fff78713          	add	a4,a5,-1
    6b70:	00e12e23          	sw	a4,28(sp)
    6b74:	fe079ae3          	bnez	a5,6b68 <playMusicFile+0x2b8>
    6b78:	0004a783          	lw	a5,0(s1)
    6b7c:	0207f793          	and	a5,a5,32
    6b80:	00078e63          	beqz	a5,6b9c <playMusicFile+0x2ec>
    6b84:	00000097          	auipc	ra,0x0
    6b88:	8e0080e7          	jalr	-1824(ra) # 6464 <clearAudioBuffer>
    6b8c:	00040513          	mv	a0,s0
    6b90:	ffffe097          	auipc	ra,0xffffe
    6b94:	f88080e7          	jalr	-120(ra) # 4b18 <fl_fclose>
    6b98:	e1dff06f          	j	69b4 <playMusicFile+0x104>
    6b9c:	0004a783          	lw	a5,0(s1)
    6ba0:	0047f793          	and	a5,a5,4
    6ba4:	08078663          	beqz	a5,6c30 <playMusicFile+0x380>
    6ba8:	01812783          	lw	a5,24(sp)
    6bac:	02f12023          	sw	a5,32(sp)
    6bb0:	02012783          	lw	a5,32(sp)
    6bb4:	fff78713          	add	a4,a5,-1
    6bb8:	02e12023          	sw	a4,32(sp)
    6bbc:	fe079ae3          	bnez	a5,6bb0 <playMusicFile+0x300>
    6bc0:	0004a783          	lw	a5,0(s1)
    6bc4:	0047f793          	and	a5,a5,4
    6bc8:	06078463          	beqz	a5,6c30 <playMusicFile+0x380>
    6bcc:	00040513          	mv	a0,s0
    6bd0:	ffffb097          	auipc	ra,0xffffb
    6bd4:	f7c080e7          	jalr	-132(ra) # 1b4c <fl_ftell>
    6bd8:	000207b7          	lui	a5,0x20
    6bdc:	00f505b3          	add	a1,a0,a5
    6be0:	00000613          	li	a2,0
    6be4:	2325d663          	bge	a1,s2,6e10 <playMusicFile+0x560>
    6be8:	00040513          	mv	a0,s0
    6bec:	ffffb097          	auipc	ra,0xffffb
    6bf0:	df0080e7          	jalr	-528(ra) # 19dc <fl_fseek>
    6bf4:	06400593          	li	a1,100
    6bf8:	00000513          	li	a0,0
    6bfc:	ffffa097          	auipc	ra,0xffffa
    6c00:	0d8080e7          	jalr	216(ra) # cd4 <display_set_cursor>
    6c04:	00007537          	lui	a0,0x7
    6c08:	61450513          	add	a0,a0,1556 # 7614 <font+0x4f4>
    6c0c:	ffffa097          	auipc	ra,0xffffa
    6c10:	484080e7          	jalr	1156(ra) # 1090 <printf>
    6c14:	01400613          	li	a2,20
    6c18:	00090593          	mv	a1,s2
    6c1c:	00040513          	mv	a0,s0
    6c20:	00000097          	auipc	ra,0x0
    6c24:	ac4080e7          	jalr	-1340(ra) # 66e4 <updateProgressBar>
    6c28:	ffffa097          	auipc	ra,0xffffa
    6c2c:	1ec080e7          	jalr	492(ra) # e14 <display_refresh>
    6c30:	0004a783          	lw	a5,0(s1)
    6c34:	0027f793          	and	a5,a5,2
    6c38:	08078663          	beqz	a5,6cc4 <playMusicFile+0x414>
    6c3c:	01812783          	lw	a5,24(sp)
    6c40:	02f12223          	sw	a5,36(sp)
    6c44:	02412783          	lw	a5,36(sp)
    6c48:	fff78713          	add	a4,a5,-1 # 1ffff <__stacktop+0xffff>
    6c4c:	02e12223          	sw	a4,36(sp)
    6c50:	fe079ae3          	bnez	a5,6c44 <playMusicFile+0x394>
    6c54:	0004a783          	lw	a5,0(s1)
    6c58:	0027f793          	and	a5,a5,2
    6c5c:	06078463          	beqz	a5,6cc4 <playMusicFile+0x414>
    6c60:	00040513          	mv	a0,s0
    6c64:	ffffb097          	auipc	ra,0xffffb
    6c68:	ee8080e7          	jalr	-280(ra) # 1b4c <fl_ftell>
    6c6c:	fffe07b7          	lui	a5,0xfffe0
    6c70:	00f505b3          	add	a1,a0,a5
    6c74:	00000613          	li	a2,0
    6c78:	1a05c063          	bltz	a1,6e18 <playMusicFile+0x568>
    6c7c:	00040513          	mv	a0,s0
    6c80:	ffffb097          	auipc	ra,0xffffb
    6c84:	d5c080e7          	jalr	-676(ra) # 19dc <fl_fseek>
    6c88:	06400593          	li	a1,100
    6c8c:	00000513          	li	a0,0
    6c90:	ffffa097          	auipc	ra,0xffffa
    6c94:	044080e7          	jalr	68(ra) # cd4 <display_set_cursor>
    6c98:	00007537          	lui	a0,0x7
    6c9c:	63850513          	add	a0,a0,1592 # 7638 <font+0x518>
    6ca0:	ffffa097          	auipc	ra,0xffffa
    6ca4:	3f0080e7          	jalr	1008(ra) # 1090 <printf>
    6ca8:	01400613          	li	a2,20
    6cac:	00090593          	mv	a1,s2
    6cb0:	00040513          	mv	a0,s0
    6cb4:	00000097          	auipc	ra,0x0
    6cb8:	a30080e7          	jalr	-1488(ra) # 66e4 <updateProgressBar>
    6cbc:	ffffa097          	auipc	ra,0xffffa
    6cc0:	158080e7          	jalr	344(ra) # e14 <display_refresh>
    6cc4:	160a1663          	bnez	s4,6e30 <playMusicFile+0x580>
    6cc8:	00412783          	lw	a5,4(sp)
    6ccc:	00040693          	mv	a3,s0
    6cd0:	20000613          	li	a2,512
    6cd4:	0007ad83          	lw	s11,0(a5) # fffe0000 <__stacktop+0xfffd0000>
    6cd8:	00100593          	li	a1,1
    6cdc:	000d8513          	mv	a0,s11
    6ce0:	ffffe097          	auipc	ra,0xffffe
    6ce4:	f18080e7          	jalr	-232(ra) # 4bf8 <fl_fread>
    6ce8:	1ff00793          	li	a5,511
    6cec:	e8a7dce3          	bge	a5,a0,6b84 <playMusicFile+0x2d4>
    6cf0:	00040513          	mv	a0,s0
    6cf4:	ffffb097          	auipc	ra,0xffffb
    6cf8:	e58080e7          	jalr	-424(ra) # 1b4c <fl_ftell>
    6cfc:	41a50733          	sub	a4,a0,s10
    6d00:	04ecd863          	bge	s9,a4,6d50 <playMusicFile+0x4a0>
    6d04:	00a12623          	sw	a0,12(sp)
    6d08:	01400613          	li	a2,20
    6d0c:	00090593          	mv	a1,s2
    6d10:	00040513          	mv	a0,s0
    6d14:	00000097          	auipc	ra,0x0
    6d18:	9d0080e7          	jalr	-1584(ra) # 66e4 <updateProgressBar>
    6d1c:	ffffa097          	auipc	ra,0xffffa
    6d20:	0f8080e7          	jalr	248(ra) # e14 <display_refresh>
    6d24:	08000713          	li	a4,128
    6d28:	00c12783          	lw	a5,12(sp)
    6d2c:	00e98663          	beq	s3,a4,6d38 <playMusicFile+0x488>
    6d30:	00100713          	li	a4,1
    6d34:	00e99463          	bne	s3,a4,6d3c <playMusicFile+0x48c>
    6d38:	001c4c13          	xor	s8,s8,1
    6d3c:	0e0c0263          	beqz	s8,6e20 <playMusicFile+0x570>
    6d40:	00199993          	sll	s3,s3,0x1
    6d44:	00812703          	lw	a4,8(sp)
    6d48:	00078d13          	mv	s10,a5
    6d4c:	01372023          	sw	s3,0(a4)
    6d50:	000a8793          	mv	a5,s5
    6d54:	00412703          	lw	a4,4(sp)
    6d58:	00072703          	lw	a4,0(a4)
    6d5c:	16ed9663          	bne	s11,a4,6ec8 <playMusicFile+0x618>
    6d60:	0004a703          	lw	a4,0(s1)
    6d64:	04077713          	and	a4,a4,64
    6d68:	0c070063          	beqz	a4,6e28 <playMusicFile+0x578>
    6d6c:	04000a93          	li	s5,64
    6d70:	fe0790e3          	bnez	a5,6d50 <playMusicFile+0x4a0>
    6d74:	01812783          	lw	a5,24(sp)
    6d78:	02f12423          	sw	a5,40(sp)
    6d7c:	02812783          	lw	a5,40(sp)
    6d80:	fff78713          	add	a4,a5,-1
    6d84:	02e12423          	sw	a4,40(sp)
    6d88:	fe079ae3          	bnez	a5,6d7c <playMusicFile+0x4cc>
    6d8c:	0004a783          	lw	a5,0(s1)
    6d90:	04000a93          	li	s5,64
    6d94:	0157f7b3          	and	a5,a5,s5
    6d98:	fa078ce3          	beqz	a5,6d50 <playMusicFile+0x4a0>
    6d9c:	0004a783          	lw	a5,0(s1)
    6da0:	0407f793          	and	a5,a5,64
    6da4:	fe079ce3          	bnez	a5,6d9c <playMusicFile+0x4ec>
    6da8:	01812783          	lw	a5,24(sp)
    6dac:	02f12423          	sw	a5,40(sp)
    6db0:	02812783          	lw	a5,40(sp)
    6db4:	fff78713          	add	a4,a5,-1
    6db8:	02e12423          	sw	a4,40(sp)
    6dbc:	fe079ae3          	bnez	a5,6db0 <playMusicFile+0x500>
    6dc0:	00040513          	mv	a0,s0
    6dc4:	00f12623          	sw	a5,12(sp)
    6dc8:	ffffb097          	auipc	ra,0xffffb
    6dcc:	d84080e7          	jalr	-636(ra) # 1b4c <fl_ftell>
    6dd0:	00050b13          	mv	s6,a0
    6dd4:	fffff097          	auipc	ra,0xfffff
    6dd8:	690080e7          	jalr	1680(ra) # 6464 <clearAudioBuffer>
    6ddc:	06400593          	li	a1,100
    6de0:	00000513          	li	a0,0
    6de4:	ffffa097          	auipc	ra,0xffffa
    6de8:	ef0080e7          	jalr	-272(ra) # cd4 <display_set_cursor>
    6dec:	00007537          	lui	a0,0x7
    6df0:	65850513          	add	a0,a0,1624 # 7658 <font+0x538>
    6df4:	ffffa097          	auipc	ra,0xffffa
    6df8:	29c080e7          	jalr	668(ra) # 1090 <printf>
    6dfc:	ffffa097          	auipc	ra,0xffffa
    6e00:	018080e7          	jalr	24(ra) # e14 <display_refresh>
    6e04:	00c12783          	lw	a5,12(sp)
    6e08:	00100a13          	li	s4,1
    6e0c:	0bc0006f          	j	6ec8 <playMusicFile+0x618>
    6e10:	00090593          	mv	a1,s2
    6e14:	dd5ff06f          	j	6be8 <playMusicFile+0x338>
    6e18:	00000593          	li	a1,0
    6e1c:	e61ff06f          	j	6c7c <playMusicFile+0x3cc>
    6e20:	4019d993          	sra	s3,s3,0x1
    6e24:	f21ff06f          	j	6d44 <playMusicFile+0x494>
    6e28:	00000793          	li	a5,0
    6e2c:	f29ff06f          	j	6d54 <playMusicFile+0x4a4>
    6e30:	0004a783          	lw	a5,0(s1)
    6e34:	0407f793          	and	a5,a5,64
    6e38:	08078863          	beqz	a5,6ec8 <playMusicFile+0x618>
    6e3c:	080a9463          	bnez	s5,6ec4 <playMusicFile+0x614>
    6e40:	01812783          	lw	a5,24(sp)
    6e44:	02f12623          	sw	a5,44(sp)
    6e48:	02c12783          	lw	a5,44(sp)
    6e4c:	fff78713          	add	a4,a5,-1
    6e50:	02e12623          	sw	a4,44(sp)
    6e54:	fe079ae3          	bnez	a5,6e48 <playMusicFile+0x598>
    6e58:	0004a783          	lw	a5,0(s1)
    6e5c:	0407f793          	and	a5,a5,64
    6e60:	06078263          	beqz	a5,6ec4 <playMusicFile+0x614>
    6e64:	0004a783          	lw	a5,0(s1)
    6e68:	0407f793          	and	a5,a5,64
    6e6c:	fe079ce3          	bnez	a5,6e64 <playMusicFile+0x5b4>
    6e70:	01812783          	lw	a5,24(sp)
    6e74:	02f12623          	sw	a5,44(sp)
    6e78:	02c12a03          	lw	s4,44(sp)
    6e7c:	fffa0793          	add	a5,s4,-1
    6e80:	02f12623          	sw	a5,44(sp)
    6e84:	fe0a1ae3          	bnez	s4,6e78 <playMusicFile+0x5c8>
    6e88:	00000613          	li	a2,0
    6e8c:	000b0593          	mv	a1,s6
    6e90:	00040513          	mv	a0,s0
    6e94:	ffffb097          	auipc	ra,0xffffb
    6e98:	b48080e7          	jalr	-1208(ra) # 19dc <fl_fseek>
    6e9c:	06400593          	li	a1,100
    6ea0:	00000513          	li	a0,0
    6ea4:	ffffa097          	auipc	ra,0xffffa
    6ea8:	e30080e7          	jalr	-464(ra) # cd4 <display_set_cursor>
    6eac:	00007537          	lui	a0,0x7
    6eb0:	67850513          	add	a0,a0,1656 # 7678 <font+0x558>
    6eb4:	ffffa097          	auipc	ra,0xffffa
    6eb8:	1dc080e7          	jalr	476(ra) # 1090 <printf>
    6ebc:	ffffa097          	auipc	ra,0xffffa
    6ec0:	f58080e7          	jalr	-168(ra) # e14 <display_refresh>
    6ec4:	04000793          	li	a5,64
    6ec8:	000b8713          	mv	a4,s7
    6ecc:	00078a93          	mv	s5,a5
    6ed0:	c81ff06f          	j	6b50 <playMusicFile+0x2a0>

00006ed4 <displayAlbumMenu>:
    6ed4:	fe010113          	add	sp,sp,-32
    6ed8:	00112e23          	sw	ra,28(sp)
    6edc:	00812c23          	sw	s0,24(sp)
    6ee0:	00912a23          	sw	s1,20(sp)
    6ee4:	00058413          	mv	s0,a1
    6ee8:	01212823          	sw	s2,16(sp)
    6eec:	01312623          	sw	s3,12(sp)
    6ef0:	01412423          	sw	s4,8(sp)
    6ef4:	00050913          	mv	s2,a0
    6ef8:	ffffa097          	auipc	ra,0xffffa
    6efc:	dd0080e7          	jalr	-560(ra) # cc8 <display_framebuffer>
    6f00:	00004637          	lui	a2,0x4
    6f04:	00000593          	li	a1,0
    6f08:	ffffa097          	auipc	ra,0xffffa
    6f0c:	95c080e7          	jalr	-1700(ra) # 864 <memset>
    6f10:	00000593          	li	a1,0
    6f14:	00000513          	li	a0,0
    6f18:	ffffa097          	auipc	ra,0xffffa
    6f1c:	dbc080e7          	jalr	-580(ra) # cd4 <display_set_cursor>
    6f20:	00044503          	lbu	a0,0(s0)
    6f24:	00000593          	li	a1,0
    6f28:	000084b7          	lui	s1,0x8
    6f2c:	ffffa097          	auipc	ra,0xffffa
    6f30:	dbc080e7          	jalr	-580(ra) # ce8 <display_set_front_back_color>
    6f34:	00042503          	lw	a0,0(s0)
    6f38:	0ff00593          	li	a1,255
    6f3c:	a1c48493          	add	s1,s1,-1508 # 7a1c <musicAlbums>
    6f40:	00750513          	add	a0,a0,7
    6f44:	ffffa097          	auipc	ra,0xffffa
    6f48:	8c8080e7          	jalr	-1848(ra) # 80c <__modsi3>
    6f4c:	00a42023          	sw	a0,0(s0)
    6f50:	00007537          	lui	a0,0x7
    6f54:	68c50513          	add	a0,a0,1676 # 768c <font+0x56c>
    6f58:	ffffa097          	auipc	ra,0xffffa
    6f5c:	138080e7          	jalr	312(ra) # 1090 <printf>
    6f60:	00000413          	li	s0,0
    6f64:	000079b7          	lui	s3,0x7
    6f68:	00007a37          	lui	s4,0x7
    6f6c:	7349a783          	lw	a5,1844(s3) # 7734 <albumCount>
    6f70:	02f44463          	blt	s0,a5,6f98 <displayAlbumMenu+0xc4>
    6f74:	01812403          	lw	s0,24(sp)
    6f78:	01c12083          	lw	ra,28(sp)
    6f7c:	01412483          	lw	s1,20(sp)
    6f80:	01012903          	lw	s2,16(sp)
    6f84:	00c12983          	lw	s3,12(sp)
    6f88:	00812a03          	lw	s4,8(sp)
    6f8c:	02010113          	add	sp,sp,32
    6f90:	ffffa317          	auipc	t1,0xffffa
    6f94:	e8430067          	jr	-380(t1) # e14 <display_refresh>
    6f98:	03241a63          	bne	s0,s2,6fcc <displayAlbumMenu+0xf8>
    6f9c:	0ff00593          	li	a1,255
    6fa0:	00000513          	li	a0,0
    6fa4:	ffffa097          	auipc	ra,0xffffa
    6fa8:	d44080e7          	jalr	-700(ra) # ce8 <display_set_front_back_color>
    6fac:	00140413          	add	s0,s0,1
    6fb0:	00048613          	mv	a2,s1
    6fb4:	00040593          	mv	a1,s0
    6fb8:	6aca0513          	add	a0,s4,1708 # 76ac <font+0x58c>
    6fbc:	ffffa097          	auipc	ra,0xffffa
    6fc0:	0d4080e7          	jalr	212(ra) # 1090 <printf>
    6fc4:	06448493          	add	s1,s1,100
    6fc8:	fa5ff06f          	j	6f6c <displayAlbumMenu+0x98>
    6fcc:	00000593          	li	a1,0
    6fd0:	0ff00513          	li	a0,255
    6fd4:	fd1ff06f          	j	6fa4 <displayAlbumMenu+0xd0>

00006fd8 <displayMusicMenu>:
    6fd8:	fe010113          	add	sp,sp,-32
    6fdc:	00112e23          	sw	ra,28(sp)
    6fe0:	00812c23          	sw	s0,24(sp)
    6fe4:	00912a23          	sw	s1,20(sp)
    6fe8:	00050413          	mv	s0,a0
    6fec:	01212823          	sw	s2,16(sp)
    6ff0:	01312623          	sw	s3,12(sp)
    6ff4:	01412423          	sw	s4,8(sp)
    6ff8:	00058913          	mv	s2,a1
    6ffc:	ffffa097          	auipc	ra,0xffffa
    7000:	ccc080e7          	jalr	-820(ra) # cc8 <display_framebuffer>
    7004:	00004637          	lui	a2,0x4
    7008:	00000593          	li	a1,0
    700c:	ffffa097          	auipc	ra,0xffffa
    7010:	858080e7          	jalr	-1960(ra) # 864 <memset>
    7014:	00000593          	li	a1,0
    7018:	00000513          	li	a0,0
    701c:	ffffa097          	auipc	ra,0xffffa
    7020:	cb8080e7          	jalr	-840(ra) # cd4 <display_set_cursor>
    7024:	00000593          	li	a1,0
    7028:	0ff00513          	li	a0,255
    702c:	ffffa097          	auipc	ra,0xffffa
    7030:	cbc080e7          	jalr	-836(ra) # ce8 <display_set_front_back_color>
    7034:	00007537          	lui	a0,0x7
    7038:	00040593          	mv	a1,s0
    703c:	6b450513          	add	a0,a0,1716 # 76b4 <font+0x594>
    7040:	000084b7          	lui	s1,0x8
    7044:	ffffa097          	auipc	ra,0xffffa
    7048:	04c080e7          	jalr	76(ra) # 1090 <printf>
    704c:	e0448493          	add	s1,s1,-508 # 7e04 <musicFiles>
    7050:	00000413          	li	s0,0
    7054:	000079b7          	lui	s3,0x7
    7058:	00007a37          	lui	s4,0x7
    705c:	7309a783          	lw	a5,1840(s3) # 7730 <musicFileCount>
    7060:	02f44463          	blt	s0,a5,7088 <displayMusicMenu+0xb0>
    7064:	01812403          	lw	s0,24(sp)
    7068:	01c12083          	lw	ra,28(sp)
    706c:	01412483          	lw	s1,20(sp)
    7070:	01012903          	lw	s2,16(sp)
    7074:	00c12983          	lw	s3,12(sp)
    7078:	00812a03          	lw	s4,8(sp)
    707c:	02010113          	add	sp,sp,32
    7080:	ffffa317          	auipc	t1,0xffffa
    7084:	d9430067          	jr	-620(t1) # e14 <display_refresh>
    7088:	03241a63          	bne	s0,s2,70bc <displayMusicMenu+0xe4>
    708c:	0ff00593          	li	a1,255
    7090:	00000513          	li	a0,0
    7094:	ffffa097          	auipc	ra,0xffffa
    7098:	c54080e7          	jalr	-940(ra) # ce8 <display_set_front_back_color>
    709c:	00140413          	add	s0,s0,1
    70a0:	00048613          	mv	a2,s1
    70a4:	00040593          	mv	a1,s0
    70a8:	6aca0513          	add	a0,s4,1708 # 76ac <font+0x58c>
    70ac:	ffffa097          	auipc	ra,0xffffa
    70b0:	fe4080e7          	jalr	-28(ra) # 1090 <printf>
    70b4:	06448493          	add	s1,s1,100
    70b8:	fa5ff06f          	j	705c <displayMusicMenu+0x84>
    70bc:	00000593          	li	a1,0
    70c0:	0ff00513          	li	a0,255
    70c4:	fd1ff06f          	j	7094 <displayMusicMenu+0xbc>

000070c8 <needsRedraw>:
    70c8:	00000001                                ....

000070cc <currentPlayer>:
    70cc:	00000001                                ....

000070d0 <cmd17>:
    70d0:	00000051 00005500                       Q....U..

000070d8 <cmd16>:
    70d8:	02000050 00001500                       P.......

000070e0 <acmd41>:
    70e0:	00004069 00000100                       i@......

000070e8 <cmd55>:
    70e8:	00000077 00000100                       w.......

000070f0 <cmd8>:
    70f0:	01000048 000087aa                       H.......

000070f8 <cmd0>:
    70f8:	00000040 00009500                       @.......

00007100 <AUDIO>:
    7100:	00018000                                ....

00007104 <DISPLAY>:
    7104:	00014000                                .@..

00007108 <BUTTONS>:
    7108:	00010100                                ....

0000710c <SDCARD>:
    710c:	00010080                                ....

00007110 <UART>:
    7110:	00010020                                 ...

00007114 <OLED_RST>:
    7114:	00010010                                ....

00007118 <OLED>:
    7118:	00010008                                ....

0000711c <LEDS>:
    711c:	00010004                                ....

00007120 <font>:
    7120:	00000000 00002f00 00030000 14000003     ...../..........
    7130:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    7140:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    7150:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    7160:	00080800 00200000 20000000 02040810     ...... .... ....
    7170:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    7180:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    7190:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    71a0:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    71b0:	00141400 0a110000 01000004 0007052d     ............-...
    71c0:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    71d0:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    71e0:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    71f0:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    7200:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    7210:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    7220:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    7230:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    7240:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    7250:	003f2102 01020000 20000201 00000020     .!?........  ...
    7260:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    7270:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    7280:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    7290:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    72a0:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    72b0:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    72c0:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    72d0:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    72e0:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    72f0:	043f2100 02010000 00000102 00000000     .!?.............
    7300:	00000001 00000003 00000005 00000007     ................
    7310:	00000009 0000000e 00000010 00000012     ................
    7320:	00000014 00000016 00000018 0000001c     ................
    7330:	0000001e 00006272 6174532f 70757472     ....rb../Startup
    7340:	6174532f 70757472 616d695f 722e6567     /Startup_image.r
    7350:	00007761 72617453 20707574 67616d69     aw..Startup imag
    7360:	6f6e2065 6f662074 2e646e75 0000000a     e not found.....
    7370:	6174532f 70757472 6174532f 70757472     /Startup/Startup
    7380:	73756d5f 722e6369 00007761 656c6966     _music.raw..file
    7390:	746f6e20 756f6620 0a2e646e 00000000      not found......
    73a0:	74696e49 696c6169 676e697a 202e2e2e     Initializing... 
    73b0:	00000000 656e6f64 00000a2e 61206f4e     ....done....No a
    73c0:	6d75626c 6f662073 2e646e75 0000000a     lbums found.....
    73d0:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    73e0:	00000000 33544146 00000032 31544146     ....FAT32...FAT1
    73f0:	00000036 20544146 61746564 3a736c69     6...FAT details:
    7400:	00000a0d 70795420 253d2065 00000073     .... Type =%s...
    7410:	6f6f5220 69442074 69462072 20747372      Root Dir First 
    7420:	73756c43 20726574 7825203d 00000a0d     Cluster = %x....
    7430:	54414620 67654220 4c206e69 3d204142      FAT Begin LBA =
    7440:	25783020 000a0d78 756c4320 72657473      0x%x... Cluster
    7450:	67654220 4c206e69 3d204142 25783020      Begin LBA = 0x%
    7460:	000a0d78 63655320 73726f74 72655020     x... Sectors Per
    7470:	756c4320 72657473 25203d20 000a0d64      Cluster = %d...
    7480:	5f544146 203a5346 6f727245 6f632072     FAT_FS: Error co
    7490:	20646c75 20746f6e 64616f6c 54414620     uld not load FAT
    74a0:	74656420 736c6961 64252820 0a0d2129      details (%d)!..
    74b0:	00000000 69440a0d 74636572 2079726f     ......Directory 
    74c0:	0a0d7325 00000000 3c207325 3e524944     %s......%s <DIR>
    74d0:	00000a0d 5b207325 62206425 73657479     ....%s [%d bytes
    74e0:	000a0d5d 00000072 00205820 00204f20     ]...r... X . O .
    74f0:	00202a20 00202d20 0000007c 0000002d      * . - .|...-...
    7500:	0000002b 3d3d3d3d 6c50203d 72657961     +...===== Player
    7510:	57205820 21736e69 3d3d3d20 00203d3d      X Wins! ===== .
    7520:	6d61472f 6f792f65 69775f75 61722e6e     /Game/you_win.ra
    7530:	00000077 3d3d3d3d 6c50203d 72657961     w...===== Player
    7540:	57204f20 21736e69 3d3d3d3d 0000203d      O Wins!===== ..
    7550:	6d61472f 6f792f65 6f6c5f75 722e6573     /Game/you_lose.r
    7560:	00007761 3d3d3d3d 4920203d 20732774     aw..=====  It's 
    7570:	72442061 20217761 3d3d3d3d 0000203d     a Draw! ===== ..
    7580:	73756d2f 00006369 73756d2f 002f6369     /music../music/.
    7590:	0000003d 00000020 0000005b 2564255d     =... ...[...]%d%
    75a0:	00000a25 656c6946 746f6e20 756f6620     %...File not fou
    75b0:	203a646e 000a7325 0000002f 616d692f     nd: %s../.../ima
    75c0:	002f6567 656c6946 746f6e20 756f6620     ge/.File not fou
    75d0:	0a2e646e 00000000 63617254 203a206b     nd......Track : 
    75e0:	410a7325 6d75626c 25203a20 00000a73     %s.Album : %s...
    75f0:	74617453 203a7375 79616c50 20676e69     Status: Playing 
    7600:	20202020 20202020 20202020 0a202020                    .
    7610:	00000000 74617453 203a7375 77726f46     ....Status: Forw
    7620:	65647261 20202064 20202020 20202020     arded           
    7630:	20202020 00002020 74617453 203a7375           ..Status: 
    7640:	6f776552 20646e75 20202020 20202020     Rewound         
    7650:	20202020 00202020 74617453 203a7375            .Status: 
    7660:	73756150 20206465 20202020 20202020     Paused          
    7670:	20202020 00002020 74617453 203a7375           ..Status: 
    7680:	79616c50 0a676e69 00000000 20202020     Playing.....    
    7690:	3d3d3d3d 6c41203d 736d7562 3d3d3d20     ===== Albums ===
    76a0:	20203d3d 0a0a2020 00000000 203e6425     ==    ......%d> 
    76b0:	000a7325 75626c41 25203a6d 000a0a73     %s..Album: %s...

000076c0 <_cluster_size_table16>:
    76c0:	00007fa8 00000002 00040000 00000004     ................
    76d0:	00080000 00000008 00100000 00000010     ................
    76e0:	00200000 00000020 00400000 00000040     .. . .....@.@...
    76f0:	00800000 00000080 00000000 00000000     ................

00007700 <_cluster_size_table32>:
    7700:	00082000 00000001 01000000 00000008     . ..............
    7710:	02000000 00000010 04000000 00000020     ............ ...
    7720:	ffffffff 00000040 00000000 00000000     ....@...........

00007730 <musicFileCount>:
    7730:	00000000                                ....

00007734 <albumCount>:
    7734:	00000000                                ....

00007738 <sdcard_while_loading_callback>:
    7738:	00000000                                ....

0000773c <palette_generated.0>:
    773c:	00000000                                ....

00007740 <back_color>:
	...

00007741 <front_color>:
    7741:	                                         ...

00007744 <cursor_y>:
    7744:	00000000                                ....

00007748 <cursor_x>:
    7748:	00000000                                ....

0000774c <f_putchar>:
    774c:	00000000                                ....

00007750 <_free_file_list>:
	...

00007758 <_open_file_list>:
	...

00007760 <_filelib_valid>:
    7760:	00000000                                ....

00007764 <_filelib_init>:
    7764:	00000000                                ....

00007768 <moveCounter.0>:
    7768:	00000000                                ....

0000776c <selectedCol>:
    776c:	00000000                                ....

00007770 <selectedRow>:
    7770:	00000000                                ....

00007774 <gameOver>:
    7774:	00000000                                ....

Disassembly of section .text.startup:

00007778 <main>:
    7778:	000017b7          	lui	a5,0x1
    777c:	fc010113          	add	sp,sp,-64
    7780:	cfc78793          	add	a5,a5,-772 # cfc <display_putchar>
    7784:	00007737          	lui	a4,0x7
    7788:	74f72623          	sw	a5,1868(a4) # 774c <f_putchar>
    778c:	02112e23          	sw	ra,60(sp)
    7790:	03412423          	sw	s4,40(sp)
    7794:	02812c23          	sw	s0,56(sp)
    7798:	02912a23          	sw	s1,52(sp)
    779c:	03212823          	sw	s2,48(sp)
    77a0:	03312623          	sw	s3,44(sp)
    77a4:	03512223          	sw	s5,36(sp)
    77a8:	03612023          	sw	s6,32(sp)
    77ac:	01712e23          	sw	s7,28(sp)
    77b0:	ffff9097          	auipc	ra,0xffff9
    77b4:	2e4080e7          	jalr	740(ra) # a94 <oled_init>
    77b8:	ffff9097          	auipc	ra,0xffff9
    77bc:	2e8080e7          	jalr	744(ra) # aa0 <oled_fullscreen>
    77c0:	ffff9097          	auipc	ra,0xffff9
    77c4:	508080e7          	jalr	1288(ra) # cc8 <display_framebuffer>
    77c8:	00004637          	lui	a2,0x4
    77cc:	00000593          	li	a1,0
    77d0:	ffff9097          	auipc	ra,0xffff9
    77d4:	094080e7          	jalr	148(ra) # 864 <memset>
    77d8:	ffff9097          	auipc	ra,0xffff9
    77dc:	63c080e7          	jalr	1596(ra) # e14 <display_refresh>
    77e0:	00000593          	li	a1,0
    77e4:	00000513          	li	a0,0
    77e8:	ffff9097          	auipc	ra,0xffff9
    77ec:	4ec080e7          	jalr	1260(ra) # cd4 <display_set_cursor>
    77f0:	00000593          	li	a1,0
    77f4:	0ff00513          	li	a0,255
    77f8:	ffff9097          	auipc	ra,0xffff9
    77fc:	4f0080e7          	jalr	1264(ra) # ce8 <display_set_front_back_color>
    7800:	00007537          	lui	a0,0x7
    7804:	3a050513          	add	a0,a0,928 # 73a0 <font+0x280>
    7808:	ffffa097          	auipc	ra,0xffffa
    780c:	888080e7          	jalr	-1912(ra) # 1090 <printf>
    7810:	ffff9097          	auipc	ra,0xffff9
    7814:	604080e7          	jalr	1540(ra) # e14 <display_refresh>
    7818:	ffff9097          	auipc	ra,0xffff9
    781c:	dd0080e7          	jalr	-560(ra) # 5e8 <sdcard_init>
    7820:	ffffa097          	auipc	ra,0xffffa
    7824:	138080e7          	jalr	312(ra) # 1958 <fl_init>
    7828:	fffff097          	auipc	ra,0xfffff
    782c:	bf8080e7          	jalr	-1032(ra) # 6420 <initializeSDCard>
    7830:	00007537          	lui	a0,0x7
    7834:	3b450513          	add	a0,a0,948 # 73b4 <font+0x294>
    7838:	ffffa097          	auipc	ra,0xffffa
    783c:	858080e7          	jalr	-1960(ra) # 1090 <printf>
    7840:	ffff9097          	auipc	ra,0xffff9
    7844:	5d4080e7          	jalr	1492(ra) # e14 <display_refresh>
    7848:	00007a37          	lui	s4,0x7
    784c:	ffff8097          	auipc	ra,0xffff8
    7850:	7d0080e7          	jalr	2000(ra) # 1c <welcome_screen>
    7854:	fffff097          	auipc	ra,0xfffff
    7858:	c88080e7          	jalr	-888(ra) # 64dc <listAlbums>
    785c:	734a2783          	lw	a5,1844(s4) # 7734 <albumCount>
    7860:	04079263          	bnez	a5,78a4 <main+0x12c>
    7864:	00007537          	lui	a0,0x7
    7868:	3bc50513          	add	a0,a0,956 # 73bc <font+0x29c>
    786c:	ffffa097          	auipc	ra,0xffffa
    7870:	824080e7          	jalr	-2012(ra) # 1090 <printf>
    7874:	03812403          	lw	s0,56(sp)
    7878:	03c12083          	lw	ra,60(sp)
    787c:	03412483          	lw	s1,52(sp)
    7880:	03012903          	lw	s2,48(sp)
    7884:	02c12983          	lw	s3,44(sp)
    7888:	02812a03          	lw	s4,40(sp)
    788c:	02412a83          	lw	s5,36(sp)
    7890:	02012b03          	lw	s6,32(sp)
    7894:	01c12b83          	lw	s7,28(sp)
    7898:	04010113          	add	sp,sp,64
    789c:	ffff9317          	auipc	t1,0xffff9
    78a0:	57830067          	jr	1400(t1) # e14 <display_refresh>
    78a4:	000077b7          	lui	a5,0x7
    78a8:	1087a903          	lw	s2,264(a5) # 7108 <BUTTONS>
    78ac:	00012623          	sw	zero,12(sp)
    78b0:	00000493          	li	s1,0
    78b4:	00008b37          	lui	s6,0x8
    78b8:	00007ab7          	lui	s5,0x7
    78bc:	ffff9097          	auipc	ra,0xffff9
    78c0:	8cc080e7          	jalr	-1844(ra) # 188 <checkEasterEgg>
    78c4:	00c10593          	add	a1,sp,12
    78c8:	00048513          	mv	a0,s1
    78cc:	fffff097          	auipc	ra,0xfffff
    78d0:	608080e7          	jalr	1544(ra) # 6ed4 <displayAlbumMenu>
    78d4:	00092783          	lw	a5,0(s2)
    78d8:	0107f793          	and	a5,a5,16
    78dc:	00078c63          	beqz	a5,78f4 <main+0x17c>
    78e0:	734a2583          	lw	a1,1844(s4)
    78e4:	00148513          	add	a0,s1,1
    78e8:	ffff9097          	auipc	ra,0xffff9
    78ec:	f24080e7          	jalr	-220(ra) # 80c <__modsi3>
    78f0:	00050493          	mv	s1,a0
    78f4:	00092783          	lw	a5,0(s2)
    78f8:	0087f793          	and	a5,a5,8
    78fc:	00078e63          	beqz	a5,7918 <main+0x1a0>
    7900:	734a2583          	lw	a1,1844(s4)
    7904:	fff48513          	add	a0,s1,-1
    7908:	00b50533          	add	a0,a0,a1
    790c:	ffff9097          	auipc	ra,0xffff9
    7910:	f00080e7          	jalr	-256(ra) # 80c <__modsi3>
    7914:	00050493          	mv	s1,a0
    7918:	00092783          	lw	a5,0(s2)
    791c:	0407f793          	and	a5,a5,64
    7920:	f8078ee3          	beqz	a5,78bc <main+0x144>
    7924:	00092403          	lw	s0,0(s2)
    7928:	04047413          	and	s0,s0,64
    792c:	fe041ce3          	bnez	s0,7924 <main+0x1ac>
    7930:	00149793          	sll	a5,s1,0x1
    7934:	009787b3          	add	a5,a5,s1
    7938:	00379793          	sll	a5,a5,0x3
    793c:	009787b3          	add	a5,a5,s1
    7940:	00279793          	sll	a5,a5,0x2
    7944:	a1cb0993          	add	s3,s6,-1508 # 7a1c <musicAlbums>
    7948:	00f989b3          	add	s3,s3,a5
    794c:	00098513          	mv	a0,s3
    7950:	fffff097          	auipc	ra,0xfffff
    7954:	c8c080e7          	jalr	-884(ra) # 65dc <listAlbumFiles>
    7958:	730aa783          	lw	a5,1840(s5) # 7730 <musicFileCount>
    795c:	a1cb0b93          	add	s7,s6,-1508
    7960:	f4f05ee3          	blez	a5,78bc <main+0x144>
    7964:	ffff9097          	auipc	ra,0xffff9
    7968:	824080e7          	jalr	-2012(ra) # 188 <checkEasterEgg>
    796c:	00040593          	mv	a1,s0
    7970:	00098513          	mv	a0,s3
    7974:	fffff097          	auipc	ra,0xfffff
    7978:	664080e7          	jalr	1636(ra) # 6fd8 <displayMusicMenu>
    797c:	00092783          	lw	a5,0(s2)
    7980:	0107f793          	and	a5,a5,16
    7984:	00078c63          	beqz	a5,799c <main+0x224>
    7988:	730aa583          	lw	a1,1840(s5)
    798c:	00140513          	add	a0,s0,1
    7990:	ffff9097          	auipc	ra,0xffff9
    7994:	e7c080e7          	jalr	-388(ra) # 80c <__modsi3>
    7998:	00050413          	mv	s0,a0
    799c:	00092783          	lw	a5,0(s2)
    79a0:	0087f793          	and	a5,a5,8
    79a4:	00078e63          	beqz	a5,79c0 <main+0x248>
    79a8:	730aa583          	lw	a1,1840(s5)
    79ac:	fff40513          	add	a0,s0,-1
    79b0:	00b50533          	add	a0,a0,a1
    79b4:	ffff9097          	auipc	ra,0xffff9
    79b8:	e58080e7          	jalr	-424(ra) # 80c <__modsi3>
    79bc:	00050413          	mv	s0,a0
    79c0:	00092783          	lw	a5,0(s2)
    79c4:	0407f793          	and	a5,a5,64
    79c8:	02078c63          	beqz	a5,7a00 <main+0x288>
    79cc:	00092783          	lw	a5,0(s2)
    79d0:	0407f793          	and	a5,a5,64
    79d4:	fe079ce3          	bnez	a5,79cc <main+0x254>
    79d8:	00141793          	sll	a5,s0,0x1
    79dc:	008787b3          	add	a5,a5,s0
    79e0:	00379793          	sll	a5,a5,0x3
    79e4:	008787b3          	add	a5,a5,s0
    79e8:	3e8b8593          	add	a1,s7,1000
    79ec:	00279793          	sll	a5,a5,0x2
    79f0:	00f585b3          	add	a1,a1,a5
    79f4:	00098513          	mv	a0,s3
    79f8:	fffff097          	auipc	ra,0xfffff
    79fc:	eb8080e7          	jalr	-328(ra) # 68b0 <playMusicFile>
    7a00:	00092783          	lw	a5,0(s2)
    7a04:	0207f793          	and	a5,a5,32
    7a08:	f4078ee3          	beqz	a5,7964 <main+0x1ec>
    7a0c:	00092783          	lw	a5,0(s2)
    7a10:	0207f793          	and	a5,a5,32
    7a14:	fe079ce3          	bnez	a5,7a0c <main+0x294>
    7a18:	ea5ff06f          	j	78bc <main+0x144>
