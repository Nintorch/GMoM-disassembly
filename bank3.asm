;-------------------------------------------------------------------------------
;	Bank 3
;-------------------------------------------------------------------------------

			.logical $8000
			BankHeader

;-------------------------------------------------------------------------------
;	Cross bank jump labels
;-------------------------------------------------------------------------------

			jmp PRG03_adb7			; $8004: 4c b7 ad

;-------------------------------------------------------------------------------
PRG03_8007:
			jmp PRG03_9367			; $8007: 4c 67 93

;-------------------------------------------------------------------------------
PRG03_800a:
			jmp PRG03_a680			; $800a: 4c 80 a6

;-------------------------------------------------------------------------------
			jmp PRG03_965b			; $800d: 4c 5b 96

;-------------------------------------------------------------------------------
			jmp $0000			; $8010: 4c 00 00

;-------------------------------------------------------------------------------
			jmp $0000			; $8013: 4c 00 00

;-------------------------------------------------------------------------------
			jmp $0000			; $8016: 4c 00 00

;-------------------------------------------------------------------------------
;	The bank code
;-------------------------------------------------------------------------------

PRG03_8019:
			.byte $97, $9e, $a5, $ac	; $8019: 97 9e a5 ac	 Data
			.byte $b3, $ba, $c1, $c8	; $801d: b3 ba c1 c8	 Data
			.byte $cf, $d6, $dd, $e4	; $8021: cf d6 dd e4	 Data
			.byte $eb, $f2, $f9, $00	; $8025: eb f2 f9 00	 Data
			.byte $07, $0e, $15, $1c	; $8029: 07 0e 15 1c	 Data
			.byte $23, $2a, $31, $38	; $802d: 23 2a 31 38	 Data
			.byte $3f, $46, $4d, $54	; $8031: 3f 46 4d 54	 Data
			.byte $5b, $62, $69, $70	; $8035: 5b 62 69 70	 Data
			.byte $77, $7e, $85, $8c	; $8039: 77 7e 85 8c	 Data
			.byte $93, $9a, $a1, $a8	; $803d: 93 9a a1 a8	 Data
			.byte $af, $b6, $bd, $c4	; $8041: af b6 bd c4	 Data
			.byte $cb, $d2, $d9, $e0	; $8045: cb d2 d9 e0	 Data
			.byte $e7, $ee, $f5, $fc	; $8049: e7 ee f5 fc	 Data
			.byte $03, $0a, $11, $18	; $804d: 03 0a 11 18	 Data
			.byte $1f, $26, $2d, $34	; $8051: 1f 26 2d 34	 Data
			.byte $3b, $42, $49, $50	; $8055: 3b 42 49 50	 Data
			.byte $57, $5e, $65, $6c	; $8059: 57 5e 65 6c	 Data
			.byte $73, $7a, $81, $88	; $805d: 73 7a 81 88	 Data
			.byte $8f, $96, $9d, $a4	; $8061: 8f 96 9d a4	 Data
			.byte $ab, $b2, $b9, $c0	; $8065: ab b2 b9 c0	 Data
			.byte $c7, $ce, $d5, $dc	; $8069: c7 ce d5 dc	 Data
			.byte $e3, $ea, $f1, $f8	; $806d: e3 ea f1 f8	 Data
			.byte $ff, $06, $0d, $14	; $8071: ff 06 0d 14	 Data
			.byte $1b, $22, $29, $30	; $8075: 1b 22 29 30	 Data
			.byte $37, $3e, $45, $4c	; $8079: 37 3e 45 4c	 Data
			.byte $53, $5a, $61, $68	; $807d: 53 5a 61 68	 Data
			.byte $6f, $76, $7d, $84	; $8081: 6f 76 7d 84	 Data
			.byte $8b, $92, $99, $a0	; $8085: 8b 92 99 a0	 Data
			.byte $a7, $ae, $b5, $bc	; $8089: a7 ae b5 bc	 Data
			.byte $c3, $ca, $d1, $d8	; $808d: c3 ca d1 d8	 Data
			.byte $df, $e6, $ed, $f4	; $8091: df e6 ed f4	 Data
			.byte $fb, $02, $09, $10	; $8095: fb 02 09 10	 Data
			.byte $11, $1c, $27, $32	; $8099: 11 1c 27 32	 Data
			.byte $3d, $48, $53, $5e	; $809d: 3d 48 53 5e	 Data
			.byte $69, $74, $7f, $8a	; $80a1: 69 74 7f 8a	 Data
			.byte $95, $9c, $a3, $aa	; $80a5: 95 9c a3 aa	 Data
			.byte $b5, $c0, $cb, $d6	; $80a9: b5 c0 cb d6	 Data
			.byte $e1, $ec, $f7, $02	; $80ad: e1 ec f7 02	 Data
			.byte $0d, $18, $1f, $26	; $80b1: 0d 18 1f 26	 Data
			.byte $2d, $34, $3b, $42	; $80b5: 2d 34 3b 42	 Data
			.byte $49, $54, $5f, $6a	; $80b9: 49 54 5f 6a	 Data
			.byte $75, $80, $8b, $94	; $80bd: 75 80 8b 94	 Data
			.byte $9d, $a6, $af, $b8	; $80c1: 9d a6 af b8	 Data
			.byte $c1, $ca, $d3, $dc	; $80c5: c1 ca d3 dc	 Data
			.byte $dc, $e5, $ee, $f5	; $80c9: dc e5 ee f5	 Data
			.byte $fc, $03, $0a, $11	; $80cd: fc 03 0a 11	 Data
			.byte $18, $1f, $26, $2d	; $80d1: 18 1f 26 2d	 Data
			.byte $34, $3b, $42, $49	; $80d5: 34 3b 42 49	 Data
			.byte $50, $57, $5e, $65	; $80d9: 50 57 5e 65	 Data
			.byte $6c, $73, $7c, $85	; $80dd: 6c 73 7c 85	 Data
			.byte $8e, $97, $a0, $a9	; $80e1: 8e 97 a0 a9	 Data
			.byte $b2, $bb, $c4, $cd	; $80e5: b2 bb c4 cd	 Data
			.byte $d6, $df, $e6, $ed	; $80e9: d6 df e6 ed	 Data
			.byte $f4, $fd, $06, $0f	; $80ed: f4 fd 06 0f	 Data
			.byte $18, $21, $2a, $33	; $80f1: 18 21 2a 33	 Data
			.byte $3c, $45, $4e, $57	; $80f5: 3c 45 4e 57	 Data
			.byte $5e, $65, $6c, $73	; $80f9: 5e 65 6c 73	 Data
			.byte $7a, $81, $88, $8f	; $80fd: 7a 81 88 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $8101: 8f 8f 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $8105: 8f 8f 8f 8f	 Data
			.byte $17, $1e, $25, $2c	; $8109: 17 1e 25 2c	 Data
			.byte $33, $3a, $41, $48	; $810d: 33 3a 41 48	 Data
			.byte $4f, $56, $5d, $64	; $8111: 4f 56 5d 64	 Data
			.byte $6b, $72, $79, $80	; $8115: 6b 72 79 80	 Data here lol
PRG03_8119:
			.byte $82, $82, $82, $82	; $8119: 82 82 82 82	 Data
			.byte $82, $82, $82, $82	; $811d: 82 82 82 82	 Data
			.byte $82, $82, $82, $82	; $8121: 82 82 82 82	 Data
			.byte $82, $82, $82, $83	; $8125: 82 82 82 83	 Data
			.byte $83, $83, $83, $83	; $8129: 83 83 83 83	 Data
			.byte $83, $83, $83, $83	; $812d: 83 83 83 83	 Data
			.byte $83, $83, $83, $83	; $8131: 83 83 83 83	 Data
			.byte $83, $83, $83, $83	; $8135: 83 83 83 83	 Data
			.byte $83, $83, $83, $83	; $8139: 83 83 83 83	 Data
			.byte $83, $83, $83, $83	; $813d: 83 83 83 83	 Data
			.byte $83, $83, $83, $83	; $8141: 83 83 83 83	 Data
			.byte $83, $83, $83, $83	; $8145: 83 83 83 83	 Data
			.byte $83, $83, $83, $83	; $8149: 83 83 83 83	 Data
			.byte $84, $84, $84, $84	; $814d: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $8151: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $8155: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $8159: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $815d: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $8161: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $8165: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $8169: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $816d: 84 84 84 84	 Data
			.byte $84, $85, $85, $85	; $8171: 84 85 85 85	 Data
			.byte $85, $85, $85, $85	; $8175: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $8179: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $817d: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $8181: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $8185: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $8189: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $818d: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $8191: 85 85 85 85	 Data
			.byte $85, $86, $86, $86	; $8195: 85 86 86 86	 Data
			.byte $8e, $8e, $8e, $8e	; $8199: 8e 8e 8e 8e	 Data
			.byte $8e, $8e, $8e, $8e	; $819d: 8e 8e 8e 8e	 Data
			.byte $8e, $8e, $8e, $8e	; $81a1: 8e 8e 8e 8e	 Data
			.byte $8e, $8e, $8e, $8e	; $81a5: 8e 8e 8e 8e	 Data
			.byte $8e, $8e, $8e, $8e	; $81a9: 8e 8e 8e 8e	 Data
			.byte $8e, $8e, $8e, $8f	; $81ad: 8e 8e 8e 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $81b1: 8f 8f 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $81b5: 8f 8f 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $81b9: 8f 8f 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $81bd: 8f 8f 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $81c1: 8f 8f 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $81c5: 8f 8f 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $81c9: 8f 8f 8f 8f	 Data
			.byte $8f, $90, $90, $90	; $81cd: 8f 90 90 90	 Data
			.byte $90, $90, $90, $90	; $81d1: 90 90 90 90	 Data
			.byte $90, $90, $90, $90	; $81d5: 90 90 90 90	 Data
			.byte $90, $90, $90, $90	; $81d9: 90 90 90 90	 Data
			.byte $90, $90, $90, $90	; $81dd: 90 90 90 90	 Data
			.byte $90, $90, $90, $90	; $81e1: 90 90 90 90	 Data
			.byte $90, $90, $90, $90	; $81e5: 90 90 90 90	 Data
			.byte $90, $90, $90, $90	; $81e9: 90 90 90 90	 Data
			.byte $90, $90, $91, $91	; $81ed: 90 90 91 91	 Data
			.byte $91, $91, $91, $91	; $81f1: 91 91 91 91	 Data
			.byte $91, $91, $91, $91	; $81f5: 91 91 91 91	 Data
			.byte $91, $91, $91, $91	; $81f9: 91 91 91 91	 Data
			.byte $91, $91, $91, $91	; $81fd: 91 91 91 91	 Data
			.byte $91, $91, $91, $91	; $8201: 91 91 91 91	 Data
			.byte $91, $91, $91, $91	; $8205: 91 91 91 91	 Data
			.byte $86, $86, $86, $86	; $8209: 86 86 86 86	 Data
			.byte $86, $86, $86, $86	; $820d: 86 86 86 86	 Data
			.byte $86, $86, $86, $86	; $8211: 86 86 86 86	 Data
			.byte $86, $86, $86, $86	; $8215: 86 86 86 86	 Data

;-------------------------------------------------------------------------------
PRG03_8219:
			lda #$00				; $8219: a9 00
			sta $a7			; $821b: 85 a7
PRG03_821d:
			ldx $a7			; $821d: a6 a7
			ldy $0400,x		; $821f: bc 00 04
			beq PRG03_8224			; $8222: f0 00
PRG03_8224:
			lda #$82				; $8224: a9 82
			pha				; $8226: 48
			lda #$32				; $8227: a9 32
			pha				; $8229: 48
			lda PRG03_8287,y			; $822a: b9 87 82
			pha				; $822d: 48
			lda PRG03_8277,y			; $822e: b9 77 82
			pha				; $8231: 48
			rts				; $8232: 60

;-------------------------------------------------------------------------------
			jsr PRG03_9f72			; $8233: 20 72 9f
			inc $a7			; $8236: e6 a7
			lda $a7			; $8238: a5 a7
			cmp #$18				; $823a: c9 18
			bne PRG03_821d			; $823c: d0 df
			rts				; $823e: 60

;-------------------------------------------------------------------------------
			lda $0418,x		; $823f: bd 18 04
			and #$80				; $8242: 29 80
			bne PRG03_8247			; $8244: d0 01
			rts				; $8246: 60

;-------------------------------------------------------------------------------
PRG03_8247:
			lda #$00				; $8247: a9 00
			sta $0400,x		; $8249: 9d 00 04
			sta $0418,x		; $824c: 9d 18 04
			sta $0430,x		; $824f: 9d 30 04
			sta $0448,x		; $8252: 9d 48 04
			sta $0460,x		; $8255: 9d 60 04
			sta $0478,x		; $8258: 9d 78 04
			sta $0490,x		; $825b: 9d 90 04
			sta $04a8,x		; $825e: 9d a8 04
			sta $04c0,x		; $8261: 9d c0 04
			sta $04d8,x		; $8264: 9d d8 04
			sta $04f0,x		; $8267: 9d f0 04
			sta $0508,x		; $826a: 9d 08 05
			sta $0520,x		; $826d: 9d 20 05
			sta $0538,x		; $8270: 9d 38 05
			sta $0550,x		; $8273: 9d 50 05
			rts				; $8276: 60

;-------------------------------------------------------------------------------
			TableStart
			TableInsert $823e
			TableInsert $a43d
			TableInsert $a504
			TableInsert $a53d
			TableInsert $a571
			TableInsert $a5a5
			TableInsert $a5de
			TableInsert $a624
			TableInsert $a884
			TableInsert $a96e
			TableInsert $a9b4
			TableInsert $a9fa
			TableInsert $aa40
			TableInsert $aa87
			TableInsert $aacd
			TableInsert $ab13
			
PRG03_8277:	.byte <CurrentTable
PRG03_8287:	.byte >CurrentTable

			.byte $0d, $a9, $8a, $1a	; $8297: 0d a9 8a 1a	 Data
			.byte $87, $8a, $86, $0d	; $829b: 87 8a 86 0d	 Data
			.byte $a9, $8a, $27, $87	; $829f: a9 8a 27 87	 Data
			.byte $8a, $86, $0d, $a9	; $82a3: 8a 86 0d a9	 Data
			.byte $8a, $34, $87, $8a	; $82a7: 8a 34 87 8a	 Data
			.byte $86, $0d, $a9, $8a	; $82ab: 86 0d a9 8a	 Data
			.byte $41, $87, $8a, $86	; $82af: 41 87 8a 86	 Data
			.byte $0d, $a9, $8a, $4e	; $82b3: 0d a9 8a 4e	 Data
			.byte $87, $8a, $86, $0b	; $82b7: 87 8a 86 0b	 Data
			.byte $c3, $8a, $5b, $87	; $82bb: c3 8a 5b 87	 Data
			.byte $8a, $86, $0b, $c3	; $82bf: 8a 86 0b c3	 Data
			.byte $8a, $66, $87, $8a	; $82c3: 8a 66 87 8a	 Data
			.byte $86, $0c, $c3, $8a	; $82c7: 86 0c c3 8a	 Data
			.byte $71, $87, $8a, $86	; $82cb: 71 87 8a 86	 Data
			.byte $0b, $c3, $8a, $7d	; $82cf: 0b c3 8a 7d	 Data
			.byte $87, $8a, $86, $0b	; $82d3: 87 8a 86 0b	 Data
			.byte $c3, $8a, $88, $87	; $82d7: c3 8a 88 87	 Data
			.byte $8a, $86, $0b, $c3	; $82db: 8a 86 0b c3	 Data
			.byte $8a, $93, $87, $8a	; $82df: 8a 93 87 8a	 Data
			.byte $86, $0c, $c3, $8a	; $82e3: 86 0c c3 8a	 Data
			.byte $9e, $87, $8a, $86	; $82e7: 9e 87 8a 86	 Data
			.byte $0b, $c3, $8a, $aa	; $82eb: 0b c3 8a aa	 Data
			.byte $87, $8a, $86, $0e	; $82ef: 87 8a 86 0e	 Data
			.byte $db, $8a, $b5, $87	; $82f3: db 8a b5 87	 Data
			.byte $8a, $86, $0e, $f7	; $82f7: 8a 86 0e f7	 Data
			.byte $8a, $c3, $87, $8a	; $82fb: 8a c3 87 8a	 Data
			.byte $86, $0e, $db, $8a	; $82ff: 86 0e db 8a	 Data
			.byte $d1, $87, $8a, $86	; $8303: d1 87 8a 86	 Data
			.byte $0e, $f7, $8a, $df	; $8307: 0e f7 8a df	 Data
			.byte $87, $8a, $86, $0c	; $830b: 87 8a 86 0c	 Data
			.byte $13, $8b, $ed, $87	; $830f: 13 8b ed 87	 Data
			.byte $a5, $86, $0c, $2b	; $8313: a5 86 0c 2b	 Data
			.byte $8b, $f9, $87, $8a	; $8317: 8b f9 87 8a	 Data
			.byte $86, $0d, $43, $8b	; $831b: 86 0d 43 8b	 Data
			.byte $05, $88, $a4, $86	; $831f: 05 88 a4 86	 Data
			.byte $0c, $2b, $8b, $12	; $8323: 0c 2b 8b 12	 Data
			.byte $88, $8a, $86, $0b	; $8327: 88 8a 86 0b	 Data
			.byte $5d, $8b, $1e, $88	; $832b: 5d 8b 1e 88	 Data
			.byte $8a, $86, $0c, $75	; $832f: 8a 86 0c 75	 Data
			.byte $8b, $2a, $88	; $8333: 8b 2a 88		Data
PRG03_8336:
			.byte $8a, $86, $0b, $5d	; $8336: 8a 86 0b 5d	 Data
			.byte $8b, $37, $88, $8a	; $833a: 8b 37 88 8a	 Data
			.byte $86, $0c, $75, $8b	; $833e: 86 0c 75 8b	 Data
			.byte $43, $88, $8a, $86	; $8342: 43 88 8a 86	 Data
			.byte $01, $8f, $8b, $50	; $8346: 01 8f 8b 50	 Data
			.byte $88, $b1, $86, $0f	; $834a: 88 b1 86 0f	 Data
			.byte $91, $8b, $51, $88	; $834e: 91 8b 51 88	 Data
			.byte $b2, $86, $01, $af	; $8352: b2 86 01 af	 Data
			.byte $8b, $62, $88, $c1	; $8356: 8b 62 88 c1	 Data
			.byte $86, $01, $af, $8b	; $835a: 86 01 af 8b	 Data
			.byte $65, $88, $c1, $86	; $835e: 65 88 c1 86	 Data
			.byte $01, $af, $8b, $68	; $8362: 01 af 8b 68	 Data
			.byte $88, $c1, $86, $01	; $8366: 88 c1 86 01	 Data
			.byte $af, $8b, $6b, $88	; $836a: af 8b 6b 88	 Data
			.byte $c1, $86, $02, $af	; $836e: c1 86 02 af	 Data
			.byte $8b, $61, $88, $c1	; $8372: 8b 61 88 c1	 Data
			.byte $86, $02, $af, $8b	; $8376: 86 02 af 8b	 Data
			.byte $64, $88, $c1, $86	; $837a: 64 88 c1 86	 Data
			.byte $02, $af, $8b, $67	; $837e: 02 af 8b 67	 Data
			.byte $88, $c1, $86, $02	; $8382: 88 c1 86 02	 Data
			.byte $af, $8b, $6a, $88	; $8386: af 8b 6a 88	 Data
			.byte $c1, $86, $03, $af	; $838a: c1 86 03 af	 Data
			.byte $8b, $60, $88, $c1	; $838e: 8b 60 88 c1	 Data
			.byte $86, $03, $af, $8b	; $8392: 86 03 af 8b	 Data
			.byte $63, $88, $c1, $86	; $8396: 63 88 c1 86	 Data
			.byte $03, $af, $8b, $66	; $839a: 03 af 8b 66	 Data
			.byte $88, $c1, $86, $03	; $839e: 88 c1 86 03	 Data
			.byte $af, $8b, $69, $88	; $83a2: af 8b 69 88	 Data
			.byte $c1, $86, $1b, $b5	; $83a6: c1 86 1b b5	 Data
			.byte $8b, $6c, $88, $87	; $83aa: 8b 6c 88 87	 Data
			.byte $86, $0d, $eb, $8b	; $83ae: 86 0d eb 8b	 Data
			.byte $87, $88, $8a, $86	; $83b2: 87 88 8a 86	 Data
			.byte $07, $05, $8c, $94	; $83b6: 07 05 8c 94	 Data
			.byte $88, $8a, $86, $15	; $83ba: 88 8a 86 15	 Data
			.byte $13, $8c, $9b, $88	; $83be: 13 8c 9b 88	 Data
			.byte $87, $86, $0d, $3d	; $83c2: 87 86 0d 3d	 Data
			.byte $8c, $b0, $88, $c4	; $83c6: 8c b0 88 c4	 Data
			.byte $86, $0b, $41, $8c	; $83ca: 86 0b 41 8c	 Data
			.byte $bd, $88, $c6, $86	; $83ce: bd 88 c6 86	 Data
			.byte $0e, $57, $8c, $c8	; $83d2: 0e 57 8c c8	 Data
			.byte $88, $8a, $86, $0c	; $83d6: 88 8a 86 0c	 Data
			.byte $5d, $8b, $d6, $88	; $83da: 5d 8b d6 88	 Data
			.byte $8a, $86, $0c, $5d	; $83de: 8a 86 0c 5d	 Data
			.byte $8b, $e2, $88, $8a	; $83e2: 8b e2 88 8a	 Data
			.byte $86, $02, $73, $8c	; $83e6: 86 02 73 8c	 Data
			.byte $ee, $88, $d4, $86	; $83ea: ee 88 d4 86	 Data
			.byte $02, $73, $8c, $f0	; $83ee: 02 73 8c f0	 Data
			.byte $88, $d4, $86, $02	; $83f2: 88 d4 86 02	 Data
			.byte $73, $8c, $f2, $88	; $83f6: 73 8c f2 88	 Data
			.byte $d4, $86, $02, $73	; $83fa: d4 86 02 73	 Data
			.byte $8c, $f4, $88, $d4	; $83fe: 8c f4 88 d4	 Data
			.byte $86, $02, $73, $8c	; $8402: 86 02 73 8c	 Data
			.byte $f6, $88, $d4, $86	; $8406: f6 88 d4 86	 Data
			.byte $02, $73, $8c, $f8	; $840a: 02 73 8c f8	 Data
			.byte $88, $e6, $86, $02	; $840e: 88 e6 86 02	 Data
			.byte $73, $8c, $fa, $88	; $8412: 73 8c fa 88	 Data
			.byte $e6, $86, $02, $73	; $8416: e6 86 02 73	 Data
			.byte $8c, $fc, $88, $e6	; $841a: 8c fc 88 e6	 Data
			.byte $86, $03, $77, $8c	; $841e: 86 03 77 8c	 Data
			.byte $fe, $88, $e6, $86	; $8422: fe 88 e6 86	 Data
			.byte $03, $7d, $8c, $01	; $8426: 03 7d 8c 01	 Data
			.byte $89, $d1, $86, $03	; $842a: 89 d1 86 03	 Data
			.byte $77, $8c, $04, $89	; $842e: 77 8c 04 89	 Data
			.byte $e6, $86, $03, $77	; $8432: e6 86 03 77	 Data
			.byte $8c, $07, $89, $e6	; $8436: 8c 07 89 e6	 Data
			.byte $86, $02, $73, $8c	; $843a: 86 02 73 8c	 Data
			.byte $0a, $89, $e6, $86	; $843e: 0a 89 e6 86	 Data
			.byte $01, $83, $8c, $0c	; $8442: 01 83 8c 0c	 Data
			.byte $89, $d4, $86, $01	; $8446: 89 d4 86 01	 Data
			.byte $83, $8c, $0d, $89	; $844a: 83 8c 0d 89	 Data
			.byte $d4, $86, $01, $83	; $844e: d4 86 01 83	 Data
			.byte $8c, $0e, $89, $d4	; $8452: 8c 0e 89 d4	 Data
			.byte $86, $01, $83, $8c	; $8456: 86 01 83 8c	 Data
			.byte $0f, $89, $d4, $86	; $845a: 0f 89 d4 86	 Data
			.byte $01, $83, $8c, $10	; $845e: 01 83 8c 10	 Data
			.byte $89, $d4, $86, $02	; $8462: 89 d4 86 02	 Data
			.byte $85, $8c, $11, $89	; $8466: 85 8c 11 89	 Data
			.byte $d8, $86, $02, $85	; $846a: d8 86 02 85	 Data
			.byte $8c, $13, $89, $d8	; $846e: 8c 13 89 d8	 Data
			.byte $86, $02, $85, $8c	; $8472: 86 02 85 8c	 Data
			.byte $15, $89, $d8, $86	; $8476: 15 89 d8 86	 Data
			.byte $0c, $89, $8c, $17	; $847a: 0c 89 8c 17	 Data
			.byte $89, $da, $86, $06	; $847e: 89 da 86 06	 Data
			.byte $a1, $8c, $23, $89	; $8482: a1 8c 23 89	 Data
			.byte $e6, $86, $06, $a1	; $8486: e6 86 06 a1	 Data
			.byte $8c, $29, $89, $e6	; $848a: 8c 29 89 e6	 Data
			.byte $86, $06, $a1, $8c	; $848e: 86 06 a1 8c	 Data
			.byte $2f, $89, $e6, $86	; $8492: 2f 89 e6 86	 Data
			.byte $03, $a7, $8c, $35	; $8496: 03 a7 8c 35	 Data
			.byte $89, $e6, $86, $07	; $849a: 89 e6 86 07	 Data
			.byte $a1, $8c, $38, $89	; $849e: a1 8c 38 89	 Data
			.byte $e6, $86, $07, $a1	; $84a2: e6 86 07 a1	 Data
			.byte $8c, $3f, $89, $e6	; $84a6: 8c 3f 89 e6	 Data
			.byte $86, $06, $a1, $8c	; $84aa: 86 06 a1 8c	 Data
			.byte $46, $89, $e6, $86	; $84ae: 46 89 e6 86	 Data
			.byte $06, $a1, $8c, $4c	; $84b2: 06 a1 8c 4c	 Data
			.byte $89, $e6, $86, $03	; $84b6: 89 e6 86 03	 Data
			.byte $77, $8c, $52, $89	; $84ba: 77 8c 52 89	 Data
			.byte $e6, $86, $03, $77	; $84be: e6 86 03 77	 Data
			.byte $8c, $55, $89, $e6	; $84c2: 8c 55 89 e6	 Data
			.byte $86, $02, $73, $8c	; $84c6: 86 02 73 8c	 Data
			.byte $58, $89, $e6, $86	; $84ca: 58 89 e6 86	 Data
			.byte $02, $73, $8c, $5a	; $84ce: 02 73 8c 5a	 Data
			.byte $89, $e6, $86, $03	; $84d2: 89 e6 86 03	 Data
			.byte $77, $8c, $5c, $89	; $84d6: 77 8c 5c 89	 Data
			.byte $e6, $86, $06, $af	; $84da: e6 86 06 af	 Data
			.byte $8c, $5f, $89, $ed	; $84de: 8c 5f 89 ed	 Data
			.byte $86, $06, $bb, $8c	; $84e2: 86 06 bb 8c	 Data
			.byte $65, $89, $ed, $86	; $84e6: 65 89 ed 86	 Data
			.byte $06, $c7, $8c, $6b	; $84ea: 06 c7 8c 6b	 Data
			.byte $89, $ed, $86, $06	; $84ee: 89 ed 86 06	 Data
			.byte $d3, $8c, $71, $89	; $84f2: d3 8c 71 89	 Data
			.byte $ed, $86, $06, $df	; $84f6: ed 86 06 df	 Data
			.byte $8c, $77, $89, $ed	; $84fa: 8c 77 89 ed	 Data
			.byte $86, $06, $eb, $8c	; $84fe: 86 06 eb 8c	 Data
			.byte $7d, $89, $ed, $86	; $8502: 7d 89 ed 86	 Data
			.byte $06, $f7, $8c, $83	; $8506: 06 f7 8c 83	 Data
			.byte $89, $ed, $86, $06	; $850a: 89 ed 86 06	 Data
			.byte $03, $8d, $89, $89	; $850e: 03 8d 89 89	 Data
			.byte $ed, $86, $06, $0f	; $8512: ed 86 06 0f	 Data
			.byte $8d, $8f, $89, $ed	; $8516: 8d 8f 89 ed	 Data
			.byte $86, $06, $af, $8c	; $851a: 86 06 af 8c	 Data
			.byte $95, $89, $ed, $86	; $851e: 95 89 ed 86	 Data
			.byte $06, $bb, $8c, $9b	; $8522: 06 bb 8c 9b	 Data
			.byte $89, $ed, $86, $06	; $8526: 89 ed 86 06	 Data
			.byte $c7, $8c, $a1, $89	; $852a: c7 8c a1 89	 Data
			.byte $ed, $86, $15, $1b	; $852e: ed 86 15 1b	 Data
			.byte $8d, $a7, $89, $f3	; $8532: 8d a7 89 f3	 Data
			.byte $86, $10, $45, $8d	; $8536: 86 10 45 8d	 Data
			.byte $bc, $89, $f3, $86	; $853a: bc 89 f3 86	 Data
			.byte $07, $65, $8d, $cc	; $853e: 07 65 8d cc	 Data
			.byte $89, $f3, $86, $0a	; $8542: 89 f3 86 0a	 Data
			.byte $73, $8d, $d4, $89	; $8546: 73 8d d4 89	 Data
			.byte $8a, $86, $0a, $73	; $854a: 8a 86 0a 73	 Data
			.byte $8d, $de, $89, $8a	; $854e: 8d de 89 8a	 Data
			.byte $86, $0a, $73, $8d	; $8552: 86 0a 73 8d	 Data
			.byte $e8, $89, $8a, $86	; $8556: e8 89 8a 86	 Data
			.byte $0a, $87, $8d, $f2	; $855a: 0a 87 8d f2	 Data
			.byte $89, $8a, $86, $0b	; $855e: 89 8a 86 0b	 Data
			.byte $87, $8d, $fc, $89	; $8562: 87 8d fc 89	 Data
			.byte $8a, $86, $0b, $87	; $8566: 8a 86 0b 87	 Data
			.byte $8d, $07, $8a, $8a	; $856a: 8d 07 8a 8a	 Data
			.byte $86, $0f, $a1, $8d	; $856e: 86 0f a1 8d	 Data
			.byte $12, $8a, $0a, $87	; $8572: 12 8a 0a 87	 Data
			.byte $11, $9f, $8d, $21	; $8576: 11 9f 8d 21	 Data
			.byte $8a, $09, $87, $12	; $857a: 8a 09 87 12	 Data
			.byte $9d, $8d, $32, $8a	; $857e: 9d 8d 32 8a	 Data
			.byte $08, $87, $02, $85	; $8582: 08 87 02 85	 Data
			.byte $8c, $44, $8a, $d8	; $8586: 8c 44 8a d8	 Data
			.byte $86, $06, $c1, $8d	; $858a: 86 06 c1 8d	 Data
			.byte $46, $8a, $e6, $86	; $858e: 46 8a e6 86	 Data
			.byte $06, $c1, $8d, $4c	; $8592: 06 c1 8d 4c	 Data
			.byte $8a, $e6, $86, $06	; $8596: 8a e6 86 06	 Data
			.byte $c1, $8d, $52, $8a	; $859a: c1 8d 52 8a	 Data
			.byte $e6, $86, $06, $c1	; $859e: e6 86 06 c1	 Data
			.byte $8d, $58, $8a, $e6	; $85a2: 8d 58 8a e6	 Data
			.byte $86, $01, $cd, $8d	; $85a6: 86 01 cd 8d	 Data
			.byte $d3, $89, $b1, $86	; $85aa: d3 89 b1 86	 Data
			.byte $05, $cf, $8d, $5e	; $85ae: 05 cf 8d 5e	 Data
			.byte $8a, $e6, $86, $05	; $85b2: 8a e6 86 05	 Data
			.byte $cf, $8d, $63, $8a	; $85b6: cf 8d 63 8a	 Data
			.byte $e6, $86, $04, $df	; $85ba: e6 86 04 df	 Data
			.byte $8d, $68, $8a, $e6	; $85be: 8d 68 8a e6	 Data
			.byte $86, $04, $df, $8d	; $85c2: 86 04 df 8d	 Data
			.byte $6c, $8a, $e6, $86	; $85c6: 6c 8a e6 86	 Data
			.byte $01, $83, $8c, $70	; $85ca: 01 83 8c 70	 Data
			.byte $8a, $d4, $86, $05	; $85ce: 8a d4 86 05	 Data
			.byte $e7, $8d, $71, $8a	; $85d2: e7 8d 71 8a	 Data
			.byte $e6, $86, $05, $e7	; $85d6: e6 86 05 e7	 Data
			.byte $8d, $76, $8a, $e6	; $85da: 8d 76 8a e6	 Data
			.byte $86, $07, $d9, $8d	; $85de: 86 07 d9 8d	 Data
			.byte $7b, $8a, $e6, $86	; $85e2: 7b 8a e6 86	 Data
			.byte $06, $db, $8d, $82	; $85e6: 06 db 8d 82	 Data
			.byte $8a, $e6, $86, $04	; $85ea: 8a e6 86 04	 Data
			.byte $df, $8d, $88, $8a	; $85ee: df 8d 88 8a	 Data
			.byte $e6, $86, $01, $83	; $85f2: e6 86 01 83	 Data
			.byte $8c, $8c, $8a, $e6	; $85f6: 8c 8c 8a e6	 Data
			.byte $86, $01, $83, $8c	; $85fa: 86 01 83 8c	 Data
			.byte $8d, $8a, $e6, $86	; $85fe: 8d 8a e6 86	 Data
			.byte $01, $83, $8c, $8e	; $8602: 01 83 8c 8e	 Data
			.byte $8a, $e6, $86, $02	; $8606: 8a e6 86 02	 Data
			.byte $73, $8c, $8f, $8a	; $860a: 73 8c 8f 8a	 Data
			.byte $e6, $86, $02, $73	; $860e: e6 86 02 73	 Data
			.byte $8c, $91, $8a, $e6	; $8612: 8c 91 8a e6	 Data
			.byte $86, $05, $e7, $8d	; $8616: 86 05 e7 8d	 Data
			.byte $93, $8a, $e6, $86	; $861a: 93 8a e6 86	 Data
			.byte $05, $e7, $8d, $98	; $861e: 05 e7 8d 98	 Data
			.byte $8a, $e6, $86, $06	; $8622: 8a e6 86 06	 Data
			.byte $c1, $8d, $9d, $8a	; $8626: c1 8d 9d 8a	 Data
			.byte $e6, $86, $06, $c1	; $862a: e6 86 06 c1	 Data
			.byte $8d, $a3, $8a, $e6	; $862e: 8d a3 8a e6	 Data
			.byte $86, $04, $f1, $8d	; $8632: 86 04 f1 8d	 Data
			.byte $a9, $8a, $1a, $87	; $8636: a9 8a 1a 87	 Data
			.byte $01, $f1, $8d, $a9	; $863a: 01 f1 8d a9	 Data
			.byte $8a, $1a, $87, $05	; $863e: 8a 1a 87 05	 Data
			.byte $f1, $8d, $a9, $8a	; $8642: f1 8d a9 8a	 Data
			.byte $1a, $87, $05, $f1	; $8646: 1a 87 05 f1	 Data
			.byte $8d, $a9, $8a, $1a	; $864a: 8d a9 8a 1a	 Data
			.byte $87, $07, $f1, $8d	; $864e: 87 07 f1 8d	 Data
			.byte $a9, $8a, $1a, $87	; $8652: a9 8a 1a 87	 Data
			.byte $06, $f1, $8d, $a9	; $8656: 06 f1 8d a9	 Data
			.byte $8a, $1a, $87, $04	; $865a: 8a 1a 87 04	 Data
			.byte $f1, $8d, $a9, $8a	; $865e: f1 8d a9 8a	 Data
			.byte $1a, $87, $01, $f1	; $8662: 1a 87 01 f1	 Data
			.byte $8d, $a9, $8a, $1a	; $8666: 8d a9 8a 1a	 Data
			.byte $87, $01, $f1, $8d	; $866a: 87 01 f1 8d	 Data
			.byte $a9, $8a, $1a, $87	; $866e: a9 8a 1a 87	 Data
			.byte $01, $f1, $8d, $a9	; $8672: 01 f1 8d a9	 Data
			.byte $8a, $1a, $87, $02	; $8676: 8a 1a 87 02	 Data
			.byte $f1, $8d, $a9, $8a	; $867a: f1 8d a9 8a	 Data
			.byte $1a, $87, $02, $f1	; $867e: 1a 87 02 f1	 Data
			.byte $8d, $a9, $8a, $1a	; $8682: 8d a9 8a 1a	 Data
			.byte $87, $01, $01, $01	; $8686: 87 01 01 01	 Data
			.byte $00, $00, $00, $00	; $868a: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $868e: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8692: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8696: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $869a: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $869e: 00 00 00 00	 Data
			.byte $00, $00, $01, $01	; $86a2: 00 00 01 01	 Data
			.byte $01, $00, $00, $00	; $86a6: 01 00 00 00	 Data
			.byte $01, $01, $00, $00	; $86aa: 01 01 00 00	 Data
			.byte $00, $01, $00, $02	; $86ae: 00 01 00 02	 Data
			.byte $01, $01, $01, $00	; $86b2: 01 01 01 00	 Data
			.byte $00, $00, $01, $01	; $86b6: 00 00 01 01	 Data
			.byte $00, $00, $00, $00	; $86ba: 00 00 00 00	 Data
			.byte $00, $01, $00, $01	; $86be: 00 01 00 01	 Data
			.byte $01, $01, $00, $00	; $86c2: 01 01 00 00	 Data
			.byte $01, $01, $00, $00	; $86c6: 01 01 00 00	 Data
			.byte $00, $01, $01, $00	; $86ca: 00 01 01 00	 Data
			.byte $00, $00, $00, $03	; $86ce: 00 00 00 03	 Data
			.byte $83, $83, $02, $02	; $86d2: 83 83 02 02	 Data
			.byte $02, $02, $02, $42	; $86d6: 02 02 02 42	 Data
			.byte $00, $00, $00, $00	; $86da: 00 00 00 00	 Data
			.byte $40, $40, $40, $40	; $86de: 40 40 40 40	 Data
			.byte $00, $00, $00, $00	; $86e2: 00 00 00 00	 Data
			.byte $03, $03, $03, $03	; $86e6: 03 03 03 03	 Data
			.byte $03, $03, $03, $02	; $86ea: 03 03 03 02	 Data
			.byte $01, $01, $01, $01	; $86ee: 01 01 01 01	 Data
			.byte $01, $02, $00, $00	; $86f2: 01 02 00 00	 Data
			.byte $00, $00, $00, $00	; $86f6: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $86fa: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $86fe: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8702: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8706: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $870a: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $870e: 00 00 00 00	 Data
			.byte $00, $01, $00, $00	; $8712: 00 01 00 00	 Data
			.byte $00, $00, $00, $00	; $8716: 00 00 00 00	 Data
			.byte $16, $18, $1a, $1c	; $871a: 16 18 1a 1c	 Data
			.byte $1e, $20, $22, $24	; $871e: 1e 20 22 24	 Data
			.byte $26, $28, $2a, $2c	; $8722: 26 28 2a 2c	 Data
			.byte $2e, $16, $18, $1a	; $8726: 2e 16 18 1a	 Data
			.byte $1c, $1e, $20, $22	; $872a: 1c 1e 20 22	 Data
			.byte $24, $70, $72, $74	; $872e: 24 70 72 74	 Data
			.byte $76, $2e, $16, $18	; $8732: 76 2e 16 18	 Data
			.byte $1a, $1c, $1e, $20	; $8736: 1a 1c 1e 20	 Data
			.byte $22, $24, $30, $32	; $873a: 22 24 30 32	 Data
			.byte $34, $36, $2e, $16	; $873e: 34 36 2e 16	 Data
			.byte $18, $1a, $1c, $1e	; $8742: 18 1a 1c 1e	 Data
			.byte $20, $22, $24, $78	; $8746: 20 22 24 78	 Data
			.byte $7a, $7c, $7e, $2e	; $874a: 7a 7c 7e 2e	 Data
			.byte $16, $18, $1a, $1c	; $874e: 16 18 1a 1c	 Data
			.byte $1e, $20, $22, $24	; $8752: 1e 20 22 24	 Data
			.byte $38, $3a, $3c, $3e	; $8756: 38 3a 3c 3e	 Data
			.byte $2e, $14, $00, $02	; $875a: 2e 14 00 02	 Data
			.byte $04, $06, $08, $0a	; $875e: 04 06 08 0a	 Data
			.byte $0c, $0e, $10, $12	; $8762: 0c 0e 10 12	 Data
			.byte $14, $80, $82, $b0	; $8766: 14 80 82 b0	 Data
			.byte $06, $08, $0a, $0c	; $876a: 06 08 0a 0c	 Data
			.byte $84, $86, $b2, $14	; $876e: 84 86 b2 14	 Data
			.byte $40, $42, $44, $06	; $8772: 40 42 44 06	 Data
			.byte $08, $0a, $46, $48	; $8776: 08 0a 46 48	 Data
			.byte $4a, $5c, $5e, $14	; $877a: 4a 5c 5e 14	 Data
			.byte $88, $8a, $b0, $06	; $877e: 88 8a b0 06	 Data
			.byte $08, $0a, $8c, $8e	; $8782: 08 0a 8c 8e	 Data
			.byte $90, $b4, $14, $92	; $8786: 90 b4 14 92	 Data
			.byte $94, $96, $06, $08	; $878a: 94 96 06 08	 Data
			.byte $0a, $0c, $98, $9a	; $878e: 0a 0c 98 9a	 Data
			.byte $9c, $14, $9e, $a0	; $8792: 9c 14 9e a0	 Data
			.byte $a2, $06, $08, $0a	; $8796: a2 06 08 0a	 Data
			.byte $0c, $a4, $a6, $b2	; $879a: 0c a4 a6 b2	 Data
			.byte $14, $4c, $4e, $50	; $879e: 14 4c 4e 50	 Data
			.byte $06, $08, $0a, $52	; $87a2: 06 08 0a 52	 Data
			.byte $54, $56, $5c, $5e	; $87a6: 54 56 5c 5e	 Data
			.byte $14, $92, $94, $96	; $87aa: 14 92 94 96	 Data
			.byte $06, $08, $0a, $aa	; $87ae: 06 08 0a aa	 Data
			.byte $ac, $ae, $b4, $60	; $87b2: ac ae b4 60	 Data
			.byte $62, $6a, $6c, $64	; $87b6: 62 6a 6c 64	 Data
			.byte $b8, $66, $68, $6e	; $87ba: b8 66 68 6e	 Data
			.byte $d0, $d2, $b6, $ba	; $87be: d0 d2 b6 ba	 Data
			.byte $2e, $16, $18, $1a	; $87c2: 2e 16 18 1a	 Data
			.byte $1c, $1e, $20, $22	; $87c6: 1c 1e 20 22	 Data
			.byte $24, $d4, $d6, $d8	; $87ca: 24 d4 d6 d8	 Data
			.byte $da, $ce, $2e, $60	; $87ce: da ce 2e 60	 Data
			.byte $62, $bc, $be, $64	; $87d2: 62 bc be 64	 Data
			.byte $b8, $66, $68, $c0	; $87d6: b8 66 68 c0	 Data
			.byte $c2, $c4, $b6, $ba	; $87da: c2 c4 b6 ba	 Data
			.byte $2e, $16, $18, $1a	; $87de: 2e 16 18 1a	 Data
			.byte $1c, $1e, $20, $22	; $87e2: 1c 1e 20 22	 Data
			.byte $24, $c6, $c8, $ca	; $87e6: 24 c6 c8 ca	 Data
			.byte $cc, $ce, $2e, $70	; $87ea: cc ce 2e 70	 Data
			.byte $72, $94, $96, $98	; $87ee: 72 94 96 98	 Data
			.byte $74, $76, $78, $7a	; $87f2: 74 76 78 7a	 Data
			.byte $7c, $6e, $7e, $60	; $87f6: 7c 6e 7e 60	 Data
			.byte $62, $6a, $6c, $64	; $87fa: 62 6a 6c 64	 Data
			.byte $66, $68, $6e, $cc	; $87fe: 66 68 6e cc	 Data
			.byte $ce, $c2, $2e, $9a	; $8802: ce c2 2e 9a	 Data
			.byte $80, $82, $84, $86	; $8806: 80 82 84 86	 Data
			.byte $88, $8a, $8c, $8e	; $880a: 88 8a 8c 8e	 Data
			.byte $90, $92, $6e, $7e	; $880e: 90 92 6e 7e	 Data
			.byte $60, $62, $6a, $6c	; $8812: 60 62 6a 6c	 Data
			.byte $64, $66, $68, $ba	; $8816: 64 66 68 ba	 Data
			.byte $bc, $be, $c2, $2e	; $881a: bc be c2 2e	 Data
			.byte $14, $58, $5a, $b2	; $881e: 14 58 5a b2	 Data
			.byte $06, $08, $0a, $0c	; $8822: 06 08 0a 0c	 Data
			.byte $c8, $ca, $b6, $b8	; $8826: c8 ca b6 b8	 Data
			.byte $14, $4c, $d0, $d2	; $882a: 14 4c d0 d2	 Data
			.byte $c4, $c6, $06, $08	; $882e: c4 c6 06 08	 Data
			.byte $0a, $0c, $c8, $d4	; $8832: 0a 0c c8 d4	 Data
			.byte $12, $14, $00, $02	; $8836: 12 14 00 02	 Data
			.byte $b2, $06, $08, $0a	; $883a: b2 06 08 0a	 Data
			.byte $0c, $0e, $b4, $b6	; $883e: 0c 0e b4 b6	 Data
			.byte $b8, $14, $00, $02	; $8842: b8 14 00 02	 Data
			.byte $c0, $c4, $c6, $06	; $8846: c0 c4 c6 06	 Data
			.byte $08, $0a, $0c, $0e	; $884a: 08 0a 0c 0e	 Data
			.byte $10, $12, $f9, $a0	; $884e: 10 12 f9 a0	 Data
			.byte $a2, $a4, $a6, $a8	; $8852: a2 a4 a6 a8	 Data
			.byte $aa, $9c, $ac, $ae	; $8856: aa 9c ac ae	 Data
			.byte $b0, $b2, $b4, $3a	; $885a: b0 b2 b4 3a	 Data
			.byte $9e, $b6, $d8, $d8	; $885e: 9e b6 d8 d8	 Data
			.byte $d0, $d8, $d8, $d2	; $8862: d0 d8 d8 d2	 Data
			.byte $d8, $d8, $d4, $d8	; $8866: d8 d8 d4 d8	 Data
			.byte $d8, $d6, $a0, $a2	; $886a: d8 d6 a0 a2	 Data
			.byte $a4, $a6, $a8, $aa	; $886e: a4 a6 a8 aa	 Data
			.byte $30, $32, $34, $36	; $8872: 30 32 34 36	 Data
			.byte $38, $3a, $3c, $3e	; $8876: 38 3a 3c 3e	 Data
			.byte $40, $42, $44, $46	; $887a: 40 42 44 46	 Data
			.byte $48, $4a, $4c, $4e	; $887e: 48 4a 4c 4e	 Data
			.byte $50, $52, $54, $56	; $8882: 50 52 54 56	 Data
			.byte $58, $16, $18, $1a	; $8886: 58 16 18 1a	 Data
			.byte $1c, $1e, $20, $22	; $888a: 1c 1e 20 22	 Data
			.byte $24, $26, $28, $2a	; $888e: 24 26 28 2a	 Data
			.byte $2c, $2e, $5a, $5c	; $8892: 2c 2e 5a 5c	 Data
			.byte $5e, $60, $62, $64	; $8896: 5e 60 62 64	 Data
			.byte $66, $a0, $a2, $a4	; $889a: 66 a0 a2 a4	 Data
			.byte $a6, $a8, $aa, $30	; $889e: a6 a8 aa 30	 Data
			.byte $32, $34, $36, $38	; $88a2: 32 34 36 38	 Data
			.byte $3a, $68, $6a, $46	; $88a6: 3a 68 6a 46	 Data
			.byte $48, $4a, $6c, $54	; $88aa: 48 4a 6c 54	 Data
			.byte $56, $58, $9c, $94	; $88ae: 56 58 9c 94	 Data
			.byte $70, $72, $96, $98	; $88b2: 70 72 96 98	 Data
			.byte $9a, $74, $76, $78	; $88b6: 9a 74 76 78	 Data
			.byte $7a, $7c, $7e, $80	; $88ba: 7a 7c 7e 80	 Data
			.byte $82, $84, $86, $88	; $88be: 82 84 86 88	 Data
			.byte $8a, $8c, $8e, $90	; $88c2: 8a 8c 8e 90	 Data
			.byte $92, $7e, $a8, $94	; $88c6: 92 7e a8 94	 Data
			.byte $16, $18, $a2, $a4	; $88ca: 16 18 a2 a4	 Data
			.byte $a6, $22, $24, $26	; $88ce: a6 22 24 26	 Data
			.byte $28, $2a, $2c, $2e	; $88d2: 28 2a 2c 2e	 Data
			.byte $14, $40, $42, $44	; $88d6: 14 40 42 44	 Data
			.byte $06, $08, $0a, $46	; $88da: 06 08 0a 46	 Data
			.byte $48, $4a, $5c, $5e	; $88de: 48 4a 5c 5e	 Data
			.byte $14, $4c, $4e, $50	; $88e2: 14 4c 4e 50	 Data
			.byte $06, $08, $0a, $52	; $88e6: 06 08 0a 52	 Data
			.byte $54, $56, $5c, $5e	; $88ea: 54 56 5c 5e	 Data
			.byte $cf, $d1, $d3, $d5	; $88ee: cf d1 d3 d5	 Data
			.byte $d7, $d9, $db, $dd	; $88f2: d7 d9 db dd	 Data
			.byte $df, $e1, $c1, $c3	; $88f6: df e1 c1 c3	 Data
			.byte $c5, $c7, $c9, $cb	; $88fa: c5 c7 c9 cb	 Data
			.byte $df, $e1, $e3, $df	; $88fe: df e1 e3 df	 Data
			.byte $e9, $eb, $df, $e5	; $8902: e9 eb df e5	 Data
			.byte $e7, $df, $e9, $eb	; $8906: e7 df e9 eb	 Data
			.byte $bd, $bf, $f1, $f3	; $890a: bd bf f1 f3	 Data
			.byte $f5, $f7, $f9, $e6	; $890e: f5 f7 f9 e6	 Data
			.byte $e6, $e8, $e8, $ea	; $8912: e6 e8 e8 ea	 Data
			.byte $ea, $fc, $fc, $fe	; $8916: ea fc fc fe	 Data
			.byte $fe, $fc, $fc, $fc	; $891a: fe fc fc fc	 Data
			.byte $fc, $fe, $fe, $fc	; $891e: fc fe fe fc	 Data
			.byte $fc, $16, $18, $1a	; $8922: fc 16 18 1a	 Data
			.byte $2e, $30, $32, $16	; $8926: 2e 30 32 16	 Data
			.byte $18, $1a, $2e, $9c	; $892a: 18 1a 2e 9c	 Data
			.byte $9e, $22, $24, $26	; $892e: 9e 22 24 26	 Data
			.byte $3e, $40, $42, $f0	; $8932: 3e 40 42 f0	 Data
			.byte $f2, $f4, $7c, $7e	; $8936: f2 f4 7c 7e	 Data
			.byte $80, $98, $9a, $9c	; $893a: 80 98 9a 9c	 Data
			.byte $9e, $a8, $aa, $ac	; $893e: 9e a8 aa ac	 Data
			.byte $ae, $b0, $b2, $b4	; $8942: ae b0 b2 b4	 Data
			.byte $6c, $6e, $70, $88	; $8946: 6c 6e 70 88	 Data
			.byte $8a, $8c, $6c, $6e	; $894a: 8a 8c 6c 6e	 Data
			.byte $70, $88, $a0, $a2	; $894e: 70 88 a0 a2	 Data
			.byte $a7, $a9, $ab, $ad	; $8952: a7 a9 ab ad	 Data
			.byte $af, $b1, $b3, $b5	; $8956: af b1 b3 b5	 Data
			.byte $b7, $b9, $bb, $bd	; $895a: b7 b9 bb bd	 Data
			.byte $bf, $00, $02, $04	; $895e: bf 00 02 04	 Data
			.byte $06, $08, $0a, $00	; $8962: 06 08 0a 00	 Data
			.byte $02, $04, $0c, $08	; $8966: 02 04 0c 08	 Data
			.byte $0a, $00, $02, $0e	; $896a: 0a 00 02 0e	 Data
			.byte $10, $08, $0a, $64	; $896e: 10 08 0a 64	 Data
			.byte $66, $68, $6a, $08	; $8972: 66 68 6a 08	 Data
			.byte $0a, $64, $66, $68	; $8976: 0a 64 66 68	 Data
			.byte $6c, $08, $0a, $64	; $897a: 6c 08 0a 64	 Data
			.byte $66, $6e, $70, $08	; $897e: 66 6e 70 08	 Data
			.byte $0a, $72, $74, $76	; $8982: 0a 72 74 76	 Data
			.byte $78, $08, $0a, $72	; $8986: 78 08 0a 72	 Data
			.byte $74, $76, $7a, $08	; $898a: 74 76 7a 08	 Data
			.byte $0a, $72, $74, $7c	; $898e: 0a 72 74 7c	 Data
			.byte $7e, $08, $0a, $00	; $8992: 7e 08 0a 00	 Data
			.byte $02, $80, $82, $08	; $8996: 02 80 82 08	 Data
			.byte $0a, $00, $02, $80	; $899a: 0a 00 02 80	 Data
			.byte $8e, $08, $0a, $00	; $899e: 8e 08 0a 00	 Data
			.byte $02, $84, $86, $08	; $89a2: 02 84 86 08	 Data
			.byte $0a, $88, $12, $14	; $89a6: 0a 88 12 14	 Data
			.byte $16, $18, $1a, $1c	; $89aa: 16 18 1a 1c	 Data
			.byte $1e, $20, $32, $22	; $89ae: 1e 20 32 22	 Data
			.byte $24, $26, $28, $34	; $89b2: 24 26 28 34	 Data
			.byte $2a, $2c, $2e, $30	; $89b6: 2a 2c 2e 30	 Data
			.byte $36, $38, $8a, $3a	; $89ba: 36 38 8a 3a	 Data
			.byte $3c, $3e, $40, $42	; $89be: 3c 3e 40 42	 Data
			.byte $44, $46, $48, $52	; $89c2: 44 46 48 52	 Data
			.byte $4a, $4c, $4e, $50	; $89c6: 4a 4c 4e 50	 Data
			.byte $54, $56, $8c, $58	; $89ca: 54 56 8c 58	 Data
			.byte $5a, $5c, $5e, $60	; $89ce: 5a 5c 5e 60	 Data
			.byte $62, $8a, $00, $02	; $89d2: 62 8a 00 02	 Data
			.byte $04, $06, $08, $0e	; $89d6: 04 06 08 0e	 Data
			.byte $10, $12, $14, $0a	; $89da: 10 12 14 0a	 Data
			.byte $00, $02, $04, $06	; $89de: 00 02 04 06	 Data
			.byte $08, $28, $2a, $2c	; $89e2: 08 28 2a 2c	 Data
			.byte $2e, $0a, $00, $02	; $89e6: 2e 0a 00 02	 Data
			.byte $04, $06, $08, $44	; $89ea: 04 06 08 44	 Data
			.byte $46, $48, $4a, $0a	; $89ee: 46 48 4a 0a	 Data
			.byte $16, $18, $1a, $0c	; $89f2: 16 18 1a 0c	 Data
			.byte $1c, $1e, $20, $22	; $89f6: 1c 1e 20 22	 Data
			.byte $24, $26, $30, $32	; $89fa: 24 26 30 32	 Data
			.byte $34, $0c, $38, $3a	; $89fe: 34 0c 38 3a	 Data
			.byte $3c, $3e, $40, $42	; $8a02: 3c 3e 40 42	 Data
			.byte $36, $4c, $4e, $50	; $8a06: 36 4c 4e 50	 Data
			.byte $0c, $54, $56, $58	; $8a0a: 0c 54 56 58	 Data
			.byte $5a, $5c, $5e, $52	; $8a0e: 5a 5c 5e 52	 Data
			.byte $00, $02, $04, $06	; $8a12: 00 02 04 06	 Data
			.byte $08, $0a, $0c, $0e	; $8a16: 08 0a 0c 0e	 Data
			.byte $10, $12, $14, $16	; $8a1a: 10 12 14 16	 Data
			.byte $18, $1a, $1c, $1e	; $8a1e: 18 1a 1c 1e	 Data
			.byte $20, $22, $24, $26	; $8a22: 20 22 24 26	 Data
			.byte $28, $2a, $2c, $2e	; $8a26: 28 2a 2c 2e	 Data
			.byte $30, $32, $34, $36	; $8a2a: 30 32 34 36	 Data
			.byte $38, $3a, $3c, $3e	; $8a2e: 38 3a 3c 3e	 Data
			.byte $40, $42, $44, $46	; $8a32: 40 42 44 46	 Data
			.byte $48, $4a, $4c, $4e	; $8a36: 48 4a 4c 4e	 Data
			.byte $50, $52, $54, $56	; $8a3a: 50 52 54 56	 Data
			.byte $58, $5a, $5c, $5e	; $8a3e: 58 5a 5c 5e	 Data
			.byte $60, $62, $ec, $ec	; $8a42: 60 62 ec ec	 Data
			.byte $4c, $4e, $50, $70	; $8a46: 4c 4e 50 70	 Data
			.byte $72, $74, $4c, $4e	; $8a4a: 72 74 4c 4e	 Data
			.byte $50, $b6, $b8, $74	; $8a4e: 50 b6 b8 74	 Data
			.byte $52, $54, $56, $76	; $8a52: 52 54 56 76	 Data
			.byte $78, $7a, $52, $54	; $8a56: 78 7a 52 54	 Data
			.byte $56, $ba, $bc, $7a	; $8a5a: 56 ba bc 7a	 Data
			.byte $66, $68, $96, $98	; $8a5e: 66 68 96 98	 Data
			.byte $9a, $66, $68, $d0	; $8a62: 9a 66 68 d0	 Data
			.byte $98, $9a, $8e, $90	; $8a66: 98 9a 8e 90	 Data
			.byte $92, $94, $8e, $90	; $8a6a: 92 94 8e 90	 Data
			.byte $92, $94, $f4, $58	; $8a6e: 92 94 f4 58	 Data
			.byte $5a, $7c, $7e, $80	; $8a72: 5a 7c 7e 80	 Data
			.byte $58, $5a, $be, $c0	; $8a76: 58 5a be c0	 Data
			.byte $80, $6a, $6c, $6e	; $8a7a: 80 6a 6c 6e	 Data
			.byte $0e, $10, $12, $14	; $8a7e: 0e 10 12 14	 Data
			.byte $d4, $d6, $d8, $da	; $8a82: d4 d6 d8 da	 Data
			.byte $dc, $de, $e0, $e2	; $8a86: dc de e0 e2	 Data
			.byte $e4, $e6, $f3, $f5	; $8a8a: e4 e6 f3 f5	 Data
			.byte $f7, $fd, $ff, $f9	; $8a8e: f7 fd ff f9	 Data
			.byte $fb, $5c, $5e, $82	; $8a92: fb 5c 5e 82	 Data
			.byte $84, $86, $5c, $5e	; $8a96: 84 86 5c 5e	 Data
			.byte $c2, $c4, $86, $60	; $8a9a: c2 c4 86 60	 Data
			.byte $62, $64, $88, $8a	; $8a9e: 62 64 88 8a	 Data
			.byte $8c, $60, $62, $64	; $8aa2: 8c 60 62 64	 Data
			.byte $c6, $c8, $8c, $00	; $8aa6: c6 c8 8c 00	 Data
			.byte $e8, $00, $f0, $00	; $8aaa: e8 00 f0 00	 Data
			.byte $f8, $00, $00, $00	; $8aae: f8 00 00 00	 Data
			.byte $08, $00, $10, $10	; $8ab2: 08 00 10 10	 Data
			.byte $e8, $10, $f0, $10	; $8ab6: e8 10 f0 10	 Data
			.byte $f8, $10, $00, $10	; $8aba: f8 10 00 10	 Data
			.byte $08, $10, $10, $20	; $8abe: 08 10 10 20	 Data
			.byte $ef, $2a, $d0, $20	; $8ac2: ef 2a d0 20	 Data
			.byte $f7, $20, $ff, $20	; $8ac6: f7 20 ff 20	 Data
			.byte $07, $30, $d8, $30	; $8aca: 07 30 d8 30	 Data
			.byte $e0, $30, $e8, $30	; $8ace: e0 30 e8 30	 Data
			.byte $f0, $30, $f8, $30	; $8ad2: f0 30 f8 30	 Data
			.byte $00, $30, $08, $3a	; $8ad6: 00 30 08 3a	 Data
			.byte $10, $00, $f0, $00	; $8ada: 10 00 f0 00	 Data
			.byte $f8, $00, $00, $00	; $8ade: f8 00 00 00	 Data
			.byte $08, $00, $10, $00	; $8ae2: 08 00 10 00	 Data
			.byte $1c, $10, $ec, $10	; $8ae6: 1c 10 ec 10	 Data
			.byte $f4, $10, $fc, $10	; $8aea: f4 10 fc 10	 Data
			.byte $04, $10, $0c, $10	; $8aee: 04 10 0c 10	 Data
			.byte $14, $10, $1c, $20	; $8af2: 14 10 1c 20	 Data
			.byte $ef, $00, $e8, $00	; $8af6: ef 00 e8 00	 Data
			.byte $f0, $00, $f8, $00	; $8afa: f0 00 f8 00	 Data
			.byte $00, $00, $08, $00	; $8afe: 00 00 08 00	 Data
			.byte $10, $10, $e8, $10	; $8b02: 10 10 e8 10	 Data
			.byte $f0, $10, $f8, $10	; $8b06: f0 10 f8 10	 Data
			.byte $00, $10, $08, $10	; $8b0a: 00 10 08 10	 Data
			.byte $10, $10, $18, $20	; $8b0e: 10 10 18 20	 Data
			.byte $ef, $00, $e8, $00	; $8b12: ef 00 e8 00	 Data
			.byte $f0, $00, $f8, $00	; $8b16: f0 00 f8 00	 Data
			.byte $00, $00, $08, $10	; $8b1a: 00 00 08 10	 Data
			.byte $e8, $10, $f0, $10	; $8b1e: e8 10 f0 10	 Data
			.byte $f8, $10, $00, $10	; $8b22: f8 10 00 10	 Data
			.byte $08, $20, $ef, $20	; $8b26: 08 20 ef 20	 Data
			.byte $ef, $00, $f0, $00	; $8b2a: ef 00 f0 00	 Data
			.byte $f8, $00, $00, $00	; $8b2e: f8 00 00 00	 Data
			.byte $08, $00, $10, $10	; $8b32: 08 00 10 10	 Data
			.byte $ec, $10, $f4, $10	; $8b36: ec 10 f4 10	 Data
			.byte $fc, $10, $04, $10	; $8b3a: fc 10 04 10	 Data
			.byte $0c, $10, $14, $20	; $8b3e: 0c 10 14 20	 Data
			.byte $ef, $00, $f8, $00	; $8b42: ef 00 f8 00	 Data
			.byte $e8, $00, $f0, $00	; $8b46: e8 00 f0 00	 Data
			.byte $f8, $00, $00, $00	; $8b4a: f8 00 00 00	 Data
			.byte $08, $10, $e8, $10	; $8b4e: 08 10 e8 10	 Data
			.byte $f0, $10, $f8, $10	; $8b52: f0 10 f8 10	 Data
			.byte $00, $10, $08, $20	; $8b56: 00 10 08 20	 Data
			.byte $ef, $20, $ef, $2a	; $8b5a: ef 20 ef 2a	 Data
			.byte $d0, $20, $f7, $20	; $8b5e: d0 20 f7 20	 Data
			.byte $ff, $20, $07, $30	; $8b62: ff 20 07 30	 Data
			.byte $d8, $30, $e0, $30	; $8b66: d8 30 e0 30	 Data
			.byte $e8, $30, $f0, $30	; $8b6a: e8 30 f0 30	 Data
			.byte $f8, $30, $00, $30	; $8b6e: f8 30 00 30	 Data
			.byte $08, $30, $10, $2a	; $8b72: 08 30 10 2a	 Data
			.byte $d0, $20, $f7, $20	; $8b76: d0 20 f7 20	 Data
			.byte $ff, $20, $07, $20	; $8b7a: ff 20 07 20	 Data
			.byte $0f, $20, $17, $30	; $8b7e: 0f 20 17 30	 Data
			.byte $d8, $30, $e0, $30	; $8b82: d8 30 e0 30	 Data
			.byte $e8, $30, $f0, $30	; $8b86: e8 30 f0 30	 Data
			.byte $f8, $30, $00, $30	; $8b8a: f8 30 00 30	 Data
			.byte $08, $f4, $fc, $00	; $8b8e: 08 f4 fc 00	 Data
			.byte $f0, $00, $f8, $00	; $8b92: f0 00 f8 00	 Data
			.byte $00, $00, $08, $00	; $8b96: 00 00 08 00	 Data
			.byte $10, $00, $18, $10	; $8b9a: 10 00 18 10	 Data
			.byte $f8, $10, $f0, $10	; $8b9e: f8 10 f0 10	 Data
			.byte $f8, $10, $00, $10	; $8ba2: f8 10 00 10	 Data
			.byte $08, $10, $10, $10	; $8ba6: 08 10 10 10	 Data
			.byte $18, $20, $ef, $20	; $8baa: 18 20 ef 20	 Data
			.byte $ef, $00, $00, $10	; $8bae: ef 00 00 10	 Data
			.byte $00, $20, $00, $fc	; $8bb2: 00 20 00 fc	 Data
			.byte $f0, $fc, $f8, $fc	; $8bb6: f0 fc f8 fc	 Data
			.byte $00, $fc, $08, $fc	; $8bba: 00 fc 08 fc	 Data
			.byte $10, $fc, $18, $0c	; $8bbe: 10 fc 18 0c	 Data
			.byte $ef, $0c, $f7, $0c	; $8bc2: ef 0c f7 0c	 Data
			.byte $ff, $0c, $07, $0c	; $8bc6: ff 0c 07 0c	 Data
			.byte $0f, $0c, $17, $1c	; $8bca: 0f 0c 17 1c	 Data
			.byte $d4, $1c, $dc, $1c	; $8bce: d4 1c dc 1c	 Data
			.byte $e4, $1c, $ec, $1c	; $8bd2: e4 1c ec 1c	 Data
			.byte $f4, $1c, $fc, $1c	; $8bd6: f4 1c fc 1c	 Data
			.byte $04, $1c, $0c, $2c	; $8bda: 04 1c 0c 2c	 Data
			.byte $d9, $2c, $e1, $2c	; $8bde: d9 2c e1 2c	 Data
			.byte $e9, $2c, $f1, $2c	; $8be2: e9 2c f1 2c	 Data
			.byte $f9, $2c, $01, $2c	; $8be6: f9 2c 01 2c	 Data
			.byte $09, $00, $f0, $00	; $8bea: 09 00 f0 00	 Data
			.byte $f8, $00, $00, $00	; $8bee: f8 00 00 00	 Data
			.byte $08, $10, $f0, $10	; $8bf2: 08 10 f0 10	 Data
			.byte $f8, $10, $00, $10	; $8bf6: f8 10 00 10	 Data
			.byte $08, $20, $e8, $20	; $8bfa: 08 20 e8 20	 Data
			.byte $f0, $20, $f8, $20	; $8bfe: f0 20 f8 20	 Data
			.byte $00, $20, $08, $0c	; $8c02: 00 20 08 0c	 Data
			.byte $c0, $0c, $c8, $0c	; $8c06: c0 0c c8 0c	 Data
			.byte $d0, $1c, $cc, $1c	; $8c0a: d0 1c cc 1c	 Data
			.byte $d4, $1c, $dc, $1c	; $8c0e: d4 1c dc 1c	 Data
			.byte $e4, $fc, $f0, $fc	; $8c12: e4 fc f0 fc	 Data
			.byte $f8, $fc, $00, $fc	; $8c16: f8 fc 00 fc	 Data
			.byte $08, $fc, $10, $fc	; $8c1a: 08 fc 10 fc	 Data
			.byte $18, $0c, $ef, $0c	; $8c1e: 18 0c ef 0c	 Data
			.byte $f7, $0c, $ff, $0c	; $8c22: f7 0c ff 0c	 Data
			.byte $07, $0c, $0f, $0c	; $8c26: 07 0c 0f 0c	 Data
			.byte $17, $1c, $ec, $1c	; $8c2a: 17 1c ec 1c	 Data
			.byte $f4, $1c, $fc, $1c	; $8c2e: f4 1c fc 1c	 Data
			.byte $04, $1c, $0c, $2c	; $8c32: 04 1c 0c 2c	 Data
			.byte $f1, $2c, $f9, $2c	; $8c36: f1 2c f9 2c	 Data
			.byte $01, $2c, $09, $f0	; $8c3a: 01 2c 09 f0	 Data
			.byte $f8, $f0, $00, $00	; $8c3e: f8 f0 00 00	 Data
			.byte $e8, $00, $f0, $00	; $8c42: e8 00 f0 00	 Data
			.byte $f8, $00, $00, $00	; $8c46: f8 00 00 00	 Data
			.byte $08, $10, $e8, $10	; $8c4a: 08 10 e8 10	 Data
			.byte $f0, $10, $f8, $10	; $8c4e: f0 10 f8 10	 Data
			.byte $00, $10, $08, $20	; $8c52: 00 10 08 20	 Data
			.byte $f0, $f0, $00, $f0	; $8c56: f0 f0 00 f0	 Data
			.byte $08, $00, $e8, $00	; $8c5a: 08 00 e8 00	 Data
			.byte $f0, $00, $f8, $00	; $8c5e: f0 00 f8 00	 Data
			.byte $00, $00, $08, $10	; $8c62: 00 00 08 10	 Data
			.byte $e8, $10, $f0, $10	; $8c66: e8 10 f0 10	 Data
			.byte $f8, $10, $00, $10	; $8c6a: f8 10 00 10	 Data
			.byte $08, $10, $10, $20	; $8c6e: 08 10 10 20	 Data
			.byte $f0, $f8, $f8, $f8	; $8c72: f0 f8 f8 f8	 Data
			.byte $00, $f8, $f4, $f8	; $8c76: 00 f8 f4 f8	 Data
			.byte $fc, $f8, $04, $f8	; $8c7a: fc f8 04 f8	 Data
			.byte $f4, $f9, $fc, $f9	; $8c7e: f4 f9 fc f9	 Data
			.byte $04, $f8, $fc, $f8	; $8c82: 04 f8 fc f8	 Data
			.byte $f8, $f8, $00, $0b	; $8c86: f8 f8 00 0b	 Data
			.byte $04, $07, $08, $ff	; $8c8a: 04 07 08 ff	 Data
			.byte $10, $ff, $18, $06	; $8c8e: 10 ff 18 06	 Data
			.byte $1f, $0b, $24, $13	; $8c92: 1f 0b 24 13	 Data
			.byte $04, $17, $08, $18	; $8c96: 04 17 08 18	 Data
			.byte $10, $18, $18, $18	; $8c9a: 10 18 18 18	 Data
			.byte $1f, $13, $24, $fb	; $8c9e: 1f 13 24 fb	 Data
			.byte $08, $fb, $10, $fb	; $8ca2: 08 fb 10 fb	 Data
			.byte $18, $0b, $08, $0b	; $8ca6: 18 0b 08 0b	 Data
			.byte $10, $0b, $18, $0b	; $8caa: 10 0b 18 0b	 Data
			.byte $20, $f8, $f0, $08	; $8cae: 20 f8 f0 08	 Data
			.byte $f0, $00, $f8, $00	; $8cb2: f0 00 f8 00	 Data
			.byte $00, $05, $08, $06	; $8cb6: 00 05 08 06	 Data
			.byte $10, $f7, $f0, $07	; $8cba: 10 f7 f0 07	 Data
			.byte $f0, $ff, $f8, $ff	; $8cbe: f0 ff f8 ff	 Data
			.byte $00, $04, $08, $05	; $8cc2: 00 04 08 05	 Data
			.byte $10, $f6, $f0, $06	; $8cc6: 10 f6 f0 06	 Data
			.byte $f0, $fe, $f8, $01	; $8cca: f0 fe f8 01	 Data
			.byte $00, $03, $08, $04	; $8cce: 00 03 08 04	 Data
			.byte $10, $f6, $f0, $06	; $8cd2: 10 f6 f0 06	 Data
			.byte $f0, $00, $f8, $00	; $8cd6: f0 00 f8 00	 Data
			.byte $00, $05, $08, $06	; $8cda: 00 05 08 06	 Data
			.byte $10, $f5, $f0, $05	; $8cde: 10 f5 f0 05	 Data
			.byte $f0, $ff, $f8, $ff	; $8ce2: f0 ff f8 ff	 Data
			.byte $00, $04, $08, $05	; $8ce6: 00 04 08 05	 Data
			.byte $10, $f4, $f0, $04	; $8cea: 10 f4 f0 04	 Data
			.byte $f0, $fe, $f8, $01	; $8cee: f0 fe f8 01	 Data
			.byte $00, $03, $08, $04	; $8cf2: 00 03 08 04	 Data
			.byte $10, $fa, $f0, $0a	; $8cf6: 10 fa f0 0a	 Data
			.byte $f0, $00, $f8, $00	; $8cfa: f0 00 f8 00	 Data
			.byte $00, $05, $08, $06	; $8cfe: 00 05 08 06	 Data
			.byte $10, $f9, $f0, $09	; $8d02: 10 f9 f0 09	 Data
			.byte $f0, $ff, $f8, $ff	; $8d06: f0 ff f8 ff	 Data
			.byte $00, $04, $08, $05	; $8d0a: 00 04 08 05	 Data
			.byte $10, $f8, $f0, $08	; $8d0e: 10 f8 f0 08	 Data
			.byte $f0, $fe, $f8, $01	; $8d12: f0 fe f8 01	 Data
			.byte $00, $03, $08, $04	; $8d16: 00 03 08 04	 Data
			.byte $10, $d0, $fe, $c0	; $8d1a: 10 d0 fe c0	 Data
			.byte $f8, $c0, $00, $c5	; $8d1e: f8 c0 00 c5	 Data
			.byte $08, $c6, $10, $d0	; $8d22: 08 c6 10 d0	 Data
			.byte $f8, $d0, $00, $d5	; $8d26: f8 d0 00 d5	 Data
			.byte $08, $d6, $10, $d8	; $8d2a: 08 d6 10 d8	 Data
			.byte $18, $e0, $f8, $e0	; $8d2e: 18 e0 f8 e0	 Data
			.byte $00, $e5, $08, $e6	; $8d32: 00 e5 08 e6	 Data
			.byte $10, $e8, $18, $f0	; $8d36: 10 e8 18 f0	 Data
			.byte $f8, $f0, $00, $f5	; $8d3a: f8 f0 00 f5	 Data
			.byte $08, $f6, $10, $f8	; $8d3e: 08 f6 10 f8	 Data
			.byte $18, $f0, $20, $df	; $8d42: 18 f0 20 df	 Data
			.byte $fe, $cf, $f8, $cf	; $8d46: fe cf f8 cf	 Data
			.byte $00, $d4, $08, $d5	; $8d4a: 00 d4 08 d5	 Data
			.byte $10, $df, $f8, $df	; $8d4e: 10 df f8 df	 Data
			.byte $00, $e4, $08, $e5	; $8d52: 00 e4 08 e5	 Data
			.byte $10, $e7, $18, $ef	; $8d56: 10 e7 18 ef	 Data
			.byte $f8, $ef, $00, $f4	; $8d5a: f8 ef 00 f4	 Data
			.byte $08, $f5, $10, $f7	; $8d5e: 08 f5 10 f7	 Data
			.byte $18, $f7, $20, $f1	; $8d62: 18 f7 20 f1	 Data
			.byte $00, $ee, $f8, $f1	; $8d66: 00 ee f8 f1	 Data
			.byte $00, $f3, $08, $f4	; $8d6a: 00 f3 08 f4	 Data
			.byte $10, $f6, $18, $f6	; $8d6e: 10 f6 18 f6	 Data
			.byte $20, $00, $e8, $00	; $8d72: 20 00 e8 00	 Data
			.byte $f0, $00, $f8, $00	; $8d76: f0 00 f8 00	 Data
			.byte $00, $00, $08, $10	; $8d7a: 00 00 08 10	 Data
			.byte $f0, $10, $f8, $10	; $8d7e: f0 10 f8 10	 Data
			.byte $00, $10, $08, $10	; $8d82: 00 10 08 10	 Data
			.byte $10, $20, $f8, $20	; $8d86: 10 20 f8 20	 Data
			.byte $00, $20, $08, $20	; $8d8a: 00 20 08 20	 Data
			.byte $10, $30, $00, $30	; $8d8e: 10 30 00 30	 Data
			.byte $08, $30, $10, $30	; $8d92: 08 30 10 30	 Data
			.byte $18, $30, $20, $30	; $8d96: 18 30 20 30	 Data
			.byte $28, $30, $f8, $20	; $8d9a: 28 30 f8 20	 Data
			.byte $10, $20, $18, $20	; $8d9e: 10 20 18 20	 Data
			.byte $20, $20, $28, $20	; $8da2: 20 20 28 20	 Data
			.byte $30, $30, $08, $30	; $8da6: 30 30 08 30	 Data
			.byte $10, $30, $18, $30	; $8daa: 10 30 18 30	 Data
			.byte $20, $30, $28, $30	; $8dae: 20 30 28 30	 Data
			.byte $30, $40, $00, $40	; $8db2: 30 40 00 40	 Data
			.byte $08, $40, $10, $40	; $8db6: 08 40 10 40	 Data
			.byte $18, $40, $20, $40	; $8dba: 18 40 20 40	 Data
			.byte $28, $40, $30, $fb	; $8dbe: 28 40 30 fb	 Data
			.byte $10, $fb, $18, $fb	; $8dc2: 10 fb 18 fb	 Data
			.byte $20, $0b, $10, $0b	; $8dc6: 20 0b 10 0b	 Data
			.byte $18, $0b, $20, $fc	; $8dca: 18 0b 20 fc	 Data
			.byte $fc, $fb, $10, $fb	; $8dce: fc fb 10 fb	 Data
			.byte $18, $0b, $08, $0b	; $8dd2: 18 0b 08 0b	 Data
			.byte $10, $0b, $18, $fb	; $8dd6: 10 0b 18 fb	 Data
			.byte $08, $fb, $10, $fb	; $8dda: 08 fb 10 fb	 Data
			.byte $18, $0b, $08, $0b	; $8dde: 18 0b 08 0b	 Data
			.byte $10, $0b, $18, $0b	; $8de2: 10 0b 18 0b	 Data
			.byte $20, $fb, $10, $fb	; $8de6: 20 fb 10 fb	 Data
			.byte $18, $0b, $10, $0b	; $8dea: 18 0b 10 0b	 Data
			.byte $18, $0b, $20, $00	; $8dee: 18 0b 20 00	 Data
			.byte $00, $00, $00, $00	; $8df2: 00 00 00 00	 Data
			.byte $00, $00, $00, $01	; $8df6: 00 00 00 01	 Data
			.byte $01, $01, $01, $01	; $8dfa: 01 01 01 01	 Data
			.byte $01, $01, $01, $02	; $8dfe: 01 01 01 02	 Data
			.byte $02, $02, $02, $02	; $8e02: 02 02 02 02	 Data
			.byte $02, $02, $02, $03	; $8e06: 02 02 02 03	 Data
			.byte $03, $03, $03, $03	; $8e0a: 03 03 03 03	 Data
			.byte $03, $03, $03, $01	; $8e0e: 03 03 03 01	 Data
			.byte $9f, $92, $be, $91	; $8e12: 9f 92 be 91	 Data
			.byte $09, $8e, $01, $8e	; $8e16: 09 8e 01 8e	 Data
			.byte $f1, $8d, $01, $9f	; $8e1a: f1 8d 01 9f	 Data
			.byte $92, $bf, $91, $09	; $8e1e: 92 bf 91 09	 Data
			.byte $8e, $01, $8e, $f1	; $8e22: 8e 01 8e f1	 Data
			.byte $8d, $01, $9f, $92	; $8e26: 8d 01 9f 92	 Data
			.byte $c0, $91, $09, $8e	; $8e2a: c0 91 09 8e	 Data
			.byte $01, $8e, $f1, $8d	; $8e2e: 01 8e f1 8d	 Data
			.byte $01, $9f, $92, $c1	; $8e32: 01 9f 92 c1	 Data
			.byte $91, $09, $8e, $01	; $8e36: 91 09 8e 01	 Data
			.byte $8e, $f1, $8d, $01	; $8e3a: 8e f1 8d 01	 Data
			.byte $9f, $92, $c2, $91	; $8e3e: 9f 92 c2 91	 Data
			.byte $09, $8e, $01, $8e	; $8e42: 09 8e 01 8e	 Data
			.byte $f1, $8d, $01, $9f	; $8e46: f1 8d 01 9f	 Data
			.byte $92, $c3, $91, $01	; $8e4a: 92 c3 91 01	 Data
			.byte $8e, $f1, $8d, $09	; $8e4e: 8e f1 8d 09	 Data
			.byte $8e, $02, $a9, $92	; $8e52: 8e 02 a9 92	 Data
			.byte $c4, $91, $09, $8e	; $8e56: c4 91 09 8e	 Data
			.byte $01, $8e, $f1, $8d	; $8e5a: 01 8e f1 8d	 Data
			.byte $02, $a9, $92, $c6	; $8e5e: 02 a9 92 c6	 Data
			.byte $91, $09, $8e, $01	; $8e62: 91 09 8e 01	 Data
			.byte $8e, $f1, $8d, $02	; $8e66: 8e f1 8d 02	 Data
			.byte $a9, $92, $c8, $91	; $8e6a: a9 92 c8 91	 Data
			.byte $09, $8e, $01, $8e	; $8e6e: 09 8e 01 8e	 Data
			.byte $f1, $8d, $03, $9d	; $8e72: f1 8d 03 9d	 Data
			.byte $92, $ca, $91, $09	; $8e76: 92 ca 91 09	 Data
			.byte $8e, $01, $8e, $f1	; $8e7a: 8e 01 8e f1	 Data
			.byte $8d, $03, $9d, $92	; $8e7e: 8d 03 9d 92	 Data
			.byte $cd, $91, $09, $8e	; $8e82: cd 91 09 8e	 Data
			.byte $01, $8e, $f1, $8d	; $8e86: 01 8e f1 8d	 Data
			.byte $03, $9d, $92, $d0	; $8e8a: 03 9d 92 d0	 Data
			.byte $91, $09, $8e, $01	; $8e8e: 91 09 8e 01	 Data
			.byte $8e, $f1, $8d, $03	; $8e92: 8e f1 8d 03	 Data
			.byte $b1, $92, $d3, $91	; $8e96: b1 92 d3 91	 Data
			.byte $01, $8e, $02, $b7	; $8e9a: 01 8e 02 b7	 Data
			.byte $92, $d6, $91, $01	; $8e9e: 92 d6 91 01	 Data
			.byte $8e, $02, $bb, $92	; $8ea2: 8e 02 bb 92	 Data
			.byte $d8, $91, $01, $8e	; $8ea6: d8 91 01 8e	 Data
			.byte $03, $9d, $92, $da	; $8eaa: 03 9d 92 da	 Data
			.byte $91, $09, $8e, $01	; $8eae: 91 09 8e 01	 Data
			.byte $8e, $f1, $8d, $03	; $8eb2: 8e f1 8d 03	 Data
			.byte $9d, $92, $dd, $91	; $8eb6: 9d 92 dd 91	 Data
			.byte $09, $8e, $01, $8e	; $8eba: 09 8e 01 8e	 Data
			.byte $f1, $8d, $02, $a9	; $8ebe: f1 8d 02 a9	 Data
			.byte $92, $e0, $91, $09	; $8ec2: 92 e0 91 09	 Data
			.byte $8e, $01, $8e, $f1	; $8ec6: 8e 01 8e f1	 Data
			.byte $8d, $02, $a9, $92	; $8eca: 8d 02 a9 92	 Data
			.byte $e2, $91, $09, $8e	; $8ece: e2 91 09 8e	 Data
			.byte $01, $8e, $f1, $8d	; $8ed2: 01 8e f1 8d	 Data
			.byte $03, $9d, $92, $e4	; $8ed6: 03 9d 92 e4	 Data
			.byte $91, $09, $8e, $01	; $8eda: 91 09 8e 01	 Data
			.byte $8e, $f1, $8d, $02	; $8ede: 8e f1 8d 02	 Data
			.byte $a9, $92, $e7, $91	; $8ee2: a9 92 e7 91	 Data
			.byte $09, $8e, $01, $8e	; $8ee6: 09 8e 01 8e	 Data
			.byte $f1, $8d, $02, $a9	; $8eea: f1 8d 02 a9	 Data
			.byte $92, $e9, $91, $09	; $8eee: 92 e9 91 09	 Data
			.byte $8e, $01, $8e, $f1	; $8ef2: 8e 01 8e f1	 Data
			.byte $8d, $02, $a9, $92	; $8ef6: 8d 02 a9 92	 Data
			.byte $eb, $91, $09, $8e	; $8efa: eb 91 09 8e	 Data
			.byte $01, $8e, $f1, $8d	; $8efe: 01 8e f1 8d	 Data
			.byte $02, $a9, $92, $ed	; $8f02: 02 a9 92 ed	 Data
			.byte $91, $09, $8e, $01	; $8f06: 91 09 8e 01	 Data
			.byte $8e, $f1, $8d, $02	; $8f0a: 8e f1 8d 02	 Data
			.byte $a9, $92, $ef, $91	; $8f0e: a9 92 ef 91	 Data
			.byte $09, $8e, $01, $8e	; $8f12: 09 8e 01 8e	 Data
			.byte $f1, $8d, $01, $bf	; $8f16: f1 8d 01 bf	 Data
			.byte $92, $f1, $91, $01	; $8f1a: 92 f1 91 01	 Data
			.byte $8e, $01, $c1, $92	; $8f1e: 8e 01 c1 92	 Data
			.byte $f4, $91, $01, $8e	; $8f22: f4 91 01 8e	 Data
			.byte $02, $c3, $92, $f7	; $8f26: 02 c3 92 f7	 Data
			.byte $91, $01, $8e, $02	; $8f2a: 91 01 8e 02	 Data
			.byte $c3, $92, $f9, $91	; $8f2e: c3 92 f9 91	 Data
			.byte $01, $8e, $02, $c3	; $8f32: 01 8e 02 c3	 Data
			.byte $92, $f4, $91, $01	; $8f36: 92 f4 91 01	 Data
			.byte $8e, $02, $c7, $92	; $8f3a: 8e 02 c7 92	 Data
			.byte $f4, $91, $01, $8e	; $8f3e: f4 91 01 8e	 Data
			.byte $03, $cb, $92, $f1	; $8f42: 03 cb 92 f1	 Data
			.byte $91, $01, $8e, $01	; $8f46: 91 01 8e 01	 Data
			.byte $9f, $92, $fb, $91	; $8f4a: 9f 92 fb 91	 Data
			.byte $09, $8e, $01, $8e	; $8f4e: 09 8e 01 8e	 Data
			.byte $f1, $8d, $01, $9f	; $8f52: f1 8d 01 9f	 Data
			.byte $92, $fc, $91, $01	; $8f56: 92 fc 91 01	 Data
			.byte $8e, $f9, $8d, $09	; $8f5a: 8e f9 8d 09	 Data
			.byte $8e, $01, $9f, $92	; $8f5e: 8e 01 9f 92	 Data
			.byte $fd, $91, $01, $8e	; $8f62: fd 91 01 8e	 Data
			.byte $f9, $8d, $09, $8e	; $8f66: f9 8d 09 8e	 Data
			.byte $01, $9f, $92, $fe	; $8f6a: 01 9f 92 fe	 Data
			.byte $91, $01, $8e, $f9	; $8f6e: 91 01 8e f9	 Data
			.byte $8d, $09, $8e, $01	; $8f72: 8d 09 8e 01	 Data
			.byte $9f, $92, $ff, $91	; $8f76: 9f 92 ff 91	 Data
			.byte $f9, $8d, $09, $8e	; $8f7a: f9 8d 09 8e	 Data
			.byte $01, $8e, $01, $9f	; $8f7e: 01 8e 01 9f	 Data
			.byte $92, $00, $92, $f9	; $8f82: 92 00 92 f9	 Data
			.byte $8d, $09, $8e, $01	; $8f86: 8d 09 8e 01	 Data
			.byte $8e, $08, $d1, $92	; $8f8a: 8e 08 d1 92	 Data
			.byte $01, $92, $8f, $91	; $8f8e: 01 92 8f 91	 Data
			.byte $f9, $8d, $06, $e1	; $8f92: f9 8d 06 e1	 Data
			.byte $92, $09, $92, $90	; $8f96: 92 09 92 90	 Data
			.byte $91, $f9, $8d, $06	; $8f9a: 91 f9 8d 06	 Data
			.byte $ed, $92, $09, $92	; $8f9e: ed 92 09 92	 Data
			.byte $95, $91, $01, $8e	; $8fa2: 95 91 01 8e	 Data
			.byte $06, $ed, $92, $0f	; $8fa6: 06 ed 92 0f	 Data
			.byte $92, $95, $91, $01	; $8faa: 92 95 91 01	 Data
			.byte $8e, $06, $f9, $92	; $8fae: 8e 06 f9 92	 Data
			.byte $09, $92, $95, $91	; $8fb2: 09 92 95 91	 Data
			.byte $01, $8e, $04, $05	; $8fb6: 01 8e 04 05	 Data
			.byte $93, $15, $92, $9b	; $8fba: 93 15 92 9b	 Data
			.byte $91, $f9, $8d, $04	; $8fbe: 91 f9 8d 04	 Data
			.byte $05, $93, $19, $92	; $8fc2: 05 93 19 92	 Data
			.byte $9b, $91, $f9, $8d	; $8fc6: 9b 91 f9 8d	 Data
			.byte $03, $05, $93, $1d	; $8fca: 03 05 93 1d	 Data
			.byte $92, $9b, $91, $f9	; $8fce: 92 9b 91 f9	 Data
			.byte $8d, $03, $05, $93	; $8fd2: 8d 03 05 93	 Data
			.byte $21, $92, $9b, $91	; $8fd6: 21 92 9b 91	 Data
			.byte $f9, $8d, $03, $9d	; $8fda: f9 8d 03 9d	 Data
			.byte $92, $25, $92, $f9	; $8fde: 92 25 92 f9	 Data
			.byte $8d, $01, $8e, $03	; $8fe2: 8d 01 8e 03	 Data
			.byte $9d, $92, $28, $92	; $8fe6: 9d 92 28 92	 Data
			.byte $f9, $8d, $01, $8e	; $8fea: f9 8d 01 8e	 Data
			.byte $01, $9f, $92, $2b	; $8fee: 01 9f 92 2b	 Data
			.byte $92, $01, $8e, $01	; $8ff2: 92 01 8e 01	 Data
			.byte $9f, $92, $2c, $92	; $8ff6: 9f 92 2c 92	 Data
			.byte $01, $8e, $01, $9f	; $8ffa: 01 8e 01 9f	 Data
			.byte $92, $2d, $92, $01	; $8ffe: 92 2d 92 01	 Data
			.byte $8e, $01, $a9, $92	; $9002: 8e 01 a9 92	 Data
			.byte $2e, $92, $01, $8e	; $9006: 2e 92 01 8e	 Data
			.byte $01, $a9, $92, $30	; $900a: 01 a9 92 30	 Data
			.byte $92, $01, $8e, $01	; $900e: 92 01 8e 01	 Data
			.byte $9f, $92, $32, $92	; $9012: 9f 92 32 92	 Data
			.byte $01, $8e, $01, $9f	; $9016: 01 8e 01 9f	 Data
			.byte $92, $33, $92, $01	; $901a: 92 33 92 01	 Data
			.byte $8e, $02, $a9, $92	; $901e: 8e 02 a9 92	 Data
			.byte $34, $92, $a1, $91	; $9022: 34 92 a1 91	 Data
			.byte $02, $a9, $92, $36	; $9026: 02 a9 92 36	 Data
			.byte $92, $a1, $91, $02	; $902a: 92 a1 91 02	 Data
			.byte $a9, $92, $38, $92	; $902e: a9 92 38 92	 Data
			.byte $a1, $91, $02, $a9	; $9032: a1 91 02 a9	 Data
			.byte $92, $3a, $92, $a1	; $9036: 92 3a 92 a1	 Data
			.byte $91, $02, $a9, $92	; $903a: 91 02 a9 92	 Data
			.byte $3c, $92, $a3, $91	; $903e: 3c 92 a3 91	 Data
			.byte $02, $0d, $93, $3e	; $9042: 02 0d 93 3e	 Data
			.byte $92, $01, $8e, $02	; $9046: 92 01 8e 02	 Data
			.byte $11, $93, $40, $92	; $904a: 11 93 40 92	 Data
			.byte $01, $8e, $02, $a9	; $904e: 01 8e 02 a9	 Data
			.byte $92, $42, $92, $a5	; $9052: 92 42 92 a5	 Data
			.byte $91, $02, $a9, $92	; $9056: 91 02 a9 92	 Data
			.byte $38, $92, $a5, $91	; $905a: 38 92 a5 91	 Data
			.byte $02, $a9, $92, $3a	; $905e: 02 a9 92 3a	 Data
			.byte $92, $a5, $91, $04	; $9062: 92 a5 91 04	 Data
			.byte $15, $93, $44, $92	; $9066: 15 93 44 92	 Data
			.byte $a7, $91, $04, $15	; $906a: a7 91 04 15	 Data
			.byte $93, $48, $92, $a7	; $906e: 93 48 92 a7	 Data
			.byte $91, $02, $a9, $92	; $9072: 91 02 a9 92	 Data
			.byte $4c, $92, $ab, $91	; $9076: 4c 92 ab 91	 Data
			.byte $ad, $91, $02, $a9	; $907a: ad 91 02 a9	 Data
			.byte $92, $4e, $92, $ab	; $907e: 92 4e 92 ab	 Data
			.byte $91, $ad, $91, $02	; $9082: 91 ad 91 02	 Data
			.byte $a9, $92, $50, $92	; $9086: a9 92 50 92	 Data
			.byte $ab, $91, $ad, $91	; $908a: ab 91 ad 91	 Data
			.byte $02, $a9, $92, $52	; $908e: 02 a9 92 52	 Data
			.byte $92, $ab, $91, $ad	; $9092: 92 ab 91 ad	 Data
			.byte $91, $01, $9f, $92	; $9096: 91 01 9f 92	 Data
			.byte $54, $92, $01, $8e	; $909a: 54 92 01 8e	 Data
			.byte $f1, $8d, $04, $1d	; $909e: f1 8d 04 1d	 Data
			.byte $93, $55, $92, $09	; $90a2: 93 55 92 09	 Data
			.byte $8e, $01, $8e, $04	; $90a6: 8e 01 8e 04	 Data
			.byte $1d, $93, $59, $92	; $90aa: 1d 93 59 92	 Data
			.byte $09, $8e, $01, $8e	; $90ae: 09 8e 01 8e	 Data
			.byte $04, $1d, $93, $5d	; $90b2: 04 1d 93 5d	 Data
			.byte $92, $09, $8e, $01	; $90b6: 92 09 8e 01	 Data
			.byte $8e, $04, $1d, $93	; $90ba: 8e 04 1d 93	 Data
			.byte $61, $92, $09, $8e	; $90be: 61 92 09 8e	 Data
			.byte $01, $8e, $02, $25	; $90c2: 01 8e 02 25	 Data
			.byte $93, $65, $92, $09	; $90c6: 93 65 92 09	 Data
			.byte $8e, $01, $8e, $01	; $90ca: 8e 01 8e 01	 Data
			.byte $29, $93, $67, $92	; $90ce: 29 93 67 92	 Data
			.byte $09, $8e, $01, $8e	; $90d2: 09 8e 01 8e	 Data
			.byte $01, $29, $93, $68	; $90d6: 01 29 93 68	 Data
			.byte $92, $09, $8e, $01	; $90da: 92 09 8e 01	 Data
			.byte $8e, $06, $2b, $93	; $90de: 8e 06 2b 93	 Data
			.byte $69, $92, $ff, $8d	; $90e2: 69 92 ff 8d	 Data
			.byte $04, $2b, $93, $69	; $90e6: 04 2b 93 69	 Data
			.byte $92, $ff, $8d, $02	; $90ea: 92 ff 8d 02	 Data
			.byte $2b, $93, $69, $92	; $90ee: 2b 93 69 92	 Data
			.byte $ff, $8d, $03, $9d	; $90f2: ff 8d 03 9d	 Data
			.byte $92, $6f, $92, $f9	; $90f6: 92 6f 92 f9	 Data
			.byte $8d, $01, $8e, $03	; $90fa: 8d 01 8e 03	 Data
			.byte $9d, $92, $72, $92	; $90fe: 9d 92 72 92	 Data
			.byte $f9, $8d, $01, $8e	; $9102: f9 8d 01 8e	 Data
			.byte $03, $9d, $92, $75	; $9106: 03 9d 92 75	 Data
			.byte $92, $f9, $8d, $01	; $910a: 92 f9 8d 01	 Data
			.byte $8e, $01, $9f, $92	; $910e: 8e 01 9f 92	 Data
			.byte $78, $92, $01, $8e	; $9112: 78 92 01 8e	 Data
			.byte $f9, $8d, $01, $9f	; $9116: f9 8d 01 9f	 Data
			.byte $92, $79, $92, $01	; $911a: 92 79 92 01	 Data
			.byte $8e, $f9, $8d, $01	; $911e: 8e f9 8d 01	 Data
			.byte $9f, $92, $7a, $92	; $9122: 9f 92 7a 92	 Data
			.byte $01, $8e, $f9, $8d	; $9126: 01 8e f9 8d	 Data
			.byte $02, $a9, $92, $7b	; $912a: 02 a9 92 7b	 Data
			.byte $92, $09, $8e, $01	; $912e: 92 09 8e 01	 Data
			.byte $8e, $02, $a9, $92	; $9132: 8e 02 a9 92	 Data
			.byte $7d, $92, $09, $8e	; $9136: 7d 92 09 8e	 Data
			.byte $01, $8e, $02, $a9	; $913a: 01 8e 02 a9	 Data
			.byte $92, $7f, $92, $09	; $913e: 92 7f 92 09	 Data
			.byte $8e, $01, $8e, $02	; $9142: 8e 01 8e 02	 Data
			.byte $a9, $92, $81, $92	; $9146: a9 92 81 92	 Data
			.byte $09, $8e, $01, $8e	; $914a: 09 8e 01 8e	 Data
			.byte $05, $37, $93, $83	; $914e: 05 37 93 83	 Data
			.byte $92, $af, $91, $b4	; $9152: 92 af 91 b4	 Data
			.byte $91, $05, $41, $93	; $9156: 91 05 41 93	 Data
			.byte $88, $92, $09, $8e	; $915a: 88 92 09 8e	 Data
			.byte $04, $4b, $93, $8d	; $915e: 04 4b 93 8d	 Data
			.byte $92, $09, $8e, $05	; $9162: 92 09 8e 05	 Data
			.byte $4b, $93, $91, $92	; $9166: 4b 93 91 92	 Data
			.byte $b9, $91, $02, $55	; $916a: b9 91 02 55	 Data
			.byte $93, $96, $92, $09	; $916e: 93 96 92 09	 Data
			.byte $8e, $01, $59, $93	; $9172: 8e 01 59 93	 Data
			.byte $98, $92, $09, $8e	; $9176: 98 92 09 8e	 Data
			.byte $02, $5b, $93, $99	; $917a: 02 5b 93 99	 Data
			.byte $92, $01, $8e, $02	; $917e: 92 01 8e 02	 Data
			.byte $5f, $93, $99, $92	; $9182: 5f 93 99 92	 Data
			.byte $01, $8e, $02, $63	; $9186: 01 8e 02 63	 Data
			.byte $93, $99, $92, $01	; $918a: 93 99 92 01	 Data
			.byte $8e, $01, $01, $01	; $918e: 8e 01 01 01	 Data
			.byte $01, $01, $01, $02	; $9192: 01 01 01 02	 Data
			.byte $02, $02, $02, $02	; $9196: 02 02 02 02	 Data
			.byte $01, $01, $01, $01	; $919a: 01 01 01 01	 Data
			.byte $02, $00, $c0, $02	; $919e: 02 00 c0 02	 Data
			.byte $c2, $02, $42, $03	; $91a2: c2 02 42 03	 Data
			.byte $43, $01, $01, $81	; $91a6: 43 01 01 81	 Data
			.byte $81, $00, $c0, $01	; $91aa: 81 00 c0 01	 Data
			.byte $c1, $02, $42, $42	; $91ae: c1 02 42 42	 Data
			.byte $42, $c2, $02, $42	; $91b2: 42 c2 02 42	 Data
			.byte $42, $41, $c1, $03	; $91b6: 42 41 c1 03	 Data
			.byte $03, $03, $03, $43	; $91ba: 03 03 03 43	 Data
			.byte $db, $dd, $df, $e3	; $91be: db dd df e3	 Data
			.byte $e5, $e9, $c1, $c3	; $91c2: e5 e9 c1 c3	 Data
			.byte $c5, $c7, $c9, $cb	; $91c6: c5 c7 c9 cb	 Data
			.byte $cd, $cf, $d1, $cd	; $91ca: cd cf d1 cd	 Data
			.byte $d3, $d5, $cd, $d7	; $91ce: d3 d5 cd d7	 Data
			.byte $d9, $eb, $ed, $ef	; $91d2: d9 eb ed ef	 Data
			.byte $f1, $f3, $f5, $f7	; $91d6: f1 f3 f5 f7	 Data
			.byte $a7, $a9, $ab, $ad	; $91da: a7 a9 ab ad	 Data
			.byte $af, $b1, $b3, $b5	; $91de: af b1 b3 b5	 Data
			.byte $b7, $b9, $bb, $bd	; $91e2: b7 b9 bb bd	 Data
			.byte $bf, $cf, $d1, $d3	; $91e6: bf cf d1 d3	 Data
			.byte $d5, $d7, $d9, $db	; $91ea: d5 d7 d9 db	 Data
			.byte $dd, $df, $e1, $e3	; $91ee: dd df e1 e3	 Data
			.byte $e3, $e3, $a1, $a1	; $91f2: e3 e3 a1 a1	 Data
			.byte $a1, $a3, $a3, $a5	; $91f6: a1 a3 a3 a5	 Data
			.byte $a5, $cd, $f9, $fb	; $91fa: a5 cd f9 fb	 Data
			.byte $fd, $ff, $e9, $dd	; $91fe: fd ff e9 dd	 Data
			.byte $df, $e1, $e3, $e5	; $9202: df e1 e3 e5	 Data
			.byte $e7, $d1, $d1, $d3	; $9206: e7 d1 d1 d3	 Data
			.byte $d5, $d7, $d9, $db	; $920a: d5 d7 d9 db	 Data
			.byte $d1, $cf, $d5, $d7	; $920e: d1 cf d5 d7	 Data
			.byte $d9, $db, $d1, $bd	; $9212: d9 db d1 bd	 Data
			.byte $bf, $c1, $d1, $bd	; $9216: bf c1 d1 bd	 Data
			.byte $c3, $c5, $d1, $c7	; $921a: c3 c5 d1 c7	 Data
			.byte $b9, $cb, $d1, $cd	; $921e: b9 cb d1 cd	 Data
			.byte $cf, $bb, $d1, $cb	; $9222: cf bb d1 cb	 Data
			.byte $cd, $cf, $cb, $c7	; $9226: cd cf cb c7	 Data
			.byte $cf, $c1, $c3, $c5	; $922a: cf c1 c3 c5	 Data
			.byte $c7, $c7, $0f, $0f	; $922e: c7 c7 0f 0f	 Data
			.byte $e0, $e2, $d9, $d9	; $9232: e0 e2 d9 d9	 Data
			.byte $db, $db, $dd, $dd	; $9236: db db dd dd	 Data
			.byte $df, $df, $e5, $e7	; $923a: df df e5 e7	 Data
			.byte $f9, $e1, $f9, $e3	; $923e: f9 e1 f9 e3	 Data
			.byte $d9, $db, $e1, $e3	; $9242: d9 db e1 e3	 Data
			.byte $e1, $e3, $e5, $e7	; $9246: e1 e3 e5 e7	 Data
			.byte $e5, $e7, $e6, $e6	; $924a: e5 e7 e6 e6	 Data
			.byte $e8, $e8, $ea, $ea	; $924e: e8 e8 ea ea	 Data
			.byte $ec, $ec, $e4, $cf	; $9252: ec ec e4 cf	 Data
			.byte $d1, $d3, $d5, $d7	; $9256: d1 d3 d5 d7	 Data
			.byte $d9, $db, $dd, $df	; $925a: d9 db dd df	 Data
			.byte $e1, $e3, $e5, $e7	; $925e: e1 e3 e5 e7	 Data
			.byte $e9, $eb, $ed, $ef	; $9262: e9 eb ed ef	 Data
			.byte $f1, $f3, $f5, $cb	; $9266: f1 f3 f5 cb	 Data
			.byte $cd, $f5, $f7, $f5	; $926a: cd f5 f7 f5	 Data
			.byte $f7, $d5, $d7, $d9	; $926e: f7 d5 d7 d9	 Data
			.byte $d5, $db, $dd, $df	; $9272: d5 db dd df	 Data
			.byte $e7, $eb, $e1, $e3	; $9276: e7 eb e1 e3	 Data
			.byte $e5, $ed, $ef, $ed	; $927a: e5 ed ef ed	 Data
			.byte $f1, $f3, $f5, $f3	; $927e: f1 f3 f5 f3	 Data
			.byte $f7, $ea, $e8, $e8	; $9282: f7 ea e8 e8	 Data
			.byte $e6, $e6, $73, $75	; $9286: e6 e6 73 75	 Data
			.byte $69, $6b, $6d, $73	; $928a: 69 6b 6d 73	 Data
			.byte $75, $65, $67, $73	; $928e: 75 65 67 73	 Data
			.byte $75, $6f, $71, $69	; $9292: 75 6f 71 69	 Data
			.byte $79, $7b, $77, $ec	; $9296: 79 7b 77 ec	 Data
			.byte $ec, $f8, $ec, $f8	; $929a: ec f8 ec f8	 Data
			.byte $f4, $f8, $fc, $f8	; $929e: f4 f8 fc f8	 Data
			.byte $04, $f8, $0c, $f8	; $92a2: 04 f8 0c f8	 Data
			.byte $e8, $f8, $f0, $f8	; $92a6: e8 f8 f0 f8	 Data
			.byte $f8, $f8, $00, $f8	; $92aa: f8 f8 00 f8	 Data
			.byte $08, $f8, $10, $fc	; $92ae: 08 f8 10 fc	 Data
			.byte $f0, $fc, $f8, $fc	; $92b2: f0 fc f8 fc	 Data
			.byte $00, $fc, $f8, $fc	; $92b6: 00 fc f8 fc	 Data
			.byte $00, $04, $f8, $fc	; $92ba: 00 04 f8 fc	 Data
			.byte $00, $fa, $ff, $f8	; $92be: 00 fa ff f8	 Data
			.byte $ff, $f0, $ff, $00	; $92c2: ff f0 ff 00	 Data
			.byte $ff, $ee, $ff, $02	; $92c6: ff ee ff 02	 Data
			.byte $ff, $ea, $ff, $fa	; $92ca: ff ea ff fa	 Data
			.byte $ff, $20, $ff, $f8	; $92ce: ff 20 ff f8	 Data
			.byte $e8, $f8, $f0, $f8	; $92d2: e8 f8 f0 f8	 Data
			.byte $f8, $f8, $00, $f8	; $92d6: f8 f8 00 f8	 Data
			.byte $08, $f8, $10, $fe	; $92da: 08 f8 10 fe	 Data
			.byte $18, $02, $18, $f8	; $92de: 18 02 18 f8	 Data
			.byte $ec, $f8, $f4, $f8	; $92e2: ec f8 f4 f8	 Data
			.byte $fc, $f8, $04, $f8	; $92e6: fc f8 04 f8	 Data
			.byte $0c, $02, $14, $f8	; $92ea: 0c 02 14 f8	 Data
			.byte $ec, $f8, $f4, $f8	; $92ee: ec f8 f4 f8	 Data
			.byte $fc, $f8, $04, $f8	; $92f2: fc f8 04 f8	 Data
			.byte $0c, $01, $14, $f8	; $92f6: 0c 01 14 f8	 Data
			.byte $ec, $f8, $f4, $f8	; $92fa: ec f8 f4 f8	 Data
			.byte $fc, $f8, $04, $f8	; $92fe: fc f8 04 f8	 Data
			.byte $0c, $fe, $14, $f8	; $9302: 0c fe 14 f8	 Data
			.byte $f4, $f8, $fc, $f8	; $9306: f4 f8 fc f8	 Data
			.byte $04, $03, $0c, $f8	; $930a: 04 03 0c f8	 Data
			.byte $fc, $f0, $03, $f8	; $930e: fc f0 03 f8	 Data
			.byte $fc, $f8, $04, $f0	; $9312: fc f8 04 f0	 Data
			.byte $f8, $f0, $00, $00	; $9316: f8 f0 00 00	 Data
			.byte $f8, $00, $00, $f4	; $931a: f8 00 00 f4	 Data
			.byte $f8, $f4, $00, $04	; $931e: f8 f4 00 04	 Data
			.byte $f8, $04, $00, $fc	; $9322: f8 04 00 fc	 Data
			.byte $f8, $fc, $00, $fc	; $9326: f8 fc 00 fc	 Data
			.byte $fc, $fe, $f8, $fe	; $932a: fc fe f8 fe	 Data
			.byte $00, $04, $fe, $fc	; $932e: 00 04 fe fc	 Data
			.byte $06, $04, $04, $fc	; $9332: 06 04 04 fc	 Data
			.byte $0c, $f8, $f8, $f4	; $9336: 0c f8 f8 f4	 Data
			.byte $00, $fc, $00, $f5	; $933a: 00 fc 00 f5	 Data
			.byte $05, $fb, $05, $f8	; $933e: 05 fb 05 f8	 Data
			.byte $f8, $f8, $00, $08	; $9342: f8 f8 00 08	 Data
			.byte $f0, $08, $f8, $08	; $9346: f0 08 f8 08	 Data
			.byte $00, $f8, $f8, $f8	; $934a: 00 f8 f8 f8	 Data
			.byte $00, $08, $f8, $08	; $934e: 00 08 f8 08	 Data
			.byte $00, $08, $08, $00	; $9352: 00 08 08 00	 Data
			.byte $f8, $00, $00, $00	; $9356: f8 00 00 00	 Data
			.byte $fc, $f8, $fc, $fa	; $935a: fc f8 fc fa	 Data
			.byte $fc, $f8, $fc, $fc	; $935e: fc f8 fc fc	 Data
			.byte $fc, $f8, $fc, $fe	; $9362: fc f8 fc fe	 Data
			.byte $fc	; $9366: fc			Data

;-------------------------------------------------------------------------------
PRG03_9367:
			jsr Goto_FadeInOut			; $9367: 20 ae c0
			jsr Goto_ClearScreen			; $936a: 20 7e c0
			ldx #$23				; $936d: a2 23
			ldy #$c0				; $936f: a0 c0
			lda #$40				; $9371: a9 40
			sta $a3			; $9373: 85 a3
			lda #$ff				; $9375: a9 ff
			jsr Main_c01e			; $9377: 20 1e c0
			ldx #$27				; $937a: a2 27
			ldy #$c0				; $937c: a0 c0
			lda #$40				; $937e: a9 40
			sta $a3			; $9380: 85 a3
			lda #$ff				; $9382: a9 ff
			jsr Main_c01e			; $9384: 20 1e c0
			lda #$02				; $9387: a9 02
			sta $012b			; $9389: 8d 2b 01
			ldy #$00				; $938c: a0 00
PRG03_938e:
			sty $a8			; $938e: 84 a8
			jsr PRG03_96ec			; $9390: 20 ec 96
			ldy $a8			; $9393: a4 a8
			iny				; $9395: c8
			cpy #$53				; $9396: c0 53
			bcc PRG03_938e			; $9398: 90 f4
			LoadAddress $2062
			lda #$db				; $93a2: a9 db
			sta $a2			; $93a4: 85 a2
			lda #$fd				; $93a6: a9 fd
			sta $a1			; $93a8: 85 a1
			lda #$de				; $93aa: a9 de
			sta $a4			; $93ac: 85 a4
			lda #$fe				; $93ae: a9 fe
			sta $a3			; $93b0: 85 a3
			ldy #$00				; $93b2: a0 00
			jsr PRG03_95ec			; $93b4: 20 ec 95
			LoadAddress $247f
			lda #$fd				; $93bf: a9 fd
			sta $a2			; $93c1: 85 a2
			lda #$db				; $93c3: a9 db
			sta $a1			; $93c5: 85 a1
			lda #$df				; $93c7: a9 df
			sta $a4			; $93c9: 85 a4
			lda #$ff				; $93cb: a9 ff
			sta $a3			; $93cd: 85 a3
			ldy #$4d				; $93cf: a0 4d
			jsr PRG03_95ec			; $93d1: 20 ec 95
PRG03_93d4:
			ldy #$05				; $93d4: a0 05
PRG03_93d6:
			sty $a8			; $93d6: 84 a8
			jsr PRG03_9440			; $93d8: 20 40 94
			lda $a8			; $93db: a5 a8
			clc				; $93dd: 18
			adc #$05				; $93de: 69 05
			sta $a8			; $93e0: 85 a8
			tay				; $93e2: a8
			cmp #$57				; $93e3: c9 57
			beq PRG03_93f3			; $93e5: f0 0c
			jsr PRG03_9440			; $93e7: 20 40 94
			lda $a8			; $93ea: a5 a8
			clc				; $93ec: 18
			adc #$06				; $93ed: 69 06
			tay				; $93ef: a8
			jmp PRG03_93d6			; $93f0: 4c d6 93

;-------------------------------------------------------------------------------
PRG03_93f3:
			jmp PRG03_93f6			; $93f3: 4c f6 93

;-------------------------------------------------------------------------------
PRG03_93f6:
			ldy #$00				; $93f6: a0 00
			sty $ab			; $93f8: 84 ab
PRG03_93fa:
			lda PRG03_9428,y			; $93fa: b9 28 94
			tay				; $93fd: a8
			lda ($18),y		; $93fe: b1 18
			beq PRG03_941f			; $9400: f0 1d
			ldy $ab			; $9402: a4 ab
			LoadAddressFromTable PRG03_9438, PRG03_9430, y
			lda #$de				; $940e: a9 de
			jsr Main_c0f9			; $9410: 20 f9 c0
			clc				; $9413: 18
			lda LoadAddress_Low			; $9414: a5 a5
			adc #$04				; $9416: 69 04
			sta LoadAddress_Low			; $9418: 85 a5
			lda #$df				; $941a: a9 df
			jsr Main_c0f9			; $941c: 20 f9 c0
PRG03_941f:
			inc $ab			; $941f: e6 ab
			ldy $ab			; $9421: a4 ab
			cpy #$08				; $9423: c0 08
			bcc PRG03_93fa			; $9425: 90 d3
			rts				; $9427: 60

;-------------------------------------------------------------------------------
PRG03_9428:
			.byte $00, $0b, $16, $21	; $9428: 00 0b 16 21	 Data
			.byte $2c, $37, $42, $4d	; $942c: 2c 37 42 4d	 Data

PRG03_9430:
			.byte $20, $20, $20, $20	; $9430: 20 20 20 20	 Data
			.byte $24, $24, $24, $24	; $9434: 24 24 24 24	 Data
PRG03_9438:
			.byte $62, $6a, $72, $7a	; $9438: 62 6a 72 7a	 Data
			.byte $62, $6a, $72, $7a	; $943c: 62 6a 72 7a	 Data

;-------------------------------------------------------------------------------
PRG03_9440:
			lda ($18),y		; $9440: b1 18
			bne PRG03_9445			; $9442: d0 01
			rts				; $9444: 60

;-------------------------------------------------------------------------------
PRG03_9445:
			sty $a0			; $9445: 84 a0
			tya				; $9447: 98
			jsr PRG03_989d			; $9448: 20 9d 98
			lda $a2			; $944b: a5 a2
			cmp #$07				; $944d: c9 07
			bne PRG03_9454			; $944f: d0 03
			jmp PRG03_9513			; $9451: 4c 13 95

;-------------------------------------------------------------------------------
PRG03_9454:
			lda LoadAddress_High			; $9454: a5 a6
			bne PRG03_9460			; $9456: d0 08
			LoadAddressTransfer $a3
PRG03_9460:
			clc				; $9460: 18
			LoadAddressOffset $3f, $00, 1
			lda #$03				; $946d: a9 03
			jsr Main_c0e4			; $946f: 20 e4 c0
			ldx $ca			; $9472: a6 ca
			inx				; $9474: e8
			lda LoadAddress_High			; $9475: a5 a6
			ora #$80				; $9477: 09 80
			sta $0700,x		; $9479: 9d 00 07
			inx				; $947c: e8
			lda LoadAddress_Low			; $947d: a5 a5
			sta $0700,x		; $947f: 9d 00 07
			inx				; $9482: e8
			lda #$db				; $9483: a9 db
			sta $0700,x		; $9485: 9d 00 07
			inx				; $9488: e8
			lda #$fd				; $9489: a9 fd
			sta $0700,x		; $948b: 9d 00 07
			inx				; $948e: e8
			lda #$fe				; $948f: a9 fe
			sta $0700,x		; $9491: 9d 00 07
			inx				; $9494: e8
			lda #$03				; $9495: a9 03
			jsr Main_c0ea			; $9497: 20 ea c0
			clc				; $949a: 18
			LoadAddressOffset $05, $00, 1
			lda #$03				; $94a7: a9 03
			jsr Main_c0e4			; $94a9: 20 e4 c0
			ldx $ca			; $94ac: a6 ca
			inx				; $94ae: e8
			lda LoadAddress_High			; $94af: a5 a6
			ora #$80				; $94b1: 09 80
			sta $0700,x		; $94b3: 9d 00 07
			inx				; $94b6: e8
			lda LoadAddress_Low			; $94b7: a5 a5
			sta $0700,x		; $94b9: 9d 00 07
			inx				; $94bc: e8
			lda #$fd				; $94bd: a9 fd
			sta $0700,x		; $94bf: 9d 00 07
			inx				; $94c2: e8
			lda #$db				; $94c3: a9 db
			sta $0700,x		; $94c5: 9d 00 07
			inx				; $94c8: e8
			lda #$ff				; $94c9: a9 ff
			sta $0700,x		; $94cb: 9d 00 07
			inx				; $94ce: e8
			lda #$03				; $94cf: a9 03
			jsr Main_c0ea			; $94d1: 20 ea c0
			clc				; $94d4: 18
			LoadAddressOffset $3c, $00, 1
			lda #$04				; $94e1: a9 04
			jsr Main_c0e4			; $94e3: 20 e4 c0
			ldx $ca			; $94e6: a6 ca
			inx				; $94e8: e8
			lda LoadAddress_High			; $94e9: a5 a6
			sta $0700,x		; $94eb: 9d 00 07
			inx				; $94ee: e8
			lda LoadAddress_Low			; $94ef: a5 a5
			sta $0700,x		; $94f1: 9d 00 07
			inx				; $94f4: e8
			lda #$fd				; $94f5: a9 fd
			sta $0700,x		; $94f7: 9d 00 07
			inx				; $94fa: e8
			lda #$dc				; $94fb: a9 dc
			sta $0700,x		; $94fd: 9d 00 07
			inx				; $9500: e8
			lda #$dc				; $9501: a9 dc
			sta $0700,x		; $9503: 9d 00 07
			inx				; $9506: e8
			lda #$db				; $9507: a9 db
			sta $0700,x		; $9509: 9d 00 07
			inx				; $950c: e8
			lda #$04				; $950d: a9 04
			jsr Main_c0ea			; $950f: 20 ea c0
			rts				; $9512: 60

;-------------------------------------------------------------------------------
PRG03_9513:
			clc				; $9513: 18
			LoadAddressOffset $3f, $00, 1
			lda #$03				; $9520: a9 03
			jsr Main_c0e4			; $9522: 20 e4 c0
			ldx $ca			; $9525: a6 ca
			inx				; $9527: e8
			lda LoadAddress_High			; $9528: a5 a6
			ora #$80				; $952a: 09 80
			sta $0700,x		; $952c: 9d 00 07
			inx				; $952f: e8
			lda LoadAddress_Low		; $9530: a5 a5
			sta $0700,x		; $9532: 9d 00 07
			inx				; $9535: e8
			lda #$db				; $9536: a9 db
			sta $0700,x		; $9538: 9d 00 07
			inx				; $953b: e8
			lda #$fd				; $953c: a9 fd
			sta $0700,x		; $953e: 9d 00 07
			inx				; $9541: e8
			lda #$fe				; $9542: a9 fe
			sta $0700,x		; $9544: 9d 00 07
			inx				; $9547: e8
			lda #$03				; $9548: a9 03
			jsr Main_c0ea			; $954a: 20 ea c0
			clc				; $954d: 18
			LoadAddressOffset $41, $00, 1
			lda #$01				; $955a: a9 01
			jsr Main_c0e4			; $955c: 20 e4 c0
			ldx $ca			; $955f: a6 ca
			inx				; $9561: e8
			lda LoadAddress_High			; $9562: a5 a6
			sta $0700,x		; $9564: 9d 00 07
			inx				; $9567: e8
			lda LoadAddress_Low		; $9568: a5 a5
			sta $0700,x		; $956a: 9d 00 07
			inx				; $956d: e8
			lda #$fd				; $956e: a9 fd
			sta $0700,x		; $9570: 9d 00 07
			inx				; $9573: e8
			lda #$01				; $9574: a9 01
			jsr Main_c0ea			; $9576: 20 ea c0
			clc				; $9579: 18
			lda $a3			; $957a: a5 a3
			adc #$44				; $957c: 69 44
			sta $a3			; $957e: 85 a3
			lda $a4			; $9580: a5 a4
			adc #$00				; $9582: 69 00
			sta $a4			; $9584: 85 a4
			lda #$03				; $9586: a9 03
			jsr Main_c0e4			; $9588: 20 e4 c0
			ldx $ca			; $958b: a6 ca
			inx				; $958d: e8
			lda $a4			; $958e: a5 a4
			ora #$80				; $9590: 09 80
			sta $0700,x		; $9592: 9d 00 07
			inx				; $9595: e8
			lda $a3			; $9596: a5 a3
			sta $0700,x		; $9598: 9d 00 07
			inx				; $959b: e8
			lda #$fd				; $959c: a9 fd
			sta $0700,x		; $959e: 9d 00 07
			inx				; $95a1: e8
			lda #$db				; $95a2: a9 db
			sta $0700,x		; $95a4: 9d 00 07
			inx				; $95a7: e8
			lda #$ff				; $95a8: a9 ff
			sta $0700,x		; $95aa: 9d 00 07
			inx				; $95ad: e8
			lda #$03				; $95ae: a9 03
			jsr Main_c0ea			; $95b0: 20 ea c0
			clc				; $95b3: 18
			lda $a3			; $95b4: a5 a3
			adc #$3d				; $95b6: 69 3d
			sta $a3			; $95b8: 85 a3
			lda $a4			; $95ba: a5 a4
			adc #$00				; $95bc: 69 00
			sta $a4			; $95be: 85 a4
			lda #$03				; $95c0: a9 03
			jsr Main_c0e4			; $95c2: 20 e4 c0
			ldx $ca			; $95c5: a6 ca
			inx				; $95c7: e8
			lda $a4			; $95c8: a5 a4
			sta $0700,x		; $95ca: 9d 00 07
			inx				; $95cd: e8
			lda $a3			; $95ce: a5 a3
			sta $0700,x		; $95d0: 9d 00 07
			inx				; $95d3: e8
			lda #$dc				; $95d4: a9 dc
			sta $0700,x		; $95d6: 9d 00 07
			inx				; $95d9: e8
			lda #$dc				; $95da: a9 dc
			sta $0700,x		; $95dc: 9d 00 07
			inx				; $95df: e8
			lda #$db				; $95e0: a9 db
			sta $0700,x		; $95e2: 9d 00 07
			inx				; $95e5: e8
			lda #$03				; $95e6: a9 03
			jsr Main_c0ea			; $95e8: 20 ea c0
			rts				; $95eb: 60

;-------------------------------------------------------------------------------
PRG03_95ec:
			lda #$18				; $95ec: a9 18
			jsr Main_c0e4			; $95ee: 20 e4 c0
			lda #$06				; $95f1: a9 06
			sta $a0			; $95f3: 85 a0
			ldx $ca			; $95f5: a6 ca
			inx				; $95f7: e8
			lda LoadAddress_High			; $95f8: a5 a6
			ora #$80				; $95fa: 09 80
			sta $0700,x		; $95fc: 9d 00 07
			inx				; $95ff: e8
			lda LoadAddress_Low			; $9600: a5 a5
			sta $0700,x		; $9602: 9d 00 07
			inx				; $9605: e8
PRG03_9606:
			lda ($18),y		; $9606: b1 18
			bne PRG03_9625			; $9608: d0 1b
			lda #$00				; $960a: a9 00
			sta $0700,x		; $960c: 9d 00 07
			inx				; $960f: e8
			lda #$00				; $9610: a9 00
			sta $0700,x		; $9612: 9d 00 07
			inx				; $9615: e8
			lda #$00				; $9616: a9 00
			sta $0700,x		; $9618: 9d 00 07
			inx				; $961b: e8
			lda #$00				; $961c: a9 00
			sta $0700,x		; $961e: 9d 00 07
			inx				; $9621: e8
			jmp PRG03_963d			; $9622: 4c 3d 96

;-------------------------------------------------------------------------------
PRG03_9625:
			lda $a4			; $9625: a5 a4
			sta $0700,x		; $9627: 9d 00 07
			inx				; $962a: e8
			lda $a2			; $962b: a5 a2
			sta $0700,x		; $962d: 9d 00 07
			inx				; $9630: e8
			lda $a1			; $9631: a5 a1
			sta $0700,x		; $9633: 9d 00 07
			inx				; $9636: e8
			lda $a3			; $9637: a5 a3
			sta $0700,x		; $9639: 9d 00 07
			inx				; $963c: e8
PRG03_963d:
			iny				; $963d: c8
			dec $a0			; $963e: c6 a0
			bne PRG03_9606			; $9640: d0 c4
			lda #$18				; $9642: a9 18
			jmp Main_c0ea			; $9644: 4c ea c0

;-------------------------------------------------------------------------------
PRG03_9647:
			lda #$00				; $9647: a9 00
			sta $a0			; $9649: 85 a0
			tya				; $964b: 98
			asl				; $964c: 0a
			asl				; $964d: 0a
			asl				; $964e: 0a
			clc				; $964f: 18
			adc #$b7				; $9650: 69 b7
			sta $1a			; $9652: 85 1a
			lda #$00				; $9654: a9 00
			adc #$af				; $9656: 69 af
			sta $1b			; $9658: 85 1b
			rts				; $965a: 60

;-------------------------------------------------------------------------------
PRG03_965b:
			tya				; $965b: 98
			pha				; $965c: 48
			ldy v_PlanetID			; $965d: ac 58 01
			lda BoardDataTable_L,y ; Move lower byte of address in $18
			sta $18			; $9663: 85 18
			lda BoardDataTable_H,y ; Move high byte of address in $19
			sta $19			; $9668: 85 19
			pla				; $966a: 68
			tay				; $966b: a8
			lda ($18),y		; $966c: b1 18
			sec				; $966e: 38
			rts				; $966f: 60

;-------------------------------------------------------------------------------
PRG03_9670:
			lda $a1			; $9670: a5 a1
			beq PRG03_96a4			; $9672: f0 30
			dey				; $9674: 88
			jmp PRG03_965b			; $9675: 4c 5b 96

;-------------------------------------------------------------------------------
PRG03_9678:
			lda $a2			; $9678: a5 a2
			and #$01				; $967a: 29 01
			bne PRG03_9686			; $967c: d0 08
			lda $a1			; $967e: a5 a1
			cmp #$05				; $9680: c9 05
			bcs PRG03_96a4			; $9682: b0 20
			bcc PRG03_968c			; $9684: 90 06
PRG03_9686:
			lda $a1			; $9686: a5 a1
			cmp #$04				; $9688: c9 04
			bcs PRG03_96a4			; $968a: b0 18
PRG03_968c:
			iny				; $968c: c8
			jmp PRG03_965b			; $968d: 4c 5b 96

;-------------------------------------------------------------------------------
PRG03_9690:
			lda $a2			; $9690: a5 a2
			beq PRG03_96a4			; $9692: f0 10
			and #$01				; $9694: 29 01
			bne PRG03_969c			; $9696: d0 04
			lda $a1			; $9698: a5 a1
			beq PRG03_96a4			; $969a: f0 08
PRG03_969c:
			tya				; $969c: 98
			clc				; $969d: 18
			adc #$fa				; $969e: 69 fa
			tay				; $96a0: a8
			jmp PRG03_965b			; $96a1: 4c 5b 96

;-------------------------------------------------------------------------------
PRG03_96a4:
			lda #$00				; $96a4: a9 00
			clc				; $96a6: 18
			rts				; $96a7: 60

;-------------------------------------------------------------------------------
PRG03_96a8:
			lda $a2			; $96a8: a5 a2
			beq PRG03_96a4			; $96aa: f0 f8
			and #$01				; $96ac: 29 01
			bne PRG03_96b6			; $96ae: d0 06
			lda $a1			; $96b0: a5 a1
			cmp #$05				; $96b2: c9 05
			bcs PRG03_96a4			; $96b4: b0 ee
PRG03_96b6:
			tya				; $96b6: 98
			clc				; $96b7: 18
			adc #$fb				; $96b8: 69 fb
			tay				; $96ba: a8
			jmp PRG03_965b			; $96bb: 4c 5b 96

;-------------------------------------------------------------------------------
PRG03_96be:
			lda $a2			; $96be: a5 a2
			cmp #$0e				; $96c0: c9 0e
			bcs PRG03_96a4			; $96c2: b0 e0
			and #$01				; $96c4: 29 01
			bne PRG03_96cc			; $96c6: d0 04
			lda $a1			; $96c8: a5 a1
			beq PRG03_96a4			; $96ca: f0 d8
PRG03_96cc:
			tya				; $96cc: 98
			clc				; $96cd: 18
			adc #$05				; $96ce: 69 05
			tay				; $96d0: a8
			jmp PRG03_965b			; $96d1: 4c 5b 96

;-------------------------------------------------------------------------------
PRG03_96d4:
			lda $a2			; $96d4: a5 a2
			cmp #$0e				; $96d6: c9 0e
			bcs PRG03_96a4			; $96d8: b0 ca
			and #$01				; $96da: 29 01
			bne PRG03_96e4			; $96dc: d0 06
			lda $a1			; $96de: a5 a1
			cmp #$05				; $96e0: c9 05
			bcs PRG03_96a4			; $96e2: b0 c0
PRG03_96e4:
			tya				; $96e4: 98
			clc				; $96e5: 18
			adc #$06				; $96e6: 69 06
			tay				; $96e8: a8
			jmp PRG03_965b			; $96e9: 4c 5b 96

;-------------------------------------------------------------------------------
PRG03_96ec:
			lda #$00				; $96ec: a9 00
			sta $06e2			; $96ee: 8d e2 06
			sta $06e3			; $96f1: 8d e3 06
			sta $06e5			; $96f4: 8d e5 06
			sta $06e9			; $96f7: 8d e9 06
			sta $06ee			; $96fa: 8d ee 06
			sta $06ef			; $96fd: 8d ef 06
			sty $a0			; $9700: 84 a0
			tya				; $9702: 98
			pha				; $9703: 48
			jsr PRG03_989d			; $9704: 20 9d 98
			ldy $a0			; $9707: a4 a0
			jsr PRG03_965b			; $9709: 20 5b 96
			sta $ab			; $970c: 85 ab
			ldy $a0			; $970e: a4 a0
			jsr PRG03_9670			; $9710: 20 70 96
			sta $ac			; $9713: 85 ac
			ldy $a0			; $9715: a4 a0
			jsr PRG03_96be			; $9717: 20 be 96
			sta $ad			; $971a: 85 ad
			ldy $a0			; $971c: a4 a0
			jsr PRG03_9690			; $971e: 20 90 96
			sta $ae			; $9721: 85 ae
			ldy $a0			; $9723: a4 a0
			jsr PRG03_96a8			; $9725: 20 a8 96
			sta $af			; $9728: 85 af
			ldy $a0			; $972a: a4 a0
			jsr PRG03_96d4			; $972c: 20 d4 96
			sta $cf			; $972f: 85 cf
			lda $ac			; $9731: a5 ac
			ora $ae			; $9733: 05 ae
			beq PRG03_9739			; $9735: f0 02
			lda #$fd				; $9737: a9 fd
PRG03_9739:
			sta $06e0			; $9739: 8d e0 06
			lda $ab			; $973c: a5 ab
			ora $ae			; $973e: 05 ae
			beq PRG03_9749			; $9740: f0 07
			lda #$ff				; $9742: a9 ff
			sta $06e2			; $9744: 8d e2 06
			lda #$db				; $9747: a9 db
PRG03_9749:
			sta $06e1			; $9749: 8d e1 06
			lda $ab			; $974c: a5 ab
			ora $af			; $974e: 05 af
			beq PRG03_9757			; $9750: f0 05
			lda #$df				; $9752: a9 df
			sta $06e3			; $9754: 8d e3 06
PRG03_9757:
			lda $ab			; $9757: a5 ab
			ora $ac			; $9759: 05 ac
			beq PRG03_975f			; $975b: f0 02
			lda #$dc				; $975d: a9 dc
PRG03_975f:
			sta $06e4			; $975f: 8d e4 06
			sta $06e8			; $9762: 8d e8 06
			lda $ac			; $9765: a5 ac
			ora $ad			; $9767: 05 ad
			beq PRG03_976d			; $9769: f0 02
			lda #$db				; $976b: a9 db
PRG03_976d:
			sta $06ec			; $976d: 8d ec 06
			lda $ab			; $9770: a5 ab
			ora $ad			; $9772: 05 ad
			beq PRG03_977d			; $9774: f0 07
			lda #$fe				; $9776: a9 fe
			sta $06ee			; $9778: 8d ee 06
			lda #$fd				; $977b: a9 fd
PRG03_977d:
			sta $06ed			; $977d: 8d ed 06
			lda $ab			; $9780: a5 ab
			ora $cf			; $9782: 05 cf
			beq PRG03_978b			; $9784: f0 05
			lda #$de				; $9786: a9 de
			sta $06ef			; $9788: 8d ef 06
PRG03_978b:
			lda $ab			; $978b: a5 ab
			and #$07				; $978d: 29 07
			bne PRG03_979b			; $978f: d0 0a
			lda $ab			; $9791: a5 ab
			and #$38				; $9793: 29 38
			beq PRG03_979b			; $9795: f0 04
			lda #$05				; $9797: a9 05
			sta $ab			; $9799: 85 ab
PRG03_979b:
			lda $ab			; $979b: a5 ab
			and #$07				; $979d: 29 07
			sta $ab			; $979f: 85 ab
			tay				; $97a1: a8
			jsr PRG03_9647			; $97a2: 20 47 96
			ldy #$00				; $97a5: a0 00
			lda ($1a),y		; $97a7: b1 1a
			iny				; $97a9: c8
			ldx $ab			; $97aa: a6 ab
			beq PRG03_97b1			; $97ac: f0 03
			sta $06e4			; $97ae: 8d e4 06
PRG03_97b1:
			lda ($1a),y		; $97b1: b1 1a
			iny				; $97b3: c8
			sta $06e5			; $97b4: 8d e5 06
			lda ($1a),y		; $97b7: b1 1a
			iny				; $97b9: c8
			sta $06e6			; $97ba: 8d e6 06
			lda ($1a),y		; $97bd: b1 1a
			iny				; $97bf: c8
			sta $06e7			; $97c0: 8d e7 06
			lda ($1a),y		; $97c3: b1 1a
			iny				; $97c5: c8
			ldx $ab			; $97c6: a6 ab
			beq PRG03_97cd			; $97c8: f0 03
			sta $06e8			; $97ca: 8d e8 06
PRG03_97cd:
			lda ($1a),y		; $97cd: b1 1a
			iny				; $97cf: c8
			sta $06e9			; $97d0: 8d e9 06
			lda ($1a),y		; $97d3: b1 1a
			iny				; $97d5: c8
			sta $06ea			; $97d6: 8d ea 06
			lda ($1a),y		; $97d9: b1 1a
			iny				; $97db: c8
			sta $06eb			; $97dc: 8d eb 06
			lda LoadAddress_High			; $97df: a5 a6
			bne PRG03_97ef			; $97e1: d0 0c
			LoadAddressTransfer $a3
			lda #$00				; $97eb: a9 00
			sta $a4			; $97ed: 85 a4
PRG03_97ef:
			lda #$04				; $97ef: a9 04
			sta $a0			; $97f1: 85 a0
			ldy #$00				; $97f3: a0 00
PRG03_97f5:
			lda #$04				; $97f5: a9 04
			jsr Main_c0e4			; $97f7: 20 e4 c0
			ldx $ca			; $97fa: a6 ca
			inx				; $97fc: e8
			lda LoadAddress_High			; $97fd: a5 a6
			ora #$80				; $97ff: 09 80
			sta $0700,x		; $9801: 9d 00 07
			inx				; $9804: e8
			lda LoadAddress_Low			; $9805: a5 a5
			sta $0700,x		; $9807: 9d 00 07
			inx				; $980a: e8
PRG03_980b:
			lda $06e0,y		; $980b: b9 e0 06
			sta $0700,x		; $980e: 9d 00 07
			inx				; $9811: e8
			iny				; $9812: c8
			dec $cb			; $9813: c6 cb
			bne PRG03_980b			; $9815: d0 f4
			lda #$04				; $9817: a9 04
			jsr Main_c0ea			; $9819: 20 ea c0
			inc LoadAddress_Low			; $981c: e6 a5
			lda $a4			; $981e: a5 a4
			bne PRG03_9829			; $9820: d0 07
PRG03_9822:
			dec $a0			; $9822: c6 a0
			bne PRG03_97f5			; $9824: d0 cf
			jmp PRG03_983d			; $9826: 4c 3d 98

;-------------------------------------------------------------------------------
PRG03_9829:
			ldx #$a3				; $9829: a2 a3
			jsr Main_c090			; $982b: 20 90 c0
			LoadAddressTransfer $a3
			lda #$00				; $9836: a9 00
			sta $a4			; $9838: 85 a4
			jmp PRG03_9822			; $983a: 4c 22 98

;-------------------------------------------------------------------------------
PRG03_983d:
			pla				; $983d: 68
			sta $a0			; $983e: 85 a0
PRG03_9840:
			lda $ab			; $9840: a5 ab
			asl				; $9842: 0a
			tay				; $9843: a8
			lda $a2			; $9844: a5 a2
			and #$01				; $9846: 29 01
			beq PRG03_984b			; $9848: f0 01
			iny				; $984a: c8
PRG03_984b:
			lda $a2			; $984b: a5 a2
			cmp #$07				; $984d: c9 07
			bcs PRG03_985c			; $984f: b0 0b
			LoadAddress $23c9
			jmp PRG03_9869			; $9859: 4c 69 98

;-------------------------------------------------------------------------------
PRG03_985c:
			clc				; $985c: 18
			adc #$f9				; $985d: 69 f9
			sta $a2			; $985f: 85 a2
			LoadAddress $27c8
PRG03_9869:
			clc				; $9869: 18
			lda $a2			; $986a: a5 a2
			adc LoadAddress_Low		; $986c: 65 a5
			sta LoadAddress_Low			; $986e: 85 a5
			lda $a1			; $9870: a5 a1
			asl				; $9872: 0a
			asl				; $9873: 0a
			asl				; $9874: 0a
			clc				; $9875: 18
			adc LoadAddress_Low			; $9876: 65 a5
			sta LoadAddress_Low			; $9878: 85 a5
			lda #$01				; $987a: a9 01
			jsr Main_c0e4			; $987c: 20 e4 c0
			ldx $ca			; $987f: a6 ca
			inx				; $9881: e8
			lda LoadAddress_High			; $9882: a5 a6
			sta $0700,x		; $9884: 9d 00 07
			inx				; $9887: e8
			lda LoadAddress_Low			; $9888: a5 a5
			sta $0700,x		; $988a: 9d 00 07
			inx				; $988d: e8
			lda PRG03_aff7,y			; $988e: b9 f7 af
			sta $0700,x		; $9891: 9d 00 07
			inx				; $9894: e8
			lda #$01				; $9895: a9 01
			jsr Main_c0ea			; $9897: 20 ea c0
			ldx $a7			; $989a: a6 a7
			rts				; $989c: 60

;-------------------------------------------------------------------------------
PRG03_989d:
			jsr PRG03_991c			; $989d: 20 1c 99
			lda #$00				; $98a0: a9 00
			sta $a4			; $98a2: 85 a4
			sta $a3			; $98a4: 85 a3
			sta LoadAddress_Low			; $98a6: 85 a5
			sta LoadAddress_High			; $98a8: 85 a6
			ldx $a1			; $98aa: a6 a1
			beq PRG03_98be			; $98ac: f0 10
PRG03_98ae:
			clc				; $98ae: 18
			LoadAddressOffset $80, $00
			dex				; $98bb: ca
			bne PRG03_98ae			; $98bc: d0 f0
PRG03_98be:
			lda $a2			; $98be: a5 a2
			and #$01				; $98c0: 29 01
			beq PRG03_98d1			; $98c2: f0 0d
			clc				; $98c4: 18
			LoadAddressOffset $40, $00
PRG03_98d1:
			lda $a2			; $98d1: a5 a2
			cmp #$07				; $98d3: c9 07
			bcc PRG03_98e4			; $98d5: 90 0d
			clc				; $98d7: 18
			lda LoadAddress_Low			; $98d8: a5 a5
			adc #$3f				; $98da: 69 3f
			sta $a3			; $98dc: 85 a3
			lda LoadAddress_High			; $98de: a5 a6
			adc #$24				; $98e0: 69 24
			sta $a4			; $98e2: 85 a4
PRG03_98e4:
			lda $a2			; $98e4: a5 a2
			cmp #$08				; $98e6: c9 08
			bcs PRG03_9905			; $98e8: b0 1b
			asl				; $98ea: 0a
			asl				; $98eb: 0a
			clc				; $98ec: 18
			adc LoadAddress_Low			; $98ed: 65 a5
			sta LoadAddress_Low			; $98ef: 85 a5
			lda #$00				; $98f1: a9 00
			adc LoadAddress_High			; $98f3: 65 a6
			sta LoadAddress_High			; $98f5: 85 a6
			clc				; $98f7: 18
			LoadAddressOffset $43, $20, 1
			rts				; $9904: 60

;-------------------------------------------------------------------------------
PRG03_9905:
			clc				; $9905: 18
			adc #$f9				; $9906: 69 f9
			asl				; $9908: 0a
			asl				; $9909: 0a
			clc				; $990a: 18
			adc $a3			; $990b: 65 a3
			sta $a3			; $990d: 85 a3
			lda #$00				; $990f: a9 00
			adc $a4			; $9911: 65 a4
			sta $a4			; $9913: 85 a4
			lda #$00				; $9915: a9 00
			sta LoadAddress_Low			; $9917: 85 a5
			sta LoadAddress_High			; $9919: 85 a6
			rts				; $991b: 60

;-------------------------------------------------------------------------------
PRG03_991c:
			ldx #$00				; $991c: a2 00
PRG03_991e:
			cmp #$06				; $991e: c9 06
			bcc PRG03_9931			; $9920: 90 0f
			clc				; $9922: 18
			adc #$fa				; $9923: 69 fa
			inx				; $9925: e8
			cmp #$05				; $9926: c9 05
			bcc PRG03_9931			; $9928: 90 07
			clc				; $992a: 18
			adc #$fb				; $992b: 69 fb
			inx				; $992d: e8
			jmp PRG03_991e			; $992e: 4c 1e 99

;-------------------------------------------------------------------------------
PRG03_9931:
			sta $a1			; $9931: 85 a1
			stx $a2			; $9933: 86 a2
			ldx $a7			; $9935: a6 a7
			rts				; $9937: 60

;-------------------------------------------------------------------------------
PRG03_9938:
			lda $d9			; $9938: a5 d9
			sta LoadAddress_Low			; $993a: 85 a5
			lda $da			; $993c: a5 da
			and #$01				; $993e: 29 01
			sta LoadAddress_High			; $9940: 85 a6
			lsr LoadAddress_High			; $9942: 46 a6
			ror LoadAddress_Low			; $9944: 66 a5
			lsr LoadAddress_High			; $9946: 46 a6
			ror LoadAddress_Low			; $9948: 66 a5
			lsr LoadAddress_High			; $994a: 46 a6
			ror LoadAddress_Low			; $994c: 66 a5
			lsr LoadAddress_High			; $994e: 46 a6
			ror LoadAddress_Low			; $9950: 66 a5
			lsr LoadAddress_High			; $9952: 46 a6
			ror LoadAddress_Low			; $9954: 66 a5
			lda $0460,x		; $9956: bd 60 04
			lsr				; $9959: 4a
			lsr				; $995a: 4a
			lsr				; $995b: 4a
			lsr				; $995c: 4a
			lsr				; $995d: 4a
			clc				; $995e: 18
			adc LoadAddress_Low			; $995f: 65 a5
			sta $a2			; $9961: 85 a2
			and #$01				; $9963: 29 01
			bne PRG03_9970			; $9965: d0 09
			clc				; $9967: 18
			lda $0430,x		; $9968: bd 30 04
			adc #$e8				; $996b: 69 e8
			jmp PRG03_9976			; $996d: 4c 76 99

;-------------------------------------------------------------------------------
PRG03_9970:
			clc				; $9970: 18
			lda $0430,x		; $9971: bd 30 04
			adc #$d8				; $9974: 69 d8
PRG03_9976:
			lsr				; $9976: 4a
			lsr				; $9977: 4a
			lsr				; $9978: 4a
			lsr				; $9979: 4a
			lsr				; $997a: 4a
			sta $a1			; $997b: 85 a1
PRG03_997d:
			lda $a2			; $997d: a5 a2
			beq PRG03_9994			; $997f: f0 13
			lda #$00				; $9981: a9 00
PRG03_9983:
			clc				; $9983: 18
			adc #$06				; $9984: 69 06
			dec $a2			; $9986: c6 a2
			beq PRG03_9996			; $9988: f0 0c
			clc				; $998a: 18
			adc #$05				; $998b: 69 05
			dec $a2			; $998d: c6 a2
			beq PRG03_9996			; $998f: f0 05
			jmp PRG03_9983			; $9991: 4c 83 99

;-------------------------------------------------------------------------------
PRG03_9994:
			lda #$00				; $9994: a9 00
PRG03_9996:
			clc				; $9996: 18
			adc $a1			; $9997: 65 a1
			tay				; $9999: a8
			rts				; $999a: 60

;-------------------------------------------------------------------------------
PRG03_999b:
			sty $ab			; $999b: 84 ab
			sta $ac			; $999d: 85 ac
			lda $ab			; $999f: a5 ab
			jsr PRG03_989d			; $99a1: 20 9d 98
			lda $ac			; $99a4: a5 ac
			sta $a1			; $99a6: 85 a1
			lda #$00				; $99a8: a9 00
			sta $a2			; $99aa: 85 a2
			asl $a1			; $99ac: 06 a1
			rol $a2			; $99ae: 26 a2
			asl $a1			; $99b0: 06 a1
			rol $a2			; $99b2: 26 a2
			asl $a1			; $99b4: 06 a1
			rol $a2			; $99b6: 26 a2
			asl $a1			; $99b8: 06 a1
			rol $a2			; $99ba: 26 a2
			clc				; $99bc: 18
			lda #$07				; $99bd: a9 07
			adc $a1			; $99bf: 65 a1
			sta $a1			; $99c1: 85 a1
			lda #$b0				; $99c3: a9 b0
			adc $a2			; $99c5: 65 a2
			sta $a2			; $99c7: 85 a2
			lda LoadAddress_High			; $99c9: a5 a6
			bne PRG03_99d9			; $99cb: d0 0c
			LoadAddressTransfer $a3
			lda #$00				; $99d5: a9 00
			sta $a4			; $99d7: 85 a4
PRG03_99d9:
			clc				; $99d9: 18
			LoadAddressOffset $20, $00
			ldy #$01				; $99e6: a0 01
			lda #$03				; $99e8: a9 03
			jsr Main_c0e4			; $99ea: 20 e4 c0
			ldx $ca			; $99ed: a6 ca
			inx				; $99ef: e8
			lda LoadAddress_High			; $99f0: a5 a6
			ora #$80				; $99f2: 09 80
			sta $0700,x		; $99f4: 9d 00 07
			inx				; $99f7: e8
			lda LoadAddress_Low			; $99f8: a5 a5
			sta $0700,x		; $99fa: 9d 00 07
			inx				; $99fd: e8
PRG03_99fe:
			lda ($a1),y		; $99fe: b1 a1
			sta $0700,x		; $9a00: 9d 00 07
			iny				; $9a03: c8
			inx				; $9a04: e8
			dec $cb			; $9a05: c6 cb
			bne PRG03_99fe			; $9a07: d0 f5
			lda #$03				; $9a09: a9 03
			jsr Main_c0ea			; $9a0b: 20 ea c0
			lda $a4			; $9a0e: a5 a4
			beq PRG03_9a1f			; $9a10: f0 0d
			clc				; $9a12: 18
			LoadAddressOffset $20, $00, 2
PRG03_9a1f:
			clc				; $9a1f: 18
			LoadAddressOffset $e1, $ff
			lda #$04				; $9a2c: a9 04
			jsr Main_c0e4			; $9a2e: 20 e4 c0
			ldx $ca			; $9a31: a6 ca
			inx				; $9a33: e8
			lda LoadAddress_High			; $9a34: a5 a6
			ora #$80				; $9a36: 09 80
			sta $0700,x		; $9a38: 9d 00 07
			inx				; $9a3b: e8
			lda LoadAddress_Low			; $9a3c: a5 a5
			sta $0700,x		; $9a3e: 9d 00 07
			inx				; $9a41: e8
PRG03_9a42:
			lda ($a1),y		; $9a42: b1 a1
			sta $0700,x		; $9a44: 9d 00 07
			iny				; $9a47: c8
			inx				; $9a48: e8
			dec $cb			; $9a49: c6 cb
			bne PRG03_9a42			; $9a4b: d0 f5
			lda #$04				; $9a4d: a9 04
			jsr Main_c0ea			; $9a4f: 20 ea c0
			ldx #LoadAddress_Low				; $9a52: a2 a5
			jsr Main_c090			; $9a54: 20 90 c0
			lda #$04				; $9a57: a9 04
			jsr Main_c0e4			; $9a59: 20 e4 c0
			ldx $ca			; $9a5c: a6 ca
			inx				; $9a5e: e8
			lda LoadAddress_High			; $9a5f: a5 a6
			ora #$80				; $9a61: 09 80
			sta $0700,x		; $9a63: 9d 00 07
			inx				; $9a66: e8
			lda LoadAddress_Low			; $9a67: a5 a5
			sta $0700,x		; $9a69: 9d 00 07
			inx				; $9a6c: e8
PRG03_9a6d:
			lda ($a1),y		; $9a6d: b1 a1
			sta $0700,x		; $9a6f: 9d 00 07
			iny				; $9a72: c8
			inx				; $9a73: e8
			dec $cb			; $9a74: c6 cb
			bne PRG03_9a6d			; $9a76: d0 f5
			lda #$04				; $9a78: a9 04
			jsr Main_c0ea			; $9a7a: 20 ea c0
			clc				; $9a7d: 18
			LoadAddressOffset $21, $00
			iny				; $9a8a: c8
			lda #$03				; $9a8b: a9 03
			jsr Main_c0e4			; $9a8d: 20 e4 c0
			ldx $ca			; $9a90: a6 ca
			inx				; $9a92: e8
			lda LoadAddress_High			; $9a93: a5 a6
			ora #$80				; $9a95: 09 80
			sta $0700,x		; $9a97: 9d 00 07
			inx				; $9a9a: e8
			lda LoadAddress_Low			; $9a9b: a5 a5
			sta $0700,x		; $9a9d: 9d 00 07
			inx				; $9aa0: e8
PRG03_9aa1:
			lda ($a1),y		; $9aa1: b1 a1
			sta $0700,x		; $9aa3: 9d 00 07
			iny				; $9aa6: c8
			inx				; $9aa7: e8
			dec $cb			; $9aa8: c6 cb
			bne PRG03_9aa1			; $9aaa: d0 f5
			lda #$03				; $9aac: a9 03
			jsr Main_c0ea			; $9aae: 20 ea c0
			lda $ab			; $9ab1: a5 ab
			ldy #$00				; $9ab3: a0 00
			sty $ab			; $9ab5: 84 ab
			jsr PRG03_991c			; $9ab7: 20 1c 99
			jsr PRG03_9840			; $9aba: 20 40 98
			ldx $a7			; $9abd: a6 a7
			rts				; $9abf: 60

;-------------------------------------------------------------------------------
PRG03_9ac0:
			iny				; $9ac0: c8
			tya				; $9ac1: 98
			asl				; $9ac2: 0a
			asl				; $9ac3: 0a
			tay				; $9ac4: a8
			dey				; $9ac5: 88
			ldx #$04				; $9ac6: a2 04
PRG03_9ac8:
			lda PRG03_b0c7,y			; $9ac8: b9 c7 b0
			sta @w $009b,x	; $9acb: 9d 9b 00
			dey				; $9ace: 88
			dex				; $9acf: ca
			bne PRG03_9ac8			; $9ad0: d0 f6
			ldx $a7			; $9ad2: a6 a7
			rts				; $9ad4: 60

;-------------------------------------------------------------------------------
PRG03_9ad5:
			jsr PRG03_9c4d			; $9ad5: 20 4d 9c
			beq PRG03_9add			; $9ad8: f0 03
			jmp PRG03_9bad			; $9ada: 4c ad 9b

;-------------------------------------------------------------------------------
PRG03_9add:
			lda Input_RAM			; $9add: a5 00
PRG03_9adf:
			and #$01				; $9adf: 29 01
			bne PRG03_9ae6			; $9ae1: d0 03
			jmp PRG03_9b7d			; $9ae3: 4c 7d 9b

;-------------------------------------------------------------------------------
PRG03_9ae6:
			lda Input_RAM			; $9ae6: a5 00
			and #$fe				; $9ae8: 29 fe
			sta Input_RAM			; $9aea: 85 00
			lda #$33				; $9aec: a9 33
			jsr Goto_PlaySound			; $9aee: 20 c6 c0
PRG03_9af1:
			lda $0159			; $9af1: ad 59 01
			cmp #$ff				; $9af4: c9 ff
			bne PRG03_9aff			; $9af6: d0 07
			lda $0580,x		; $9af8: bd 80 05
			cmp #$04				; $9afb: c9 04
			bcc PRG03_9b02			; $9afd: 90 03
PRG03_9aff:
			jmp PRG03_9b3d			; $9aff: 4c 3d 9b

;-------------------------------------------------------------------------------
PRG03_9b02:
			ldy $05b0			; $9b02: ac b0 05
			jsr PRG03_965b			; $9b05: 20 5b 96
			and #$07				; $9b08: 29 07
			cmp #$07				; $9b0a: c9 07
			bne PRG03_9b11			; $9b0c: d0 03
			jmp PRG03_9bae			; $9b0e: 4c ae 9b

;-------------------------------------------------------------------------------
PRG03_9b11:
			lda #MBID_NotGoingToMove				; $9b11: a9 17
			jsr PRG03_MessageBoxSelect			; $9b13: 20 e1 b6
			jsr PRG03_Level_ShowMessageBox			; $9b16: 20 7e b6
			beq PRG03_9b1d			; $9b19: f0 02
			bcs PRG03_9b25			; $9b1b: b0 08
PRG03_9b1d:
			lda #$80				; $9b1d: a9 80
			sta $016f			; $9b1f: 8d 6f 01
			jmp PRG03_9b88			; $9b22: 4c 88 9b

;-------------------------------------------------------------------------------
PRG03_9b25:
			lda $0580,x		; $9b25: bd 80 05
			cmp #$04				; $9b28: c9 04
			bcs PRG03_9b3d			; $9b2a: b0 11
			ldy #$06				; $9b2c: a0 06
PRG03_9b2e:
			lda $05c7,y		; $9b2e: b9 c7 05
			bmi PRG03_9b3a			; $9b31: 30 07
			cmp #$04				; $9b33: c9 04
			bcc PRG03_9b3a			; $9b35: 90 03
			jmp PRG03_a27e			; $9b37: 4c 7e a2

;-------------------------------------------------------------------------------
PRG03_9b3a:
			dey				; $9b3a: 88
			bne PRG03_9b2e			; $9b3b: d0 f1
PRG03_9b3d:
			lda $0598			; $9b3d: ad 98 05
			ora #$80				; $9b40: 09 80
			sta $0598			; $9b42: 8d 98 05
			lda $3b			; $9b45: a5 3b
			and #$02				; $9b47: 29 02
			bne PRG03_9b58			; $9b49: d0 0d
			jsr PRG03_9938			; $9b4b: 20 38 99
			tya				; $9b4e: 98
			sta $0538,x		; $9b4f: 9d 38 05
			lda $0580,x		; $9b52: bd 80 05
			jsr PRG03_999b			; $9b55: 20 9b 99
PRG03_9b58:
			lda $3b			; $9b58: a5 3b
			and #$fd				; $9b5a: 29 fd
			sta $3b			; $9b5c: 85 3b
			lda $0418,x		; $9b5e: bd 18 04
			ora #$20				; $9b61: 09 20
			sta $0418,x		; $9b63: 9d 18 04
			lda $0460,x		; $9b66: bd 60 04
			sta $0460			; $9b69: 8d 60 04
			lda $0430,x		; $9b6c: bd 30 04
			sta $0430			; $9b6f: 8d 30 04
			lda $0580,x		; $9b72: bd 80 05
			cmp #$04				; $9b75: c9 04
			bcs PRG03_9b7d			; $9b77: b0 04
			sta $0127			; $9b79: 8d 27 01
			rts				; $9b7c: 60

;-------------------------------------------------------------------------------
PRG03_9b7d:
			lda Input_RAM			; $9b7d: a5 00
			and #$02				; $9b7f: 29 02
			beq PRG03_9bad			; $9b81: f0 2a
			lda #$33				; $9b83: a9 33
			jsr Goto_PlaySound			; $9b85: 20 c6 c0
PRG03_9b88:
			lda $0418,x		; $9b88: bd 18 04
			ora #$20				; $9b8b: 09 20
			sta $0418,x		; $9b8d: 9d 18 04
			lda $0418			; $9b90: ad 18 04
			and #$df				; $9b93: 29 df
			sta $0418			; $9b95: 8d 18 04
			lda $0460,x		; $9b98: bd 60 04
			sta $0460			; $9b9b: 8d 60 04
			lda $0430,x		; $9b9e: bd 30 04
			sta $0430			; $9ba1: 8d 30 04
			ldy $0538,x		; $9ba4: bc 38 05
			lda $0580,x		; $9ba7: bd 80 05
			jsr PRG03_999b			; $9baa: 20 9b 99
PRG03_9bad:
			rts				; $9bad: 60

;-------------------------------------------------------------------------------
PRG03_9bae:
			ldy #$06				; $9bae: a0 06
PRG03_9bb0:
			lda $05c7,y		; $9bb0: b9 c7 05
			bmi PRG03_9bbc			; $9bb3: 30 07
			cmp #$04				; $9bb5: c9 04
			bcc PRG03_9bbc			; $9bb7: 90 03
			jmp PRG03_a27e			; $9bb9: 4c 7e a2

;-------------------------------------------------------------------------------
PRG03_9bbc:
			dey				; $9bbc: 88
			bne PRG03_9bb0			; $9bbd: d0 f1
			lda v_PlanetID		; Load planet ID
			cmp #$07			; Is it Planet X?
			beq PRG03_9bca			; If yes, branch
			lda #MBID_MoveToNextField
			bne PRG03_9bcc
PRG03_9bca:
			lda #MBID_EnemyHeadQuarters				; $9bca: a9 21
PRG03_9bcc:
			jsr PRG03_MessageBoxSelect			; $9bcc: 20 e1 b6
			jsr PRG03_Level_ShowMessageBox			; $9bcf: 20 7e b6
			beq PRG03_9c1c			; $9bd2: f0 48
			bcc PRG03_9c1c			; $9bd4: 90 46
			jsr PRG03_9b3d			; $9bd6: 20 3d 9b
			ldy v_PlanetID			; $9bd9: ac 58 01
			iny				; $9bdc: c8
			tya				; $9bdd: 98
			and #$0f				; $9bde: 29 0f
			ora #$f0				; $9be0: 09 f0
			sta $0538,x		; $9be2: 9d 38 05
			pha				; $9be5: 48
			lda $0580,x		; $9be6: bd 80 05
			tax				; $9be9: aa
			pla				; $9bea: 68
			sta $0198,x		; $9beb: 9d 98 01
			ldx #$00				; $9bee: a2 00
PRG03_9bf0:
			lda $018c,x		; $9bf0: bd 8c 01
			beq PRG03_9bff			; $9bf3: f0 0a
			lda $0198,x		; $9bf5: bd 98 01
			and #$f0				; $9bf8: 29 f0
			cmp #$f0				; $9bfa: c9 f0
			beq PRG03_9bff			; $9bfc: f0 01
			rts				; $9bfe: 60

;-------------------------------------------------------------------------------
PRG03_9bff:
			inx				; $9bff: e8
			cpx #$04				; $9c00: e0 04
			bcc PRG03_9bf0			; $9c02: 90 ec
			lda #$80				; $9c04: a9 80
			sta $017a			; $9c06: 8d 7a 01
			lda #$0f				; $9c09: a9 0f
			sta $017b			; $9c0b: 8d 7b 01
			inc v_PlanetID			; $9c0e: ee 58 01
			lda v_PlanetID			; $9c11: ad 58 01
			cmp #$08				; $9c14: c9 08
			bcs PRG03_9c19			; $9c16: b0 01
			rts				; $9c18: 60

;-------------------------------------------------------------------------------
PRG03_9c19:
			jmp PRG03_9cac			; $9c19: 4c ac 9c

;-------------------------------------------------------------------------------
PRG03_9c1c:
			lda #$80				; $9c1c: a9 80
			sta $016f			; $9c1e: 8d 6f 01
			jmp PRG03_9b88			; $9c21: 4c 88 9b

;-------------------------------------------------------------------------------
			.byte $00		; $9c24: 00
			.byte $81, $83		; $9c25: 81 83
			.byte $02	; $9c27: 02

PRG03_9c28:
			jsr PRG03_9938			; $9c28: 20 38 99
PRG03_9c2b:
			sty $ac			; $9c2b: 84 ac
			ldy #$01				; $9c2d: a0 01
PRG03_9c2f:
			txa				; $9c2f: 8a
			sta $ab			; $9c30: 85 ab
			cpy $ab			; $9c32: c4 ab
			beq PRG03_9c46			; $9c34: f0 10
			lda $0418,y		; $9c36: b9 18 04
			and #$80				; $9c39: 29 80
			beq PRG03_9c46			; $9c3b: f0 09
			lda $0538,y		; $9c3d: b9 38 05
			cmp $ac			; $9c40: c5 ac
			bne PRG03_9c46			; $9c42: d0 02
			sec				; $9c44: 38
			rts				; $9c45: 60

;-------------------------------------------------------------------------------
PRG03_9c46:
			iny				; $9c46: c8
			cpy #$18				; $9c47: c0 18
			bcc PRG03_9c2f			; $9c49: 90 e4
			clc				; $9c4b: 18
			rts				; $9c4c: 60

;-------------------------------------------------------------------------------
PRG03_9c4d:
			lda $0490,x		; $9c4d: bd 90 04
			ora $04a8,x		; $9c50: 1d a8 04
			ora $04c0,x		; $9c53: 1d c0 04
			ora $04d8,x		; $9c56: 1d d8 04
			rts				; $9c59: 60

;-------------------------------------------------------------------------------
PRG03_9c5a:
			txa				; $9c5a: 8a
			pha				; $9c5b: 48
			lda $0538,x		; $9c5c: bd 38 05
			jsr PRG03_991c			; $9c5f: 20 1c 99
			pla				; $9c62: 68
			tax				; $9c63: aa
			lda $d9			; $9c64: a5 d9
			sta $a3			; $9c66: 85 a3
			lda $da			; $9c68: a5 da
			sta $a4			; $9c6a: 85 a4
			lsr $a4			; $9c6c: 46 a4
			ror $a3			; $9c6e: 66 a3
			lsr $a4			; $9c70: 46 a4
			ror $a3			; $9c72: 66 a3
			lsr $a4			; $9c74: 46 a4
			ror $a3			; $9c76: 66 a3
			lsr $a4			; $9c78: 46 a4
			ror $a3			; $9c7a: 66 a3
			lsr $a4			; $9c7c: 46 a4
			ror $a3			; $9c7e: 66 a3
			sec				; $9c80: 38
			lda $a2			; $9c81: a5 a2
			sbc $a3			; $9c83: e5 a3
			asl				; $9c85: 0a
			asl				; $9c86: 0a
			asl				; $9c87: 0a
			asl				; $9c88: 0a
			asl				; $9c89: 0a
			clc				; $9c8a: 18
			adc #$08				; $9c8b: 69 08
			sta $0460,x		; $9c8d: 9d 60 04
			lda $a2			; $9c90: a5 a2
			and #$01				; $9c92: 29 01
			beq PRG03_9c9a			; $9c94: f0 04
			lda #$28				; $9c96: a9 28
			bne PRG03_9c9c			; $9c98: d0 02
PRG03_9c9a:
			lda #$18				; $9c9a: a9 18
PRG03_9c9c:
			sta $af			; $9c9c: 85 af
			lda $a1			; $9c9e: a5 a1
			asl				; $9ca0: 0a
			asl				; $9ca1: 0a
			asl				; $9ca2: 0a
			asl				; $9ca3: 0a
			asl				; $9ca4: 0a
			clc				; $9ca5: 18
			adc $af			; $9ca6: 65 af
			sta $0430,x		; $9ca8: 9d 30 04
			rts				; $9cab: 60

;-------------------------------------------------------------------------------
PRG03_9cac:
			lda #$26				; $9cac: a9 26
			jmp Goto_CrossBankJump			; $9cae: 4c cf c0

;-------------------------------------------------------------------------------
			MusicFadeOut
			jsr Goto_FadeInOut			; $9cb6: 20 ae c0
			jsr Goto_ClearScreen			; $9cb9: 20 7e c0
			jsr Main_c084			; $9cbc: 20 84 c0
			lda #$00				; $9cbf: a9 00
			sta $d9			; $9cc1: 85 d9
			lda #MusID_InternTitle				; $9cc3: a9 08
			jsr Goto_PlaySound			; $9cc5: 20 c6 c0
			LoadAddress PRG03_9cdd
			ldx #$20				; $9cd0: a2 20
			ldy #$00				; $9cd2: a0 00
			jsr Main_c0c0			; $9cd4: 20 c0 c0
			jsr Main_c0b1			; $9cd7: 20 b1 c0
-
			jmp -			; $9cda: 4c da 9c

;-------------------------------------------------------------------------------
PRG03_9cdd:
			.byte $c1, $00 ; $9cdd
			.byte $22 ; $9cdf
			.byte $de, $db, $fd ; $9ce0
			.byte $db, $fd, $db ; $9ce3
			.byte $fd, $db, $fd ; $9ce6
			.byte $db, $fd, $db ; $9ce9
			.byte $fd, $db, $fd ; $9cec
			.byte $db, $fd, $db ; $9cef
			.byte $fd, $db, $fd ; $9cf2
			.byte $db, $fd, $db ; $9cf5
			.byte $fd, $db, $fd ; $9cf8
			.byte $db, $fd, $df ; $9cfb
			.byte $00 ; $9cfe
			.byte $00 ; $9cff
			.byte $db, $ff, $9a ; $9d00
			.byte $00 ; $9d03
			.byte $05, $fe ; $9d04
			.byte $fd, $00, $00 ; $9d06
			.byte $fd, $85, $00 ; $9d09
			.byte $07, $44 ; $9d0c
			.byte $44, $00 ; $9d0e
			.byte $00 ; $9d10
			.byte $44, $00 ; $9d11
			.byte $44, $87 ; $9d13
			.byte $00 ; $9d15
			.byte $01, $44 ; $9d16
			.byte $88 ; $9d18
			.byte $00 ; $9d19
			.byte $04, $db ; $9d1a
			.byte $00 ; $9d1c
			.byte $00 ; $9d1d
			.byte $db, $83, $00 ; $9d1e
			.byte $14, $38 ; $9d21
			.byte $1c, $20, $22 ; $9d23
			.byte $3d, $00, $1c ; $9d26
			.byte $18 ; $9d29
			.byte $1c, $43, $0c ; $9d2a
			.byte $00 ; $9d2d
			.byte $26, $1b ; $9d2e
			.byte $22 ; $9d30
			.byte $00 ; $9d31
			.byte $2a ; $9d32
			.byte $24, $18 ; $9d33
			.byte $2f, $85, $00 ; $9d35
			.byte $04, $fd ; $9d38
			.byte $00 ; $9d3a
			.byte $00 ; $9d3b
			.byte $fd, $84, $00 ; $9d3c
			.byte $01, $44 ; $9d3f
			.byte $84, $00 ; $9d41
			.byte $02 ; $9d43
			.byte $44, $44 ; $9d44
			.byte $91, $00 ; $9d46
			.byte $1d, $db, $00 ; $9d48
			.byte $00 ; $9d4b
			.byte $db, $00, $00 ; $9d4c
			.byte $3e, $43, $1e ; $9d4f
			.byte $32 ; $9d52
			.byte $18 ; $9d53
			.byte $16, $3f ; $9d54
			.byte $2a ; $9d56
			.byte $29, $00 ; $9d57
			.byte $22 ; $9d59
			.byte $14, $19 ; $9d5a
			.byte $3e, $0c, $00 ; $9d5c
			.byte $1b, $21, $38 ; $9d5f
			.byte $26, $00 ; $9d62
			.byte $1d, $36, $83 ; $9d64
			.byte $00 ; $9d67
			.byte $04, $fd ; $9d68
			.byte $00 ; $9d6a
			.byte $00 ; $9d6b
			.byte $fd, $84, $00 ; $9d6c
			.byte $01, $44 ; $9d6f
			.byte $97, $00 ; $9d71
			.byte $0c, $db, $00 ; $9d73
			.byte $00 ; $9d76
			.byte $db, $00, $00 ; $9d77
			.byte $1b, $38, $29 ; $9d7a
			.byte $2a ; $9d7d
			.byte $19, $45, $94 ; $9d7e
			.byte $00 ; $9d81
			.byte $04, $fd ; $9d82
			.byte $00 ; $9d84
			.byte $00 ; $9d85
			.byte $fd, $94, $00 ; $9d86
			.byte $01, $44 ; $9d89
			.byte $87, $00 ; $9d8b
			.byte $04, $db ; $9d8d
			.byte $00 ; $9d8f
			.byte $00 ; $9d90
			.byte $db, $83, $00 ; $9d91
			.byte $14, $22 ; $9d94
			.byte $1c, $22, $00 ; $9d96
			.byte $26, $18 ; $9d99
			.byte $3c, $19, $1f ; $9d9b
			.byte $18 ; $9d9e
			.byte $2f, $00, $42 ; $9d9f
			.byte $1e, $24, $18 ; $9da2
			.byte $1d, $2a, $19 ; $9da5
			.byte $2c, $85, $00 ; $9da8
			.byte $04, $fd ; $9dab
			.byte $00 ; $9dad
			.byte $00 ; $9dae
			.byte $fd, $8b, $00 ; $9daf
			.byte $01, $44 ; $9db2
			.byte $84, $00 ; $9db4
			.byte $01, $44 ; $9db6
			.byte $8b, $00 ; $9db8
			.byte $1d, $db, $00 ; $9dba
			.byte $00 ; $9dbd
			.byte $db, $00, $00 ; $9dbe
			.byte $39, $19, $1f ; $9dc1
			.byte $3d, $40, $26 ; $9dc4
			.byte $00 ; $9dc7
			.byte $3e, $43, $1e ; $9dc8
			.byte $32 ; $9dcb
			.byte $18 ; $9dcc
			.byte $16, $3f ; $9dcd
			.byte $2a ; $9dcf
			.byte $30, $00 ; $9dd0
			.byte $27, $1d ; $9dd2
			.byte $13, $19 ; $9dd4
			.byte $1c, $3d, $83 ; $9dd6
			.byte $00 ; $9dd9
			.byte $04, $fd ; $9dda
			.byte $00 ; $9ddc
			.byte $00 ; $9ddd
			.byte $fd, $89, $00 ; $9dde
			.byte $06, $44 ; $9de1
			.byte $00 ; $9de3
			.byte $44, $00 ; $9de4
			.byte $44, $44 ; $9de6
			.byte $87, $00 ; $9de8
			.byte $01, $44 ; $9dea
			.byte $85, $00 ; $9dec
			.byte $24, $db ; $9dee
			.byte $00 ; $9df0
			.byte $00 ; $9df1
			.byte $db, $00, $00 ; $9df2
			.byte $1c, $18, $1b ; $9df5
			.byte $19, $24, $18 ; $9df8
			.byte $35, $29 ; $9dfb
			.byte $00 ; $9dfd
			.byte $24, $43 ; $9dfe
			.byte $32 ; $9e00
			.byte $29, $00 ; $9e01
			.byte $2b, $2b ; $9e03
			.byte $28 ; $9e05
			.byte $00 ; $9e06
			.byte $25, $43 ; $9e07
			.byte $21, $18 ; $9e09
			.byte $23, $3f ; $9e0b
			.byte $45, $00 ; $9e0d
			.byte $fd, $00, $00 ; $9e0f
			.byte $fd, $8d, $00 ; $9e12
			.byte $01, $44 ; $9e15
			.byte $8e, $00, $04 ; $9e17
			.byte $db, $00, $00 ; $9e1a
			.byte $db, $83, $00 ; $9e1d
			.byte $1d, $25, $22 ; $9e20
			.byte $29, $00 ; $9e23
			.byte $1a ; $9e25
			.byte $15, $1e ; $9e26
			.byte $23, $24 ; $9e28
			.byte $18 ; $9e2a
			.byte $29, $30 ; $9e2b
			.byte $00 ; $9e2d
			.byte $19, $27, $13 ; $9e2e
			.byte $19, $00, $21 ; $9e31
			.byte $18 ; $9e34
			.byte $1d, $14, $19 ; $9e35
			.byte $2f, $00, $fd ; $9e38
			.byte $00 ; $9e3b
			.byte $00 ; $9e3c
			.byte $fd, $84, $00 ; $9e3d
			.byte $01, $44 ; $9e40
			.byte $85, $00 ; $9e42
			.byte $83, $44 ; $9e44
			.byte $02 ; $9e46
			.byte $00 ; $9e47
			.byte $44, $8d ; $9e48
			.byte $00 ; $9e4a
			.byte $1d, $db, $00 ; $9e4b
			.byte $00 ; $9e4e
			.byte $db, $00, $00 ; $9e4f
			.byte $1c, $18, $22 ; $9e52
			.byte $13, $19 ; $9e55
			.byte $00 ; $9e57
			.byte $1d, $43, $1e ; $9e58
			.byte $1d, $2a, $3d ; $9e5b
			.byte $1c, $00, $1d ; $9e5e
			.byte $36, $0c ; $9e61
			.byte $00 ; $9e63
			.byte $35, $15 ; $9e64
			.byte $29, $18 ; $9e66
			.byte $3f, $83, $00 ; $9e68
			.byte $04, $fd ; $9e6b
			.byte $00 ; $9e6d
			.byte $00 ; $9e6e
			.byte $fd, $84, $00 ; $9e6f
			.byte $01, $44 ; $9e72
			.byte $97, $00 ; $9e74
			.byte $0c, $db, $00 ; $9e76
			.byte $00 ; $9e79
			.byte $db, $00, $00 ; $9e7a
			.byte $20, $2a, $26 ; $9e7d
			.byte $41, $19 ; $9e80
			.byte $45, $94 ; $9e82
			.byte $00 ; $9e84
			.byte $04, $fd ; $9e85
			.byte $00 ; $9e87
			.byte $00 ; $9e88
			.byte $fd, $8b, $00 ; $9e89
			.byte $01, $44 ; $9e8c
			.byte $90, $00 ; $9e8e
			.byte $04, $db ; $9e90
			.byte $00 ; $9e92
			.byte $00 ; $9e93
			.byte $db, $83, $00 ; $9e94
			.byte $1d, $26, $18 ; $9e97
			.byte $3c, $19, $1f ; $9e9a
			.byte $18 ; $9e9d
			.byte $2f, $00, $22 ; $9e9e
			.byte $3b, $19, $2a ; $9ea1
			.byte $00 ; $9ea4
			.byte $33, $18 ; $9ea5
			.byte $42 ; $9ea7
			.byte $0c, $00, $35 ; $9ea8
			.byte $39, $3f, $26 ; $9eab
			.byte $38 ; $9eae
			.byte $00 ; $9eaf
			.byte $00 ; $9eb0
			.byte $fd, $00, $00 ; $9eb1
			.byte $fd, $90, $00 ; $9eb4
			.byte $01, $44 ; $9eb7
			.byte $84, $00 ; $9eb9
			.byte $04, $44 ; $9ebb
			.byte $00 ; $9ebd
			.byte $00 ; $9ebe
			.byte $44, $83 ; $9ebf
			.byte $00 ; $9ec1
			.byte $25, $db ; $9ec2
			.byte $00 ; $9ec4
			.byte $00 ; $9ec5
			.byte $db, $00, $00 ; $9ec6
			.byte $1d, $36, $2f ; $9ec9
			.byte $00 ; $9ecc
			.byte $26, $26 ; $9ecd
			.byte $1c, $18, $30 ; $9ecf
			.byte $00 ; $9ed2
			.byte $18 ; $9ed3
			.byte $35, $00 ; $9ed4
			.byte $30, $22 ; $9ed6
			.byte $35, $15 ; $9ed8
			.byte $26, $00 ; $9eda
			.byte $30, $1c ; $9edc
			.byte $3e, $26, $45 ; $9ede
			.byte $00 ; $9ee1
			.byte $00 ; $9ee2
			.byte $fd, $00, $00 ; $9ee3
			.byte $fd, $df, $9a ; $9ee6
			.byte $00 ; $9ee9
			.byte $22 ; $9eea
			.byte $de, $db, $00 ; $9eeb
			.byte $00 ; $9eee
			.byte $fe, $fd, $db ; $9eef
			.byte $fd, $db, $fd ; $9ef2
			.byte $db, $fd, $db ; $9ef5
			.byte $fd, $db ; $9ef8
			.byte $fd, $db, $fd ; $9efa
			.byte $db, $fd, $db ; $9efd
			.byte $fd, $db, $fd ; $9f00
			.byte $db, $fd, $db ; $9f03
			.byte $fd, $db, $fd ; $9f06
			.byte $db, $fd, $db ; $9f09
			.byte $ff, $c1, $00 ; $9f0c
			.byte $00 ; $9f0f

PRG03_9f10:
			lda $0460,x		; $9f10: bd 60 04
			cmp #$68				; $9f13: c9 68
			bcc PRG03_9f34
			lda $0177			; $9f17: ad 77 01
			beq PRG03_9f21
			clc				; $9f1c: 18
			adc $d9			; $9f1d: 65 d9
			bcs PRG03_9f34
PRG03_9f21:
			lda $da			; $9f21: a5 da
			bne PRG03_9f34
			lda $0550,x		; $9f25: bd 50 05
			and #$3f				; $9f28: 29 3f
			ora #$80				; $9f2a: 09 80
			sta $0550,x		; $9f2c: 9d 50 05
			jsr PRG03_9f36
			sec				; $9f32: 38
			rts				; $9f33: 60

;-------------------------------------------------------------------------------
PRG03_9f34:
			clc				; $9f34: 18
			rts				; $9f35: 60

;-------------------------------------------------------------------------------
PRG03_9f36:
			ldx #$d9				; $9f36: a2 d9
			jsr Main_c090			; $9f38: 20 90 c0
			ldx #$d9				; $9f3b: a2 d9
			jsr Main_c090			; $9f3d: 20 90 c0
			ldx $a7			; $9f40: a6 a7
			rts				; $9f42: 60

;-------------------------------------------------------------------------------
PRG03_9f43:
			lda $0460,x		; $9f43: bd 60 04
			cmp #$69				; $9f46: c9 69
			bcs PRG03_9f63			; $9f48: b0 19
			lda $da			; $9f4a: a5 da
			bne PRG03_9f54			; $9f4c: d0 06
			lda $d9			; $9f4e: a5 d9
			and #$f0				; $9f50: 29 f0
			beq PRG03_9f63			; $9f52: f0 0f
PRG03_9f54:
			lda $0550,x		; $9f54: bd 50 05
			and #$3f				; $9f57: 29 3f
			ora #$40				; $9f59: 09 40
			sta $0550,x		; $9f5b: 9d 50 05
			jsr PRG03_9f65			; $9f5e: 20 65 9f
			sec				; $9f61: 38
			rts				; $9f62: 60

;-------------------------------------------------------------------------------
PRG03_9f63:
			clc				; $9f63: 18
			rts				; $9f64: 60

;-------------------------------------------------------------------------------
PRG03_9f65:
			ldx #$d9				; $9f65: a2 d9
			jsr Main_c08d			; $9f67: 20 8d c0
			ldx #$d9				; $9f6a: a2 d9
			jsr Main_c08d			; $9f6c: 20 8d c0
			ldx $a7			; $9f6f: a6 a7
			rts				; $9f71: 60

;-------------------------------------------------------------------------------
PRG03_9f72:
			lda $04a8,x		; $9f72: bd a8 04
			ora $0490,x		; $9f75: 1d 90 04
			beq PRG03_9fa9			; $9f78: f0 2f
			lda $0418,x		; $9f7a: bd 18 04
			and #$02				; $9f7d: 29 02
			bne PRG03_9f96			; $9f7f: d0 15
			lda $0490,x		; $9f81: bd 90 04
			bmi PRG03_9f8e			; $9f84: 30 08
			lda $0418,x		; $9f86: bd 18 04
			and #$fb				; $9f89: 29 fb
			jmp PRG03_9f93			; $9f8b: 4c 93 9f

;-------------------------------------------------------------------------------
PRG03_9f8e:
			lda $0418,x		; $9f8e: bd 18 04
			ora #$04				; $9f91: 09 04
PRG03_9f93:
			sta $0418,x		; $9f93: 9d 18 04
PRG03_9f96:
			clc				; $9f96: 18
			lda $0448,x		; $9f97: bd 48 04
			adc $04a8,x		; $9f9a: 7d a8 04
			sta $0448,x		; $9f9d: 9d 48 04
			lda $0430,x		; $9fa0: bd 30 04
			adc $0490,x		; $9fa3: 7d 90 04
			sta $0430,x		; $9fa6: 9d 30 04
PRG03_9fa9:
			lda $04c0,x		; $9fa9: bd c0 04
			ora $04d8,x		; $9fac: 1d d8 04
			beq PRG03_9fe0			; $9faf: f0 2f
			lda $0418,x		; $9fb1: bd 18 04
			and #$08				; $9fb4: 29 08
			bne PRG03_9fcd			; $9fb6: d0 15
			lda $04c0,x		; $9fb8: bd c0 04
			bmi PRG03_9fc5			; $9fbb: 30 08
			lda $0418,x		; $9fbd: bd 18 04
			ora #$10				; $9fc0: 09 10
			jmp PRG03_9fca			; $9fc2: 4c ca 9f

;-------------------------------------------------------------------------------
PRG03_9fc5:
			lda $0418,x		; $9fc5: bd 18 04
			and #$ef				; $9fc8: 29 ef
PRG03_9fca:
			sta $0418,x		; $9fca: 9d 18 04
PRG03_9fcd:
			clc				; $9fcd: 18
			lda $0478,x		; $9fce: bd 78 04
			adc $04d8,x		; $9fd1: 7d d8 04
			sta $0478,x		; $9fd4: 9d 78 04
			lda $0460,x		; $9fd7: bd 60 04
			adc $04c0,x		; $9fda: 7d c0 04
			sta $0460,x		; $9fdd: 9d 60 04
PRG03_9fe0:
			rts				; $9fe0: 60

;-------------------------------------------------------------------------------
PRG03_9fe1:
			lda $0520,x		; $9fe1: bd 20 05
			and #$0f				; $9fe4: 29 0f
			beq PRG03_9ff0			; $9fe6: f0 08
			dec $0520,x		; $9fe8: de 20 05
			clc				; $9feb: 18
			php				; $9fec: 08
			jmp PRG03_a025			; $9fed: 4c 25 a0

;-------------------------------------------------------------------------------
PRG03_9ff0:
			sec				; $9ff0: 38
			php				; $9ff1: 08
			lda $0520,x		; $9ff2: bd 20 05
			lsr				; $9ff5: 4a
			lsr				; $9ff6: 4a
			lsr				; $9ff7: 4a
			lsr				; $9ff8: 4a
			ora $0520,x		; $9ff9: 1d 20 05
			sta $0520,x		; $9ffc: 9d 20 05
			lda $0418,x		; $9fff: bd 18 04
			and #$08				; $a002: 29 08
			beq PRG03_a00b			; $a004: f0 05
			lda $04c0,x		; $a006: bd c0 04
			bmi PRG03_a02d			; $a009: 30 22
PRG03_a00b:
			inc $0508,x		; $a00b: fe 08 05
			lda $0508,x		; $a00e: bd 08 05
			tay				; $a011: a8
			and #$0f				; $a012: 29 0f
			sta $a1			; $a014: 85 a1
			tya				; $a016: 98
			lsr				; $a017: 4a
			lsr				; $a018: 4a
			lsr				; $a019: 4a
			lsr				; $a01a: 4a
			cmp $a1			; $a01b: c5 a1
			bcs PRG03_a025			; $a01d: b0 06
			tya				; $a01f: 98
			and #$f0				; $a020: 29 f0
			sta $0508,x		; $a022: 9d 08 05
PRG03_a025:
			lda $0508,x		; $a025: bd 08 05
			and #$0f				; $a028: 29 0f
			tay				; $a02a: a8
			plp				; $a02b: 28
			rts				; $a02c: 60

;-------------------------------------------------------------------------------
PRG03_a02d:
			lda $0508,x		; $a02d: bd 08 05
			and #$0f				; $a030: 29 0f
			beq PRG03_a03a			; $a032: f0 06
			dec $0508,x		; $a034: de 08 05
			jmp PRG03_a025			; $a037: 4c 25 a0

;-------------------------------------------------------------------------------
PRG03_a03a:
			lda $0508,x		; $a03a: bd 08 05
			lsr				; $a03d: 4a
			lsr				; $a03e: 4a
			lsr				; $a03f: 4a
			lsr				; $a040: 4a
			ora $0508,x		; $a041: 1d 08 05
			sta $0508,x		; $a044: 9d 08 05
			jmp PRG03_a025			; $a047: 4c 25 a0

;-------------------------------------------------------------------------------
PRG03_a04a:
			lda $0550,x		; $a04a: bd 50 05
			and #$0f				; $a04d: 29 0f
			beq PRG03_a06c			; $a04f: f0 1b
			dec $0550,x		; $a051: de 50 05
			lda $0550,x		; $a054: bd 50 05
			and #$c0				; $a057: 29 c0
			cmp #$80				; $a059: c9 80
			bne PRG03_a063			; $a05b: d0 06
			jsr PRG03_9f36			; $a05d: 20 36 9f
			jmp PRG03_a06a			; $a060: 4c 6a a0

;-------------------------------------------------------------------------------
PRG03_a063:
			cmp #$40				; $a063: c9 40
			bne PRG03_a06a			; $a065: d0 03
			jsr PRG03_9f65			; $a067: 20 65 9f
PRG03_a06a:
			clc				; $a06a: 18
			rts				; $a06b: 60

;-------------------------------------------------------------------------------
PRG03_a06c:
			lda #$00				; $a06c: a9 00
			sta $0490,x		; $a06e: 9d 90 04
			sta $04a8,x		; $a071: 9d a8 04
			sta $04c0,x		; $a074: 9d c0 04
			sta $04d8,x		; $a077: 9d d8 04
			lda $0580,x		; $a07a: bd 80 05
			cmp #$04				; $a07d: c9 04
			bcc PRG03_a083			; $a07f: 90 02
			sec				; $a081: 38
			rts				; $a082: 60

;-------------------------------------------------------------------------------
PRG03_a083:
			jsr PRG03_9938			; $a083: 20 38 99
			jsr PRG03_a35b			; $a086: 20 5b a3
			lda $0598,x		; $a089: bd 98 05
			and #$7f				; $a08c: 29 7f
			beq PRG03_a09b			; $a08e: f0 0b
			cpy $05b0			; $a090: cc b0 05
			beq PRG03_a0b8			; $a093: f0 23
			sty $05b0			; $a095: 8c b0 05
			jsr PRG03_a40b			; $a098: 20 0b a4
PRG03_a09b:
			txa				; $a09b: 8a
			beq PRG03_a0b8			; $a09c: f0 1a
			lda $0580,x		; $a09e: bd 80 05
			cmp #$04				; $a0a1: c9 04
			bcs PRG03_a0b8			; $a0a3: b0 13
			ldy #$06				; $a0a5: a0 06
PRG03_a0a7:
			lda $05c7,y		; $a0a7: b9 c7 05
			bmi PRG03_a0b5			; $a0aa: 30 09
			cmp #$04				; $a0ac: c9 04
			bcc PRG03_a0b5			; $a0ae: 90 05
			pla				; $a0b0: 68
			pla				; $a0b1: 68
			jmp PRG03_a27e			; $a0b2: 4c 7e a2

;-------------------------------------------------------------------------------
PRG03_a0b5:
			dey				; $a0b5: 88
			bne PRG03_a0a7			; $a0b6: d0 ef
PRG03_a0b8:
			lda $0430,x		; $a0b8: bd 30 04
			cmp #$b8				; $a0bb: c9 b8
			bcc PRG03_a0c2			; $a0bd: 90 03
PRG03_a0bf:
			jmp PRG03_a16d			; $a0bf: 4c 6d a1

;-------------------------------------------------------------------------------
PRG03_a0c2:
			lda Input_RAM			; $a0c2: a5 00
			and #$a0				; $a0c4: 29 a0
			cmp #$a0				; $a0c6: c9 a0
			bne PRG03_a0fe			; $a0c8: d0 34
			lda $0460,x		; $a0ca: bd 60 04
			cmp #$c8				; $a0cd: c9 c8
			bcs PRG03_a0bf			; $a0cf: b0 ee
			txa				; $a0d1: 8a
			beq PRG03_a0e7			; $a0d2: f0 13
			lda $05d3			; $a0d4: ad d3 05
			beq PRG03_a0bf			; $a0d7: f0 e6
			jsr PRG03_a236			; $a0d9: 20 36 a2
			lda $05cd			; $a0dc: ad cd 05
			bmi PRG03_a0e7			; $a0df: 30 06
			jsr PRG03_a279			; $a0e1: 20 79 a2
			jmp PRG03_a16d			; $a0e4: 4c 6d a1

;-------------------------------------------------------------------------------
PRG03_a0e7:
			lda #$0f				; $a0e7: a9 0f
			sta $0550,x		; $a0e9: 9d 50 05
			jsr PRG03_9f10			; $a0ec: 20 10 9f
			bcs PRG03_a0f6			; $a0ef: b0 05
			lda #$02				; $a0f1: a9 02
			sta $04c0,x		; $a0f3: 9d c0 04
PRG03_a0f6:
			lda #$01				; $a0f6: a9 01
			sta $0490,x		; $a0f8: 9d 90 04
			jmp PRG03_a0bf			; $a0fb: 4c bf a0

;-------------------------------------------------------------------------------
PRG03_a0fe:
			lda Input_RAM			; $a0fe: a5 00
			and #$60				; $a100: 29 60
			cmp #$60				; $a102: c9 60
			bne PRG03_a13d			; $a104: d0 37
			lda $0460,x		; $a106: bd 60 04
			cmp #$09				; $a109: c9 09
			bcs PRG03_a110			; $a10b: b0 03
PRG03_a10d:
			jmp PRG03_a16d			; $a10d: 4c 6d a1

;-------------------------------------------------------------------------------
PRG03_a110:
			txa				; $a110: 8a
			beq PRG03_a126			; $a111: f0 13
			lda $05d1			; $a113: ad d1 05
			beq PRG03_a10d			; $a116: f0 f5
			jsr PRG03_a236			; $a118: 20 36 a2
			lda $05cb			; $a11b: ad cb 05
			bmi PRG03_a126			; $a11e: 30 06
			jsr PRG03_a279			; $a120: 20 79 a2
			jmp PRG03_a10d			; $a123: 4c 0d a1

;-------------------------------------------------------------------------------
PRG03_a126:
			lda #$0f				; $a126: a9 0f
			sta $0550,x		; $a128: 9d 50 05
			jsr PRG03_9f43			; $a12b: 20 43 9f
			bcs PRG03_a135			; $a12e: b0 05
			lda #$fe				; $a130: a9 fe
			sta $04c0,x		; $a132: 9d c0 04
PRG03_a135:
			lda #$01				; $a135: a9 01
			sta $0490,x		; $a137: 9d 90 04
			jmp PRG03_a10d			; $a13a: 4c 0d a1

;-------------------------------------------------------------------------------
PRG03_a13d:
			lda $0430,x		; $a13d: bd 30 04
			cmp #$a8				; $a140: c9 a8
			bcc PRG03_a147			; $a142: 90 03
PRG03_a144:
			jmp PRG03_a16d			; $a144: 4c 6d a1

;-------------------------------------------------------------------------------
PRG03_a147:
			lda Input_RAM			; $a147: a5 00
			and #$20				; $a149: 29 20
			beq PRG03_a16d			; $a14b: f0 20
			txa				; $a14d: 8a
			beq PRG03_a163			; $a14e: f0 13
			lda $05cf			; $a150: ad cf 05
			beq PRG03_a144			; $a153: f0 ef
			jsr PRG03_a236			; $a155: 20 36 a2
			lda $05c9			; $a158: ad c9 05
			bmi PRG03_a163			; $a15b: 30 06
			jsr PRG03_a279			; $a15d: 20 79 a2
			jmp PRG03_a144			; $a160: 4c 44 a1

;-------------------------------------------------------------------------------
PRG03_a163:
			lda #$0f				; $a163: a9 0f
			sta $0550,x		; $a165: 9d 50 05
			lda #$02				; $a168: a9 02
			sta $0490,x		; $a16a: 9d 90 04
PRG03_a16d:
			lda $0430,x		; $a16d: bd 30 04
			cmp #$19				; $a170: c9 19
			bcs PRG03_a177			; $a172: b0 03
PRG03_a174:
			jmp PRG03_a222			; $a174: 4c 22 a2

;-------------------------------------------------------------------------------
PRG03_a177:
			lda Input_RAM			; $a177: a5 00
			and #$90				; $a179: 29 90
			cmp #$90				; $a17b: c9 90
			bne PRG03_a1b3			; $a17d: d0 34
			lda $0460,x		; $a17f: bd 60 04
			cmp #$c8				; $a182: c9 c8
			bcs PRG03_a174			; $a184: b0 ee
			txa				; $a186: 8a
			beq PRG03_a19c			; $a187: f0 13
			lda $05d2			; $a189: ad d2 05
			beq PRG03_a174			; $a18c: f0 e6
			jsr PRG03_a236			; $a18e: 20 36 a2
			lda $05cc			; $a191: ad cc 05
			bmi PRG03_a19c			; $a194: 30 06
			jsr PRG03_a279			; $a196: 20 79 a2
			jmp PRG03_a174			; $a199: 4c 74 a1

;-------------------------------------------------------------------------------
PRG03_a19c:
			lda #$0f				; $a19c: a9 0f
			sta $0550,x		; $a19e: 9d 50 05
			jsr PRG03_9f10			; $a1a1: 20 10 9f
			bcs PRG03_a1ab			; $a1a4: b0 05
			lda #$02				; $a1a6: a9 02
			sta $04c0,x		; $a1a8: 9d c0 04
PRG03_a1ab:
			lda #$ff				; $a1ab: a9 ff
			sta $0490,x		; $a1ad: 9d 90 04
			jmp PRG03_a174			; $a1b0: 4c 74 a1

;-------------------------------------------------------------------------------
PRG03_a1b3:
			lda Input_RAM			; $a1b3: a5 00
			and #$50				; $a1b5: 29 50
			cmp #$50				; $a1b7: c9 50
			bne PRG03_a1f2			; $a1b9: d0 37
			lda $0460,x		; $a1bb: bd 60 04
			cmp #$09				; $a1be: c9 09
			bcs PRG03_a1c5			; $a1c0: b0 03
PRG03_a1c2:
			jmp PRG03_a222			; $a1c2: 4c 22 a2

;-------------------------------------------------------------------------------
PRG03_a1c5:
			txa				; $a1c5: 8a
			beq PRG03_a1db			; $a1c6: f0 13
			lda $05d0			; $a1c8: ad d0 05
			beq PRG03_a1c2			; $a1cb: f0 f5
			jsr PRG03_a236			; $a1cd: 20 36 a2
			lda $05ca			; $a1d0: ad ca 05
			bmi PRG03_a1db			; $a1d3: 30 06
			jsr PRG03_a279			; $a1d5: 20 79 a2
			jmp PRG03_a1c2			; $a1d8: 4c c2 a1

;-------------------------------------------------------------------------------
PRG03_a1db:
			lda #$0f				; $a1db: a9 0f
			sta $0550,x		; $a1dd: 9d 50 05
			jsr PRG03_9f43			; $a1e0: 20 43 9f
			bcs PRG03_a1ea			; $a1e3: b0 05
			lda #$fe				; $a1e5: a9 fe
			sta $04c0,x		; $a1e7: 9d c0 04
PRG03_a1ea:
			lda #$ff				; $a1ea: a9 ff
			sta $0490,x		; $a1ec: 9d 90 04
			jmp PRG03_a1c2			; $a1ef: 4c c2 a1

;-------------------------------------------------------------------------------
PRG03_a1f2:
			lda $0430,x		; $a1f2: bd 30 04
			cmp #$29				; $a1f5: c9 29
			bcs PRG03_a1fc			; $a1f7: b0 03
PRG03_a1f9:
			jmp PRG03_a222			; $a1f9: 4c 22 a2

;-------------------------------------------------------------------------------
PRG03_a1fc:
			lda Input_RAM			; $a1fc: a5 00
			and #$10				; $a1fe: 29 10
			beq PRG03_a222			; $a200: f0 20
			txa				; $a202: 8a
			beq PRG03_a218			; $a203: f0 13
			lda $05ce			; $a205: ad ce 05
			beq PRG03_a1f9			; $a208: f0 ef
			jsr PRG03_a236			; $a20a: 20 36 a2
			lda $05c8			; $a20d: ad c8 05
			bmi PRG03_a218			; $a210: 30 06
			jsr PRG03_a279			; $a212: 20 79 a2
			jmp PRG03_a1f9			; $a215: 4c f9 a1

;-------------------------------------------------------------------------------
PRG03_a218:
			lda #$0f				; $a218: a9 0f
			sta $0550,x		; $a21a: 9d 50 05
			lda #$fe				; $a21d: a9 fe
			sta $0490,x		; $a21f: 9d 90 04
PRG03_a222:
			lda $0598,x		; $a222: bd 98 05
			and #$7f				; $a225: 29 7f
			beq PRG03_a234			; $a227: f0 0b
			lda Input_RAM			; $a229: a5 00
			and #$f3				; $a22b: 29 f3
			bne PRG03_a234			; $a22d: d0 05
			lda #MBID_IfFinishedMoving				; $a22f: a9 07
			sta $0176			; $a231: 8d 76 01
PRG03_a234:
			sec				; $a234: 38
			rts				; $a235: 60

;-------------------------------------------------------------------------------
PRG03_a236:
			pha				; $a236: 48
			lda $0580,x		; $a237: bd 80 05
			cmp #$04				; $a23a: c9 04
			bcc PRG03_a240			; $a23c: 90 02
			pla				; $a23e: 68
			rts				; $a23f: 60

;-------------------------------------------------------------------------------
PRG03_a240:
			pla				; $a240: 68
			tay				; $a241: a8
			and #$07				; $a242: 29 07
			bne PRG03_a24f			; $a244: d0 09
			tya				; $a246: 98
			and #$38				; $a247: 29 38
			beq PRG03_a25f			; $a249: f0 14
			ldy #$07				; $a24b: a0 07
			bne PRG03_a254			; $a24d: d0 05
PRG03_a24f:
			tya				; $a24f: 98
			and #$07				; $a250: 29 07
			tay				; $a252: a8
			dey				; $a253: 88
PRG03_a254:
			lda $0598,x		; $a254: bd 98 05
			beq PRG03_a268			; $a257: f0 0f
			cmp PRG03_a271,y			; $a259: d9 71 a2
			bcc PRG03_a25f			; $a25c: 90 01
			rts				; $a25e: 60

;-------------------------------------------------------------------------------
PRG03_a25f:
			pla				; $a25f: 68
			pla				; $a260: 68
			lda #MBID_ShortageOfEnergy|$80				; $a261: a9 96
			jsr PRG03_MessageBoxSelect			; $a263: 20 e1 b6
			sec				; $a266: 38
			rts				; $a267: 60

;-------------------------------------------------------------------------------
PRG03_a268:
			pla				; $a268: 68
			pla				; $a269: 68
			lda #MBID_UnableToAdvanceFarther|$80				; $a26a: a9 85
			jsr PRG03_MessageBoxSelect			; $a26c: 20 e1 b6
			sec				; $a26f: 38
			rts				; $a270: 60

;-------------------------------------------------------------------------------
PRG03_a271:
			.byte $02, $02, $02, $02	; $a271: 02 02 02 02	 Data
			.byte $02, $02, $02, $02	; $a275: 02 02 02 02	 Data

;-------------------------------------------------------------------------------
PRG03_a279:
			lda #MBID_MonsterIsBlocking				; $a279: a9 09
			jmp PRG03_MessageBoxSelect			; $a27b: 4c e1 b6

;-------------------------------------------------------------------------------
PRG03_a27e:
			lda #MBID_WillYouFight				; $a27e: a9 12
			jsr PRG03_MessageBoxSelect			; $a280: 20 e1 b6
			jsr PRG03_Level_ShowMessageBox			; $a283: 20 7e b6
			beq PRG03_a2bb			; $a286: f0 33
			bcs PRG03_a2c3			; $a288: b0 39
			lda $0159			; $a28a: ad 59 01
			cmp #$ff				; $a28d: c9 ff
			bne PRG03_a294			; $a28f: d0 03
			jmp PRG03_9b3d			; $a291: 4c 3d 9b

;-------------------------------------------------------------------------------
PRG03_a294:
			lda #$f8				; $a294: a9 f8
			sta $02a0			; $a296: 8d a0 02
			lda #MBID_ContactingEnemy				; $a299: a9 13
			jsr PRG03_MessageBoxSelect			; $a29b: 20 e1 b6
			jsr PRG03_Level_ShowMessageBox			; $a29e: 20 7e b6
PRG03_a2a1:
			jsr Main_c087			; $a2a1: 20 87 c0
			lda Input_RAM			; $a2a4: a5 00
			and #$01				; $a2a6: 29 01
			beq PRG03_a2b2			; $a2a8: f0 08
			lda #$33				; $a2aa: a9 33
			jsr Goto_PlaySound			; $a2ac: 20 c6 c0
			jmp PRG03_9af1			; $a2af: 4c f1 9a

;-------------------------------------------------------------------------------
PRG03_a2b2:
			lda Input_RAM			; $a2b2: a5 00
			and #$f3				; $a2b4: 29 f3
			beq PRG03_a2a1			; $a2b6: f0 e9
			jmp PRG03_a27e			; $a2b8: 4c 7e a2

;-------------------------------------------------------------------------------
PRG03_a2bb:
			lda #$80				; $a2bb: a9 80
			sta $016f			; $a2bd: 8d 6f 01
			jmp PRG03_9b88			; $a2c0: 4c 88 9b

;-------------------------------------------------------------------------------
PRG03_a2c3:
			lda $05c8			; $a2c3: ad c8 05
			bmi PRG03_a2d0			; $a2c6: 30 08
			ldy $05d4			; $a2c8: ac d4 05
			jsr PRG03_a335			; $a2cb: 20 35 a3
			bcs PRG03_a319			; $a2ce: b0 49
PRG03_a2d0:
			lda $05c9			; $a2d0: ad c9 05
			bmi PRG03_a2dd			; $a2d3: 30 08
			ldy $05d5			; $a2d5: ac d5 05
			jsr PRG03_a335			; $a2d8: 20 35 a3
			bcs PRG03_a319			; $a2db: b0 3c
PRG03_a2dd:
			lda $05ca			; $a2dd: ad ca 05
			bmi PRG03_a2ea			; $a2e0: 30 08
			ldy $05d6			; $a2e2: ac d6 05
			jsr PRG03_a335			; $a2e5: 20 35 a3
			bcs PRG03_a319			; $a2e8: b0 2f
PRG03_a2ea:
			lda $05cb			; $a2ea: ad cb 05
			bmi PRG03_a2f7			; $a2ed: 30 08
			ldy $05d7			; $a2ef: ac d7 05
			jsr PRG03_a335			; $a2f2: 20 35 a3
			bcs PRG03_a319			; $a2f5: b0 22
PRG03_a2f7:
			lda $05cc			; $a2f7: ad cc 05
			bmi PRG03_a304			; $a2fa: 30 08
			ldy $05d8			; $a2fc: ac d8 05
			jsr PRG03_a335			; $a2ff: 20 35 a3
			bcs PRG03_a319			; $a302: b0 15
PRG03_a304:
			lda $05cd			; $a304: ad cd 05
			bmi PRG03_a311			; $a307: 30 08
			ldy $05d9			; $a309: ac d9 05
			jsr PRG03_a335			; $a30c: 20 35 a3
			bcs PRG03_a319			; $a30f: b0 08
PRG03_a311:
			lda #$00				; $a311: a9 00
			sta $016f			; $a313: 8d 6f 01
			jmp PRG03_a2c3			; $a316: 4c c3 a2

;-------------------------------------------------------------------------------
PRG03_a319:
			beq PRG03_a32d			; $a319: f0 12
			lda $017e			; $a31b: ad 7e 01
			ldy $05b0,x		; $a31e: bc b0 05
			sta $0159,y		; $a321: 99 59 01
			iny				; $a324: c8
			lda #$ff				; $a325: a9 ff
			sta $0159,y		; $a327: 99 59 01
			jmp PRG03_9af1			; $a32a: 4c f1 9a

;-------------------------------------------------------------------------------
PRG03_a32d:
			lda #$80				; $a32d: a9 80
			sta $016f			; $a32f: 8d 6f 01
			jmp PRG03_9b88			; $a332: 4c 88 9b

;-------------------------------------------------------------------------------
PRG03_a335:
			lda $0580,y		; load character ID
			cmp #$04		; Is it a playable character?
			bcs PRG03_a33d		; If not, branch
			rts

;-------------------------------------------------------------------------------
PRG03_a33d:
			pha				; $a33d: 48
			tay				; $a33e: a8
			clc				; $a33f: 18
			adc #$7c				; $a340: 69 7c
			sta $017e			; $a342: 8d 7e 01
			pla				; $a345: 68
			clc				; $a346: 18
			adc #MBID_FightBoss-4				; $a347: 69 06
			jsr PRG03_MessageBoxSelect			; $a349: 20 e1 b6
			jsr PRG03_Level_ShowMessageBox			; $a34c: 20 7e b6
			php				; $a34f: 08
			jsr PRG03_9938			; $a350: 20 38 99
			tya				; $a353: 98
			sta $a0			; $a354: 85 a0
			jsr PRG03_991c			; $a356: 20 1c 99
			plp				; $a359: 28
			rts				; $a35a: 60

;-------------------------------------------------------------------------------
PRG03_a35b:
			sta $a0			; $a35b: 85 a0
			jsr PRG03_991c			; $a35d: 20 1c 99
			lda #$ff				; $a360: a9 ff
			sta $05c8			; $a362: 8d c8 05
			sta $05c9			; $a365: 8d c9 05
			sta $05ca			; $a368: 8d ca 05
			sta $05cb			; $a36b: 8d cb 05
			sta $05cc			; $a36e: 8d cc 05
			sta $05cd			; $a371: 8d cd 05
			ldy $a0			; $a374: a4 a0
			jsr PRG03_9670			; $a376: 20 70 96
			sta $05ce			; $a379: 8d ce 05
			beq PRG03_a38c			; $a37c: f0 0e
			jsr PRG03_9c2b			; $a37e: 20 2b 9c
			bcc PRG03_a38c			; $a381: 90 09
			lda $0580,y		; $a383: b9 80 05
			sta $05c8			; $a386: 8d c8 05
			sty $05d4			; $a389: 8c d4 05
PRG03_a38c:
			ldy $a0			; $a38c: a4 a0
			jsr PRG03_9678			; $a38e: 20 78 96
			sta $05cf			; $a391: 8d cf 05
			beq PRG03_a3a4			; $a394: f0 0e
			jsr PRG03_9c2b			; $a396: 20 2b 9c
			bcc PRG03_a3a4			; $a399: 90 09
			lda $0580,y		; $a39b: b9 80 05
			sta $05c9			; $a39e: 8d c9 05
			sty $05d5			; $a3a1: 8c d5 05
PRG03_a3a4:
			ldy $a0			; $a3a4: a4 a0
			jsr PRG03_9690			; $a3a6: 20 90 96
			sta $05d0			; $a3a9: 8d d0 05
			beq PRG03_a3be			; $a3ac: f0 10
			jsr PRG03_9c2b			; $a3ae: 20 2b 9c
			lda #$ff				; $a3b1: a9 ff
			bcc PRG03_a3be			; $a3b3: 90 09
			lda $0580,y		; $a3b5: b9 80 05
			sta $05ca			; $a3b8: 8d ca 05
			sty $05d6			; $a3bb: 8c d6 05
PRG03_a3be:
			ldy $a0			; $a3be: a4 a0
			jsr PRG03_96a8			; $a3c0: 20 a8 96
			sta $05d1			; $a3c3: 8d d1 05
			beq PRG03_a3d8			; $a3c6: f0 10
			jsr PRG03_9c2b			; $a3c8: 20 2b 9c
			lda #$ff				; $a3cb: a9 ff
			bcc PRG03_a3d8			; $a3cd: 90 09
			lda $0580,y		; $a3cf: b9 80 05
			sta $05cb			; $a3d2: 8d cb 05
			sty $05d7			; $a3d5: 8c d7 05
PRG03_a3d8:
			ldy $a0			; $a3d8: a4 a0
			jsr PRG03_96be			; $a3da: 20 be 96
			sta $05d2			; $a3dd: 8d d2 05
			beq PRG03_a3f0			; $a3e0: f0 0e
			jsr PRG03_9c2b			; $a3e2: 20 2b 9c
			bcc PRG03_a3f0			; $a3e5: 90 09
			lda $0580,y		; $a3e7: b9 80 05
			sta $05cc			; $a3ea: 8d cc 05
			sty $05d8			; $a3ed: 8c d8 05
PRG03_a3f0:
			ldy $a0			; $a3f0: a4 a0
			jsr PRG03_96d4			; $a3f2: 20 d4 96
			sta $05d3			; $a3f5: 8d d3 05
			beq PRG03_a408			; $a3f8: f0 0e
			jsr PRG03_9c2b			; $a3fa: 20 2b 9c
			bcc PRG03_a408			; $a3fd: 90 09
			lda $0580,y		; $a3ff: b9 80 05
			sta $05cd			; $a402: 8d cd 05
			sty $05d9			; $a405: 8c d9 05
PRG03_a408:
			ldy $a0			; $a408: a4 a0
			rts				; $a40a: 60

;-------------------------------------------------------------------------------
PRG03_a40b:
			jsr PRG03_965b			; $a40b: 20 5b 96
			tay				; $a40e: a8
			and #$07				; $a40f: 29 07
			bne PRG03_a41d			; $a411: d0 0a
			tya				; $a413: 98
			and #$38				; $a414: 29 38
			beq PRG03_a43d			; $a416: f0 25
			tya				; $a418: 98
			ora #$07				; $a419: 09 07
			bne PRG03_a41f			; $a41b: d0 02
PRG03_a41d:
			dey				; $a41d: 88
			tya				; $a41e: 98
PRG03_a41f:
			ldy $05b0,x		; $a41f: bc b0 05
			inc $05b0,x		; $a422: fe b0 05
			sta $0159,y		; $a425: 99 59 01
			pha				; $a428: 48
			iny				; $a429: c8
			lda #$ff				; $a42a: a9 ff
			sta $0159,y		; $a42c: 99 59 01
			pla				; $a42f: 68
			and #$07				; $a430: 29 07
			tay				; $a432: a8
			lda $0598,x		; $a433: bd 98 05
			sec				; $a436: 38
			sbc PRG03_a271,y			; $a437: f9 71 a2
			sta $0598,x		; $a43a: 9d 98 05
PRG03_a43d:
			rts				; $a43d: 60

;-------------------------------------------------------------------------------
			lda $0418,x		; $a43e: bd 18 04
			and #$80				; $a441: 29 80
			bne PRG03_a475			; $a443: d0 30
			lda #$8a				; $a445: a9 8a
			sta $0418,x		; $a447: 9d 18 04
			lda #$45				; $a44a: a9 45
			sta $04f0,x		; $a44c: 9d f0 04
			lda #$00				; $a44f: a9 00
			sta $0598,x		; $a451: 9d 98 05
			lda $016c			; $a454: ad 6c 01
			ora $016d			; $a457: 0d 6d 01
			beq PRG03_a46b			; $a45a: f0 0f
			lda $016c			; $a45c: ad 6c 01
			sta $0430,x		; $a45f: 9d 30 04
			lda $016d			; $a462: ad 6d 01
			sta $0460,x		; $a465: 9d 60 04
			jmp PRG03_a475			; $a468: 4c 75 a4

;-------------------------------------------------------------------------------
PRG03_a46b:
			lda #$08				; $a46b: a9 08
			sta $0460,x		; $a46d: 9d 60 04
			lda #$18				; $a470: a9 18
			sta $0430,x		; $a472: 9d 30 04
PRG03_a475:
			lda $0418,x		; $a475: bd 18 04
			and #$20				; $a478: 29 20
			beq PRG03_a47d			; $a47a: f0 01
			rts				; $a47c: 60

;-------------------------------------------------------------------------------
PRG03_a47d:
			jsr PRG03_a04a			; $a47d: 20 4a a0
			jsr PRG03_9c4d			; $a480: 20 4d 9c
			beq PRG03_a488			; $a483: f0 03
			jmp PRG03_a504			; $a485: 4c 04 a5

;-------------------------------------------------------------------------------
PRG03_a488:
			jsr PRG03_9938			; $a488: 20 38 99
			jsr PRG03_b849			; $a48b: 20 49 b8
			bcc PRG03_a497			; $a48e: 90 07
			lda #MBID_ThenPressA				; $a490: a9 02
			sta $0176			; $a492: 8d 76 01
			bne PRG03_a49c			; $a495: d0 05
PRG03_a497:
			lda #MBID_SelectAMonster				; $a497: a9 01
			sta $0176			; $a499: 8d 76 01
PRG03_a49c:
			ldx $a7			; $a49c: a6 a7

			lda Input_RAM
			and #Btn_A		; Check if A was pressed
			beq PRG03_a504		; if not, branch

			lda Input_RAM
			and #~Btn_A		; Mark A as "not pressed"
			sta Input_RAM

			lda #$33				; $a4aa: a9 33
			jsr Goto_PlaySound			; $a4ac: 20 c6 c0
			jsr PRG03_9c28			; $a4af: 20 28 9c
			bcs PRG03_Board_CharacterAPress			; $a4b2: b0 08
			lda #MBID_NoMonsterHere				; $a4b4: a9 03
			jsr PRG03_MessageBoxSelect			; $a4b6: 20 e1 b6
			jmp PRG03_a504			; $a4b9: 4c 04 a5

;-------------------------------------------------------------------------------
;	When pressed A and a character is selected
PRG03_Board_CharacterAPress:
			lda $0580,y		; Load character ID
			cmp #$04		; Is it a playable character?
			bcc PRG03_Board_PlayableCharacterPressed		; if not, branch
			clc
			adc #MBID_BossFirst-4 ; Offset for boss life texts
			jsr PRG03_MessageBoxSelect
			jmp PRG03_a504

;-------------------------------------------------------------------------------
PRG03_Board_PlayableCharacterPressed:
			lda $0418,y		; $a4cc: b9 18 04
			and #$df				; $a4cf: 29 df
			sta $0418,y		; $a4d1: 99 18 04
			lda $0418,x		; $a4d4: bd 18 04
			ora #$20				; $a4d7: 09 20
			sta $0418,x		; $a4d9: 9d 18 04
			lda $0460,x		; $a4dc: bd 60 04
			sta $0460,y		; $a4df: 99 60 04
			lda $0430,x		; $a4e2: bd 30 04
			sta $0430,y		; $a4e5: 99 30 04
			lda #$ff				; $a4e8: a9 ff
			sta $0159			; $a4ea: 8d 59 01
			lda #$00				; $a4ed: a9 00
			sta $05b0,y		; $a4ef: 99 b0 05
			lda $0580,y		; $a4f2: b9 80 05
			tay				; $a4f5: a8
			jsr PRG03_9ac0			; $a4f6: 20 c0 9a
			ldy $a0			; $a4f9: a4 a0
			jsr PRG03_96ec			; $a4fb: 20 ec 96
			jsr PRG03_9938			; $a4fe: 20 38 99
			sta $05b0			; $a501: 8d b0 05
PRG03_a504:
			rts				; $a504: 60

;-------------------------------------------------------------------------------
			lda $0418,x		; $a505: bd 18 04
			and #$80				; $a508: 29 80
			bne +			; $a50a: d0 07

			lda #<PRG03_a538				; $a50c: a9 38
			ldy #>PRG03_a538				; $a50e: a0 a5
			jsr PRG03_LoadPiece			; $a510: 20 55 a7

+			lda $0418,x		; $a513: bd 18 04
			and #$20				; $a516: 29 20
			beq PRG03_a521			; $a518: f0 07
			lda PRG03_a53c			; $a51a: ad 3c a5
			sta $0598,x		; $a51d: 9d 98 05
			rts				; $a520: 60

PRG03_a521:
			jsr PRG03_a04a			; $a521: 20 4a a0
			jsr PRG03_9ad5			; $a524: 20 d5 9a
			jsr PRG03_9c4d			; $a527: 20 4d 9c
			beq +			; $a52a: f0 09

			jsr PRG03_9fe1			; $a52c: 20 e1 9f
			lda PRG03_a536,y			; $a52f: b9 36 a5
			sta $04f0,x		; $a532: 9d f0 04
+			rts				; $a535: 60

;-------------------------------------------------------------------------------
; Piece steps
Char_Steps .sfunction s, s+1
; Number of walking animation frames
animFrameCount .sfunction a, (a-1)<<4

;		Godzilla data
PRG03_a536:
			.byte $46,$47 			; Walking sprites ID
PRG03_a538:
			.byte $AA 				; Piece initial state (isn't really used)
			.byte animFrameCount(2) ; Number of walking frames
			.byte $B0 				; Initial value of the frame timer (isn't really used)
			.byte $46 				; Initial sprite to load when selected
PRG03_a53c:
			.byte Char_Steps(3) 	; Number of piece steps
			.byte 0 				; Character ID

;-------------------------------------------------------------------------------
			lda $0418,x		; $a53e: bd 18 04
			and #$80				; $a541: 29 80
			bne +			; $a543: d0 07

			lda #<PRG03_a56c				; $a545: a9 6c
			ldy #>PRG03_a56c				; $a547: a0 a5
			jsr PRG03_LoadPiece			; $a549: 20 55 a7

+			lda $0418,x		; $a54c: bd 18 04
			and #$20				; $a54f: 29 20
			beq PRG03_a55a			; $a551: f0 07
			lda PRG03_a570			; $a553: ad 70 a5
			sta $0598,x		; $a556: 9d 98 05
			rts				; $a559: 60

PRG03_a55a:
			jsr PRG03_a04a			; $a55a: 20 4a a0
			jsr PRG03_9ad5			; $a55d: 20 d5 9a
			jsr PRG03_9fe1			; $a560: 20 e1 9f
			lda PRG03_a56a,y			; $a563: b9 6a a5
			sta $04f0,x		; $a566: 9d f0 04
			rts				; $a569: 60

;-------------------------------------------------------------------------------
;		Mothra data
PRG03_a56a:
			.byte $48,$49
PRG03_a56c:
			.word $10AA
			.byte $B0
			.byte $48
PRG03_a570:
			.byte Char_Steps(7)
			.byte 1

			; TODO: convert to code
			.byte $bd, $18, $04, $29	; $a572: bd 18 04 29	 Data
			.byte $80, $d0, $07, $a9	; $a576: 80 d0 07 a9	 Data
			.byte $a0, $a0, $a5, $20	; $a57a: a0 a0 a5 20	 Data
			.byte $55, $a7, $bd, $18	; $a57e: 55 a7 bd 18	 Data
			.byte $04, $29, $20, $f0	; $a582: 04 29 20 f0	 Data
			.byte $07, $ad, $a4, $a5	; $a586: 07 ad a4 a5	 Data
			.byte $9d, $98, $05, $60	; $a58a: 9d 98 05 60	 Data
			.byte $20, $4a, $a0, $20	; $a58e: 20 4a a0 20	 Data
			.byte $d5, $9a, $20, $e1	; $a592: d5 9a 20 e1	 Data
			.byte $9f, $b9, $9e, $a5	; $a596: 9f b9 9e a5	 Data
			.byte $9d, $f0, $04, $60	; $a59a: 9d f0 04 60	 Data

;		Rodan data
			.byte $4A,$4B
			.word $10AA
			.byte $B0
			.byte $4A
			.byte Char_Steps(5)
			.byte 2

			; TODO: convert to code
			.byte $bd, $18, $04, $29	; $a5a6: bd 18 04 29	 Data
			.byte $80, $d0, $07, $a9	; $a5aa: 80 d0 07 a9	 Data
			.byte $d9, $a0, $a5, $20	; $a5ae: d9 a0 a5 20	 Data
			.byte $55, $a7, $bd, $18	; $a5b2: 55 a7 bd 18	 Data
			.byte $04, $29, $20, $f0	; $a5b6: 04 29 20 f0	 Data
			.byte $07, $ad, $dd, $a5	; $a5ba: 07 ad dd a5	 Data
			.byte $9d, $98, $05, $60	; $a5be: 9d 98 05 60	 Data
			.byte $20, $4a, $a0, $20	; $a5c2: 20 4a a0 20	 Data
			.byte $d5, $9a, $20, $4d	; $a5c6: d5 9a 20 4d	 Data
			.byte $9c, $f0, $09, $20	; $a5ca: 9c f0 09 20	 Data
			.byte $e1, $9f, $b9, $d7	; $a5ce: e1 9f b9 d7	 Data
			.byte $a5, $9d, $f0, $04	; $a5d2: a5 9d f0 04	 Data
			.byte $60

;		Anguirus data
			.byte $4C,$4D
			.word $10AA
			.byte $B0
			.byte $4C
			.byte Char_Steps(1)
			.byte 3

;-------------------------------------------------------------------------------
			lda $0418,x		; $a5df: bd 18 04
			and #$80				; $a5e2: 29 80
			bne +			; $a5e4: d0 10

			lda $0191			; $a5e6: ad 91 01
			jsr PRG03_a66b			; $a5e9: 20 6b a6
			sta $0191			; $a5ec: 8d 91 01
			lda #<PRG03_a61f				; $a5ef: a9 1f
			ldy #>PRG03_a61f				; $a5f1: a0 a6
			jsr PRG03_LoadPiece			; $a5f3: 20 55 a7

+			lda $0418,x		; $a5f6: bd 18 04
			and #$20				; $a5f9: 29 20
			beq PRG03_a604			; $a5fb: f0 07
			lda PRG03_a623			; $a5fd: ad 23 a6
			sta $0598,x		; $a600: 9d 98 05
			rts				; $a603: 60

PRG03_a604:
			lda #$00				; $a604: a9 00
			sta Input_RAM			; $a606: 85 00
			jsr PRG03_ab15			; $a608: 20 15 ab
			jsr PRG03_9ad5			; $a60b: 20 d5 9a
			jsr PRG03_9c4d			; $a60e: 20 4d 9c
			beq +			; $a611: f0 09

			jsr PRG03_9fe1			; $a613: 20 e1 9f
			lda PRG03_a61d,y			; $a616: b9 1d a6
			sta $04f0,x		; $a619: 9d f0 04
+			rts				; $a61c: 60

;-------------------------------------------------------------------------------
;		Mecha-Godzilla data
PRG03_a61d:
			.byte $6C,$6D
PRG03_a61f:
			.word $10AA
			.byte $B0
			.byte $6C
PRG03_a623:
			.byte Char_Steps(3)
			.byte 5

			; TODO: convert to code
			.byte $bd, $18, $04	; $a624: 05 bd 18 04	 Data
			.byte $29, $80, $d0, $10	; $a628: 29 80 d0 10	 Data
			.byte $ad, $93, $01, $20	; $a62c: ad 93 01 20	 Data
			.byte $6b, $a6, $8d, $93	; $a630: 6b a6 8d 93	 Data
			.byte $01, $a9, $65, $a0	; $a634: 01 a9 65 a0	 Data
			.byte $a6, $20, $55, $a7	; $a638: a6 20 55 a7	 Data
			.byte $bd, $18, $04, $29	; $a63c: bd 18 04 29	 Data
			.byte $20, $f0, $07, $ad	; $a640: 20 f0 07 ad	 Data
			.byte $69, $a6, $9d, $98	; $a644: 69 a6 9d 98	 Data
			.byte $05, $60, $a9, $00	; $a648: 05 60 a9 00	 Data
			.byte $85, $00, $20, $15	; $a64c: 85 00 20 15	 Data
			.byte $ab, $20, $d5, $9a	; $a650: ab 20 d5 9a	 Data
			.byte $20, $4d, $9c, $f0	; $a654: 20 4d 9c f0	 Data
			.byte $09, $20, $e1, $9f	; $a658: 09 20 e1 9f	 Data
			.byte $b9, $63, $a6, $9d	; $a65c: b9 63 a6 9d	 Data
			.byte $f0, $04, $60

;		Gigan data
			.byte $6E,$6F
			.word $10AA
			.byte $B0
			.byte $6E
			.byte Char_Steps(3)
			.byte 7

;-------------------------------------------------------------------------------
PRG03_a66b:
			ldy v_PlanetID			; $a66b: ac 58 01
			clc				; $a66e: 18
			adc PRG03_a677,y			; $a66f: 79 77 a6
			bcc PRG03_a676			; $a672: 90 02
			lda #$ff				; $a674: a9 ff
PRG03_a676:
			rts				; $a676: 60

;-------------------------------------------------------------------------------
PRG03_a677:
			.byte $01, $02, $04, $08	; $a677: 01 02 04 08	 Data
			.byte $10, $10, $10, $10	; $a67b: 10 10 10 10	 Data
			.byte $10	; $a67f: 10			Data

;-------------------------------------------------------------------------------
PRG03_a680:
			ldy #$18				; $a680: a0 18
			lda #$00				; $a682: a9 00
PRG03_a684:
			sta $03ff,y		; $a684: 99 ff 03
			dey				; $a687: 88
			bne PRG03_a684			; $a688: d0 fa
			jsr PRG03_8219			; $a68a: 20 19 82
			lda $016c			; $a68d: ad 6c 01
			ora $016d			; $a690: 0d 6d 01
			beq PRG03_a6a2			; $a693: f0 0d
			lda $016a			; $a695: ad 6a 01
			sta $d9			; $a698: 85 d9
			lda $016b			; $a69a: ad 6b 01
			sta $da			; $a69d: 85 da
			jmp PRG03_a6aa			; $a69f: 4c aa a6

;-------------------------------------------------------------------------------
PRG03_a6a2:
			lda #$08				; $a6a2: a9 08
			sta $d9			; $a6a4: 85 d9
			lda #$00				; $a6a6: a9 00
			sta $da			; $a6a8: 85 da
PRG03_a6aa:
			lda #$00				; $a6aa: a9 00
			sta $db			; $a6ac: 85 db
			sta $dc			; $a6ae: 85 dc
			ldy v_PlanetID			; $a6b0: ac 58 01
			lda PRG03_BoardCameraMaximum,y			; $a6b3: b9 7b b4
			sta $0177			; $a6b6: 8d 77 01
			lda #$ff				; $a6b9: a9 ff
			sta $0159			; $a6bb: 8d 59 01
			lda #$00				; $a6be: a9 00
			sta $0598			; $a6c0: 8d 98 05
			sta $016f			; $a6c3: 8d 6f 01
			jsr PRG03_a7c2			; $a6c6: 20 c2 a7
			lda $017a			; $a6c9: ad 7a 01
			and #$01				; $a6cc: 29 01
			beq PRG03_a6e9			; $a6ce: f0 19
			ldx #$04				; $a6d0: a2 04
PRG03_a6d2:
			lda $018c,x		; $a6d2: bd 8c 01
			beq PRG03_a6e4			; $a6d5: f0 0d
			lda $0198,x		; $a6d7: bd 98 01
			and #$f0				; $a6da: 29 f0
			cmp #$f0				; $a6dc: c9 f0
			beq PRG03_a6e4			; $a6de: f0 04
			lda #$08				; $a6e0: a9 08
			bne PRG03_a6eb			; $a6e2: d0 07
PRG03_a6e4:
			inx				; $a6e4: e8
			cpx #$0c				; $a6e5: e0 0c
			bcc PRG03_a6d2			; $a6e7: 90 e9
PRG03_a6e9:
			lda #$01				; $a6e9: a9 01
PRG03_a6eb:
			sta $0400			; $a6eb: 8d 00 04
			ldy v_PlanetID			; $a6ee: ac 58 01
			lda PRG03_BoardPalettes,y			; $a6f1: b9 7d a8
			jsr Goto_LoadPalette			; $a6f4: 20 d2 c0
			lda #PalID_BoardIcons				; $a6f7: a9 13
			jsr Goto_LoadPalette			; $a6f9: 20 d2 c0
			jsr Main_c0b1			; $a6fc: 20 b1 c0
PRG03_a6ff:
			jsr Main_c087			; $a6ff: 20 87 c0
PRG03_a702:
			jsr Goto_WaitFrame			; $a702: 20 ba c0
			inc $c6			; $a705: e6 c6
			jsr PRG03_8219			; $a707: 20 19 82
			jsr PRG03_adb7			; $a70a: 20 b7 ad
			lda Input_RAM			; $a70d: a5 00
			and #$08				; $a70f: 29 08
			beq PRG03_a71e			; $a711: f0 0b
			lda #$33				; $a713: a9 33
			jsr Goto_PlaySound			; $a715: 20 c6 c0
			lda $0176			; $a718: ad 76 01
			jsr PRG03_MessageBoxSelect			; $a71b: 20 e1 b6
PRG03_a71e:
			lda Input_RAM			; $a71e: a5 00
			and #$04				; $a720: 29 04
			beq PRG03_a73a			; $a722: f0 16
			lda $0400			; $a724: ad 00 04
			cmp #$01				; $a727: c9 01
			bne PRG03_a73a			; $a729: d0 0f
			lda $0418			; $a72b: ad 18 04
			and #$20				; $a72e: 29 20
			bne PRG03_a73a			; $a730: d0 08
			pla				; $a732: 68
			pla				; $a733: 68
			pla				; $a734: 68
			pla				; $a735: 68
			pla				; $a736: 68
			jmp Main_c0f3			; $a737: 4c f3 c0

;-------------------------------------------------------------------------------
PRG03_a73a:
			lda $0598			; $a73a: ad 98 05
			bmi PRG03_a74a			; $a73d: 30 0b
			jsr PRG03_Level_ShowMessageBox			; $a73f: 20 7e b6
			lda $016f			; $a742: ad 6f 01
			beq PRG03_a6ff			; $a745: f0 b8
			jmp PRG03_a702			; $a747: 4c 02 a7

;-------------------------------------------------------------------------------
PRG03_a74a:
			jsr PRG03_a78c			; $a74a: 20 8c a7
			ldx #$05				; $a74d: a2 05
			jsr Goto_GameWait			; $a74f: 20 c3 c0
			jmp Goto_FadeInOut			; $a752: 4c ae c0

;-------------------------------------------------------------------------------
;	Character board piece loading subroutine
;	Input:
;		y - higher byte of the piece data table
;		a - lower byte of the piece dara table
;-------------------------------------------------------------------------------

PRG03_LoadPiece:
			sta LoadAddress_Low			; $a755: 85 a5
			sty LoadAddress_High			; $a757: 84 a6
			ldy #$00		; $a759: a0 00

			lda (LoadedAddress),y		; $a75b: b1 a5
			iny				; $a75d: c8
			sta $0418,x		; $a75e: 9d 18 04

			lda (LoadedAddress),y		; $a761: b1 a5
			iny				; $a763: c8
			sta $0508,x		; $a764: 9d 08 05

			lda (LoadedAddress),y		; $a767: b1 a5
			iny				; $a769: c8
			sta $0520,x		; $a76a: 9d 20 05

			; Load the sprite id that is loaded when
			; the piece is selected for the first time
			lda (LoadedAddress),y		; $a76d: b1 a5
			iny				; $a76f: c8
			sta $04f0,x		; $a770: 9d f0 04

			; Load walking steps count
			lda (LoadedAddress),y		; $a773: b1 a5
			iny				; $a775: c8
			sta $0598,x		; $a776: 9d 98 05

			; Load character id
			lda (LoadedAddress),y		; $a779: b1 a5
			iny				; $a77b: c8
			sta $0580,x		; $a77c: 9d 80 05

			pha				; $a77f: 48
			tay				; $a780: a8
			lda $0198,y		; $a781: b9 98 01
			sta $0538,x		; $a784: 9d 38 05
			tay				; $a787: a8
			pla				; $a788: 68

			jmp PRG03_999b			; $a789: 4c 9b 99

;-------------------------------------------------------------------------------
PRG03_a78c:
			ldx #$01				; $a78c: a2 01
PRG03_a78e:
			lda $0418,x		; $a78e: bd 18 04
			and #$80				; $a791: 29 80
			beq PRG03_a79f			; $a793: f0 0a
			lda $0580,x		; $a795: bd 80 05
			tay				; $a798: a8
			lda $0538,x		; $a799: bd 38 05
			sta $0198,y		; $a79c: 99 98 01
PRG03_a79f:
			inx				; $a79f: e8
			cpx #$18				; $a7a0: e0 18
			bcc PRG03_a78e			; $a7a2: 90 ea
			lda $017a			; $a7a4: ad 7a 01
			and #$01				; $a7a7: 29 01
			bne PRG03_a7c1			; $a7a9: d0 16
			lda $0430			; $a7ab: ad 30 04
			sta $016c			; $a7ae: 8d 6c 01
			lda $0460			; $a7b1: ad 60 04
			sta $016d			; $a7b4: 8d 6d 01
			lda $d9			; $a7b7: a5 d9
			sta $016a			; $a7b9: 8d 6a 01
			lda $da			; $a7bc: a5 da
			sta $016b			; $a7be: 8d 6b 01
PRG03_a7c1:
			rts				; $a7c1: 60

;-------------------------------------------------------------------------------
PRG03_a7c2:
			ldx #$00				; $a7c2: a2 00
			ldy #$01				; $a7c4: a0 01
			sty $a8			; $a7c6: 84 a8
PRG03_a7c8:
			lda $018c,x		; $a7c8: bd 8c 01
			beq PRG03_a80b			; $a7cb: f0 3e
			lda $0198,x		; $a7cd: bd 98 01
			and #$f0				; $a7d0: 29 f0
			cmp #$f0				; $a7d2: c9 f0
			bne PRG03_a801			; $a7d4: d0 2b
			lda v_PlanetID			; $a7d6: ad 58 01
			and #$0f				; $a7d9: 29 0f
			sta $a0			; $a7db: 85 a0
			lda $0198,x		; $a7dd: bd 98 01
			and #$0f				; $a7e0: 29 0f
			cmp $a0			; $a7e2: c5 a0
			bne PRG03_a80b			; $a7e4: d0 25
			asl				; $a7e6: 0a
			asl				; $a7e7: 0a
			sta $a0			; $a7e8: 85 a0
			asl				; $a7ea: 0a
			clc				; $a7eb: 18
			adc $a0			; $a7ec: 65 a0
			sta $a0			; $a7ee: 85 a0
			clc				; $a7f0: 18
			txa				; $a7f1: 8a
			adc $a0			; $a7f2: 65 a0
			tay				; $a7f4: a8
			lda PRG03_BoardPositions,y			; $a7f5: b9 1d a8
			sta $0198,x		; $a7f8: 9d 98 01
			and #$f0				; $a7fb: 29 f0
			cmp #$f0				; $a7fd: c9 f0
			beq PRG03_a80b			; $a7ff: f0 0a
PRG03_a801:
			ldy $a8			; $a801: a4 a8
			lda PRG03_PiecesObjects,x			; $a803: bd 11 a8
			sta $0400,y		; $a806: 99 00 04
			inc $a8			; $a809: e6 a8
PRG03_a80b:
			inx				; $a80b: e8
			cpx #$0c				; $a80c: e0 0c
			bcc PRG03_a7c8			; $a80e: 90 b8
			rts				; $a810: 60

;-------------------------------------------------------------------------------
; Piece object ids
; (change 3rd and 4th 0's to ObjID_Rodan and ObjID_Anguirus respectively
;	to allow Rodan and Anguirus appear on the board)
;-------------------------------------------------------------------------------
PRG03_PiecesObjects:
			.byte ObjID_Godzilla, ObjID_Mothra, $00, $00
			.byte $0c, $06, $0b, $07
			.byte $09, $0e, $0d, $0a

; character positions on the board
PRG03_BoardPositions:
			.byte $00, $01, $f1, $f1
			.byte $f1, $f1, $f1, $f1
			.byte $f1, $25, $f1, $20

			.byte $02, $03, $f2, $f2
			.byte $f2, $f2, $f2, $f2
			.byte $f2, $28, $34, $2a

			.byte $02, $03, $f3, $f3
			.byte $f3, $f3, $3e, $f3
			.byte $f3, $29, $34, $36

			.byte $02, $03, $f4, $f4
			.byte $f4, $f4, $3b, $f4
			.byte $46, $25, $2f, $22

			.byte $0f, $1a, $f5, $f5
			.byte $f5, $f5, $0c, $11
			.byte $17, $1d, $12, $07

			.byte $02, $03, $f6, $f6
			.byte $f6, $1e, $1b, $27
			.byte $2b, $14, $17, $12

			.byte $00, $05, $f7, $f7
			.byte $f7, $24, $11, $23
			.byte $25, $12, $14, $15

			.byte $02, $03, $f8, $f8
			.byte $3f, $39, $2e, $3a
			.byte $34, $29, $2f, $23

		PlanetCheck PRG03_BoardPositions, CharacterCount

; board palette ids
PRG03_BoardPalettes:
			.byte PalID_BoardTheEarth
			.byte PalID_BoardMars
			.byte PalID_BoardJupiter
			.byte PalID_BoardSaturn
			.byte PalID_BoardUranus
			.byte PalID_BoardPluto
			.byte PalID_BoardNeptune
			.byte PalID_BoardPlanetX

		PlanetCheck PRG03_BoardPalettes, 1

;-------------------------------------------------------------------------------
			lda $0418,x		; $a885: bd 18 04
			and #$80				; $a888: 29 80
			bne PRG03_a8a1			; $a88a: d0 15
			lda #$80				; $a88c: a9 80
			sta $0418,x		; $a88e: 9d 18 04
			lda #$ff				; $a891: a9 ff
			sta $0159			; $a893: 8d 59 01
			lda #$00				; $a896: a9 00
			sta $0598			; $a898: 8d 98 05
			lda #$80				; $a89b: a9 80
			sta $05da			; $a89d: 8d da 05
			rts				; $a8a0: 60

;-------------------------------------------------------------------------------
PRG03_a8a1:
			ldy $017b			; $a8a1: ac 7b 01
-			lda $0580,y		; $a8a4: b9 80 05
			cmp #$04				; $a8a7: c9 04
			bcs PRG03_a8bb			; $a8a9: b0 10
			dey				; $a8ab: 88
			tya				; $a8ac: 98
			and #$0f				; $a8ad: 29 0f
			tay				; $a8af: a8
			cmp $017b			; $a8b0: cd 7b 01
			bne -			; $a8b3: d0 ef
			lda #$80				; $a8b5: a9 80
			sta $0598			; $a8b7: 8d 98 05
			rts				; $a8ba: 60

;-------------------------------------------------------------------------------
PRG03_a8bb:
			sty $a8			; $a8bb: 84 a8
			dey				; $a8bd: 88
			tya				; $a8be: 98
			and #$0f				; $a8bf: 29 0f
			sta $017b			; $a8c1: 8d 7b 01
			lda #$00				; $a8c4: a9 00
			sta $0400,x		; $a8c6: 9d 00 04
			ldx $a8			; $a8c9: a6 a8
			txa				; $a8cb: 8a
			pha				; $a8cc: 48
			lda $0538,x		; $a8cd: bd 38 05
			jsr PRG03_991c			; $a8d0: 20 1c 99
			ldy $a2			; $a8d3: a4 a2
			lda PRG03_a960,y			; $a8d5: b9 60 a9
			sta $a4			; $a8d8: 85 a4
			lda PRG03_a951,y			; $a8da: b9 51 a9
			sta $a3			; $a8dd: 85 a3
PRG03_a8df:
			lda $a4			; $a8df: a5 a4
			cmp $da			; $a8e1: c5 da
			bne PRG03_a916			; $a8e3: d0 31
			lda $a3			; $a8e5: a5 a3
			cmp $d9			; $a8e7: c5 d9
			bne PRG03_a916			; $a8e9: d0 2b
PRG03_a8eb:
			pla				; $a8eb: 68
			pha				; $a8ec: 48
			tax				; $a8ed: aa
			lda $0418,x		; $a8ee: bd 18 04
			and #$df				; $a8f1: 29 df
			sta $0418,x		; $a8f3: 9d 18 04
			lda $0580,x		; $a8f6: bd 80 05
			tay				; $a8f9: a8
			jsr PRG03_9ac0			; $a8fa: 20 c0 9a
			pla				; $a8fd: 68
			pha				; $a8fe: 48
			tax				; $a8ff: aa
			lda $0538,x		; $a900: bd 38 05
			tay				; $a903: a8
			jsr PRG03_96ec			; $a904: 20 ec 96
			pla				; $a907: 68
			tax				; $a908: aa
			jsr PRG03_9c5a			; $a909: 20 5a 9c
			lda $a7			; $a90c: a5 a7
			pha				; $a90e: 48
			jsr PRG03_adb7			; $a90f: 20 b7 ad
			pla				; $a912: 68
			sta $a7			; $a913: 85 a7
			rts				; $a915: 60

;-------------------------------------------------------------------------------
PRG03_a916:
			jsr Goto_WaitFrame			; $a916: 20 ba c0
			lda $da			; $a919: a5 da
			cmp $a4			; $a91b: c5 a4
			beq PRG03_a923			; $a91d: f0 04
			bcs PRG03_a944			; $a91f: b0 23
			bcc PRG03_a929			; $a921: 90 06
PRG03_a923:
			lda $d9			; $a923: a5 d9
			cmp $a3			; $a925: c5 a3
			bcs PRG03_a944			; $a927: b0 1b
PRG03_a929:
			lda $0177			; $a929: ad 77 01
			beq PRG03_a933			; $a92c: f0 05
			clc				; $a92e: 18
			adc $d9			; $a92f: 65 d9
			bcs PRG03_a8eb			; $a931: b0 b8
PRG03_a933:
			lda $da			; $a933: a5 da
			bne PRG03_a8eb			; $a935: d0 b4
			ldx #$d9				; $a937: a2 d9
			jsr Main_c090			; $a939: 20 90 c0
			ldx #$d9				; $a93c: a2 d9
			jsr Main_c090			; $a93e: 20 90 c0
			jmp PRG03_a8df			; $a941: 4c df a8

;-------------------------------------------------------------------------------
PRG03_a944:
			ldx #$d9				; $a944: a2 d9
			jsr Main_c08d			; $a946: 20 8d c0
			ldx #$d9				; $a949: a2 d9
			jsr Main_c08d			; $a94b: 20 8d c0
			jmp PRG03_a8df			; $a94e: 4c df a8

;-------------------------------------------------------------------------------
PRG03_a951:
			.byte $08, $08, $08, $08	; $a951: 08 08 08 08	 Data
			.byte $28, $48, $68, $88	; $a955: 28 48 68 88	 Data
			.byte $a8, $c8, $e8, $08	; $a959: a8 c8 e8 08	 Data
			.byte $08, $08, $08	; $a95d: 08 08 08		Data
PRG03_a960:
			.byte $00, $00, $00, $00	; $a960: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $a964: 00 00 00 00	 Data
			.byte $00, $00, $00, $01	; $a968: 00 00 00 01	 Data
			.byte $01, $01, $01	; $a96c: 01 01 01		Data

;-------------------------------------------------------------------------------
			lda $0418,x		; $a96f: bd 18 04
			and #$80				; $a972: 29 80
			bne PRG03_a986			; $a974: d0 10
			lda $0194			; $a976: ad 94 01
			jsr PRG03_a66b			; $a979: 20 6b a6
			sta $0194			; $a97c: 8d 94 01
			lda #$af				; $a97f: a9 af
			ldy #$a9				; $a981: a0 a9
			jsr PRG03_LoadPiece			; $a983: 20 55 a7
PRG03_a986:
			lda $0418,x		; $a986: bd 18 04
			and #$20				; $a989: 29 20
			beq PRG03_a994			; $a98b: f0 07
			lda PRG03_a9b3			; $a98d: ad b3 a9
			sta $0598,x		; $a990: 9d 98 05
			rts				; $a993: 60

;-------------------------------------------------------------------------------
PRG03_a994:
			lda #$00				; $a994: a9 00
			sta Input_RAM			; $a996: 85 00
			jsr PRG03_ab15			; $a998: 20 15 ab
			jsr PRG03_9ad5			; $a99b: 20 d5 9a
			jsr PRG03_9c4d			; $a99e: 20 4d 9c
			beq PRG03_a9ac			; $a9a1: f0 09
			jsr PRG03_9fe1			; $a9a3: 20 e1 9f
			lda PRG03_a9ad,y			; $a9a6: b9 ad a9
			sta $04f0,x		; $a9a9: 9d f0 04
PRG03_a9ac:
			rts				; $a9ac: 60

;-------------------------------------------------------------------------------
;		Baragon data
PRG03_a9ad:
			.byte $73,$74
			.word $10AA
			.byte $B0
			.byte $73
PRG03_a9b3:
			.byte Char_Steps(2)
			.byte 8

;-------------------------------------------------------------------------------
			lda $0418,x		; $a9b5: bd 18 04
			and #$80				; $a9b8: 29 80
			bne +			; $a9ba: d0 10

			lda $0197			; $a9bc: ad 97 01
			jsr PRG03_a66b			; $a9bf: 20 6b a6
			sta $0197			; $a9c2: 8d 97 01
			lda #<PRG03_a9f5				; $a9c5: a9 f5
			ldy #>PRG03_a9f5				; $a9c7: a0 a9
			jsr PRG03_LoadPiece			; $a9c9: 20 55 a7

+			lda $0418,x		; $a9cc: bd 18 04
			and #$20				; $a9cf: 29 20
			beq PRG03_a9da			; $a9d1: f0 07
			lda PRG03_a9f9			; $a9d3: ad f9 a9
			sta $0598,x		; $a9d6: 9d 98 05
			rts				; $a9d9: 60

PRG03_a9da:
			lda #$00				; $a9da: a9 00
			sta Input_RAM			; $a9dc: 85 00
			jsr PRG03_ab15			; $a9de: 20 15 ab
			jsr PRG03_9ad5			; $a9e1: 20 d5 9a
			jsr PRG03_9c4d			; $a9e4: 20 4d 9c
			beq +			; $a9e7: f0 09

			jsr PRG03_9fe1			; $a9e9: 20 e1 9f
			lda PRG03_a9f3,y			; $a9ec: b9 f3 a9
			sta $04f0,x		; $a9ef: 9d f0 04
+			rts				; $a9f2: 60

;-------------------------------------------------------------------------------
;		Gezora data
PRG03_a9f3:
			.byte $71,$72
PRG03_a9f5:
			.word $10AA
			.byte $B0
			.byte $71
PRG03_a9f9:
			.byte Char_Steps(2)
			.byte $B

			; TODO: convert to code
			.byte $bd, $18, $04, $29	; $a9fb: bd 18 04 29	 Data
			.byte $80, $d0, $10, $ad	; $a9ff: 80 d0 10 ad	 Data
			.byte $92, $01, $20, $6b	; $aa03: 92 01 20 6b	 Data
			.byte $a6, $8d, $92, $01	; $aa07: a6 8d 92 01	 Data
			.byte $a9, $3b, $a0, $aa	; $aa0b: a9 3b a0 aa	 Data
			.byte $20, $55, $a7, $bd	; $aa0f: 20 55 a7 bd	 Data
			.byte $18, $04, $29, $20	; $aa13: 18 04 29 20	 Data
			.byte $f0, $07, $ad, $3f	; $aa17: f0 07 ad 3f	 Data
			.byte $aa, $9d, $98, $05	; $aa1b: aa 9d 98 05	 Data
			.byte $60, $a9, $00, $85	; $aa1f: 60 a9 00 85	 Data
			.byte $00, $20, $15, $ab	; $aa23: 00 20 15 ab	 Data
			.byte $20, $d5, $9a, $20	; $aa27: 20 d5 9a 20	 Data
			.byte $4d, $9c, $f0, $09	; $aa2b: 4d 9c f0 09	 Data
			.byte $20, $e1, $9f, $b9	; $aa2f: 20 e1 9f b9	 Data
			.byte $39, $aa, $9d, $f0	; $aa33: 39 aa 9d f0	 Data
			.byte $04, $60

;		Hedorah data
			.byte $76,$77 	; $aa37: 04 60 76 77	 Data
			.word $10AA
			.byte $B0
			.byte $76
			.byte Char_Steps(3)
			.byte 6

;-------------------------------------------------------------------------------
			lda $0418,x		; $aa41: bd 18 04
			and #$80				; $aa44: 29 80
			bne PRG03_aa58			; $aa46: d0 10
			lda $0190			; $aa48: ad 90 01
			jsr PRG03_a66b			; $aa4b: 20 6b a6
			sta $0190			; $aa4e: 8d 90 01
			lda #$82				; $aa51: a9 82
			ldy #$aa				; $aa53: a0 aa
			jsr PRG03_LoadPiece			; $aa55: 20 55 a7
PRG03_aa58:
			lda $0418,x		; $aa58: bd 18 04
			and #$20				; $aa5b: 29 20
			beq PRG03_aa66			; $aa5d: f0 07
			lda PRG03_aa86			; $aa5f: ad 86 aa
			sta $0598,x		; $aa62: 9d 98 05
			rts				; $aa65: 60

PRG03_aa66:
			lda #$00				; $aa66: a9 00
			sta Input_RAM			; $aa68: 85 00
			jsr PRG03_ab15			; $aa6a: 20 15 ab
			jsr PRG03_9ad5			; $aa6d: 20 d5 9a
			jsr PRG03_9c4d			; $aa70: 20 4d 9c
			beq +			; $aa73: f0 09
			jsr PRG03_9fe1			; $aa75: 20 e1 9f
			lda PRG03_aa7f,y		; $aac0: b9 82 04
			sta $04f0,x		; $aadb: 9d 00 02
+			rts				; $aa7e: 60

;-------------------------------------------------------------------------------
;		TODO: make it into needed format
PRG03_aa7f:
			.byte $78, $79, $7a, $aa	; $aa7f: 78 79 7a aa	 Data
			.byte $20, $b0, $78	; $aa83: 20 b0 78		Data
PRG03_aa86:
			.byte $00, $04	; $aa86: 00 04		 Data

;-------------------------------------------------------------------------------
			lda $0418,x		; $aa88: bd 18 04
			and #$80				; $aa8b: 29 80
			bne PRG03_aa9f			; $aa8d: d0 10
			lda $0196			; $aa8f: ad 96 01
			jsr PRG03_a66b			; $aa92: 20 6b a6
			sta $0196			; $aa95: 8d 96 01
			lda #$c8				; $aa98: a9 c8
			ldy #$aa				; $aa9a: a0 aa
			jsr PRG03_LoadPiece			; $aa9c: 20 55 a7
PRG03_aa9f:
			lda $0418,x		; $aa9f: bd 18 04
			and #$20				; $aaa2: 29 20
			beq PRG03_aaad			; $aaa4: f0 07
			lda PRG03_aacc			; $aaa6: ad cc aa
			sta $0598,x		; $aaa9: 9d 98 05
			rts				; $aaac: 60

;-------------------------------------------------------------------------------
PRG03_aaad:
			lda #$00				; $aaad: a9 00
			sta Input_RAM			; $aaaf: 85 00
			jsr PRG03_ab15			; $aab1: 20 15 ab
			jsr PRG03_9ad5			; $aab4: 20 d5 9a
			jsr PRG03_9c4d			; $aab7: 20 4d 9c
			beq PRG03_aac5			; $aaba: f0 09
			jsr PRG03_9fe1			; $aabc: 20 e1 9f
			lda PRG03_aac6,y			; $aabf: b9 c6 aa
			sta $04f0,x		; $aac2: 9d f0 04
PRG03_aac5:
			rts				; $aac5: 60

;-------------------------------------------------------------------------------
;		TODO: make it into needed format
PRG03_aac6:
			.byte $f0, $f1, $aa, $10	; $aac6: f0 f1 aa 10	 Data
			.byte $b0, $f0	; $aaca: b0 f0		 Data
PRG03_aacc:
			.byte $03, $0a	; $aacc: 03 0a		 Data

;-------------------------------------------------------------------------------
			lda $0418,x		; $aace: bd 18 04
			and #$80				; $aad1: 29 80
			bne PRG03_aae5			; $aad3: d0 10
			lda $0195			; $aad5: ad 95 01
			jsr PRG03_a66b			; $aad8: 20 6b a6
			sta $0195			; $aadb: 8d 95 01
			lda #$0e				; $aade: a9 0e
			ldy #$ab				; $aae0: a0 ab
			jsr PRG03_LoadPiece			; $aae2: 20 55 a7
PRG03_aae5:
			lda $0418,x		; $aae5: bd 18 04
			and #$20				; $aae8: 29 20
			beq PRG03_aaf3			; $aaea: f0 07
			lda PRG03_ab12			; $aaec: ad 12 ab
			sta $0598,x		; $aaef: 9d 98 05
			rts				; $aaf2: 60

;-------------------------------------------------------------------------------
PRG03_aaf3:
			lda #$00				; $aaf3: a9 00
			sta Input_RAM			; $aaf5: 85 00
			jsr PRG03_ab15			; $aaf7: 20 15 ab
			jsr PRG03_9ad5			; $aafa: 20 d5 9a
			jsr PRG03_9c4d			; $aafd: 20 4d 9c
			beq PRG03_ab0b			; $ab00: f0 09
			jsr PRG03_9fe1			; $ab02: 20 e1 9f
			lda PRG03_ab0c,y			; $ab05: b9 0c ab
			sta $04f0,x		; $ab08: 9d f0 04
PRG03_ab0b:
			rts				; $ab0b: 60

;-------------------------------------------------------------------------------
;		Moguera data
PRG03_ab0c:
			.byte $F2,$F3
			.word $10AA
			.byte $B0
			.byte $F2
PRG03_ab12:
			.byte Char_Steps(2)
			.byte 9

			.byte $60

;-------------------------------------------------------------------------------
PRG03_ab15:
			lda $0580,x		; $ab15: bd 80 05
			tay				; $ab18: a8
			lda $018c,y		; $ab19: b9 8c 01
			cmp #$30				; $ab1c: c9 30
			bcs PRG03_ab46			; $ab1e: b0 26
			lda PRG03_adab,y			; $ab20: b9 ab ad
			sta $a0			; $ab23: 85 a0
			lda v_PlanetID			; $ab25: ad 58 01
			tay				; $ab28: a8
			beq PRG03_ab30			; $ab29: f0 05
PRG03_ab2b:
			lsr $a0			; $ab2b: 46 a0
			dey				; $ab2d: 88
			bne PRG03_ab2b			; $ab2e: d0 fb
PRG03_ab30:
			lda $a0			; $ab30: a5 a0
			and #$01				; $ab32: 29 01
			beq PRG03_ab46			; $ab34: f0 10
			txa				; $ab36: 8a
			pha				; $ab37: 48
			jsr Goto_GM_DisadvantageousFighting			; $ab38: 20 f6 c0
			pla				; $ab3b: 68
			tax				; $ab3c: aa
			lda $3b			; $ab3d: a5 3b
			ora #$02				; $ab3f: 09 02
			sta $3b			; $ab41: 85 3b
			jmp PRG03_ad99			; $ab43: 4c 99 ad

;-------------------------------------------------------------------------------
PRG03_ab46:
			jsr PRG03_a04a			; $ab46: 20 4a a0
			bcs PRG03_ab4c			; $ab49: b0 01
			rts				; $ab4b: 60

;-------------------------------------------------------------------------------
PRG03_ab4c:
			ldx #$05				; $ab4c: a2 05
			jsr Goto_GameWait			; $ab4e: 20 c3 c0
			ldx $a7			; $ab51: a6 a7
			jsr PRG03_9938			; $ab53: 20 38 99
			sta $05b0			; $ab56: 8d b0 05
			pha				; $ab59: 48
			ldy $0598			; $ab5a: ac 98 05
			sta $05da,y		; $ab5d: 99 da 05
			iny				; $ab60: c8
			lda #$80				; $ab61: a9 80
			sta $05da,y		; $ab63: 99 da 05
			sty $0598			; $ab66: 8c 98 05
			pla				; $ab69: 68
			jsr PRG03_a35b			; $ab6a: 20 5b a3
			lda #$ff				; $ab6d: a9 ff
			sta $ab			; $ab6f: 85 ab
			sta $a0			; $ab71: 85 a0
			ldy #$06				; $ab73: a0 06
PRG03_ab75:
			sty $a8			; $ab75: 84 a8
			lda $05c7,y		; $ab77: b9 c7 05
			bmi PRG03_ab8c			; $ab7a: 30 10
			cmp #$04				; $ab7c: c9 04
			bcs PRG03_ab8c			; $ab7e: b0 0c
			tay				; $ab80: a8
			lda $018c,y		; $ab81: b9 8c 01
			cmp $a0			; $ab84: c5 a0
			bcs PRG03_ab8c			; $ab86: b0 04
			sta $a0			; $ab88: 85 a0
			sty $ab			; $ab8a: 84 ab
PRG03_ab8c:
			ldy $a8			; $ab8c: a4 a8
			dey				; $ab8e: 88
			bne PRG03_ab75			; $ab8f: d0 e4
			lda $ab			; $ab91: a5 ab
			bmi PRG03_abab			; $ab93: 30 16
			lda $ab			; $ab95: a5 ab
			sta $0127			; $ab97: 8d 27 01
			clc				; $ab9a: 18
			lda $0580,x		; $ab9b: bd 80 05
			adc #$7c				; $ab9e: 69 7c
			sta $0159			; $aba0: 8d 59 01
			lda #$ff				; $aba3: a9 ff
			sta $015a			; $aba5: 8d 5a 01
			jmp PRG03_ad99			; $aba8: 4c 99 ad

;-------------------------------------------------------------------------------
PRG03_abab:
			lda $018c			; $abab: ad 8c 01
			beq PRG03_abb9			; $abae: f0 09
			lda $0198			; $abb0: ad 98 01
			and #$f0				; $abb3: 29 f0
			cmp #$f0				; $abb5: c9 f0
			bne PRG03_abbf			; $abb7: d0 06
PRG03_abb9:
			lda $0199			; $abb9: ad 99 01
			jmp PRG03_ac0d			; $abbc: 4c 0d ac

;-------------------------------------------------------------------------------
PRG03_abbf:
			lda $018d			; $abbf: ad 8d 01
			beq PRG03_abcd			; $abc2: f0 09
			lda $0199			; $abc4: ad 99 01
			and #$f0				; $abc7: 29 f0
			cmp #$f0				; $abc9: c9 f0
			bne PRG03_abd3			; $abcb: d0 06
PRG03_abcd:
			lda $0198			; $abcd: ad 98 01
			jmp PRG03_ac0d			; $abd0: 4c 0d ac

;-------------------------------------------------------------------------------
PRG03_abd3:
			lda $018c			; $abd3: ad 8c 01
			cmp $018d			; $abd6: cd 8d 01
			bcs PRG03_abed			; $abd9: b0 12
			lda $0199			; $abdb: ad 99 01
			cmp $0538,x		; $abde: dd 38 05
			bcs PRG03_ac0d			; $abe1: b0 2a
			lda $0198			; $abe3: ad 98 01
			cmp $0538,x		; $abe6: dd 38 05
			bcs PRG03_ac0d			; $abe9: b0 22
			bcc PRG03_abfd			; $abeb: 90 10
PRG03_abed:
			lda $0198			; $abed: ad 98 01
			cmp $0538,x		; $abf0: dd 38 05
			bcs PRG03_ac0d			; $abf3: b0 18
			lda $0199			; $abf5: ad 99 01
			cmp $0538,x		; $abf8: dd 38 05
			bcs PRG03_ac0d			; $abfb: b0 10
PRG03_abfd:
			jsr Main_c08a			; $abfd: 20 8a c0
			and #$01				; $ac00: 29 01
			beq PRG03_ac0a			; $ac02: f0 06
			lda $0198			; $ac04: ad 98 01
			jmp PRG03_ac0d			; $ac07: 4c 0d ac

;-------------------------------------------------------------------------------
PRG03_ac0a:
			lda $0199			; $ac0a: ad 99 01
PRG03_ac0d:
			jsr PRG03_991c			; $ac0d: 20 1c 99
			lda $a2			; $ac10: a5 a2
			sta $a4			; $ac12: 85 a4
			lda $a1			; $ac14: a5 a1
			sta $a3			; $ac16: 85 a3
			lda $05b0			; $ac18: ad b0 05
			jsr PRG03_991c			; $ac1b: 20 1c 99
			lda #$00				; $ac1e: a9 00
			sta $af			; $ac20: 85 af
			lda $a2			; $ac22: a5 a2
			cmp $a4			; $ac24: c5 a4
			bne PRG03_ac2b			; $ac26: d0 03
			jmp PRG03_aced			; $ac28: 4c ed ac

;-------------------------------------------------------------------------------
PRG03_ac2b:
			bcs PRG03_ac90			; $ac2b: b0 63
			lda $a1			; $ac2d: a5 a1
			cmp $a3			; $ac2f: c5 a3
			beq PRG03_ac73			; $ac31: f0 40
			bcs PRG03_ac54			; $ac33: b0 1f
PRG03_ac35:
			ldy #$05				; $ac35: a0 05
			jsr PRG03_ad52			; $ac37: 20 52 ad
			bcs PRG03_ac8a			; $ac3a: b0 4e
			ldy #$04				; $ac3c: a0 04
			jsr PRG03_ad52			; $ac3e: 20 52 ad
			bcs PRG03_ac8a			; $ac41: b0 47
			ldy #$01				; $ac43: a0 01
			jsr PRG03_ad52			; $ac45: 20 52 ad
			bcs PRG03_ac8a			; $ac48: b0 40
			ldy #$00				; $ac4a: a0 00
			jsr PRG03_ad52			; $ac4c: 20 52 ad
			bcc PRG03_ac8d			; $ac4f: 90 3c
			jmp PRG03_ad3d			; $ac51: 4c 3d ad

;-------------------------------------------------------------------------------
PRG03_ac54:
			ldy #$04				; $ac54: a0 04
			jsr PRG03_ad52			; $ac56: 20 52 ad
			bcs PRG03_ac8a			; $ac59: b0 2f
			ldy #$05				; $ac5b: a0 05
			jsr PRG03_ad52			; $ac5d: 20 52 ad
			bcs PRG03_ac8a			; $ac60: b0 28
			ldy #$00				; $ac62: a0 00
			jsr PRG03_ad52			; $ac64: 20 52 ad
			bcs PRG03_ac8a			; $ac67: b0 21
			ldy #$01				; $ac69: a0 01
			jsr PRG03_ad52			; $ac6b: 20 52 ad
			bcc PRG03_ac8d			; $ac6e: 90 1d
			jmp PRG03_ad3d			; $ac70: 4c 3d ad

;-------------------------------------------------------------------------------
PRG03_ac73:
			ldy #$05				; $ac73: a0 05
			jsr PRG03_ad52			; $ac75: 20 52 ad
			bcc PRG03_ac54			; $ac78: 90 da
			ldy #$04				; $ac7a: a0 04
			jsr PRG03_ad52			; $ac7c: 20 52 ad
			bcc PRG03_ac35			; $ac7f: 90 b4
			jsr Main_c08a			; $ac81: 20 8a c0
			and #$01				; $ac84: 29 01
			beq PRG03_ac35			; $ac86: f0 ad
			bne PRG03_ac54			; $ac88: d0 ca
PRG03_ac8a:
			jmp PRG03_ad3d			; $ac8a: 4c 3d ad

;-------------------------------------------------------------------------------
PRG03_ac8d:
			jmp PRG03_ad07			; $ac8d: 4c 07 ad

;-------------------------------------------------------------------------------
PRG03_ac90:
			lda $a1			; $ac90: a5 a1
			cmp $a3			; $ac92: c5 a3
			beq PRG03_acd6			; $ac94: f0 40
			bcs PRG03_acb7			; $ac96: b0 1f
PRG03_ac98:
			ldy #$03				; $ac98: a0 03
			jsr PRG03_ad52			; $ac9a: 20 52 ad
			bcs PRG03_ac8a			; $ac9d: b0 eb
			ldy #$02				; $ac9f: a0 02
			jsr PRG03_ad52			; $aca1: 20 52 ad
			bcs PRG03_ac8a			; $aca4: b0 e4
			ldy #$01				; $aca6: a0 01
			jsr PRG03_ad52			; $aca8: 20 52 ad
			bcs PRG03_ac8a			; $acab: b0 dd
			ldy #$00				; $acad: a0 00
			jsr PRG03_ad52			; $acaf: 20 52 ad
			bcc PRG03_ac8d			; $acb2: 90 d9
			jmp PRG03_ad3d			; $acb4: 4c 3d ad

;-------------------------------------------------------------------------------
PRG03_acb7:
			ldy #$02				; $acb7: a0 02
			jsr PRG03_ad52			; $acb9: 20 52 ad
			bcs PRG03_ac8a			; $acbc: b0 cc
			ldy #$03				; $acbe: a0 03
			jsr PRG03_ad52			; $acc0: 20 52 ad
			bcs PRG03_ac8a			; $acc3: b0 c5
			ldy #$00				; $acc5: a0 00
			jsr PRG03_ad52			; $acc7: 20 52 ad
			bcs PRG03_ac8a			; $acca: b0 be
			ldy #$01				; $accc: a0 01
			jsr PRG03_ad52			; $acce: 20 52 ad
			bcc PRG03_ac8d			; $acd1: 90 ba
			jmp PRG03_ad3d			; $acd3: 4c 3d ad

;-------------------------------------------------------------------------------
PRG03_acd6:
			ldy #$03				; $acd6: a0 03
			jsr PRG03_ad52			; $acd8: 20 52 ad
			bcc PRG03_acb7			; $acdb: 90 da
			ldy #$02				; $acdd: a0 02
			jsr PRG03_ad52			; $acdf: 20 52 ad
			bcc PRG03_ac98			; $ace2: 90 b4
			jsr Main_c08a			; $ace4: 20 8a c0
			and #$01				; $ace7: 29 01
			beq PRG03_ac98			; $ace9: f0 ad
			bne PRG03_acb7			; $aceb: d0 ca
PRG03_aced:
			lda $a1			; $aced: a5 a1
			cmp $a3			; $acef: c5 a3
			bcs PRG03_acfd			; $acf1: b0 0a
			ldy #$01				; $acf3: a0 01
			jsr PRG03_ad52			; $acf5: 20 52 ad
			bcc PRG03_ad07			; $acf8: 90 0d
			jmp PRG03_ad3d			; $acfa: 4c 3d ad

;-------------------------------------------------------------------------------
PRG03_acfd:
			ldy #$00				; $acfd: a0 00
			jsr PRG03_ad52			; $acff: 20 52 ad
			bcc PRG03_ad07			; $ad02: 90 03
			jmp PRG03_ad3d			; $ad04: 4c 3d ad

;-------------------------------------------------------------------------------
PRG03_ad07:
			jsr Main_c08a			; $ad07: 20 8a c0
			and #$1f				; $ad0a: 29 1f
PRG03_ad0c:
			cmp #$06				; $ad0c: c9 06
			bcc PRG03_ad16			; $ad0e: 90 06
			sec				; $ad10: 38
			sbc #$06				; $ad11: e9 06
			jmp PRG03_ad0c			; $ad13: 4c 0c ad

;-------------------------------------------------------------------------------
PRG03_ad16:
			tay				; $ad16: a8
			sta $a0			; $ad17: 85 a0
			jmp PRG03_ad2e			; $ad19: 4c 2e ad

;-------------------------------------------------------------------------------
PRG03_ad1c:
			cpy $a0			; $ad1c: c4 a0
			bne PRG03_ad2e			; $ad1e: d0 0e
			lda $af			; $ad20: a5 af
			bne PRG03_ad2b			; $ad22: d0 07
			lda #$01				; $ad24: a9 01
			sta $af			; $ad26: 85 af
			jmp PRG03_ad0c			; $ad28: 4c 0c ad

;-------------------------------------------------------------------------------
PRG03_ad2b:
			jmp PRG03_ad99			; $ad2b: 4c 99 ad

;-------------------------------------------------------------------------------
PRG03_ad2e:
			jsr PRG03_ad52			; $ad2e: 20 52 ad
			bcs PRG03_ad3d			; $ad31: b0 0a
			iny				; $ad33: c8
			cpy #$06				; $ad34: c0 06
			bcc PRG03_ad1c			; $ad36: 90 e4
			ldy #$00				; $ad38: a0 00
			jmp PRG03_ad1c			; $ad3a: 4c 1c ad

;-------------------------------------------------------------------------------
PRG03_ad3d:
			tay				; $ad3d: a8
			lda $0598,x		; $ad3e: bd 98 05
			sec				; $ad41: 38
			sbc PRG03_a271,y			; $ad42: f9 71 a2
			sta $0598,x		; $ad45: 9d 98 05
			ldy $a8			; $ad48: a4 a8
			lda PRG03_ada3,y			; $ad4a: b9 a3 ad
			sta Input_RAM			; $ad4d: 85 00
			jmp PRG03_a0b8			; $ad4f: 4c b8 a0

;-------------------------------------------------------------------------------
PRG03_ad52:
			sty $a8			; $ad52: 84 a8
			lda $af			; $ad54: a5 af
			bne PRG03_ad70			; $ad56: d0 18
			clc				; $ad58: 18
			lda $05b0			; $ad59: ad b0 05
			adc PRG03_ada9,y			; $ad5c: 79 a9 ad
			sta $ac			; $ad5f: 85 ac
			ldy #$00				; $ad61: a0 00
PRG03_ad63:
			lda $05da,y		; $ad63: b9 da 05
			bmi PRG03_ad70			; $ad66: 30 08
			cmp $ac			; $ad68: c5 ac
			beq PRG03_ad95			; $ad6a: f0 29
			iny				; $ad6c: c8
			jmp PRG03_ad63			; $ad6d: 4c 63 ad

;-------------------------------------------------------------------------------
PRG03_ad70:
			ldy $a8			; $ad70: a4 a8
			lda $05c8,y		; $ad72: b9 c8 05
			bpl PRG03_ad95			; $ad75: 10 1e
			lda $05ce,y		; $ad77: b9 ce 05
			beq PRG03_ad95			; $ad7a: f0 19
			and #$07				; $ad7c: 29 07
			tay				; $ad7e: a8
			dey				; $ad7f: 88
			lda $0598,x		; $ad80: bd 98 05
			beq PRG03_ad95			; $ad83: f0 10
			cmp PRG03_a271,y			; $ad85: d9 71 a2
			bcs PRG03_ad90			; $ad88: b0 06
			lda PRG03_a271,y			; $ad8a: b9 71 a2
			sta $0598,x		; $ad8d: 9d 98 05
PRG03_ad90:
			tya				; $ad90: 98
			ldy $a8			; $ad91: a4 a8
			sec				; $ad93: 38
			rts				; $ad94: 60

;-------------------------------------------------------------------------------
PRG03_ad95:
			ldy $a8			; $ad95: a4 a8
			clc				; $ad97: 18
			rts				; $ad98: 60

;-------------------------------------------------------------------------------
PRG03_ad99:
			lda #$01				; $ad99: a9 01
			sta $05b0,x		; $ad9b: 9d b0 05
			lda #$01				; $ad9e: a9 01
			sta Input_RAM			; $ada0: 85 00
			rts				; $ada2: 60

;-------------------------------------------------------------------------------
PRG03_ada3:
			.byte $10, $20, $50, $60	; $ada3: 10 20 50 60	 Data
			.byte $90, $a0	; $ada7: 90 a0		 Data
PRG03_ada9:
			.byte $ff, $01	; $ada9: ff 01		 Data
PRG03_adab:
			.byte $fa, $fb, $05, $06	; $adab: fa fb 05 06	 Data
			.byte $00, $20, $14, $50	; $adaf: 00 20 14 50	 Data
			.byte $28, $05, $1a, $00	; $adb3: 28 05 1a 00	 Data

;-------------------------------------------------------------------------------
PRG03_adb7:
			lda WriteToCHR1_RAM			; $adb7: a5 e8
			sta $e4			; $adb9: 85 e4
			lda $ea			; $adbb: a5 ea
			sta $e6			; $adbd: 85 e6
			lda #$04				; $adbf: a9 04
			sta $4d			; $adc1: 85 4d
			lda $c6			; $adc3: a5 c6
			lsr				; $adc5: 4a
			bcs PRG03_adce			; $adc6: b0 06
			ldx #$00				; $adc8: a2 00
			lda #$01				; $adca: a9 01
			bne PRG03_add2			; $adcc: d0 04
PRG03_adce:
			ldx #$17				; $adce: a2 17
			lda #$ff				; $add0: a9 ff
PRG03_add2:
			stx $4e			; $add2: 86 4e
			sta $5c			; $add4: 85 5c
PRG03_add6:
			ldx $4e			; $add6: a6 4e
			lda $0400,x		; $add8: bd 00 04
			beq PRG03_ade6			; $addb: f0 09
			lda $0418,x		; $addd: bd 18 04
			bpl PRG03_ade6			; $ade0: 10 04
			and #$20				; $ade2: 29 20
			beq PRG03_ade9			; $ade4: f0 03
PRG03_ade6:
			jmp PRG03_aee4			; $ade6: 4c e4 ae

;-------------------------------------------------------------------------------
PRG03_ade9:
			lda $04f0,x		; $ade9: bd f0 04
			tay				; $adec: a8
			lda PRG03_8019,y			; $aded: b9 19 80
			sta $4f			; $adf0: 85 4f
			lda PRG03_8119,y			; $adf2: b9 19 81
			sta $50			; $adf5: 85 50
			lda $0430,x		; $adf7: bd 30 04
			clc				; $adfa: 18
			adc #$fc				; $adfb: 69 fc
			sta $51			; $adfd: 85 51
			lda $0460,x		; $adff: bd 60 04
			sta $52			; $ae02: 85 52
			ldy #$00				; $ae04: a0 00
			lda ($4f),y		; $ae06: b1 4f
			iny				; $ae08: c8
			sta $5d			; $ae09: 85 5d
			lda ($4f),y		; $ae0b: b1 4f
			iny				; $ae0d: c8
			sta $55			; $ae0e: 85 55
			lda ($4f),y		; $ae10: b1 4f
			iny				; $ae12: c8
			sta $56			; $ae13: 85 56
			lda ($4f),y		; $ae15: b1 4f
			iny				; $ae17: c8
			sta $59			; $ae18: 85 59
			lda ($4f),y		; $ae1a: b1 4f
			iny				; $ae1c: c8
			sta $5a			; $ae1d: 85 5a
			lda $0568,x		; $ae1f: bd 68 05
			beq PRG03_ae2a			; $ae22: f0 06
			tax				; $ae24: aa
PRG03_ae25:
			iny				; $ae25: c8
			iny				; $ae26: c8
			dex				; $ae27: ca
			bne PRG03_ae25			; $ae28: d0 fb
PRG03_ae2a:
			lda ($4f),y		; $ae2a: b1 4f
			iny				; $ae2c: c8
			sta $57			; $ae2d: 85 57
			lda ($4f),y		; $ae2f: b1 4f
			sta $58			; $ae31: 85 58
			ldy #$00				; $ae33: a0 00
PRG03_ae35:
			lda #$00				; $ae35: a9 00
			sta $5b			; $ae37: 85 5b
			sty $5f			; $ae39: 84 5f
			ldx $4e			; $ae3b: a6 4e
			tya				; $ae3d: 98
			asl				; $ae3e: 0a
			tay				; $ae3f: a8
			lda ($55),y		; $ae40: b1 55
			iny				; $ae42: c8
			sta $5e			; $ae43: 85 5e
			lda $0418,x		; $ae45: bd 18 04
			and #$04				; $ae48: 29 04
			beq PRG03_ae5f			; $ae4a: f0 13
			lda #$80				; $ae4c: a9 80
			sta $5b			; $ae4e: 85 5b
			lda $5e			; $ae50: a5 5e
			eor #$ff				; $ae52: 49 ff
			sta $60			; $ae54: 85 60
			inc $60			; $ae56: e6 60
			lda $60			; $ae58: a5 60
			clc				; $ae5a: 18
			adc #$f0				; $ae5b: 69 f0
			sta $5e			; $ae5d: 85 5e
PRG03_ae5f:
			lda $5e			; $ae5f: a5 5e
			bpl PRG03_ae6a			; $ae61: 10 07
			clc				; $ae63: 18
			adc $51			; $ae64: 65 51
			bcc PRG03_aea6			; $ae66: 90 3e
			bcs PRG03_ae6f			; $ae68: b0 05
PRG03_ae6a:
			clc				; $ae6a: 18
			adc $51			; $ae6b: 65 51
			bcs PRG03_aea6			; $ae6d: b0 37
PRG03_ae6f:
			sta $53			; $ae6f: 85 53
			lda ($55),y		; $ae71: b1 55
			sta $5e			; $ae73: 85 5e
			lda $0418,x		; $ae75: bd 18 04
			and #$10				; $ae78: 29 10
			beq PRG03_ae91			; $ae7a: f0 15
			lda $5b			; $ae7c: a5 5b
			ora #$40				; $ae7e: 09 40
			sta $5b			; $ae80: 85 5b
			lda $5e			; $ae82: a5 5e
			eor #$ff				; $ae84: 49 ff
			sta $60			; $ae86: 85 60
			inc $60			; $ae88: e6 60
			lda $60			; $ae8a: a5 60
			clc				; $ae8c: 18
			adc #$f8				; $ae8d: 69 f8
			sta $5e			; $ae8f: 85 5e
PRG03_ae91:
			lda $5e			; $ae91: a5 5e
			bpl PRG03_ae9c			; $ae93: 10 07
			clc				; $ae95: 18
			adc $52			; $ae96: 65 52
			bcc PRG03_aea6			; $ae98: 90 0c
			bcs PRG03_aea1			; $ae9a: b0 05
PRG03_ae9c:
			clc				; $ae9c: 18
			adc $52			; $ae9d: 65 52
			bcs PRG03_aea6			; $ae9f: b0 05
PRG03_aea1:
			sta $54			; $aea1: 85 54
			jmp PRG03_aeab			; $aea3: 4c ab ae

;-------------------------------------------------------------------------------
PRG03_aea6:
			ldy $5f			; $aea6: a4 5f
			jmp PRG03_aedc			; $aea8: 4c dc ae

;-------------------------------------------------------------------------------
PRG03_aeab:
			ldy $5f			; $aeab: a4 5f
			ldx $4d			; $aead: a6 4d
			jsr PRG03_af06			; $aeaf: 20 06 af
			ldx $4d			; $aeb2: a6 4d
			lda #$f8				; $aeb4: a9 f8
			sta $0200,x		; $aeb6: 9d 00 02
			inx				; $aeb9: e8
			lda ($59),y		; $aeba: b1 59
			sta $0200,x		; $aebc: 9d 00 02
			inx				; $aebf: e8
			lda ($57),y		; $aec0: b1 57
			eor $5b			; $aec2: 45 5b
			sta $0200,x		; $aec4: 9d 00 02
			inx				; $aec7: e8
			lda $54			; $aec8: a5 54
			sta $0200,x		; $aeca: 9d 00 02
			ldx $4d			; $aecd: a6 4d
			lda $53			; $aecf: a5 53
			sta $0200,x		; $aed1: 9d 00 02
			inx				; $aed4: e8
			inx				; $aed5: e8
			inx				; $aed6: e8
			inx				; $aed7: e8
			stx $4d			; $aed8: 86 4d
			beq PRG03_aee4			; $aeda: f0 08
PRG03_aedc:
			iny				; $aedc: c8
			dec $5d			; $aedd: c6 5d
			beq PRG03_aee4			; $aedf: f0 03
			jmp PRG03_ae35			; $aee1: 4c 35 ae

;-------------------------------------------------------------------------------
PRG03_aee4:
			clc				; $aee4: 18
			lda $4e			; $aee5: a5 4e
			adc $5c			; $aee7: 65 5c
			sta $4e			; $aee9: 85 4e
			ldx $4d			; $aeeb: a6 4d
			beq PRG03_af05			; $aeed: f0 16
			cmp #$18				; $aeef: c9 18
			beq PRG03_aefa			; $aef1: f0 07
			cmp #$ff				; $aef3: c9 ff
			beq PRG03_aefa			; $aef5: f0 03
			jmp PRG03_add6			; $aef7: 4c d6 ad

;-------------------------------------------------------------------------------
PRG03_aefa:
			lda #$f8				; $aefa: a9 f8
PRG03_aefc:
			sta $0200,x		; $aefc: 9d 00 02
			inx				; $aeff: e8
			inx				; $af00: e8
			inx				; $af01: e8
			inx				; $af02: e8
			bne PRG03_aefc			; $af03: d0 f7
PRG03_af05:
			rts				; $af05: 60

;-------------------------------------------------------------------------------
PRG03_af06:
			lda $012b			; $af06: ad 2b 01
			cmp #$01				; $af09: c9 01
			bne PRG03_af15			; $af0b: d0 08
			cpx #$20				; $af0d: e0 20
			bcc PRG03_af14			; $af0f: 90 03
			jmp PRG03_af79			; $af11: 4c 79 af

;-------------------------------------------------------------------------------
PRG03_af14:
			rts				; $af14: 60

;-------------------------------------------------------------------------------
PRG03_af15:
			cpx #$60				; $af15: e0 60
			bcs PRG03_af1a			; $af17: b0 01
			rts				; $af19: 60

;-------------------------------------------------------------------------------
PRG03_af1a:
			pha				; $af1a: 48
			lda $c5			; $af1b: a5 c5
			and #$18				; $af1d: 29 18
			cmp #$18				; $af1f: c9 18
			bne PRG03_af2f			; $af21: d0 0c
			lda $0e			; $af23: a5 0e
			and #$14				; $af25: 29 14
			bne PRG03_af2f			; $af27: d0 06
			lda $c3			; $af29: a5 c3
			and #$40				; $af2b: 29 40
			bne PRG03_af31			; $af2d: d0 02
PRG03_af2f:
			pla				; $af2f: 68
			rts				; $af30: 60

;-------------------------------------------------------------------------------
PRG03_af31:
			lda $c3			; $af31: a5 c3
			and #$bf				; $af33: 29 bf
			sta $c3			; $af35: 85 c3
			lda $2002			; $af37: ad 02 20
PRG03_af3a:
			bit $2002			; $af3a: 2c 02 20
			bvc PRG03_af3a			; $af3d: 50 fb
			lda $012b			; $af3f: ad 2b 01
			bne PRG03_af4a			; $af42: d0 06
			jsr Main_c030			; $af44: 20 30 c0
			jmp PRG03_af70			; $af47: 4c 70 af

			; Rodan
			;.rept 5
			;nop
			;.endrept

;-------------------------------------------------------------------------------
PRG03_af4a:
			cmp #$7f				; $af4a: c9 7f
			bne PRG03_af70			; $af4c: d0 22
			inc $041a			; $af4e: ee 1a 04
			lda $0419			; $af51: ad 19 04
			and #$01				; $af54: 29 01
			sta $d8			; $af56: 85 d8
			lda $c4			; $af58: a5 c4
			and #$fc				; $af5a: 29 fc
			ora $d8			; $af5c: 05 d8
			ora #$10				; $af5e: 09 10
			sta $c4			; $af60: 85 c4
			sta $2000			; $af62: 8d 00 20
			lda $0418			; $af65: ad 18 04
			sta $2005			; $af68: 8d 05 20
			lda $db			; $af6b: a5 db
			sta $2005			; $af6d: 8d 05 20
PRG03_af70:
			lda $eb			; $af70: a5 eb
			sta $e7			; $af72: 85 e7
			jsr Goto_Sub_CHRBankSwitch2			; $af74: 20 60 c0
			pla				; $af77: 68
			rts				; $af78: 60

;-------------------------------------------------------------------------------
PRG03_af79:
			lda $c5			; $af79: a5 c5
			and #$18				; $af7b: 29 18
			cmp #$18				; $af7d: c9 18
			bne PRG03_afb6			; $af7f: d0 35
			lda $0e			; $af81: a5 0e
			and #$14				; $af83: 29 14
			bne PRG03_afb6			; $af85: d0 2f
			lda $c3			; $af87: a5 c3
			and #$40				; $af89: 29 40
			beq PRG03_afb6			; $af8b: f0 29
			lda $c3			; $af8d: a5 c3
			and #$bf				; $af8f: 29 bf
			sta $c3			; $af91: 85 c3
			lda $2002			; $af93: ad 02 20
PRG03_af96:
			bit $2002			; $af96: 2c 02 20
			bvc PRG03_af96			; $af99: 50 fb
			lda $4c			; $af9b: a5 4c
			sta $2006			; $af9d: 8d 06 20
			lda $4b			; $afa0: a5 4b
			sta $2006			; $afa2: 8d 06 20
			lda $d9			; $afa5: a5 d9
			sta $2005			; $afa7: 8d 05 20
			lda #$00				; $afaa: a9 00
			sta $2005			; $afac: 8d 05 20
			lda $eb			; $afaf: a5 eb
			sta $e7			; $afb1: 85 e7
			jsr Goto_Sub_CHRBankSwitch2			; $afb3: 20 60 c0
PRG03_afb6:
			rts				; $afb6: 60

;-------------------------------------------------------------------------------
			.byte $00, $00, $00, $00	; $afb7: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $afbb: 00 00 00 00	 Data
			.byte $0e, $0f, $61, $51	; $afbf: 0e 0f 61 51	 Data
			.byte $50, $63, $72, $52	; $afc3: 50 63 72 52	 Data
			.byte $46, $79, $48, $68	; $afc7: 46 79 48 68	 Data
			.byte $47, $7a, $49, $69	; $afcb: 47 7a 49 69	 Data
			.byte $4e, $79, $70, $53	; $afcf: 4e 79 70 53	 Data
			.byte $4f, $7a, $71, $56	; $afd3: 4f 7a 71 56	 Data
			.byte $4a, $79, $4c, $6c	; $afd7: 4a 79 4c 6c	 Data
			.byte $4b, $7a, $4d, $6d	; $afdb: 4b 7a 4d 6d	 Data
			.byte $59, $79, $5b, $5f	; $afdf: 59 79 5b 5f	 Data
			.byte $5a, $7a, $5e, $80	; $afe3: 5a 7a 5e 80	 Data
			.byte $0e, $79, $66, $6a	; $afe7: 0e 79 66 6a	 Data
			.byte $0e, $7a, $67, $6b	; $afeb: 0e 7a 67 6b	 Data
			.byte $87, $88, $ac, $95	; $afef: 87 88 ac 95	 Data
			.byte $a7, $a8, $92, $9c	; $aff3: a7 a8 92 9c	 Data
PRG03_aff7:
			.byte $ff, $ff, $fc, $cf	; $aff7: ff ff fc cf	 Data
			.byte $fc, $cf, $fd, $df	; $affb: fc cf fd df	 Data
			.byte $fe, $ef, $fd, $df	; $afff: fe ef fd df	 Data
			.byte $ff, $ff, $ff, $ff	; $b003: ff ff ff ff	 Data
			.byte $00, $73, $81, $a1	; $b007: 00 73 81 a1	 Data
			.byte $54, $74, $82, $a2	; $b00b: 54 74 82 a2	 Data
			.byte $55, $75, $83, $a3	; $b00f: 55 75 83 a3	 Data
			.byte $00, $fd, $fe, $de	; $b013: 00 fd fe de	 Data
			.byte $00, $7b, $89, $a9	; $b017: 00 7b 89 a9	 Data
			.byte $5c, $7c, $8a, $aa	; $b01b: 5c 7c 8a aa	 Data
			.byte $5d, $7d, $8b, $ab	; $b01f: 5d 7d 8b ab	 Data
			.byte $00, $fd, $fe, $de	; $b023: 00 fd fe de	 Data
			.byte $00, $7e, $8c, $df	; $b027: 00 7e 8c df	 Data
			.byte $dc, $7f, $8d, $ad	; $b02b: dc 7f 8d ad	 Data
			.byte $dc, $a0, $8e, $ae	; $b02f: dc a0 8e ae	 Data
			.byte $00, $fd, $8f, $af	; $b033: 00 fd 8f af	 Data
			.byte $00, $76, $84, $a4	; $b037: 00 76 84 a4	 Data
			.byte $57, $77, $85, $a5	; $b03b: 57 77 85 a5	 Data
			.byte $58, $78, $86, $a6	; $b03f: 58 78 86 a6	 Data
			.byte $00, $fd, $fe, $de	; $b043: 00 fd fe de	 Data
			.byte $00, $e3, $9d, $be	; $b047: 00 e3 9d be	 Data
			.byte $c4, $e4, $9e, $bf	; $b04b: c4 e4 9e bf	 Data
			.byte $c5, $e5, $9f, $c3	; $b04f: c5 e5 9f c3	 Data
			.byte $00, $fd, $bd, $ce	; $b053: 00 fd bd ce	 Data
			.byte $00, $db, $ff, $df	; $b057: 00 db ff df	 Data
			.byte $90, $b0, $c6, $e6	; $b05b: 90 b0 c6 e6	 Data
			.byte $91, $b1, $c7, $e7	; $b05f: 91 b1 c7 e7	 Data
			.byte $00, $b2, $c8, $e8	; $b063: 00 b2 c8 e8	 Data
			.byte $00, $db, $ff, $df	; $b067: 00 db ff df	 Data
			.byte $96, $b6, $cc, $ec	; $b06b: 96 b6 cc ec	 Data
			.byte $97, $b7, $cd, $ed	; $b06f: 97 b7 cd ed	 Data
			.byte $00, $fd, $fe, $ee	; $b073: 00 fd fe ee	 Data
			.byte $00, $db, $ff, $df	; $b077: 00 db ff df	 Data
			.byte $93, $b3, $c9, $e9	; $b07b: 93 b3 c9 e9	 Data
			.byte $94, $b4, $ca, $ea	; $b07f: 94 b4 ca ea	 Data
			.byte $00, $b5, $cb, $eb	; $b083: 00 b5 cb eb	 Data
			.byte $00, $db, $d5, $f5	; $b087: 00 db d5 f5	 Data
			.byte $dc, $ff, $d6, $f6	; $b08b: dc ff d6 f6	 Data
			.byte $dc, $fe, $d7, $fb	; $b08f: dc fe d7 fb	 Data
			.byte $00, $fd, $d8, $f8	; $b093: 00 fd d8 f8	 Data
			.byte $00, $db, $ff, $df	; $b097: 00 db ff df	 Data
			.byte $9a, $ba, $d2, $f2	; $b09b: 9a ba d2 f2	 Data
			.byte $9b, $bb, $d3, $f3	; $b09f: 9b bb d3 f3	 Data
			.byte $00, $bc, $d4, $f4	; $b0a3: 00 bc d4 f4	 Data
			.byte $00, $db, $ff, $df	; $b0a7: 00 db ff df	 Data
			.byte $98, $b8, $cf, $ef	; $b0ab: 98 b8 cf ef	 Data
			.byte $99, $b9, $d0, $f0	; $b0af: 99 b9 d0 f0	 Data
			.byte $00, $fd, $d1, $f1	; $b0b3: 00 fd d1 f1	 Data
			.byte $00, $db, $d9, $f9	; $b0b7: 00 db d9 f9	 Data
			.byte $c1, $e1, $da, $dd	; $b0bb: c1 e1 da dd	 Data
			.byte $c2, $e2, $c0, $e0	; $b0bf: c2 e2 c0 e0	 Data
			.byte $00, $fd, $fe, $de	; $b0c3: 00 fd fe de	 Data
PRG03_b0c7:
			.byte $0f, $0f, $2c, $1c	; $b0c7: 0f 0f 2c 1c	 Data
			.byte $0f, $0f, $27, $11	; $b0cb: 0f 0f 27 11	 Data
			.byte $0f, $0f, $27, $0f	; $b0cf: 0f 0f 27 0f	 Data
			.byte $0f, $0f, $2b, $0f	; $b0d3: 0f 0f 2b 0f	 Data
			.byte $0f, $0f, $27, $18	; $b0d7: 0f 0f 27 18	 Data
			.byte $0f, $0f, $30, $10	; $b0db: 0f 0f 30 10	 Data
			.byte $0f, $0f, $10, $1a	; $b0df: 0f 0f 10 1a	 Data
			.byte $0f, $0f, $27, $1a	; $b0e3: 0f 0f 27 1a	 Data
			.byte $0f, $0f, $27, $17	; $b0e7: 0f 0f 27 17	 Data
			.byte $0f, $0f, $28, $18	; $b0eb: 0f 0f 28 18	 Data
			.byte $0f, $0f, $23, $13	; $b0ef: 0f 0f 23 13	 Data
			.byte $0f, $0f, $30, $2c	; $b0f3: 0f 0f 30 2c	 Data

;-------------------------------------------------------------------------------
;	Popup message box on the board
;-------------------------------------------------------------------------------

						TableStart
						TableInsert PRG03_MBT_Empty ; 0
MBID_SelectAMonster:	TableInsert PRG03_MBT_SelectAMonster ; 1
MBID_ThenPressA:		TableInsert PRG03_MBT_ThenPressA ; 2
MBID_NoMonsterHere:		TableInsert PRG03_MBT_NoMonsterHere ; 3
						TableInsert PRG03_MBT_ThisIsNotAPlayer ; 4
MBID_UnableToAdvanceFarther:	TableInsert PRG03_MBT_UnableToAdvanceFarther ; 5
						TableInsert PRG03_MBT_NotGoingToMove2 ; 6
MBID_IfFinishedMoving:	TableInsert PRG03_MBT_IfFinishedMoving ; 7
						TableInsert PRG03_MBT_Empty2 ; 8
MBID_MonsterIsBlocking:	TableInsert PRG03_MBT_MonsterIsBlocking ; 9
MBID_FightBoss:			TableInsert PRG03_MBT_FightGhidora ; A
						TableInsert PRG03_MBT_FightMechaGodzilla ; B
						TableInsert PRG03_MBT_FightHedorah ; C
						TableInsert PRG03_MBT_FightGigan ; D
						TableInsert PRG03_MBT_FightBaragon ; E
						TableInsert PRG03_MBT_FightMoguera ; F
						TableInsert PRG03_MBT_FightVaran ; 10
						TableInsert PRG03_MBT_FightGezora ; 11
MBID_WillYouFight:		TableInsert PRG03_MBT_WillYouFight ; 12
MBID_ContactingEnemy:	TableInsert PRG03_MBT_ContactingEnemy ; 13
						TableInsert PRG03_MBT_SelectAMonster2 ; 14
						TableInsert PRG03_MBT_ThenPressA2 ; 15
MBID_ShortageOfEnergy:	TableInsert PRG03_MBT_ShortageOfEnergy ; 16
MBID_NotGoingToMove:	TableInsert PRG03_MBT_NotGoingToMove ; 17
MBID_MoveToNextField:	TableInsert PRG03_MBT_MoveToNextField ; 18
MBID_BossFirst:			TableInsert PRG03_MBT_GhidoraLife ; 19
						TableInsert PRG03_MBT_MechaGodzillaLife ; 1A
						TableInsert PRG03_MBT_HedorahLife ; 1B
						TableInsert PRG03_MBT_GiganLife ; 1C
						TableInsert PRG03_MBT_BaragonLife ; 1D
						TableInsert PRG03_MBT_MogueraLife ; 1E
						TableInsert PRG03_MBT_VaranLife ; 1F
						TableInsert PRG03_MBT_GezoraLife ; 20
MBID_EnemyHeadQuarters:	TableInsert PRG03_MBT_EnemyHeadQuarters ; 21
						TableInsert PRG03_BoardCameraMaximum ; 22
						TableInsert PRG03_BoardCameraMaximum ; 23

PRG03_MBTexts_L:	.byte <CurrentTable
PRG03_MBTexts_H:	.byte >CurrentTable

PRG03_b13f:
			.byte $00, $00, $2b	; $b13e: b4 00 00 2b	 Data
			.byte $17, $25, $00, $00	; $b142: 17 25 00 00	 Data
			.byte $20, $21, $00	; $b146: 20 21 00 80	 Data

Enc_MessageBox	.encode
			.cdef "09", $02
			.cdef "..", $0D
			.cdef "  ", $0F
			.cdef "--", $10
			.cdef "??", $11
			.cdef "@@", $12 ; copyright symbol
			.cdef "AZ", $13
			.cdef "az", $13
			.cdef ",,", $2D

			.edef "\n", $0C

			.endencode

T_END 		= $80
T_YESNO 	= $81
T_BOSSLIFE 	= $82

			.encode Enc_MessageBox
PRG03_MBT_Empty:					.byte T_END
PRG03_MBT_SelectAMonster:			.text "SELECT\nA MONSTER\nTO MOVE.", T_END
PRG03_MBT_ThenPressA:				.text "THEN PRESS\nBUTTON A.", T_END
PRG03_MBT_NoMonsterHere:			.text "THERE IS\nNO MONSTER\nHERE.", T_END
PRG03_MBT_ThisIsNotAPlayer:			.text "THIS\nMONSTER\nIS NOT\nA PLAYER.", T_END
PRG03_MBT_UnableToAdvanceFarther:	.text "UNABLE TO\nADVANCE\nFARTHER.", T_END
PRG03_MBT_NotGoingToMove2:			.text "NOT GOING\nTO MOVE?", T_YESNO
PRG03_MBT_IfFinishedMoving:			.text "IF\nFINISHED\nMOVING,\nPRESS\nBUTTON A.", T_END
PRG03_MBT_Empty2:					.byte T_END
PRG03_MBT_MonsterIsBlocking:		.text "UNABLE TO\nADVANCE\nBECAUSE A\nMONSTER IS\nBLOCKING\nTHE WAY.", T_END
PRG03_MBT_FightGhidora:				.text "WILL YOU\nFIGHT\nGHIDORA?", T_YESNO
PRG03_MBT_FightMechaGodzilla:		.text "WILL YOU\nFIGHT\nMECHA-\nGODZILLA?", T_YESNO
PRG03_MBT_FightHedorah:				.text "WILL YOU\nFIGHT\nHEDORAH?", T_YESNO
PRG03_MBT_FightGigan:				.text "WILL YOU\nFIGHT\nGIGAN?", T_YESNO
PRG03_MBT_FightBaragon:				.text "WILL YOU\nFIGHT\nBARAGON?", T_YESNO
PRG03_MBT_FightMoguera:				.text "WILL YOU\nFIGHT\nMOGUERA?", T_YESNO
PRG03_MBT_FightVaran:				.text "WILL YOU\nFIGHT\nVARAN?", T_YESNO
PRG03_MBT_FightGezora:				.text "WILL YOU\nFIGHT\nGEZORA?", T_YESNO
PRG03_MBT_WillYouFight:				.text "WILL YOU\nFIGHT\nTHE ENEMY?", T_YESNO
PRG03_MBT_ContactingEnemy:			.text "UNABLE TO\nADVANCE,\nCONTACTING\nTHE EMEMY.", T_END
PRG03_MBT_SelectAMonster2:			.text "SELECT\nA MONSTER\nTO MOVE.", T_END
PRG03_MBT_ThenPressA2:				.text "THEN PRESS\nBUTTON A.", T_END
PRG03_MBT_ShortageOfEnergy:			.text "SHORTAGE\nOF ENERGY\nFOR MOVING\nPREVENTS\nADVANCE.", T_END
PRG03_MBT_NotGoingToMove:			.text "NOT GOING\nTO MOVE?", T_YESNO
PRG03_MBT_MoveToNextField:			.text "WILL YOU\nMOVE TO\nTHE NEXT\nFIELD?", T_YESNO
PRG03_MBT_GhidoraLife:				.text "GHIDORA -\nLIFE", T_BOSSLIFE
PRG03_MBT_MechaGodzillaLife:		.text "MECHA-\nGODZILLA -\nLIFE", T_BOSSLIFE
PRG03_MBT_HedorahLife:				.text "HEDORAH -\nLIFE", T_BOSSLIFE
PRG03_MBT_GiganLife:				.text "GIGAN -\nLIFE", T_BOSSLIFE
PRG03_MBT_BaragonLife:				.text "BARAGON -\nLIFE", T_BOSSLIFE
PRG03_MBT_MogueraLife:				.text "MOGUERA -\nLIFE", T_BOSSLIFE
PRG03_MBT_VaranLife:				.text "VARAN -\nLIFE", T_BOSSLIFE
PRG03_MBT_GezoraLife:				.text "GEZORA -\nLIFE", T_BOSSLIFE
PRG03_MBT_EnemyHeadQuarters:		.text "WILL YOU\nOCCUPY\nTHE ENEMY\nHEAD-\nQUARTERS?", T_YESNO
			.endencode
			
PRG03_BoardCameraMaximum: ; TODO: change to a better name
			.byte $f8, $98, $58, $38	; $b47b: f8 98 58 38	 Data
			.byte $f8, $78, $f8, $58	; $b47f: f8 78 f8 58	 Data

		PlanetCheck PRG03_BoardCameraMaximum, 1

			.include "data/levels/BoardData.asm"

;-------------------------------------------------------------------------------
PRG03_Level_ShowMessageBox:
			lda $016f			; $b67e: ad 6f 01
			bne PRG03_b684			; $b681: d0 01
			rts				; $b683: 60

;-------------------------------------------------------------------------------
PRG03_b684:
			cmp #$80				; $b684: c9 80
			bne PRG03_b690			; $b686: d0 08
			lda #$00				; $b688: a9 00
			sta $016f			; $b68a: 8d 6f 01
			jmp PRG03_b78f			; $b68d: 4c 8f b7

;-------------------------------------------------------------------------------
PRG03_b690:
			and #$40				; $b690: 29 40
			bne PRG03_b6a4			; $b692: d0 10
			jsr PRG03_b867			; $b694: 20 67 b8
			lda $016f			; $b697: ad 6f 01
			ora #$40				; $b69a: 09 40
			sta $016f			; $b69c: 8d 6f 01
			and #$3f				; $b69f: 29 3f
			jsr PRG03_MessageBox_ShowText			; $b6a1: 20 33 b9
PRG03_b6a4:
			php				; $b6a4: 08
			lda $016f			; $b6a5: ad 6f 01
			bmi PRG03_b6c3			; $b6a8: 30 19
			jsr Main_c087			; $b6aa: 20 87 c0
			lda Input_RAM			; $b6ad: a5 00
			and #$03				; $b6af: 29 03
			bne PRG03_b6da			; $b6b1: d0 27
			lda Input_RAM			; $b6b3: a5 00
			and #$f3				; $b6b5: 29 f3
			beq PRG03_b6df			; $b6b7: f0 26
			jsr PRG03_bb2a			; $b6b9: 20 2a bb
			jsr PRG03_9c4d			; $b6bc: 20 4d 9c
			beq PRG03_b6df			; $b6bf: f0 1e
			bne PRG03_b6da			; $b6c1: d0 17
PRG03_b6c3:
			jsr Main_c087			; $b6c3: 20 87 c0
			lda $04			; $b6c6: a5 04
			cmp $08			; $b6c8: c5 08
			bne PRG03_b6d2			; $b6ca: d0 06
			lda Input_RAM			; $b6cc: a5 00
			and #$f3				; $b6ce: 29 f3
			bne PRG03_b6df			; $b6d0: d0 0d
PRG03_b6d2:
			jsr PRG03_bb2a			; $b6d2: 20 2a bb
			jsr PRG03_9c4d			; $b6d5: 20 4d 9c
			bne PRG03_b6df			; $b6d8: d0 05
PRG03_b6da:
			lda #$80				; $b6da: a9 80
			sta $016f			; $b6dc: 8d 6f 01
PRG03_b6df:
			plp				; $b6df: 28
			rts				; $b6e0: 60

;-------------------------------------------------------------------------------
PRG03_MessageBoxSelect:
			ora #$40				; $b6e1: 09 40
			cmp $016f			; $b6e3: cd 6f 01
			beq +			; $b6e6: f0 05
			and #$bf				; $b6e8: 29 bf
			sta $016f			; $b6ea: 8d 6f 01
+			rts				; $b6ed: 60

;-------------------------------------------------------------------------------
PRG03_b6ee:
			pha				; $b6ee: 48
			lda $d9			; $b6ef: a5 d9
			and #$e0				; $b6f1: 29 e0
			sta LoadAddress_Low			; $b6f3: 85 a5
			lda $da			; $b6f5: a5 da
			sta LoadAddress_High			; $b6f7: 85 a6
			lsr LoadAddress_High			; $b6f9: 46 a6
			ror LoadAddress_Low			; $b6fb: 66 a5
			lsr LoadAddress_High			; $b6fd: 46 a6
			ror LoadAddress_Low			; $b6ff: 66 a5
			lsr LoadAddress_High			; $b701: 46 a6
			ror LoadAddress_Low			; $b703: 66 a5
			lda LoadAddress_Low			; $b705: a5 a5
			sta $1b			; $b707: 85 1b
			clc				; $b709: 18
			pla				; $b70a: 68
			adc LoadAddress_Low			; $b70b: 65 a5
			sta LoadAddress_Low			; $b70d: 85 a5
			lsr $1b			; $b70f: 46 1b
			lsr $1b			; $b711: 46 1b
			lda LoadAddress_Low			; $b713: a5 a5
			and #$e0				; $b715: 29 e0
			beq PRG03_b723			; $b717: f0 0a
			lda #$e0				; $b719: a9 e0
			sta $18			; $b71b: 85 18
			lda #$23				; $b71d: a9 23
			sta $19			; $b71f: 85 19
			bne PRG03_b72b			; $b721: d0 08
PRG03_b723:
			lda #$00				; $b723: a9 00
			sta $18			; $b725: 85 18
			lda #$20				; $b727: a9 20
			sta $19			; $b729: 85 19
PRG03_b72b:
			jsr PRG03_bb2a			; $b72b: 20 2a bb
			lda $0430,x		; $b72e: bd 30 04
			cmp #$68				; $b731: c9 68
			bcc PRG03_b755			; $b733: 90 20
			lda #$00				; $b735: a9 00
			sta $1a			; $b737: 85 1a
			lda $1b			; $b739: a5 1b
			and #$01				; $b73b: 29 01
			bne PRG03_b74a			; $b73d: d0 0b
			lda #$37				; $b73f: a9 37
			sta $02a1			; $b741: 8d a1 02
			lda #$40				; $b744: a9 40
			ldy #$00				; $b746: a0 00
			beq PRG03_b777			; $b748: f0 2d
PRG03_b74a:
			lda #$47				; $b74a: a9 47
			sta $02a1			; $b74c: 8d a1 02
			lda #$80				; $b74f: a9 80
			ldy #$00				; $b751: a0 00
			beq PRG03_b777			; $b753: f0 22
PRG03_b755:
			lda $1b			; $b755: a5 1b
			and #$01				; $b757: 29 01
			bne PRG03_b76a			; $b759: d0 0f
			lda #$b7				; $b75b: a9 b7
			sta $02a1			; $b75d: 8d a1 02
			lda #$04				; $b760: a9 04
			sta $1a			; $b762: 85 1a
			lda #$40				; $b764: a9 40
			ldy #$02				; $b766: a0 02
			bne PRG03_b777			; $b768: d0 0d
PRG03_b76a:
			lda #$a7				; $b76a: a9 a7
			sta $02a1			; $b76c: 8d a1 02
			lda #$03				; $b76f: a9 03
			sta $1a			; $b771: 85 1a
			lda #$00				; $b773: a9 00
			ldy #$02				; $b775: a0 02
PRG03_b777:
			clc				; $b777: 18
			adc $18			; $b778: 65 18
			sta $18			; $b77a: 85 18
			tya				; $b77c: 98
			adc $19			; $b77d: 65 19
			sta $19			; $b77f: 85 19
			clc				; $b781: 18
			lda LoadAddress_Low			; $b782: a5 a5
			adc $18			; $b784: 65 18
			sta $18			; $b786: 85 18
			lda #$00				; $b788: a9 00
			adc $19			; $b78a: 65 19
			sta $19			; $b78c: 85 19
			rts				; $b78e: 60

;-------------------------------------------------------------------------------
PRG03_b78f:
			lda $0170			; $b78f: ad 70 01
			sta $18			; $b792: 85 18
			lda $0171			; $b794: ad 71 01
			sta $19			; $b797: 85 19
			lda $0172			; $b799: ad 72 01
			sta $1a			; $b79c: 85 1a
			lda $0173			; $b79e: ad 73 01
			sta $1b			; $b7a1: 85 1b
			lda #$0c				; $b7a3: a9 0c
			sta $ab			; $b7a5: 85 ab
PRG03_b7a7:
			lda #$08				; $b7a7: a9 08
			sta $a3			; $b7a9: 85 a3
			lda $19			; $b7ab: a5 19
			ora #$80				; $b7ad: 09 80
			tax				; $b7af: aa
			ldy $18			; $b7b0: a4 18
			lda #$00				; $b7b2: a9 00
			jsr Main_c01e			; $b7b4: 20 1e c0
			jsr PRG03_bb11			; $b7b7: 20 11 bb
			dec $ab			; $b7ba: c6 ab
			bne PRG03_b7a7			; $b7bc: d0 e9
			ldy v_PlanetID			; $b7be: ac 58 01
			lda BoardDataTable_L,y			; $b7c1: b9 83 b4
			sta $18			; $b7c4: 85 18
			lda BoardDataTable_H,y			; $b7c6: b9 8b b4
			sta $19			; $b7c9: 85 19
			jsr PRG03_93d4			; $b7cb: 20 d4 93
			lda $1b			; $b7ce: a5 1b
			sta $a2			; $b7d0: 85 a2
			lda $1a			; $b7d2: a5 1a
			sta $a1			; $b7d4: 85 a1
			jsr PRG03_997d			; $b7d6: 20 7d 99
			sty $1c			; $b7d9: 84 1c
			jsr PRG03_96ec			; $b7db: 20 ec 96
			ldy $1c			; $b7de: a4 1c
			jsr PRG03_b834			; $b7e0: 20 34 b8
			inc $1c			; $b7e3: e6 1c
			ldy $1c			; $b7e5: a4 1c
			jsr PRG03_96ec			; $b7e7: 20 ec 96
			ldy $1c			; $b7ea: a4 1c
			jsr PRG03_b834			; $b7ec: 20 34 b8
			clc				; $b7ef: 18
			lda $1c			; $b7f0: a5 1c
			adc #$04				; $b7f2: 69 04
			sta $1c			; $b7f4: 85 1c
			tay				; $b7f6: a8
			jsr PRG03_96ec			; $b7f7: 20 ec 96
			ldy $1c			; $b7fa: a4 1c
			jsr PRG03_b834			; $b7fc: 20 34 b8
			inc $1c			; $b7ff: e6 1c
			ldy $1c			; $b801: a4 1c
			jsr PRG03_96ec			; $b803: 20 ec 96
			ldy $1c			; $b806: a4 1c
			jsr PRG03_b834			; $b808: 20 34 b8
			inc $1c			; $b80b: e6 1c
			ldy $1c			; $b80d: a4 1c
			jsr PRG03_96ec			; $b80f: 20 ec 96
			ldy $1c			; $b812: a4 1c
			jsr PRG03_b834			; $b814: 20 34 b8
			clc				; $b817: 18
			lda $1c			; $b818: a5 1c
			adc #$04				; $b81a: 69 04
			sta $1c			; $b81c: 85 1c
			tay				; $b81e: a8
			jsr PRG03_96ec			; $b81f: 20 ec 96
			ldy $1c			; $b822: a4 1c
			jsr PRG03_b834			; $b824: 20 34 b8
			inc $1c			; $b827: e6 1c
			ldy $1c			; $b829: a4 1c
			jsr PRG03_96ec			; $b82b: 20 ec 96
			ldy $1c			; $b82e: a4 1c
			jsr PRG03_b834			; $b830: 20 34 b8
			rts				; $b833: 60

;-------------------------------------------------------------------------------
PRG03_b834:
			jsr PRG03_b849			; $b834: 20 49 b8
			bcc PRG03_b848			; $b837: 90 0f
			lda $0418,x		; $b839: bd 18 04
			and #$20				; $b83c: 29 20
			beq PRG03_b848			; $b83e: f0 08
			lda $0580,x		; $b840: bd 80 05
			ldy $a0			; $b843: a4 a0
			jsr PRG03_999b			; $b845: 20 9b 99
PRG03_b848:
			rts				; $b848: 60

;-------------------------------------------------------------------------------
PRG03_b849:
			sty $a0			; $b849: 84 a0
			ldx #$01				; $b84b: a2 01
PRG03_b84d:
			lda $0418,x		; $b84d: bd 18 04
			and #$80				; $b850: 29 80
			beq PRG03_b860			; $b852: f0 0c
			lda $0538,x		; $b854: bd 38 05
			cmp $a0			; $b857: c5 a0
			bne PRG03_b860			; $b859: d0 05
			lda $0580,x		; $b85b: bd 80 05
			sec				; $b85e: 38
			rts				; $b85f: 60

;-------------------------------------------------------------------------------
PRG03_b860:
			inx				; $b860: e8
			cpx #$18				; $b861: e0 18
			bcc PRG03_b84d			; $b863: 90 e8
			clc				; $b865: 18
			rts				; $b866: 60

;-------------------------------------------------------------------------------
PRG03_b867:
			lda #$03				; $b867: a9 03
			jsr PRG03_b6ee			; $b869: 20 ee b6
			lda $18			; $b86c: a5 18
			sta $0170			; $b86e: 8d 70 01
			lda $19			; $b871: a5 19
			sta $0171			; $b873: 8d 71 01
			lda $1a			; $b876: a5 1a
			sta $0172			; $b878: 8d 72 01
			lda $1b			; $b87b: a5 1b
			sta $0173			; $b87d: 8d 73 01
			lda #$00				; $b880: a9 00
			sta $ab			; $b882: 85 ab
PRG03_b884:
			lda #$00				; $b884: a9 00
			sta $a2			; $b886: 85 a2
			lda #$08				; $b888: a9 08
			sta $a1			; $b88a: 85 a1
			ldy $ab			; $b88c: a4 ab
			lda PRG03_b90e,y			; $b88e: b9 0e b9
			sta LoadAddress_High			; $b891: 85 a6
			beq PRG03_b8af			; $b893: f0 1a
			lda PRG03_b902,y			; $b895: b9 02 b9
			sta LoadAddress_Low			; $b898: 85 a5
			lda $19			; $b89a: a5 19
			ora #$80				; $b89c: 09 80
			sta $a4			; $b89e: 85 a4
			lda $18			; $b8a0: a5 18
			sta $a3			; $b8a2: 85 a3
			jsr Main_c027			; $b8a4: 20 27 c0
			inc $ab			; $b8a7: e6 ab
			jsr PRG03_bb11			; $b8a9: 20 11 bb
			jmp PRG03_b884			; $b8ac: 4c 84 b8

;-------------------------------------------------------------------------------
PRG03_b8af:
			lda $1b			; $b8af: a5 1b
			sta $a2			; $b8b1: 85 a2
			lda $1a			; $b8b3: a5 1a
			sta $a1			; $b8b5: 85 a1
			jsr PRG03_997d			; $b8b7: 20 7d 99
			sty $1a			; $b8ba: 84 1a
			lda #$00				; $b8bc: a9 00
			sta $ab			; $b8be: 85 ab
			lda $1a			; $b8c0: a5 1a
			jsr PRG03_991c			; $b8c2: 20 1c 99
			jsr PRG03_9840			; $b8c5: 20 40 98
			inc $1a			; $b8c8: e6 1a
			lda $1a			; $b8ca: a5 1a
			jsr PRG03_991c			; $b8cc: 20 1c 99
			jsr PRG03_9840			; $b8cf: 20 40 98
			clc				; $b8d2: 18
			lda $1a			; $b8d3: a5 1a
			adc #$05				; $b8d5: 69 05
			sta $1a			; $b8d7: 85 1a
			jsr PRG03_991c			; $b8d9: 20 1c 99
			jsr PRG03_9840			; $b8dc: 20 40 98
			lda $a1			; $b8df: a5 a1
			beq PRG03_b8ea			; $b8e1: f0 07
			dec $a1			; $b8e3: c6 a1
			jsr PRG03_9840			; $b8e5: 20 40 98
			inc $a1			; $b8e8: e6 a1
PRG03_b8ea:
			clc				; $b8ea: 18
			lda $1a			; $b8eb: a5 1a
			adc #$05				; $b8ed: 69 05
			sta $1a			; $b8ef: 85 1a
			jsr PRG03_991c			; $b8f1: 20 1c 99
			jsr PRG03_9840			; $b8f4: 20 40 98
			inc $1a			; $b8f7: e6 1a
			lda $1a			; $b8f9: a5 1a
			jsr PRG03_991c			; $b8fb: 20 1c 99
			jsr PRG03_9840			; $b8fe: 20 40 98
			rts				; $b901: 60

;-------------------------------------------------------------------------------
			TableStart
			TableInsert PRG03_b91a
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b922
			TableInsert PRG03_b92a

PRG03_b902:	.byte <(CurrentTable+1)
PRG03_b90e:	.byte >(CurrentTable+1)
PRG03_b91a:
			.byte $00, $60, $65, $65	; $b91a: 00 60 65 65	 Data
			.byte $65, $65, $65, $65	; $b91e: 65 65 65 65	 Data
PRG03_b922:
			.byte $f7, $62, $00, $00	; $b922: f7 62 00 00	 Data
			.byte $00, $00, $00, $00	; $b926: 00 00 00 00	 Data
PRG03_b92a:
			.byte $62, $64, $65, $65	; $b92a: 62 64 65 65	 Data
			.byte $65, $65, $65, $65	; $b92e: 65 65 65 65	 Data
			.byte $fa	; $b932: fa			Data

;-------------------------------------------------------------------------------
PRG03_MessageBox_ShowText:
			tay				; $b933: a8
			LoadAddressFromTable PRG03_MBTexts_L, PRG03_MBTexts_H, y
			ldy #$00				; $b93e: a0 00
			ldx #$00				; $b940: a2 00
PRG03_b942:
			lda (LoadedAddress),y		; $b942: b1 a5
			cmp #$0f				; $b944: c9 0f
			bne PRG03_b96a			; $b946: d0 22
			lda #$00				; $b948: a9 00
			sta $a0			; $b94a: 85 a0
			lda #$0f				; $b94c: a9 0f
			cpx #$00				; $b94e: e0 00
			beq PRG03_b966			; $b950: f0 14
			cpx #$0a				; $b952: e0 0a
			beq PRG03_b966			; $b954: f0 10
			cpx #$14				; $b956: e0 14
			beq PRG03_b966			; $b958: f0 0c
			cpx #$1e				; $b95a: e0 1e
			beq PRG03_b966			; $b95c: f0 08
			cpx #$28				; $b95e: e0 28
			beq PRG03_b966			; $b960: f0 04
			cpx #$32				; $b962: e0 32
			bne PRG03_b96c			; $b964: d0 06
PRG03_b966:
			iny				; $b966: c8
			jmp PRG03_b942			; $b967: 4c 42 b9

;-------------------------------------------------------------------------------
PRG03_b96a:
			sta $a0			; $b96a: 85 a0
PRG03_b96c:
			iny				; $b96c: c8
			cmp #$0c				; $b96d: c9 0c
			beq PRG03_b975			; $b96f: f0 04
			lda $a0			; $b971: a5 a0
			bpl PRG03_b9b9			; $b973: 10 44
PRG03_b975:
			lda $a0			; $b975: a5 a0
			bmi PRG03_b98d			; $b977: 30 14
			cpx #$0a				; $b979: e0 0a
			beq PRG03_b999			; $b97b: f0 1c
			cpx #$14				; $b97d: e0 14
			beq PRG03_b999			; $b97f: f0 18
			cpx #$1e				; $b981: e0 1e
			beq PRG03_b999			; $b983: f0 14
			cpx #$28				; $b985: e0 28
			beq PRG03_b999			; $b987: f0 10
			cpx #$32				; $b989: e0 32
			beq PRG03_b999			; $b98b: f0 0c
PRG03_b98d:
			cpx #$3c				; $b98d: e0 3c
			beq PRG03_b999			; $b98f: f0 08
			lda #$00				; $b991: a9 00
			sta $0660,x		; $b993: 9d 60 06
			inx				; $b996: e8
			bne PRG03_b975			; $b997: d0 dc
PRG03_b999:
			lda $a0			; $b999: a5 a0
			bpl PRG03_b942			; $b99b: 10 a5
			cmp #$81				; $b99d: c9 81
			bne PRG03_b9af			; $b99f: d0 0e
			ldx #$0a				; $b9a1: a2 0a
PRG03_b9a3:
			lda PRG03_b13f-1,x			; $b9a3: bd 3e b1
			sta $0691,x		; $b9a6: 9d 91 06
			dex				; $b9a9: ca
			bne PRG03_b9a3			; $b9aa: d0 f7
			jmp PRG03_b9b6			; $b9ac: 4c b6 b9

;-------------------------------------------------------------------------------
PRG03_b9af:
			cmp #$82				; $b9af: c9 82
			bne PRG03_b9b6			; $b9b1: d0 03
			jsr PRG03_baa1			; $b9b3: 20 a1 ba
PRG03_b9b6:
			jmp PRG03_b9c2			; $b9b6: 4c c2 b9

;-------------------------------------------------------------------------------
PRG03_b9b9:
			lda $a0			; $b9b9: a5 a0
			sta $0660,x		; $b9bb: 9d 60 06
			inx				; $b9be: e8
			jmp PRG03_b942			; $b9bf: 4c 42 b9

;-------------------------------------------------------------------------------
PRG03_b9c2:
			lda #$04				; $b9c2: a9 04
			jsr PRG03_b6ee			; $b9c4: 20 ee b6
			clc				; $b9c7: 18
			lda $18			; $b9c8: a5 18
			adc #$20				; $b9ca: 69 20
			sta $18			; $b9cc: 85 18
			lda $19			; $b9ce: a5 19
			adc #$00				; $b9d0: 69 00
			sta $19			; $b9d2: 85 19
			lda #$00				; $b9d4: a9 00
			sta $ab			; $b9d6: 85 ab
PRG03_b9d8:
			lda #$06				; $b9d8: a9 06
			jsr Main_c0e4			; $b9da: 20 e4 c0
			ldx $ca			; $b9dd: a6 ca
			inx				; $b9df: e8
			lda $19			; $b9e0: a5 19
			ora #$80				; $b9e2: 09 80
			sta $0700,x		; $b9e4: 9d 00 07
			inx				; $b9e7: e8
			lda $18			; $b9e8: a5 18
			sta $0700,x		; $b9ea: 9d 00 07
			inx				; $b9ed: e8
			ldy $ab			; $b9ee: a4 ab
			jsr PRG03_bb01			; $b9f0: 20 01 bb
			lda $ae			; $b9f3: a5 ae
			sta $0700,x		; $b9f5: 9d 00 07
			inx				; $b9f8: e8
			lda $af			; $b9f9: a5 af
			sta $0700,x		; $b9fb: 9d 00 07
			inx				; $b9fe: e8
			jsr PRG03_bb01			; $b9ff: 20 01 bb
			lda $ae			; $ba02: a5 ae
			sta $0700,x		; $ba04: 9d 00 07
			inx				; $ba07: e8
			lda $af			; $ba08: a5 af
			sta $0700,x		; $ba0a: 9d 00 07
			inx				; $ba0d: e8
			jsr PRG03_bb01			; $ba0e: 20 01 bb
			lda $ae			; $ba11: a5 ae
			sta $0700,x		; $ba13: 9d 00 07
			inx				; $ba16: e8
			lda $af			; $ba17: a5 af
			sta $0700,x		; $ba19: 9d 00 07
			inx				; $ba1c: e8
			lda #$06				; $ba1d: a9 06
			jsr Main_c0ea			; $ba1f: 20 ea c0
			inc $ab			; $ba22: e6 ab
			lda $ab			; $ba24: a5 ab
			cmp #$0a				; $ba26: c9 0a
			beq PRG03_ba30			; $ba28: f0 06
			jsr PRG03_bb11			; $ba2a: 20 11 bb
			jmp PRG03_b9d8			; $ba2d: 4c d8 b9

;-------------------------------------------------------------------------------
PRG03_ba30:
			lda $a0			; $ba30: a5 a0
			cmp #$81				; $ba32: c9 81
			beq PRG03_ba37			; $ba34: f0 01
			rts				; $ba36: 60

;-------------------------------------------------------------------------------
PRG03_ba37:
			lda Input_RAM			; $ba37: a5 00
			and #$fe				; $ba39: 29 fe
			sta Input_RAM			; $ba3b: 85 00
			lda $c6			; $ba3d: a5 c6
			sta $61			; $ba3f: 85 61
			lda $02a1			; $ba41: ad a1 02
			sta $02a0			; $ba44: 8d a0 02
			lda #$01				; $ba47: a9 01
			sta $02a1			; $ba49: 8d a1 02
			lda #$00				; $ba4c: a9 00
			sta $02a2			; $ba4e: 8d a2 02
			lda #$20				; $ba51: a9 20
			sta $02a3			; $ba53: 8d a3 02
PRG03_ba56:
			jsr Main_c087			; $ba56: 20 87 c0
			jsr Goto_WaitFrame			; $ba59: 20 ba c0
			lda Input_RAM			; $ba5c: a5 00
			and #$02				; $ba5e: 29 02
			beq PRG03_ba6b			; $ba60: f0 09
			lda #$33				; $ba62: a9 33
			jsr Goto_PlaySound			; $ba64: 20 c6 c0
			lda #$00				; $ba67: a9 00
			sec				; $ba69: 38
			rts				; $ba6a: 60

;-------------------------------------------------------------------------------
PRG03_ba6b:
			lda Input_RAM			; $ba6b: a5 00
			and #$01				; $ba6d: 29 01
			beq PRG03_ba85			; $ba6f: f0 14
			lda #$33				; $ba71: a9 33
			jsr Goto_PlaySound			; $ba73: 20 c6 c0
			lda $02a3			; $ba76: ad a3 02
			cmp #$20				; $ba79: c9 20
			bne PRG03_ba81			; $ba7b: d0 04
			lda #$01				; $ba7d: a9 01
			sec				; $ba7f: 38
			rts				; $ba80: 60

;-------------------------------------------------------------------------------
PRG03_ba81:
			lda #$01				; $ba81: a9 01
			clc				; $ba83: 18
			rts				; $ba84: 60

;-------------------------------------------------------------------------------
PRG03_ba85:
			lda Input_RAM			; $ba85: a5 00
			and #$80				; $ba87: 29 80
			beq PRG03_ba93			; $ba89: f0 08
			lda #$48				; $ba8b: a9 48
			sta $02a3			; $ba8d: 8d a3 02
			jmp PRG03_ba56			; $ba90: 4c 56 ba

;-------------------------------------------------------------------------------
PRG03_ba93:
			lda Input_RAM			; $ba93: a5 00
			and #$40				; $ba95: 29 40
			beq PRG03_ba56			; $ba97: f0 bd
			lda #$20				; $ba99: a9 20
			sta $02a3			; $ba9b: 8d a3 02
			jmp PRG03_ba56			; $ba9e: 4c 56 ba

;-------------------------------------------------------------------------------
PRG03_baa1:
			lda $016f			; $baa1: ad 6f 01
			and #$3f				; $baa4: 29 3f
			clc				; $baa6: 18
			adc #$eb				; $baa7: 69 eb
			tay				; $baa9: a8
			lda $018c,y		; $baaa: b9 8c 01
			sta $a0			; $baad: 85 a0
			tya				; $baaf: 98
			asl				; $bab0: 0a
			asl				; $bab1: 0a
			asl				; $bab2: 0a
			asl				; $bab3: 0a
			clc				; $bab4: 18
			adc $0180,y		; $bab5: 79 80 01
			tay				; $bab8: a8
			lda PRG03_bb3d,y			; $bab9: b9 3d bb
			asl				; $babc: 0a
			asl				; $babd: 0a
			asl				; $babe: 0a
			cmp $a0			; $babf: c5 a0
			bcc PRG03_bac5			; $bac1: 90 02
			lda $a0			; $bac3: a5 a0
PRG03_bac5:
			sta $a0			; $bac5: 85 a0
			lsr				; $bac7: 4a
			lsr				; $bac8: 4a
			lsr				; $bac9: 4a
			cmp #$0a				; $baca: c9 0a
			bcc PRG03_badf			; $bacc: 90 11
			ldy #$03				; $bace: a0 03
			clc				; $bad0: 18
			adc #$f6				; $bad1: 69 f6
			cmp #$0a				; $bad3: c9 0a
			bcc PRG03_badc			; $bad5: 90 05
			ldy #$04				; $bad7: a0 04
			clc				; $bad9: 18
			adc #$f6				; $bada: 69 f6
PRG03_badc:
			sty $067a			; $badc: 8c 7a 06
PRG03_badf:
			clc				; $badf: 18
			adc #$02				; $bae0: 69 02
			sta $067b			; $bae2: 8d 7b 06
			lda #$0d				; $bae5: a9 0d
			sta $067c			; $bae7: 8d 7c 06
			lda $a0			; $baea: a5 a0
			and #$07				; $baec: 29 07
			tay				; $baee: a8
			lda PRG03_baf9,y			; $baef: b9 f9 ba
			clc				; $baf2: 18
			adc #$02				; $baf3: 69 02
			sta $067d			; $baf5: 8d 7d 06
			rts				; $baf8: 60

;-------------------------------------------------------------------------------
PRG03_baf9:
			.byte $00, $01, $03, $04	; $baf9: 00 01 03 04	 Data
			.byte $05, $06, $08, $09	; $bafd: 05 06 08 09	 Data

;-------------------------------------------------------------------------------
PRG03_bb01:
			lda $0660,y		; $bb01: b9 60 06
			sta $ae			; $bb04: 85 ae
			lda $066a,y		; $bb06: b9 6a 06
			sta $af			; $bb09: 85 af
			tya				; $bb0b: 98
			clc				; $bb0c: 18
			adc #$14				; $bb0d: 69 14
			tay				; $bb0f: a8
			rts				; $bb10: 60

;-------------------------------------------------------------------------------
PRG03_bb11:
			ldx #$18				; $bb11: a2 18
			jsr Main_c090			; $bb13: 20 90 c0
			lda $18			; $bb16: a5 18
			and #$1f				; $bb18: 29 1f
			bne PRG03_bb29			; $bb1a: d0 0d
			clc				; $bb1c: 18
			lda $18			; $bb1d: a5 18
			adc #$e0				; $bb1f: 69 e0
			sta $18			; $bb21: 85 18
			lda $19			; $bb23: a5 19
			adc #$03				; $bb25: 69 03
			sta $19			; $bb27: 85 19
PRG03_bb29:
			rts				; $bb29: 60

;-------------------------------------------------------------------------------
PRG03_bb2a:
			ldx #$00				; $bb2a: a2 00
PRG03_bb2c:
			lda $0418,x		; $bb2c: bd 18 04
			and #$a0				; $bb2f: 29 a0
			cmp #$80				; $bb31: c9 80
			beq PRG03_bb3c			; $bb33: f0 07
			inx				; $bb35: e8
			cpx #$18				; $bb36: e0 18
			bcc PRG03_bb2c			; $bb38: 90 f2
			ldx #$00				; $bb3a: a2 00
PRG03_bb3c:
			rts				; $bb3c: 60

;-------------------------------------------------------------------------------
PRG03_bb3d:
			.byte $06, $07, $08, $08	; $bb3d: 06 07 08 08	 Data
			.byte $0a, $0b, $0c, $0d	; $bb41: 0a 0b 0c 0d	 Data
			.byte $0e, $0f, $10, $12	; $bb45: 0e 0f 10 12	 Data
			.byte $14, $15, $16, $17	; $bb49: 14 15 16 17	 Data
			.byte $08, $08, $08, $08	; $bb4d: 08 08 08 08	 Data
			.byte $08, $09, $0b, $0f	; $bb51: 08 09 0b 0f	 Data
			.byte $11, $12, $12, $12	; $bb55: 11 12 12 12	 Data
			.byte $12, $12, $12, $12	; $bb59: 12 12 12 12	 Data
			.byte $08, $0a, $0a, $0a	; $bb5d: 08 0a 0a 0a	 Data
			.byte $0a, $0a, $0a, $0b	; $bb61: 0a 0a 0a 0b	 Data
			.byte $0c, $0d, $0e, $0f	; $bb65: 0c 0d 0e 0f	 Data
			.byte $0f, $0f, $0f, $0f	; $bb69: 0f 0f 0f 0f	 Data
			.byte $04, $04, $05, $05	; $bb6d: 04 04 05 05	 Data
			.byte $06, $06, $07, $07	; $bb71: 06 06 07 07	 Data
			.byte $08, $08, $09, $09	; $bb75: 08 08 09 09	 Data
			.byte $0a, $0a, $0b, $0c	; $bb79: 0a 0a 0b 0c	 Data
			.byte $17, $17, $17, $17	; $bb7d: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $bb81: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $bb85: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $bb89: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $bb8d: 17 17 17 17	 Data
			.byte $17, $15, $16, $17	; $bb91: 17 15 16 17	 Data
			.byte $17, $17, $17, $17	; $bb95: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $bb99: 17 17 17 17	 Data
			.byte $0f, $0f, $0f, $10	; $bb9d: 0f 0f 0f 10	 Data
			.byte $11, $12, $13, $14	; $bba1: 11 12 13 14	 Data
			.byte $12, $12, $12, $12	; $bba5: 12 12 12 12	 Data
			.byte $12, $12, $12, $12	; $bba9: 12 12 12 12	 Data
			.byte $11, $11, $11, $11	; $bbad: 11 11 11 11	 Data
			.byte $11, $12	; $bbb1: 11 12		 Data
PRG03_bbb3:
			.byte $13, $14, $14, $14	; $bbb3: 13 14 14 14	 Data
			.byte $14, $14, $14, $14	; $bbb7: 14 14 14 14	 Data
			.byte $14, $14, $0e, $0e	; $bbbb: 14 14 0e 0e	 Data
			.byte $0e, $0e, $0f, $10	; $bbbf: 0e 0e 0f 10	 Data
			.byte $11, $12, $10, $10	; $bbc3: 11 12 10 10	 Data
			.byte $10, $10, $10, $10	; $bbc7: 10 10 10 10	 Data
			.byte $10, $10, $08, $09	; $bbcb: 10 10 08 09	 Data
			.byte $0a, $0b, $0c, $0d	; $bbcf: 0a 0b 0c 0d	 Data
			.byte $0e, $0f, $0f, $0f	; $bbd3: 0e 0f 0f 0f	 Data
PRG03_bbd7:
			.byte $0f, $0f	; $bbd7: 0f 0f		 Data
PRG03_bbd9:
			.byte $0f, $0f	; $bbd9: 0f 0f		 Data
PRG03_bbdb:
			.byte $0f, $0f	; $bbdb: 0f 0f		 Data
PRG03_bbdd:
			.byte $0c, $0c, $0d, $0e	; $bbdd: 0c 0c 0d 0e	 Data
			.byte $0f, $10, $11, $12	; $bbe1: 0f 10 11 12	 Data
			.byte $0c, $0c, $0c, $0c	; $bbe5: 0c 0c 0c 0c	 Data
			.byte $0c, $0c, $0c, $0c	; $bbe9: 0c 0c 0c 0c	 Data
			.byte $04, $06, $07, $08	; $bbed: 04 06 07 08	 Data
			.byte $09, $0b, $0c, $0d	; $bbf1: 09 0b 0c 0d	 Data
			.byte $0a, $0a, $0a, $0a	; $bbf5: 0a 0a 0a 0a	 Data
			.byte $0a, $0a, $0a, $0a	; $bbf9: 0a 0a 0a 0a	 Data
			.byte $ff, $85, $a5, $0a	; $bbfd: ff 85 a5 0a	 Data
			.byte $0a, $0a, $0a, $0a	; $bc01: 0a 0a 0a 0a	 Data
			.byte $04, $a6, $a4, $a4	; $bc05: 04 a6 a4 a4	 Data
			.byte $a3, $20, $0f, $c0	; $bc09: a3 20 0f c0	 Data
			.byte $ad, $c2, $04, $85	; $bc0d: ad c2 04 85	 Data
			.byte $a5, $ad, $c3, $04	; $bc11: a5 ad c3 04	 Data
			.byte $85, $a6, $a0, $00	; $bc15: 85 a6 a0 00	 Data
			.byte $a9, $20, $a4, $cb	; $bc19: a9 20 a4 cb	 Data
			.byte $20, $e4, $c0, $98	; $bc1d: 20 e4 c0 98	 Data
			.byte $aa, $a9, $00, $85	; $bc21: aa a9 00 85	 Data
			.byte $a0, $a0, $03, $9d	; $bc25: a0 a0 03 9d	 Data
			.byte $00, $07, $e8, $88	; $bc29: 00 07 e8 88	 Data
			.byte $d0, $f9, $a5, $a1	; $bc2d: d0 f9 a5 a1	 Data
			.byte $f0, $1e, $b1, $a5	; $bc31: f0 1e b1 a5	 Data
			.byte $f0, $1a, $85, $a2	; $bc35: f0 1a 85 a2	 Data
			.byte $a5, $a1, $c9, $01	; $bc39: a5 a1 c9 01	 Data
			.byte $f0, $07, $18, $a5	; $bc3d: f0 07 18 a5	 Data
			.byte $a2, $69, $10, $85	; $bc41: a2 69 10 85	 Data
			.byte $a2, $a5, $a2, $9d	; $bc45: a2 a5 a2 9d	 Data
			.byte $00, $07, $e6, $a0	; $bc49: 00 07 e6 a0	 Data
			.byte $e8, $c8, $d0, $de	; $bc4d: e8 c8 d0 de	 Data
			.byte $c0, $1d, $b0, $07	; $bc51: c0 1d b0 07	 Data
			.byte $9d, $00, $07, $e8	; $bc55: 9d 00 07 e8	 Data
			.byte $c8, $d0, $f5, $a9	; $bc59: c8 d0 f5 a9	 Data
			.byte $20, $20, $ea, $c0	; $bc5d: 20 20 ea c0	 Data
			.byte $a5, $a1, $c9, $02	; $bc61: a5 a1 c9 02	 Data
			.byte $d0, $21, $e6, $a0	; $bc65: d0 21 e6 a0	 Data
			.byte $18, $a5, $a5, $65	; $bc69: 18 a5 a5 65	 Data
			.byte $a0, $85, $a5, $8d	; $bc6d: a0 85 a5 8d	 Data
			.byte $c2, $04, $a5, $a6	; $bc71: c2 04 a5 a6	 Data
			.byte $69, $00, $85, $a6	; $bc75: 69 00 85 a6	 Data
			.byte $8d, $c3, $04, $a0	; $bc79: 8d c3 04 a0	 Data
			.byte $00, $b1, $a5, $d0	; $bc7d: 00 b1 a5 d0	 Data
			.byte $06, $a9, $ff, $8d	; $bc81: 06 a9 ff 8d	 Data
			.byte $c0, $04, $60, $a2	; $bc85: c0 04 60 a2	 Data
			.byte $08, $a0, $06, $20	; $bc89: 08 a0 06 20	 Data
			.byte $ba, $c0, $88, $d0	; $bc8d: ba c0 88 d0	 Data
			.byte $fa, $e6, $db, $a5	; $bc91: fa e6 db a5	 Data
			.byte $db, $c9, $ef, $90	; $bc95: db c9 ef 90	 Data
			.byte $0a, $a9, $00, $85	; $bc99: 0a a9 00 85	 Data
			.byte $db, $a5, $dc, $49	; $bc9d: db a5 dc 49	 Data
			.byte $01, $85, $dc, $ca	; $bca1: 01 85 dc ca	 Data
			.byte $d0, $e3, $60, $ac	; $bca5: d0 e3 60 ac	 Data
			.byte $c0, $04, $10, $01	; $bca9: c0 04 10 01	 Data
			.byte $60, $b9, $bb, $bc	; $bcad: 60 b9 bb bc	 Data
			.byte $85, $a5, $b9, $c1	; $bcb1: 85 a5 b9 c1	 Data
			.byte $bc, $85, $a6, $6c	; $bcb5: bc 85 a6 6c	 Data
			.byte $a5, $00, $c7, $25	; $bcb9: a5 00 c7 25	 Data
			.byte $4b, $c5, $f9, $79	; $bcbd: 4b c5 f9 79	 Data
			.byte $bc, $bd, $bd, $bd	; $bcc1: bc bd bd bd	 Data
			.byte $bd, $be, $58, $a9	; $bcc5: bd be 58 a9	 Data
			.byte $00, $85, $34, $8d	; $bcc9: 00 85 34 8d	 Data
			.byte $c2, $04, $a2, $ff	; $bccd: c2 04 a2 ff	 Data
			.byte $9d, $00, $04, $9d	; $bcd1: 9d 00 04 9d	 Data
			.byte $00, $05, $ca, $10	; $bcd5: 00 05 ca 10	 Data
			.byte $f7, $20, $84, $c0	; $bcd9: f7 20 84 c0	 Data
			.byte $a9, $08, $8d, $20	; $bcdd: a9 08 8d 20	 Data
			.byte $01, $20, $ae, $c0	; $bce1: 01 20 ae c0	 Data
			.byte $20, $3c, $c0, $a9	; $bce5: 20 3c c0 a9	 Data
			.byte $02, $8d, $2b, $01	; $bce9: 02 8d 2b 01	 Data
			.byte $20, $2d, $c0, $a9	; $bced: 20 2d c0 a9	 Data
			.byte $1e, $85, $c5, $a9	; $bcf1: 1e 85 c5 a9	 Data
			.byte $19, $85, $e9, $85	; $bcf5: 19 85 e9 85	 Data
			.byte $e8, $a9, $06, $85	; $bcf9: e8 a9 06 85	 Data
			.byte $a5, $a9, $b5, $85	; $bcfd: a5 a9 b5 85	 Data
			.byte $a6, $a2, $20, $a0	; $bd01: a6 a2 20 a0	 Data
			.byte $00, $20, $c0, $c0	; $bd05: 00 20 c0 c0	 Data
			.byte $a9, $20, $20, $d2	; $bd09: a9 20 20 d2	 Data
			.byte $c0, $a9, $30, $8d	; $bd0d: c0 a9 30 8d	 Data
			.byte $09, $01, $20, $ba	; $bd11: 09 01 20 ba	 Data
			.byte $c0, $20, $ba, $c0	; $bd15: c0 20 ba c0	 Data
			.byte $20, $b1, $c0, $a9	; $bd19: 20 b1 c0 a9	 Data
			.byte $b4, $8d, $c1, $04	; $bd1d: b4 8d c1 04	 Data
			.byte $ee, $c0, $04, $60	; $bd21: ee c0 04 60	 Data
			.byte $ce, $c1, $04, $f0	; $bd25: ce c1 04 f0	 Data
			.byte $01, $60, $20, $ae	; $bd29: 01 60 20 ae	 Data
			.byte $c0, $a9, $01, $8d	; $bd2d: c0 a9 01 8d	 Data
			.byte $c2, $04, $a9, $48	; $bd31: c2 04 a9 48	 Data
			.byte $8d, $00, $02, $a9	; $bd35: 8d 00 02 a9	 Data
			.byte $01, $8d, $01, $02	; $bd39: 01 8d 01 02	 Data
			.byte $a9, $20, $8d, $02	; $bd3d: a9 20 8d 02	 Data
			.byte $02, $a9, $00, $8d	; $bd41: 02 a9 00 8d	 Data
			.byte $03, $02, $ee, $c0	; $bd45: 03 02 ee c0	 Data
			.byte $04, $60, $a9, $02	; $bd49: 04 60 a9 02	 Data
			.byte $8d, $2b, $01, $a9	; $bd4d: 8d 2b 01 a9	 Data
			.byte $19, $85, $e9, $ac	; $bd51: 19 85 e9 ac	 Data
			.byte $c2, $04, $b9, $a4	; $bd55: c2 04 b9 a4	 Data
			.byte $bd, $85, $eb, $b9	; $bd59: bd 85 eb b9	 Data
			.byte $ac, $bd, $c0, $06	; $bd5d: ac bd c0 06	 Data
			.byte $08, $20, $d2, $c0	; $bd61: 08 20 d2 c0	 Data
			.byte $28, $f0, $12, $a0	; $bd65: 28 f0 12 a0	 Data
			.byte $00, $b9, $04, $01	; $bd69: 00 b9 04 01	 Data
			.byte $99, $00, $01, $c8	; $bd6d: 99 00 01 c8	 Data
			.byte $c0, $0c, $d0, $f5	; $bd71: c0 0c d0 f5	 Data
			.byte $a9, $30, $8d, $09	; $bd75: a9 30 8d 09	 Data
			.byte $01, $a9, $30, $8d	; $bd79: 01 a9 30 8d	 Data
			.byte $0d, $01, $ac, $c2	; $bd7d: 0d 01 ac c2	 Data
			.byte $04, $b9, $b4, $bd	; $bd81: 04 b9 b4 bd	 Data
			.byte $85, $a5, $b9, $bc	; $bd85: 85 a5 b9 bc	 Data
			.byte $bd, $85, $a6, $a2	; $bd89: bd 85 a6 a2	 Data
			.byte $20, $a0, $00, $20	; $bd8d: 20 a0 00 20	 Data
			.byte $c0, $c0, $20, $ba	; $bd91: c0 c0 20 ba	 Data
			.byte $c0, $20, $3f, $c0	; $bd95: c0 20 3f c0	 Data
			.byte $20, $b1, $c0, $a9	; $bd99: 20 b1 c0 a9	 Data
			.byte $b4, $8d, $c1, $04	; $bd9d: b4 8d c1 04	 Data
			.byte $ee, $c0, $04, $60	; $bda1: ee c0 04 60	 Data
			.byte $13, $13, $15, $14	; $bda5: 13 13 15 14	 Data
			.byte $11, $16, $10, $12	; $bda9: 11 16 10 12	 Data
			.byte $0e, $0a, $08, $0b	; $bdad: 0e 0a 08 0b	 Data
			.byte $05, $07, $04, $02	; $bdb1: 05 07 04 02	 Data
			.byte $23, $ab, $16, $70	; $bdb5: 23 ab 16 70	 Data
			.byte $d9, $7e, $f9, $69	; $bdb9: d9 7e f9 69	 Data
			.byte $b5, $b5, $b6, $b6	; $bdbd: b5 b5 b6 b6	 Data
			.byte $b6, $b7, $b7, $b8	; $bdc1: b6 b7 b7 b8	 Data
			.byte $20, $87, $c0, $20	; $bdc5: 20 87 c0 20	 Data
			.byte $87, $c0, $ad, $02	; $bdc9: 87 c0 ad 02	 Data
			.byte $20, $ad, $02, $20	; $bdcd: 20 ad 02 20	 Data
			.byte $2c, $02, $20, $50	; $bdd1: 2c 02 20 50	 Data
			.byte $fb, $a5, $eb, $20	; $bdd5: fb a5 eb 20	 Data
			.byte $60, $c0, $ce, $c1	; $bdd9: 60 c0 ce c1	 Data
			.byte $04, $f0, $01, $60	; $bddd: 04 f0 01 60	 Data
			.byte $20, $ae, $c0, $20	; $bde1: 20 ae c0 20	 Data
			.byte $3c, $c0, $ee, $c2	; $bde5: 3c c0 ee c2	 Data
			.byte $04, $ad, $c2, $04	; $bde9: 04 ad c2 04	 Data
			.byte $c9, $09, $f0, $04	; $bded: c9 09 f0 04	 Data
			.byte $ce, $c0, $04, $60	; $bdf1: ce c0 04 60	 Data
			.byte $ee, $c0, $04, $60	; $bdf5: ee c0 04 60	 Data
			.byte $20, $ba, $c0, $ac	; $bdf9: 20 ba c0 ac	 Data
			.byte $c2, $04, $b9, $5e	; $bdfd: c2 04 b9 5e	 Data
			.byte $be, $85, $ea, $85	; $be01: be 85 ea 85	 Data
			.byte $e8, $b9, $62, $be	; $be05: e8 b9 62 be	 Data
			.byte $8d, $18, $04, $8d	; $be09: 8d 18 04 8d	 Data
			.byte $19, $04, $8d, $00	; $be0d: 19 04 8d 00	 Data
			.byte $04, $8d, $01, $04	; $be11: 04 8d 01 04	 Data
			.byte $b9, $64, $be, $8d	; $be15: b9 64 be 8d	 Data
			.byte $30, $04, $8d, $31	; $be19: 30 04 8d 31	 Data
			.byte $04, $b9, $66, $be	; $be1d: 04 b9 66 be	 Data
			.byte $8d, $60, $04, $8d	; $be21: 8d 60 04 8d	 Data
			.byte $61, $04, $b9, $68	; $be25: 61 04 b9 68	 Data
			.byte $be, $8d, $f0, $04	; $be29: be 8d f0 04	 Data
			.byte $b9, $6a, $be, $8d	; $be2d: b9 6a be 8d	 Data
			.byte $f1, $04, $a9, $03	; $be31: f1 04 a9 03	 Data
			.byte $20, $cf, $c0, $ac	; $be35: 20 cf c0 ac	 Data
			.byte $c2, $04, $b9, $6c	; $be39: c2 04 b9 6c	 Data
			.byte $be, $85, $a5, $b9	; $be3d: be 85 a5 b9	 Data
			.byte $6e, $be, $85, $a6	; $be41: 6e be 85 a6	 Data
			.byte $a2, $20, $a0, $00	; $be45: a2 20 a0 00	 Data
			.byte $20, $c0, $c0, $ac	; $be49: 20 c0 c0 ac	 Data
			.byte $c2, $04, $b9, $60	; $be4d: c2 04 b9 60	 Data
			.byte $be, $20, $d2, $c0	; $be51: be 20 d2 c0	 Data
			.byte $a9, $30, $8d, $09	; $be55: a9 30 8d 09	 Data
			.byte $01, $20, $ba, $c0	; $be59: 01 20 ba c0	 Data
			.byte $20, $ba, $c0, $20	; $be5d: 20 ba c0 20	 Data
			.byte $b1, $c0, $ee, $c0	; $be61: b1 c0 ee c0	 Data
			.byte $04, $60, $0d, $0a	; $be65: 04 60 0d 0a	 Data
			.byte $0f, $01, $98, $80	; $be69: 0f 01 98 80	 Data
			.byte $a8, $78, $88, $84	; $be6d: a8 78 88 84	 Data
			.byte $5f, $00, $53, $07	; $be71: 5f 00 53 07	 Data
			.byte $23, $47, $b9, $b9	; $be75: 23 47 b9 b9	 Data
			.byte $ce, $c1, $04, $f0	; $be79: ce c1 04 f0	 Data
			.byte $01, $60, $ee, $c2	; $be7d: 01 60 ee c2	 Data
			.byte $04, $ad, $c2, $04	; $be81: 04 ad c2 04	 Data
			.byte $c9, $0b, $f0, $07	; $be85: c9 0b f0 07	 Data
			.byte $20, $ae, $c0, $ce	; $be89: 20 ae c0 ce	 Data
			.byte $c0, $04, $60, $a9	; $be8d: c0 04 60 a9	 Data
			.byte $ff, $8d, $c0, $04	; $be91: ff 8d c0 04	 Data
			.byte $60, $ad, $c0, $04	; $be95: 60 ad c0 04	 Data
			.byte $c9, $ff, $d0, $01	; $be99: c9 ff d0 01	 Data
			.byte $60, $a8, $29, $7f	; $be9d: 60 a8 29 7f	 Data
			.byte $aa, $98, $30, $16	; $bea1: aa 98 30 16	 Data
			.byte $ad, $c0, $04, $09	; $bea5: ad c0 04 09	 Data
			.byte $80, $8d, $c0, $04	; $bea9: 80 8d c0 04	 Data
			.byte $a9, $ff, $8d, $c3	; $bead: a9 ff 8d c3	 Data
			.byte $04, $bd, $a7, $bf	; $beb1: 04 bd a7 bf	 Data
			.byte $8d, $c1, $04, $8d	; $beb5: 8d c1 04 8d	 Data
			.byte $c2, $04, $a5, $00	; $beb9: c2 04 a5 00	 Data
			.byte $29, $0f, $f0, $11	; $bebd: 29 0f f0 11	 Data
			.byte $ad, $c0, $04, $29	; $bec1: ad c0 04 29	 Data
			.byte $7f, $c9, $02, $b0	; $bec5: 7f c9 02 b0	 Data
			.byte $08, $a9, $01, $8d	; $bec9: 08 a9 01 8d	 Data
			.byte $c0, $04, $4c, $f5	; $becd: c0 04 4c f5	 Data
			.byte $be, $ce, $c2, $04	; $bed1: be ce c2 04	 Data
			.byte $d0, $1d, $bd, $ac	; $bed5: d0 1d bd ac	 Data
			.byte $bf, $bc, $b0, $bf	; $bed9: bf bc b0 bf	 Data
			.byte $85, $a5, $84, $a6	; $bedd: 85 a5 84 a6	 Data
			.byte $ad, $c1, $04, $8d	; $bee1: ad c1 04 8d	 Data
			.byte $c2, $04, $ee, $c3	; $bee5: c2 04 ee c3	 Data
			.byte $04, $ac, $c3, $04	; $bee9: 04 ac c3 04	 Data
			.byte $b1, $a5, $f0, $04	; $beed: b1 a5 f0 04	 Data
			.byte $20, $d2, $c0, $60	; $bef1: 20 d2 c0 60	 Data
			.byte $ad, $c0, $04, $29	; $bef5: ad c0 04 29	 Data
			.byte $7f, $8d, $c0, $04	; $bef9: 7f 8d c0 04	 Data
			.byte $ee, $c0, $04, $ad	; $befd: ee c0 04 ad	 Data
			.byte $c0, $04, $c9, $03	; $bf01: c0 04 c9 03	 Data
			.byte $d0, $03, $20, $18	; $bf05: d0 03 20 18	 Data
			.byte $bf, $ae, $c0, $04	; $bf09: bf ae c0 04	 Data
			.byte $bd, $a7, $bf, $d0	; $bf0d: bd a7 bf d0	 Data
			.byte $05, $a9, $ff, $8d	; $bf11: 05 a9 ff 8d	 Data
			.byte $c0, $04, $60, $a9	; $bf15: c0 04 60 a9	 Data
			.byte $1e, $85, $e9, $a9	; $bf19: 1e 85 e9 a9	 Data
			.byte $1c, $85, $eb, $a0	; $bf1d: 1c 85 eb a0	 Data
			.byte $78, $a2, $00, $bd	; $bf21: 78 a2 00 bd	 Data
			.byte $2f, $bf, $9d, $04	; $bf25: 2f bf 9d 04	 Data
			.byte $02, $e8, $88, $d0	; $bf29: 02 e8 88 d0	 Data
			.byte $f6, $60, $51, $c2	; $bf2d: f6 60 51 c2	 Data
			.byte $02, $90, $51, $c4	; $bf31: 02 90 51 c4	 Data
			.byte $02, $98, $61, $c6	; $bf35: 02 98 61 c6	 Data
			.byte $02, $90, $61, $c8	; $bf39: 02 90 61 c8	 Data
			.byte $02, $98, $71, $ca	; $bf3d: 02 98 71 ca	 Data
			.byte $02, $80, $71, $cc	; $bf41: 02 80 71 cc	 Data
			.byte $02, $88, $71, $ce	; $bf45: 02 88 71 ce	 Data
			.byte $02, $90, $71, $d0	; $bf49: 02 90 71 d0	 Data
			.byte $02, $98, $81, $d2	; $bf4d: 02 98 81 d2	 Data
			.byte $02, $80, $81, $d4	; $bf51: 02 80 81 d4	 Data
			.byte $02, $88, $81, $d6	; $bf55: 02 88 81 d6	 Data
			.byte $02, $90, $81, $d8	; $bf59: 02 90 81 d8	 Data
			.byte $02, $98, $41, $e8	; $bf5d: 02 98 41 e8	 Data
			.byte $01, $c8, $41, $ea	; $bf61: 01 c8 41 ea	 Data
			.byte $01, $d0, $51, $ec	; $bf65: 01 d0 51 ec	 Data
			.byte $01, $c8, $51, $ee	; $bf69: 01 c8 51 ee	 Data
			.byte $01, $d0, $51	; $bf6d: 01 d0 51 f0	 Data
			.byte $f0
			.byte $01, $d8, $61, $e2	; $bf71: 01 d8 61 e2	 Data
			.byte $01, $a0, $61, $e4	; $bf75: 01 a0 61 e4	 Data
			.byte $01, $a8, $61, $f2	; $bf79: 01 a8 61 f2	 Data
			.byte $01, $d0, $61, $f4	; $bf7d: 01 d0 61 f4	 Data
			.byte $01, $d8, $61, $f6	; $bf81: 01 d8 61 f6	 Data
			.byte $01, $e0, $71, $e6	; $bf85: 01 e0 71 e6	 Data
			.byte $01, $a0, $71, $f8	; $bf89: 01 a0 71 f8	 Data
			.byte $01, $d0, $71, $fa	; $bf8d: 01 d0 71 fa	 Data
			.byte $01, $d8, $71, $fc	; $bf91: 01 d8 71 fc	 Data
			.byte $01, $e0, $81, $de	; $bf95: 01 e0 81 de	 Data
			.byte $00, $90, $81, $e0	; $bf99: 00 90 81 e0	 Data
			.byte $00, $98, $91, $da	; $bf9d: 00 98 91 da	 Data
			.byte $00, $40, $91, $dc	; $bfa1: 00 40 91 dc	 Data
			.byte $00, $48, $08, $88	; $bfa5: 00 48 08 88	 Data
			.byte $04, $04, $00, $b4	; $bfa9: 04 04 00 b4	 Data
			.byte $b6, $b8, $bd, $bf	; $bfad: b6 b8 bd bf	 Data
			.byte $bf, $bf, $bf, $3e	; $bfb1: bf bf bf 3e	 Data
			.byte $00, $3e, $00, $3e	; $bfb5: 00 3e 00 3e	 Data
			.byte $3f, $40, $41, $00	; $bfb9: 3f 40 41 00	 Data
			.byte $41, $42, $43, $44	; $bfbd: 41 42 43 44	 Data
			.byte $00, $bd, $e0, $32	; $bfc1: 00 bd e0 32	 Data
			.byte $30, $2a, $09, $ac	; $bfc5: 30 2a 09 ac	 Data
			.byte $9d, $e0, $32, $9e	; $bfc9: 9d e0 32 9e	 Data
			.byte $b0, $32, $9e, $50	; $bfcd: b0 32 9e 50	 Data
			.byte $35, $20, $a5, $be	; $bfd1: 35 20 a5 be	 Data
			.byte $9e, $70, $33, $78	; $bfd5: 9e 70 33 78	 Data
			.byte $d8, $ee, $df, $ff	; $bfd9: d8 ee df ff	 Data
			.byte $4c, $00, $c0
			
			BankEnd
			.endlogical