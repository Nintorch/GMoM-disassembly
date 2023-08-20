;-------------------------------------------------------------------------------
;	Bank 6
;-------------------------------------------------------------------------------

			.logical $8000
			BankHeader 6

			.byte $19, $80, $09, $81	; $8004: 19	80 09 81		Data
			.byte $00, $00	; $8007: 81 00 00		Data

;-------------------------------------------------------------------------------
;	Cross bank jump labels
;-------------------------------------------------------------------------------

			jmp PRG06_aa8f			; $800a: 4c 8f aa

;-------------------------------------------------------------------------------
PRG06_800d:
			jmp PRG06_be98			; $800d: 4c 98 be

;-------------------------------------------------------------------------------
PRG06_Goto_GM_Credits:
			jmp PRG06_GM_Credits			; $8010: 4c 6f b9

;-------------------------------------------------------------------------------
			jmp PRG06_bb43			; $8013: 4c 43 bb

;-------------------------------------------------------------------------------
			jmp PRG06_bcaa			; $8016: 4c aa bc

;-------------------------------------------------------------------------------
;	The bank code
;-------------------------------------------------------------------------------

			.byte $f9, $81, $8e, $83	; $8019: f9 81 8e 83	 Data
			.byte $bc, $83, $96, $87	; $801d: bc 83 96 87	 Data
			.byte $2b, $89, $59, $89	; $8021: 2b 89 59 89	 Data
			.byte $6f, $8d, $04, $8f	; $8025: 6f 8d 04 8f	 Data
			.byte $40, $8f, $95, $94	; $8029: 40 8f 95 94	 Data
			.byte $2a, $96, $87, $96	; $802d: 2a 96 87 96	 Data
			.byte $19, $9e, $5a, $9e	; $8031: 19 9e 5a 9e	 Data
			.byte $91, $9e, $b3, $a2	; $8035: 91 9e b3 a2	 Data
			.byte $48, $a4, $57, $a4	; $8039: 48 a4 57 a4	 Data
			.byte $b3, $a2, $48, $a4	; $803d: b3 a2 48 a4	 Data
			.byte $57, $a4, $f9, $81	; $8041: 57 a4 f9 81	 Data
			.byte $8e, $83, $bc, $83	; $8045: 8e 83 bc 83	 Data
			.byte $2a, $82, $8e, $83	; $8049: 2a 82 8e 83	 Data
			.byte $bc, $83, $c7, $87	; $804d: bc 83 c7 87	 Data
			.byte $2b, $89, $59, $89	; $8051: 2b 89 59 89	 Data
			.byte $a0, $8d, $04, $8f	; $8055: a0 8d 04 8f	 Data
			.byte $40, $8f, $c6, $94	; $8059: 40 8f c6 94	 Data
			.byte $2a, $96, $87, $96	; $805d: 2a 96 87 96	 Data
			.byte $19, $9e, $5a, $9e	; $8061: 19 9e 5a 9e	 Data
			.byte $91, $9e, $e4, $a2	; $8065: 91 9e e4 a2	 Data
			.byte $48, $a4, $57, $a4	; $8069: 48 a4 57 a4	 Data
			.byte $e4, $a2, $48, $a4	; $806d: e4 a2 48 a4	 Data
			.byte $57, $a4, $65, $a6	; $8071: 57 a4 65 a6	 Data
			.byte $96, $a6, $ad, $a6	; $8075: 96 a6 ad a6	 Data
			.byte $6b, $82, $8e, $83	; $8079: 6b 82 8e 83	 Data
			.byte $bc, $83, $08, $88	; $807d: bc 83 08 88	 Data
			.byte $2b, $89, $59, $89	; $8081: 2b 89 59 89	 Data
			.byte $e1, $8d, $04, $8f	; $8085: e1 8d 04 8f	 Data
			.byte $40, $8f, $07, $95	; $8089: 40 8f 07 95	 Data
			.byte $2a, $96, $87, $96	; $808d: 2a 96 87 96	 Data
			.byte $19, $9e, $5a, $9e	; $8091: 19 9e 5a 9e	 Data
			.byte $91, $9e, $25, $a3	; $8095: 91 9e 25 a3	 Data
			.byte $48, $a4, $57, $a4	; $8099: 48 a4 57 a4	 Data
			.byte $25, $a3, $48, $a4	; $809d: 25 a3 48 a4	 Data
			.byte $57, $a4, $92, $a8	; $80a1: 57 a4 92 a8	 Data
			.byte $f5, $a8, $06, $a9	; $80a5: f5 a8 06 a9	 Data
			.byte $bc, $82, $8e, $83	; $80a9: bc 82 8e 83	 Data
			.byte $bc, $83, $59, $88	; $80ad: bc 83 59 88	 Data
			.byte $2b, $89, $59, $89	; $80b1: 2b 89 59 89	 Data
			.byte $32, $8e, $04, $8f	; $80b5: 32 8e 04 8f	 Data
			.byte $40, $8f, $58, $95	; $80b9: 40 8f 58 95	 Data
			.byte $2a, $96, $87, $96	; $80bd: 2a 96 87 96	 Data
			.byte $19, $9e, $5a, $9e	; $80c1: 19 9e 5a 9e	 Data
			.byte $91, $9e, $76, $a3	; $80c5: 91 9e 76 a3	 Data
			.byte $48, $a4, $57, $a4	; $80c9: 48 a4 57 a4	 Data
			.byte $76, $a3, $48, $a4	; $80cd: 76 a3 48 a4	 Data
			.byte $57, $a4, $b3, $a8	; $80d1: 57 a4 b3 a8	 Data
			.byte $f5, $a8, $06, $a9	; $80d5: f5 a8 06 a9	 Data
			.byte $1d, $83, $8e, $83	; $80d9: 1d 83 8e 83	 Data
			.byte $bc, $83, $ba, $88	; $80dd: bc 83 ba 88	 Data
			.byte $2b, $89, $59, $89	; $80e1: 2b 89 59 89	 Data
			.byte $93, $8e, $04, $8f	; $80e5: 93 8e 04 8f	 Data
			.byte $40, $8f, $b9, $95	; $80e9: 40 8f b9 95	 Data
			.byte $2a, $96, $87, $96	; $80ed: 2a 96 87 96	 Data
			.byte $19, $9e, $5a, $9e	; $80f1: 19 9e 5a 9e	 Data
			.byte $91, $9e, $d7, $a3	; $80f5: 91 9e d7 a3	 Data
			.byte $48, $a4, $57, $a4	; $80f9: 48 a4 57 a4	 Data
			.byte $d7, $a3, $48, $a4	; $80fd: d7 a3 48 a4	 Data
			.byte $57, $a4, $d4, $a8	; $8101: 57 a4 d4 a8	 Data
			.byte $f5, $a8, $06, $a9	; $8105: f5 a8 06 a9	 Data
			.byte $65, $86, $2d, $87	; $8109: 65 86 2d 87	 Data
			.byte $3c, $87, $4c, $8c	; $810d: 3c 87 4c 8c	 Data
			.byte $14, $8d, $21, $8d	; $8111: 14 8d 21 8d	 Data
			.byte $31, $93, $f9, $93	; $8115: 31 93 f9 93	 Data
			.byte $10, $94, $d1, $9c	; $8119: 10 94 d1 9c	 Data
			.byte $99, $9d, $ac, $9d	; $811d: 99 9d ac 9d	 Data
			.byte $8c, $a2, $ac, $a2	; $8121: 8c a2 ac a2	 Data
			.byte $ad, $a2, $c8, $a5	; $8125: ad a2 c8 a5	 Data
			.byte $50, $a6, $53, $a6	; $8129: 50 a6 53 a6	 Data
			.byte $c8, $a5, $50, $a6	; $812d: c8 a5 50 a6	 Data
			.byte $53, $a6, $65, $86	; $8131: 53 a6 65 86	 Data
			.byte $2d, $87, $3c, $87	; $8135: 2d 87 3c 87	 Data
			.byte $7d, $86, $2d, $87	; $8139: 7d 86 2d 87	 Data
			.byte $3c, $87, $64, $8c	; $813d: 3c 87 64 8c	 Data
			.byte $14, $8d, $21, $8d	; $8141: 14 8d 21 8d	 Data
			.byte $49, $93, $f9, $93	; $8145: 49 93 f9 93	 Data
			.byte $10, $94, $e9, $9c	; $8149: 10 94 e9 9c	 Data
			.byte $99, $9d, $ac, $9d	; $814d: 99 9d ac 9d	 Data
			.byte $8c, $a2, $ac, $a2	; $8151: 8c a2 ac a2	 Data
			.byte $ad, $a2, $c8, $a5	; $8155: ad a2 c8 a5	 Data
			.byte $50, $a6, $53, $a6	; $8159: 50 a6 53 a6	 Data
			.byte $c8, $a5, $50, $a6	; $815d: c8 a5 50 a6	 Data
			.byte $53, $a6, $73, $a8	; $8161: 53 a6 73 a8	 Data
			.byte $8b, $a8, $8c, $a8	; $8165: 8b a8 8c a8	 Data
			.byte $9d, $86, $2d, $87	; $8169: 9d 86 2d 87	 Data
			.byte $3c, $87, $84, $8c	; $816d: 3c 87 84 8c	 Data
			.byte $14, $8d, $21, $8d	; $8171: 14 8d 21 8d	 Data
			.byte $69, $93, $f9, $93	; $8175: 69 93 f9 93	 Data
			.byte $10, $94, $09, $9d	; $8179: 10 94 09 9d	 Data
			.byte $99, $9d, $ac, $9d	; $817d: 99 9d ac 9d	 Data
			.byte $8c, $a2, $ac, $a2	; $8181: 8c a2 ac a2	 Data
			.byte $ad, $a2, $e8, $a5	; $8185: ad a2 e8 a5	 Data
			.byte $50, $a6, $53, $a6	; $8189: 50 a6 53 a6	 Data
			.byte $e8, $a5, $50, $a6	; $818d: e8 a5 50 a6	 Data
			.byte $53, $a6, $68, $aa	; $8191: 53 a6 68 aa	 Data
			.byte $88, $aa, $89, $aa	; $8195: 88 aa 89 aa	 Data
			.byte $c5, $86, $2d, $87	; $8199: c5 86 2d 87	 Data
			.byte $3c, $87, $ac, $8c	; $819d: 3c 87 ac 8c	 Data
			.byte $14, $8d, $21, $8d	; $81a1: 14 8d 21 8d	 Data
			.byte $91, $93, $f9, $93	; $81a5: 91 93 f9 93	 Data
			.byte $10, $94, $31, $9d	; $81a9: 10 94 31 9d	 Data
			.byte $99, $9d, $ac, $9d	; $81ad: 99 9d ac 9d	 Data
			.byte $8c, $a2, $ac, $a2	; $81b1: 8c a2 ac a2	 Data
			.byte $ad, $a2, $e8, $a5	; $81b5: ad a2 e8 a5	 Data
			.byte $50, $a6, $53, $a6	; $81b9: 50 a6 53 a6	 Data
			.byte $e8, $a5, $50, $a6	; $81bd: e8 a5 50 a6	 Data
			.byte $53, $a6, $68, $aa	; $81c1: 53 a6 68 aa	 Data
			.byte $88, $aa, $89, $aa	; $81c5: 88 aa 89 aa	 Data
			.byte $f5, $86, $2d, $87	; $81c9: f5 86 2d 87	 Data
			.byte $3c, $87, $dc, $8c	; $81cd: 3c 87 dc 8c	 Data
			.byte $14, $8d, $21, $8d	; $81d1: 14 8d 21 8d	 Data
			.byte $c1, $93, $f9, $93	; $81d5: c1 93 f9 93	 Data
			.byte $10, $94, $61, $9d	; $81d9: 10 94 61 9d	 Data
			.byte $99, $9d, $ac, $9d	; $81dd: 99 9d ac 9d	 Data
			.byte $8c, $a2, $ac, $a2	; $81e1: 8c a2 ac a2	 Data
			.byte $ad, $a2, $18, $a6	; $81e5: ad a2 18 a6	 Data
			.byte $50, $a6, $53, $a6	; $81e9: 50 a6 53 a6	 Data
			.byte $18, $a6, $50, $a6	; $81ed: 18 a6 50 a6	 Data
			.byte $53, $a6, $68, $aa	; $81f1: 53 a6 68 aa	 Data
			.byte $88, $aa, $89, $aa	; $81f5: 88 aa 89 aa	 Data
			.byte $01, $02, $01, $03	; $81f9: 01 02 01 03	 Data
			.byte $04, $05, $06, $07	; $81fd: 04 05 06 07	 Data
			.byte $08, $09, $0a, $04	; $8201: 08 09 0a 04	 Data
			.byte $02, $01, $0b, $0c	; $8205: 02 01 0b 0c	 Data
			.byte $0b, $0c, $03, $08	; $8209: 0b 0c 03 08	 Data
			.byte $09, $0a, $05, $06	; $820d: 09 0a 05 06	 Data
			.byte $07, $03, $0d, $0e	; $8211: 07 03 0d 0e	 Data
			.byte $03, $0f, $10, $11	; $8215: 03 0f 10 11	 Data
			.byte $12, $13, $14, $15	; $8219: 12 13 14 15	 Data
			.byte $16, $03, $17, $18	; $821d: 16 03 17 18	 Data
			.byte $19, $03, $05, $06	; $8221: 19 03 05 06	 Data
			.byte $07, $17, $18, $19	; $8225: 07 17 18 19	 Data
			.byte $00, $1a, $13, $1b	; $8229: 00 1a 13 1b	 Data
			.byte $1c, $16, $03, $1d	; $822d: 1c 16 03 1d	 Data
			.byte $03, $17, $18, $19	; $8231: 03 17 18 19	 Data
			.byte $1d, $04, $0d, $0e	; $8235: 1d 04 0d 0e	 Data
			.byte $1d, $13, $1e, $1f	; $8239: 1d 13 1e 1f	 Data
			.byte $20, $1f, $20, $1f	; $823d: 20 1f 20 1f	 Data
			.byte $16, $03, $0f, $10	; $8241: 16 03 0f 10	 Data
			.byte $1c, $21, $10, $1c	; $8245: 1c 21 10 1c	 Data
			.byte $16, $0b, $0c, $03	; $8249: 16 0b 0c 03	 Data
			.byte $0b, $0c, $0b, $0c	; $824d: 0b 0c 0b 0c	 Data
			.byte $0b, $0c, $03, $0d	; $8251: 0b 0c 03 0d	 Data
			.byte $0e, $03, $04, $02	; $8255: 0e 03 04 02	 Data
			.byte $22, $01, $17, $18	; $8259: 22 01 17 18	 Data
			.byte $19, $02, $22, $01	; $825d: 19 02 22 01	 Data
			.byte $08, $09, $0a, $08	; $8261: 08 09 0a 08	 Data
			.byte $09, $0a, $05, $06	; $8265: 09 0a 05 06	 Data
			.byte $07, $00, $05, $06	; $8269: 07 00 05 06	 Data
			.byte $07, $23, $24, $25	; $826d: 07 23 24 25	 Data
			.byte $1d, $03, $02, $01	; $8271: 1d 03 02 01	 Data
			.byte $26, $1d, $04, $02	; $8275: 26 1d 04 02	 Data
			.byte $01, $02, $01, $02	; $8279: 01 02 01 02	 Data
			.byte $01, $05, $06, $07	; $827d: 01 05 06 07	 Data
			.byte $17, $18, $19, $1d	; $8281: 17 18 19 1d	 Data
			.byte $27, $28, $27, $28	; $8285: 27 28 27 28	 Data
			.byte $27, $28, $0d, $0e	; $8289: 27 28 0d 0e	 Data
			.byte $27, $28, $0d, $0e	; $828d: 27 28 0d 0e	 Data
			.byte $03, $04, $23, $24	; $8291: 03 04 23 24	 Data
			.byte $25, $0d, $0e, $03	; $8295: 25 0d 0e 03	 Data
			.byte $0d, $0e, $03, $27	; $8299: 0d 0e 03 27	 Data
			.byte $28, $0d, $0e, $27	; $829d: 28 0d 0e 27	 Data
			.byte $28, $03, $08, $09	; $82a1: 28 03 08 09	 Data
			.byte $0a, $03, $04, $03	; $82a5: 0a 03 04 03	 Data
			.byte $13, $1b, $1c, $16	; $82a9: 13 1b 1c 16	 Data
			.byte $03, $04, $03, $0f	; $82ad: 03 04 03 0f	 Data
			.byte $29, $11, $12, $03	; $82b1: 29 11 12 03	 Data
			.byte $04, $1d, $04, $17	; $82b5: 04 1d 04 17	 Data
			.byte $18, $19, $00, $01	; $82b9: 18 19 00 01	 Data
			.byte $03, $1d, $0b, $0c	; $82bd: 03 1d 0b 0c	 Data
			.byte $03, $04, $03, $23	; $82c1: 03 04 03 23	 Data
			.byte $24, $25, $03, $1d	; $82c5: 24 25 03 1d	 Data
			.byte $23, $24, $25, $04	; $82c9: 23 24 25 04	 Data
			.byte $2a, $05, $06, $07	; $82cd: 2a 05 06 07	 Data
			.byte $1d, $2a, $04, $22	; $82d1: 1d 2a 04 22	 Data
			.byte $01, $0b, $0c, $0b	; $82d5: 01 0b 0c 0b	 Data
			.byte $0c, $03, $02, $01	; $82d9: 0c 03 02 01	 Data
			.byte $13, $1e, $1f, $16	; $82dd: 13 1e 1f 16	 Data
			.byte $2a, $04, $2a, $13	; $82e1: 2a 04 2a 13	 Data
			.byte $1b, $1c, $16, $04	; $82e5: 1b 1c 16 04	 Data
			.byte $03, $27, $28, $0b	; $82e9: 03 27 28 0b	 Data
			.byte $0c, $27, $28, $04	; $82ed: 0c 27 28 04	 Data
			.byte $03, $05, $06, $07	; $82f1: 03 05 06 07	 Data
			.byte $03, $0b, $0c, $0b	; $82f5: 03 0b 0c 0b	 Data
			.byte $0c, $1d, $02, $13	; $82f9: 0c 1d 02 13	 Data
			.byte $14, $15, $14, $15	; $82fd: 14 15 14 15	 Data
			.byte $16, $02, $22, $01	; $8301: 16 02 22 01	 Data
			.byte $0f, $29, $2b, $2c	; $8305: 0f 29 2b 2c	 Data
			.byte $11, $10, $11, $12	; $8309: 11 10 11 12	 Data
			.byte $03, $1d, $0b, $0c	; $830d: 03 1d 0b 0c	 Data
			.byte $1d, $0b, $0c, $02	; $8311: 1d 0b 0c 02	 Data
			.byte $01, $1d, $03, $02	; $8315: 01 1d 03 02	 Data
			.byte $01, $04, $02, $00	; $8319: 01 04 02 00	 Data
			.byte $01, $23, $24, $25	; $831d: 01 23 24 25	 Data
			.byte $02, $01, $17, $18	; $8321: 02 01 17 18	 Data
			.byte $19, $05, $06, $07	; $8325: 19 05 06 07	 Data
			.byte $04, $03, $04, $03	; $8329: 04 03 04 03	 Data
			.byte $02, $22, $01, $0b	; $832d: 02 22 01 0b	 Data
			.byte $0c, $1d, $03, $0b	; $8331: 0c 1d 03 0b	 Data
			.byte $0c, $0b, $0c, $03	; $8335: 0c 0b 0c 03	 Data
			.byte $13, $14, $15, $2d	; $8339: 13 14 15 2d	 Data
			.byte $02, $22, $01, $13	; $833d: 02 22 01 13	 Data
			.byte $2e, $1f, $1e, $1f	; $8341: 2e 1f 1e 1f	 Data
			.byte $16, $02, $22, $01	; $8345: 16 02 22 01	 Data
			.byte $0b, $0c, $0f, $10	; $8349: 0b 0c 0f 10	 Data
			.byte $11, $2b, $2c, $12	; $834d: 11 2b 2c 12	 Data
			.byte $2a, $27, $28, $03	; $8351: 2a 27 28 03	 Data
			.byte $0b, $0c, $1d, $1d	; $8355: 0b 0c 1d 1d	 Data
			.byte $0b, $0c, $0d, $0e	; $8359: 0b 0c 0d 0e	 Data
			.byte $27, $28, $03, $0d	; $835d: 27 28 03 0d	 Data
			.byte $0e, $27, $28, $27	; $8361: 0e 27 28 27	 Data
			.byte $28, $02, $01, $1d	; $8365: 28 02 01 1d	 Data
			.byte $2a, $02, $01, $02	; $8369: 2a 02 01 02	 Data
			.byte $01, $13, $1b, $1c	; $836d: 01 13 1b 1c	 Data
			.byte $16, $27, $28, $0f	; $8371: 16 27 28 0f	 Data
			.byte $2b, $2c, $21, $2b	; $8375: 2b 2c 21 2b	 Data
			.byte $2c, $12, $02, $22	; $8379: 2c 12 02 22	 Data
			.byte $01, $02, $22, $01	; $837d: 01 02 22 01	 Data
			.byte $13, $2e, $1f, $1e	; $8381: 13 2e 1f 1e	 Data
			.byte $1f, $16, $02, $01	; $8385: 1f 16 02 01	 Data
			.byte $1d, $03, $02, $01	; $8389: 1d 03 02 01	 Data
			.byte $00, $ea, $f6, $02	; $838d: 00 ea f6 02	 Data
			.byte $10, $1e, $2a, $3b	; $8391: 10 1e 2a 3b	 Data
			.byte $4b, $58, $68, $74	; $8395: 4b 58 68 74	 Data
			.byte $81, $8f, $9b, $a7	; $8399: 81 8f 9b a7	 Data
			.byte $b4, $c6, $d4, $e2	; $839d: b4 c6 d4 e2	 Data
			.byte $ee, $fb, $09, $15	; $83a1: ee fb 09 15	 Data
			.byte $24, $36, $42, $4e	; $83a5: 24 36 42 4e	 Data
			.byte $5c, $6a, $78, $84	; $83a9: 5c 6a 78 84	 Data
			.byte $90, $9e, $aa, $b6	; $83ad: 90 9e aa b6	 Data
			.byte $c2, $d1, $dd, $eb	; $83b1: c2 d1 dd eb	 Data
			.byte $f8, $06, $14, $22	; $83b5: f8 06 14 22	 Data
			.byte $33, $45, $51, $83	; $83b9: 33 45 51 83	 Data
			.byte $83, $84, $84, $84	; $83bd: 83 84 84 84	 Data
			.byte $84, $84, $84, $84	; $83c1: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $83c5: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $83c9: 84 84 84 84	 Data
			.byte $84, $84, $84, $84	; $83cd: 84 84 84 84	 Data
			.byte $85, $85, $85, $85	; $83d1: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $83d5: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $83d9: 85 85 85 85	 Data
			.byte $85, $85, $85, $85	; $83dd: 85 85 85 85	 Data
			.byte $85, $85, $85, $86	; $83e1: 85 85 85 86	 Data
			.byte $86, $86, $86, $86	; $83e5: 86 86 86 86	 Data
			.byte $86, $fe, $00, $06	; $83e9: 86 fe 00 06	 Data
			.byte $07, $24, $20, $17	; $83ed: 07 24 20 17	 Data
			.byte $17, $18, $18, $00	; $83f1: 17 18 18 00	 Data
			.byte $00, $fe, $00, $0a	; $83f5: 00 fe 00 0a	 Data
			.byte $0b, $1f, $23, $25	; $83f9: 0b 1f 23 25	 Data
			.byte $17, $18, $18, $00	; $83fd: 17 18 18 00	 Data
			.byte $00, $fc, $00, $02	; $8401: 00 fc 00 02	 Data
			.byte $03, $08, $09, $22	; $8405: 03 08 09 22	 Data
			.byte $23, $17, $25, $18	; $8409: 23 17 25 18	 Data
			.byte $18, $00, $00, $fc	; $840d: 18 00 00 fc	 Data
			.byte $00, $04, $00, $0a	; $8411: 00 04 00 0a	 Data
			.byte $15, $19, $1a, $25	; $8415: 15 19 1a 25	 Data
			.byte $17, $18, $18, $00	; $8419: 17 18 18 00	 Data
			.byte $00, $fe, $00, $0a	; $841d: 00 fe 00 0a	 Data
			.byte $0b, $1f, $61, $25	; $8421: 0b 1f 61 25	 Data
			.byte $63, $18, $66, $00	; $8425: 63 18 66 00	 Data
			.byte $69, $f9, $00, $57	; $8429: 69 f9 00 57	 Data
			.byte $58, $59, $5b, $2b	; $842d: 58 59 5b 2b	 Data
			.byte $5e, $2f, $62, $33	; $8431: 5e 2f 62 33	 Data
			.byte $38, $37, $37, $67	; $8435: 38 37 37 67	 Data
			.byte $6a, $6b, $fa, $00	; $8439: 6a 6b fa 00	 Data
			.byte $5a, $00, $5d, $00	; $843d: 5a 00 5d 00	 Data
			.byte $0c, $07, $60, $1f	; $8441: 0c 07 60 1f	 Data
			.byte $33, $64, $37, $68	; $8445: 33 64 37 68	 Data
			.byte $6a, $6c, $fd, $00	; $8449: 6a 6c fd 00	 Data
			.byte $58, $0a, $5b, $19	; $844d: 58 0a 5b 19	 Data
			.byte $5e, $65, $62, $66	; $8451: 5e 65 62 66	 Data
			.byte $38, $69, $6a, $fa	; $8455: 38 69 6a fa	 Data
			.byte $00, $57, $00, $59	; $8459: 00 57 00 59	 Data
			.byte $00, $2b, $05, $2f	; $845d: 00 2b 05 2f	 Data
			.byte $7b, $33, $60, $37	; $8461: 7b 33 60 37	 Data
			.byte $33, $6b, $6a, $fe	; $8465: 33 6b 6a fe	 Data
			.byte $00, $06, $07, $1b	; $8469: 00 06 07 1b	 Data
			.byte $1c, $30, $25, $68	; $846d: 1c 30 25 68	 Data
			.byte $18, $6c, $00, $fd	; $8471: 18 6c 00 fd	 Data
			.byte $00, $26, $0a, $28	; $8475: 00 26 0a 28	 Data
			.byte $1f, $2a, $2d, $2e	; $8479: 1f 2a 2d 2e	 Data
			.byte $31, $32, $35, $36	; $847d: 31 32 35 36	 Data
			.byte $fc, $00, $27, $00	; $8481: fc 00 27 00	 Data
			.byte $29, $07, $2b, $20	; $8485: 29 07 2b 20	 Data
			.byte $2f, $30, $33, $34	; $8489: 2f 30 33 34	 Data
			.byte $37, $38, $fe, $00	; $848d: 37 38 fe 00	 Data
			.byte $0a, $0b, $1f, $39	; $8491: 0a 0b 1f 39	 Data
			.byte $2d, $2e, $31, $32	; $8495: 2d 2e 31 32	 Data
			.byte $35, $36, $fe, $00	; $8499: 35 36 fe 00	 Data
			.byte $06, $07, $3a, $20	; $849d: 06 07 3a 20	 Data
			.byte $2f, $30, $33, $34	; $84a1: 2f 30 33 34	 Data
			.byte $37, $38, $fd, $00	; $84a5: 37 38 fd 00	 Data
			.byte $58, $0a, $5b, $22	; $84a9: 58 0a 5b 22	 Data
			.byte $5e, $65, $62, $66	; $84ad: 5e 65 62 66	 Data
			.byte $38, $69, $6a, $f8	; $84b1: 38 69 6a f8	 Data
			.byte $00, $80, $81, $82	; $84b5: 00 80 81 82	 Data
			.byte $83, $57, $5b, $59	; $84b9: 83 57 5b 59	 Data
			.byte $5e, $2b, $62, $33	; $84bd: 5e 2b 62 33	 Data
			.byte $38, $37, $37, $6c	; $84c1: 38 37 37 6c	 Data
			.byte $69, $fc, $00, $2b	; $84c5: 69 fc 00 2b	 Data
			.byte $57, $2f, $60, $33	; $84c9: 57 2f 60 33	 Data
			.byte $33, $37, $62, $67	; $84cd: 33 37 62 67	 Data
			.byte $62, $6c, $69, $fc	; $84d1: 62 6c 69 fc	 Data
			.byte $00, $5d, $00, $0c	; $84d5: 00 5d 00 0c	 Data
			.byte $07, $60, $20, $33	; $84d9: 07 60 20 33	 Data
			.byte $64, $37, $68, $6a	; $84dd: 64 37 68 6a	 Data
			.byte $6c, $fe, $00, $0a	; $84e1: 6c fe 00 0a	 Data
			.byte $0b, $22, $61, $65	; $84e5: 0b 22 61 65	 Data
			.byte $62, $66, $38, $69	; $84e9: 62 66 38 69	 Data
			.byte $6a, $fd, $00, $8e	; $84ed: 6a fd 00 8e	 Data
			.byte $00, $9c, $2b, $62	; $84f1: 00 9c 2b 62	 Data
			.byte $33, $38, $37, $37	; $84f5: 33 38 37 37	 Data
			.byte $6c, $69, $fc, $00	; $84f9: 6c 69 fc 00	 Data
			.byte $8f, $90, $9d, $9e	; $84fd: 8f 90 9d 9e	 Data
			.byte $33, $33, $37, $62	; $8501: 33 33 37 62	 Data
			.byte $67, $62, $6c, $69	; $8505: 67 62 6c 69	 Data
			.byte $fe, $00, $06, $07	; $8509: fe 00 06 07	 Data
			.byte $7b, $21, $33, $64	; $850d: 7b 21 33 64	 Data
			.byte $37, $68, $6a, $6c	; $8511: 37 68 6a 6c	 Data
			.byte $fb, $00, $58, $00	; $8515: fb 00 58 00	 Data
			.byte $5b, $0a, $5e, $61	; $8519: 5b 0a 5e 61	 Data
			.byte $62, $63, $38, $66	; $851d: 62 63 38 66	 Data
			.byte $37, $69, $6a, $f8	; $8521: 37 69 6a f8	 Data
			.byte $00, $57, $00, $59	; $8525: 00 57 00 59	 Data
			.byte $5a, $2b, $5d, $2f	; $8529: 5a 2b 5d 2f	 Data
			.byte $5f, $33, $60, $37	; $852d: 5f 33 60 37	 Data
			.byte $33, $67, $37, $6b	; $8531: 33 67 37 6b	 Data
			.byte $6a, $fe, $00, $06	; $8535: 6a fe 00 06	 Data
			.byte $07, $1d, $1e, $64	; $8539: 07 1d 1e 64	 Data
			.byte $17, $68, $18, $6c	; $853d: 17 68 18 6c	 Data
			.byte $00, $fe, $00, $06	; $8541: 00 fe 00 06	 Data
			.byte $07, $24, $20, $17	; $8545: 07 24 20 17	 Data
			.byte $17, $18, $18, $69	; $8549: 17 18 18 69	 Data
			.byte $6a, $fc, $00, $58	; $854d: 6a fc 00 58	 Data
			.byte $5b, $5b, $5e, $2b	; $8551: 5b 5b 5e 2b	 Data
			.byte $62, $33, $38, $37	; $8555: 62 33 38 37	 Data
			.byte $37, $6c, $69, $fc	; $8559: 37 6c 69 fc	 Data
			.byte $00, $2b, $5a, $2f	; $855d: 00 2b 5a 2f	 Data
			.byte $60, $33, $33, $37	; $8561: 60 33 33 37	 Data
			.byte $62, $67, $62, $6c	; $8565: 62 67 62 6c	 Data
			.byte $69, $fc, $00, $02	; $8569: 69 fc 00 02	 Data
			.byte $03, $0a, $12, $1f	; $856d: 03 0a 12 1f	 Data
			.byte $21, $17, $25, $18	; $8571: 21 17 25 18	 Data
			.byte $18, $00, $00, $fe	; $8575: 18 00 00 fe	 Data
			.byte $00, $05, $05, $2b	; $8579: 00 05 05 2b	 Data
			.byte $62, $33, $38, $37	; $857d: 62 33 38 37	 Data
			.byte $37, $6c, $69, $fe	; $8581: 37 6c 69 fe	 Data
			.byte $00, $05, $05, $33	; $8585: 00 05 05 33	 Data
			.byte $33, $37, $62, $67	; $8589: 33 37 62 67	 Data
			.byte $62, $6c, $69, $fc	; $858d: 62 6c 69 fc	 Data
			.byte $00, $80, $81, $82	; $8591: 00 80 81 82	 Data
			.byte $83, $2b, $62, $33	; $8595: 83 2b 62 33	 Data
			.byte $38, $37, $37, $6c	; $8599: 38 37 37 6c	 Data
			.byte $69, $fe, $00, $05	; $859d: 69 fe 00 05	 Data
			.byte $5b, $1f, $5e, $64	; $85a1: 5b 1f 5e 64	 Data
			.byte $67, $33, $66, $69	; $85a5: 67 33 66 69	 Data
			.byte $6b, $fe, $00, $84	; $85a9: 6b fe 00 84	 Data
			.byte $85, $86, $87, $88	; $85ad: 85 86 87 88	 Data
			.byte $89, $8a, $8b, $8c	; $85b1: 89 8a 8b 8c	 Data
			.byte $8d, $fe, $00, $0a	; $85b5: 8d fe 00 0a	 Data
			.byte $0b, $1d, $1e, $17	; $85b9: 0b 1d 1e 17	 Data
			.byte $65, $18, $66, $00	; $85bd: 65 18 66 00	 Data
			.byte $69, $fb, $00, $57	; $85c1: 69 fb 00 57	 Data
			.byte $58, $59, $5b, $2b	; $85c5: 58 59 5b 2b	 Data
			.byte $5e, $2f, $62, $33	; $85c9: 5e 2f 62 33	 Data
			.byte $38, $37, $6a, $6b	; $85cd: 38 37 6a 6b	 Data
			.byte $fe, $00, $06, $07	; $85d1: fe 00 06 07	 Data
			.byte $7b, $23, $60, $30	; $85d5: 7b 23 60 30	 Data
			.byte $33, $68, $6a, $6c	; $85d9: 33 68 6a 6c	 Data
			.byte $fc, $00, $02, $03	; $85dd: fc 00 02 03	 Data
			.byte $0a, $12, $1f, $21	; $85e1: 0a 12 1f 21	 Data
			.byte $17, $25, $18, $18	; $85e5: 17 25 18 18	 Data
			.byte $6c, $00, $fd, $00	; $85e9: 6c 00 fd 00	 Data
			.byte $26, $0a, $28, $1f	; $85ed: 26 0a 28 1f	 Data
			.byte $2a, $25, $3b, $18	; $85f1: 2a 25 3b 18	 Data
			.byte $18, $00, $00, $fc	; $85f5: 18 00 00 fc	 Data
			.byte $00, $27, $00, $29	; $85f9: 00 27 00 29	 Data
			.byte $07, $2b, $20, $3c	; $85fd: 07 2b 20 3c	 Data
			.byte $17, $18, $18, $00	; $8601: 17 18 18 00	 Data
			.byte $00, $fc, $00, $57	; $8605: 00 fc 00 57	 Data
			.byte $5b, $59, $5e, $2b	; $8609: 5b 59 5e 2b	 Data
			.byte $62, $33, $38, $37	; $860d: 62 33 38 37	 Data
			.byte $37, $6c, $69, $fc	; $8611: 37 6c 69 fc	 Data
			.byte $00, $02, $03, $08	; $8615: 00 02 03 08	 Data
			.byte $09, $19, $1a, $25	; $8619: 09 19 1a 25	 Data
			.byte $17, $80, $81, $82	; $861d: 17 80 81 82	 Data
			.byte $83, $f9, $00, $8e	; $8621: 83 f9 00 8e	 Data
			.byte $00, $9c, $57, $5b	; $8625: 00 9c 57 5b	 Data
			.byte $59, $5e, $2b, $62	; $8629: 59 5e 2b 62	 Data
			.byte $33, $38, $37, $37	; $862d: 33 38 37 37	 Data
			.byte $6c, $69, $f8, $00	; $8631: 6c 69 f8 00	 Data
			.byte $8f, $90, $9d, $9e	; $8635: 8f 90 9d 9e	 Data
			.byte $2b, $57, $2f, $60	; $8639: 2b 57 2f 60	 Data
			.byte $33, $33, $37, $62	; $863d: 33 33 37 62	 Data
			.byte $67, $62, $6c, $69	; $8641: 67 62 6c 69	 Data
			.byte $fe, $00, $06, $07	; $8645: fe 00 06 07	 Data
			.byte $7b, $21, $33, $64	; $8649: 7b 21 33 64	 Data
			.byte $18, $18, $00, $00	; $864d: 18 18 00 00	 Data
			.byte $f6, $00, $84, $85	; $8651: f6 00 84 85	 Data
			.byte $86, $87, $88, $89	; $8655: 86 87 88 89	 Data
			.byte $8a	; $8659: 8a			Data
PRG06_865a:
			.byte $8b, $8c, $8d, $2b	; $865a: 8b 8c 8d 2b	 Data
			.byte $62, $33, $38, $37	; $865e: 62 33 38 37	 Data
			.byte $37, $6c, $69, $01	; $8662: 37 6c 69 01	 Data
			.byte $01, $01, $01, $01	; $8666: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $866a: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $866e: 01 01 01 01	 Data
			.byte $01, $01, $02, $01	; $8672: 01 01 02 01	 Data
			.byte $03, $01, $01, $01	; $8676: 03 01 01 01	 Data
			.byte $01, $01, $01, $01	; $867a: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $867e: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $8682: 01 01 01 01	 Data
			.byte $04, $04, $01, $01	; $8686: 04 04 01 01	 Data
			.byte $02, $05, $01, $01	; $868a: 02 05 01 01	 Data
			.byte $01, $01, $01, $01	; $868e: 01 01 01 01	 Data
			.byte $01, $01, $06, $01	; $8692: 01 01 06 01	 Data
			.byte $01, $06, $01, $01	; $8696: 01 06 01 01	 Data
			.byte $01, $01, $01, $0e	; $869a: 01 01 01 0e	 Data
			.byte $01, $01, $01, $01	; $869e: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86a2: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86a6: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86aa: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86ae: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86b2: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86b6: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86ba: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86be: 01 01 01 01	 Data
			.byte $01, $01, $01, $0e	; $86c2: 01 01 01 0e	 Data
			.byte $01, $01, $01, $01	; $86c6: 01 01 01 01	 Data
			.byte $01, $01, $01, $07	; $86ca: 01 01 01 07	 Data
			.byte $01, $01, $08, $09	; $86ce: 01 01 08 09	 Data
			.byte $01, $01, $01, $01	; $86d2: 01 01 01 01	 Data
			.byte $01, $07, $07, $01	; $86d6: 01 07 07 01	 Data
			.byte $01, $01, $01, $01	; $86da: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $86de: 01 01 01 01	 Data
			.byte $01, $01, $01, $04	; $86e2: 01 01 01 04	 Data
			.byte $03, $0a, $06, $01	; $86e6: 03 0a 06 01	 Data
			.byte $05, $02, $02, $01	; $86ea: 05 02 02 01	 Data
			.byte $01, $01, $01, $01	; $86ee: 01 01 01 01	 Data
			.byte $01, $01, $01, $0f	; $86f2: 01 01 01 0f	 Data
			.byte $01, $01, $01, $01	; $86f6: 01 01 01 01	 Data
			.byte $01, $01, $01, $06	; $86fa: 01 01 01 06	 Data
			.byte $01, $01, $01, $01	; $86fe: 01 01 01 01	 Data
			.byte $01, $04, $0a, $06	; $8702: 01 04 0a 06	 Data
			.byte $01, $0b, $01, $01	; $8706: 01 0b 01 01	 Data
			.byte $09, $01, $05, $05	; $870a: 09 01 05 05	 Data
			.byte $02, $08, $01, $01	; $870e: 02 08 01 01	 Data
			.byte $01, $01, $01, $01	; $8712: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $8716: 01 01 01 01	 Data
			.byte $01, $08, $01, $01	; $871a: 01 08 01 01	 Data
			.byte $01, $01, $01, $0c	; $871e: 01 01 01 0c	 Data
			.byte $05, $02, $06, $01	; $8722: 05 02 06 01	 Data
			.byte $09, $0d, $01, $01	; $8726: 09 0d 01 01	 Data
			.byte $01, $01, $01, $4b	; $872a: 01 01 01 4b	 Data
			.byte $5a, $5f, $64, $69	; $872e: 5a 5f 64 69	 Data
			.byte $6e, $73, $78, $7d	; $8732: 6e 73 78 7d	 Data
			.byte $82, $87, $8c, $91	; $8736: 82 87 8c 91	 Data
			.byte $50, $55, $87, $87	; $873a: 50 55 87 87	 Data
			.byte $87, $87, $87, $87	; $873e: 87 87 87 87	 Data
			.byte $87, $87, $87, $87	; $8742: 87 87 87 87	 Data
			.byte $87, $87, $87, $87	; $8746: 87 87 87 87	 Data
			.byte $87, $20, $55, $55	; $874a: 87 20 55 55	 Data
			.byte $55, $55, $29, $55	; $874e: 55 55 29 55	 Data
			.byte $55, $55, $55, $2a	; $8752: 55 55 55 2a	 Data
			.byte $55, $55, $55, $55	; $8756: 55 55 55 55	 Data
			.byte $20, $55, $65, $55	; $875a: 20 55 65 55	 Data
			.byte $55, $20, $55, $55	; $875e: 55 20 55 55	 Data
			.byte $5a, $55, $20, $55	; $8762: 5a 55 20 55	 Data
			.byte $55, $59, $55, $20	; $8766: 55 59 55 20	 Data
			.byte $55, $95, $55, $55	; $876a: 55 95 55 55	 Data
			.byte $20, $55, $55, $99	; $876e: 20 55 55 99	 Data
			.byte $59, $20, $55, $55	; $8772: 59 20 55 55	 Data
			.byte $55, $59, $20, $55	; $8776: 55 59 20 55	 Data
			.byte $55, $55, $56, $20	; $877a: 55 55 56 20	 Data
			.byte $55, $55, $66, $56	; $877e: 55 55 66 56	 Data
			.byte $20, $55, $55, $56	; $8782: 20 55 55 56	 Data
			.byte $55, $20, $55, $66	; $8786: 55 20 55 66	 Data
			.byte $56, $55, $20, $55	; $878a: 56 55 20 55	 Data
			.byte $a5, $55, $55, $20	; $878e: a5 55 55 20	 Data
			.byte $55, $99, $59, $55	; $8792: 55 99 59 55	 Data
			.byte $01, $02, $03, $04	; $8796: 01 02 03 04	 Data
			.byte $05, $06, $07, $08	; $879a: 05 06 07 08	 Data
			.byte $09, $0a, $0b, $0c	; $879e: 09 0a 0b 0c	 Data
			.byte $0d, $0e, $0f, $10	; $87a2: 0d 0e 0f 10	 Data
			.byte $05, $06, $07, $08	; $87a6: 05 06 07 08	 Data
			.byte $01, $02, $03, $04	; $87aa: 01 02 03 04	 Data
			.byte $11, $12, $13, $01	; $87ae: 11 12 13 01	 Data
			.byte $02, $03, $04, $13	; $87b2: 02 03 04 13	 Data
			.byte $09, $0a, $14, $15	; $87b6: 09 0a 14 15	 Data
			.byte $0b, $0c, $0d, $05	; $87ba: 0b 0c 0d 05	 Data
			.byte $06, $07, $08, $16	; $87be: 06 07 08 16	 Data
			.byte $17, $18, $09, $0a	; $87c2: 17 18 09 0a	 Data
			.byte $00, $0b, $0c, $0d	; $87c6: 00 0b 0c 0d	 Data
			.byte $16, $17, $18, $05	; $87ca: 16 17 18 05	 Data
			.byte $06, $07, $08, $0e	; $87ce: 06 07 08 0e	 Data
			.byte $0f, $10, $0b, $0c	; $87d2: 0f 10 0b 0c	 Data
			.byte $0d, $19, $1a, $13	; $87d6: 0d 19 1a 13	 Data
			.byte $1b, $1c, $1d, $1e	; $87da: 1b 1c 1d 1e	 Data
			.byte $1f, $20, $21, $22	; $87de: 1f 20 21 22	 Data
			.byte $20, $23, $24, $20	; $87e2: 20 23 24 20	 Data
			.byte $21, $25, $26, $27	; $87e6: 21 25 26 27	 Data
			.byte $13, $16, $17, $18	; $87ea: 13 16 17 18	 Data
			.byte $05, $06, $07, $08	; $87ee: 05 06 07 08	 Data
			.byte $09, $0a, $0e, $0f	; $87f2: 09 0a 0e 0f	 Data
			.byte $10, $09, $0a, $01	; $87f6: 10 09 0a 01	 Data
			.byte $02, $03, $04, $09	; $87fa: 02 03 04 09	 Data
			.byte $0a, $0e, $0f, $10	; $87fe: 0a 0e 0f 10	 Data
			.byte $05, $06, $07, $08	; $8802: 05 06 07 08	 Data
			.byte $13, $00, $09, $0a	; $8806: 13 00 09 0a	 Data
			.byte $0e, $0f, $10, $0b	; $880a: 0e 0f 10 0b	 Data
			.byte $0c, $0d, $05, $06	; $880e: 0c 0d 05 06	 Data
			.byte $07, $08, $01, $02	; $8812: 07 08 01 02	 Data
			.byte $03, $04, $13, $0e	; $8816: 03 04 13 0e	 Data
			.byte $0f, $10, $13, $01	; $881a: 0f 10 13 01	 Data
			.byte $02, $03, $04, $14	; $881e: 02 03 04 14	 Data
			.byte $15, $05, $06, $07	; $8822: 15 05 06 07	 Data
			.byte $08, $13, $16, $17	; $8826: 08 13 16 17	 Data
			.byte $18, $0b, $0c, $0d	; $882a: 18 0b 0c 0d	 Data
			.byte $0b, $0c, $0d, $0e	; $882e: 0b 0c 0d 0e	 Data
			.byte $0f, $10, $13, $16	; $8832: 0f 10 13 16	 Data
			.byte $17, $18, $0b, $0c	; $8836: 17 18 0b 0c	 Data
			.byte $0d, $1b, $1c, $1d	; $883a: 0d 1b 1c 1d	 Data
			.byte $1e, $1f, $20, $21	; $883e: 1e 1f 20 21	 Data
			.byte $23, $24, $25, $26	; $8842: 23 24 25 26	 Data
			.byte $27, $13, $0e, $0f	; $8846: 27 13 0e 0f	 Data
			.byte $10, $0b, $0c, $0d	; $884a: 10 0b 0c 0d	 Data
			.byte $14, $15, $13, $0b	; $884e: 14 15 13 0b	 Data
			.byte $0c, $0d, $05, $06	; $8852: 0c 0d 05 06	 Data
			.byte $07, $08, $00, $0b	; $8856: 07 08 00 0b	 Data
			.byte $0c, $0d, $0e, $0f	; $885a: 0c 0d 0e 0f	 Data
			.byte $10, $0b, $0c, $0d	; $885e: 10 0b 0c 0d	 Data
			.byte $05, $06, $07, $08	; $8862: 05 06 07 08	 Data
			.byte $16, $17, $18, $05	; $8866: 16 17 18 05	 Data
			.byte $06, $07, $08, $0b	; $886a: 06 07 08 0b	 Data
			.byte $0c, $0d, $01, $02	; $886e: 0c 0d 01 02	 Data
			.byte $03, $04, $09, $0a	; $8872: 03 04 09 0a	 Data
			.byte $1b, $1c, $1d, $20	; $8876: 1b 1c 1d 20	 Data
			.byte $21, $22, $20, $21	; $887a: 21 22 20 21	 Data
			.byte $22, $20, $22, $28	; $887e: 22 20 22 28	 Data
			.byte $02, $03, $29, $21	; $8882: 02 03 29 21	 Data
			.byte $22, $2a, $2b, $20	; $8886: 22 2a 2b 20	 Data
			.byte $22, $23, $24, $22	; $888a: 22 23 24 22	 Data
			.byte $20, $1e, $1f, $22	; $888e: 20 1e 1f 22	 Data
			.byte $23, $24, $20, $1e	; $8892: 23 24 20 1e	 Data
			.byte $1f, $25, $26, $27	; $8896: 1f 25 26 27	 Data
			.byte $13, $11, $12, $05	; $889a: 13 11 12 05	 Data
			.byte $06, $07, $08, $14	; $889e: 06 07 08 14	 Data
			.byte $15, $13, $0e, $0f	; $88a2: 15 13 0e 0f	 Data
			.byte $10, $09, $0a, $09	; $88a6: 10 09 0a 09	 Data
			.byte $0a, $01, $02, $03	; $88aa: 0a 01 02 03	 Data
			.byte $04, $13, $05, $06	; $88ae: 04 13 05 06	 Data
			.byte $07, $08, $16, $17	; $88b2: 07 08 16 17	 Data
			.byte $18, $09, $0a, $00	; $88b6: 18 09 0a 00	 Data
			.byte $05, $06, $07, $08	; $88ba: 05 06 07 08	 Data
			.byte $0b, $0c, $0d, $13	; $88be: 0b 0c 0d 13	 Data
			.byte $0b, $0c, $0d, $09	; $88c2: 0b 0c 0d 09	 Data
			.byte $0a, $0b, $0c, $0d	; $88c6: 0a 0b 0c 0d	 Data
			.byte $0e, $0f, $10, $0b	; $88ca: 0e 0f 10 0b	 Data
			.byte $0c, $0d, $16, $17	; $88ce: 0c 0d 16 17	 Data
			.byte $18, $05, $06, $07	; $88d2: 18 05 06 07	 Data
			.byte $08, $01, $02, $03	; $88d6: 08 01 02 03	 Data
			.byte $04, $0b, $0c, $0d	; $88da: 04 0b 0c 0d	 Data
			.byte $05, $06, $07, $08	; $88de: 05 06 07 08	 Data
			.byte $16, $17, $2c, $09	; $88e2: 16 17 2c 09	 Data
			.byte $0a, $16, $17, $2c	; $88e6: 0a 16 17 2c	 Data
			.byte $09, $0a, $16, $17	; $88ea: 09 0a 16 17	 Data
			.byte $18, $05, $06, $07	; $88ee: 18 05 06 07	 Data
			.byte $08, $14, $15, $09	; $88f2: 08 14 15 09	 Data
			.byte $0a, $0e, $0f, $10	; $88f6: 0a 0e 0f 10	 Data
			.byte $0b, $0c, $0d, $14	; $88fa: 0b 0c 0d 14	 Data
			.byte $15, $2d, $2d, $11	; $88fe: 15 2d 2d 11	 Data
			.byte $2e, $14, $15, $2d	; $8902: 2e 14 15 2d	 Data
			.byte $01, $02, $03, $04	; $8906: 01 02 03 04	 Data
			.byte $13, $0e, $0f, $10	; $890a: 13 0e 0f 10	 Data
			.byte $0b, $0c, $0d, $13	; $890e: 0b 0c 0d 13	 Data
			.byte $05	; $8912: 05			Data
PRG06_8913:
			.byte $06, $07, $08, $16	; $8913: 06 07 08 16	 Data
			.byte $17, $18, $13, $09	; $8917: 17 18 13 09	 Data
			.byte $0a, $0e, $0f, $10	; $891b: 0a 0e 0f 10	 Data
			.byte $09, $0a, $1b, $1c	; $891f: 09 0a 1b 1c	 Data
			.byte $1d, $20, $21, $22	; $8923: 1d 20 21 22	 Data
			.byte $20, $21, $22, $00	; $8927: 20 21 22 00	 Data
			.byte $87, $93, $9e, $a9	; $892b: 87 93 9e a9	 Data
			.byte $b4, $c0, $ce, $db	; $892f: b4 c0 ce db	 Data
			.byte $e9, $f6, $04, $10	; $8933: e9 f6 04 10	 Data
			.byte $1e, $2b, $3c, $52	; $8937: 1e 2b 3c 52	 Data
			.byte $5f, $74, $8a, $97	; $893b: 5f 74 8a 97	 Data
			.byte $ad, $c3, $d0, $e2	; $893f: ad c3 d0 e2	 Data
			.byte $ef, $01, $13, $20	; $8943: ef 01 13 20	 Data
			.byte $2d, $3b, $50, $66	; $8947: 2d 3b 50 66	 Data
			.byte $73, $7f, $8d, $a3	; $894b: 73 7f 8d a3	 Data
			.byte $b9, $c6, $d4, $e1	; $894f: b9 c6 d4 e1	 Data
			.byte $ed, $f8, $0a, $1c	; $8953: ed f8 0a 1c	 Data
			.byte $29, $36, $89, $89	; $8957: 29 36 89 89	 Data
			.byte $89, $89, $89, $89	; $895b: 89 89 89 89	 Data
			.byte $89, $89, $89, $89	; $895f: 89 89 89 89	 Data
			.byte $8a, $8a, $8a, $8a	; $8963: 8a 8a 8a 8a	 Data
			.byte $8a, $8a, $8a, $8a	; $8967: 8a 8a 8a 8a	 Data
			.byte $8a, $8a, $8a, $8a	; $896b: 8a 8a 8a 8a	 Data
			.byte $8a, $8a, $8a, $8b	; $896f: 8a 8a 8a 8b	 Data
			.byte $8b, $8b, $8b, $8b	; $8973: 8b 8b 8b 8b	 Data
			.byte $8b, $8b, $8b, $8b	; $8977: 8b 8b 8b 8b	 Data
			.byte $8b, $8b, $8b, $8b	; $897b: 8b 8b 8b 8b	 Data
			.byte $8b, $8b, $8b, $8b	; $897f: 8b 8b 8b 8b	 Data
			.byte $8c, $8c, $8c, $8c	; $8983: 8c 8c 8c 8c	 Data
			.byte $fe, $00, $3a, $00	; $8987: fe 00 3a 00	 Data
			.byte $00, $c5, $0e, $00	; $898b: 00 c5 0e 00	 Data
			.byte $13, $18, $65, $6b	; $898f: 13 18 65 6b	 Data
			.byte $ff, $00, $00, $4d	; $8993: ff 00 00 4d	 Data
			.byte $4e, $56, $57, $66	; $8997: 4e 56 57 66	 Data
			.byte $67, $6c, $6d, $ff	; $899b: 67 6c 6d ff	 Data
			.byte $00, $00, $4f, $50	; $899f: 00 00 4f 50	 Data
			.byte $58, $59, $68, $69	; $89a3: 58 59 68 69	 Data
			.byte $6e, $6f, $ff, $00	; $89a7: 6e 6f ff 00	 Data
			.byte $3a, $c6, $00, $00	; $89ab: 3a c6 00 00	 Data
			.byte $0f, $16, $17, $70	; $89af: 0f 16 17 70	 Data
			.byte $00, $fe, $00, $3a	; $89b3: 00 fe 00 3a	 Data
			.byte $3b, $00, $00, $07	; $89b7: 3b 00 00 07	 Data
			.byte $03, $00, $14, $00	; $89bb: 03 00 14 00	 Data
			.byte $1a, $fc, $00, $2c	; $89bf: 1a fc 00 2c	 Data
			.byte $2d, $3c, $3d, $00	; $89c3: 2d 3c 3d 00	 Data
			.byte $00, $0a, $0a, $15	; $89c7: 00 0a 0a 15	 Data
			.byte $0d, $00, $1b, $fd	; $89cb: 0d 00 1b fd	 Data
			.byte $00, $2e, $3a, $3e	; $89cf: 00 2e 3a 3e	 Data
			.byte $00, $00, $0a, $0a	; $89d3: 00 00 0a 0a	 Data
			.byte $14, $16, $18, $1a	; $89d7: 14 16 18 1a	 Data
			.byte $fc, $00, $2f, $00	; $89db: fc 00 2f 00	 Data
PRG06_89df:
			.byte $3f, $3a, $00, $00	; $89df: 3f 3a 00 00	 Data
			.byte $03, $0b, $17, $10	; $89e3: 03 0b 17 10	 Data
			.byte $00, $00, $fd, $00	; $89e7: 00 00 fd 00	 Data
			.byte $2e, $3a, $3e, $00	; $89eb: 2e 3a 3e 00	 Data
			.byte $00, $0d, $03, $13	; $89ef: 00 0d 03 13	 Data
			.byte $18, $00, $1b, $fc	; $89f3: 18 00 1b fc	 Data
			.byte $00, $2f, $00, $3f	; $89f7: 00 2f 00 3f	 Data
			.byte $3a, $00, $00, $0a	; $89fb: 3a 00 00 0a	 Data
			.byte $04, $0f, $05, $10	; $89ff: 04 0f 05 10	 Data
			.byte $1a, $fe, $00, $3a	; $8a03: 1a fe 00 3a	 Data
			.byte $3b, $00, $00, $0d	; $8a07: 3b 00 00 0d	 Data
			.byte $03, $1b, $11, $00	; $8a0b: 03 1b 11 00	 Data
			.byte $1b, $fc, $00, $2c	; $8a0f: 1b fc 00 2c	 Data
			.byte $2d, $3c, $3d, $00	; $8a13: 2d 3c 3d 00	 Data
			.byte $00, $0a, $0a, $0d	; $8a17: 00 0a 0a 0d	 Data
			.byte $1d, $1a, $00, $fd	; $8a1b: 1d 1a 00 fd	 Data
			.byte $00, $30	; $8a1f: 00 30		 Data
PRG06_8a21:
			.byte $40, $41, $00, $00	; $8a21: 40 41 00 00	 Data
			.byte $03, $0b, $17, $10	; $8a25: 03 0b 17 10	 Data
			.byte $1a, $00, $f9, $00	; $8a29: 1a 00 f9 00	 Data
			.byte $24, $00, $27, $00	; $8a2d: 24 00 27 00	 Data
			.byte $37, $3a, $49, $51	; $8a31: 37 3a 49 51	 Data
			.byte $52, $0e, $62, $13	; $8a35: 52 0e 62 13	 Data
			.byte $18, $00, $1b, $f4	; $8a39: 18 00 1b f4	 Data
			.byte $00, $22, $00, $23	; $8a3d: 00 22 00 23	 Data
			.byte $00, $25, $26, $28	; $8a41: 00 25 26 28	 Data
			.byte $29, $38, $39, $4a	; $8a45: 29 38 39 4a	 Data
			.byte $4b, $53, $54, $63	; $8a49: 4b 53 54 63	 Data
			.byte $64, $0d, $14, $1b	; $8a4d: 64 0d 14 1b	 Data
			.byte $18, $fd, $00, $30	; $8a51: 18 fd 00 30	 Data
			.byte $40, $41, $55, $00	; $8a55: 40 41 55 00	 Data
			.byte $65, $0f, $16, $17	; $8a59: 65 0f 16 17	 Data
			.byte $1a, $00, $71, $72	; $8a5d: 1a 00 71 72	 Data
			.byte $79, $7a, $7d, $81	; $8a61: 79 7a 7d 81	 Data
			.byte $85, $86, $f5, $00	; $8a65: 85 86 f5 00	 Data
			.byte $2e, $3a, $3e, $00	; $8a69: 2e 3a 3e 00	 Data
			.byte $00, $0d, $03, $13	; $8a6d: 00 0d 03 13	 Data
			.byte $18, $00, $1b, $73	; $8a71: 18 00 1b 73	 Data
			.byte $74, $7b, $7c, $82	; $8a75: 74 7b 7c 82	 Data
			.byte $80, $87, $88, $f4	; $8a79: 80 87 88 f4	 Data
			.byte $00, $2f, $00, $3f	; $8a7d: 00 2f 00 3f	 Data
			.byte $3a, $00, $00, $0a	; $8a81: 3a 00 00 0a	 Data
			.byte $04, $0f, $05, $10	; $8a85: 04 0f 05 10	 Data
			.byte $1a, $fd, $00, $30	; $8a89: 1a fd 00 30	 Data
			.byte $40, $41, $00, $00	; $8a8d: 40 41 00 00	 Data
			.byte $07, $08, $11, $17	; $8a91: 07 08 11 17	 Data
			.byte $1b, $1a, $f4, $00	; $8a95: 1b 1a f4 00	 Data
			.byte $71, $72, $79, $7a	; $8a99: 71 72 79 7a	 Data
			.byte $7d, $81, $85, $86	; $8a9d: 7d 81 85 86	 Data
			.byte $00, $2e, $3a, $3e	; $8aa1: 00 2e 3a 3e	 Data
			.byte $00, $00, $0d, $03	; $8aa5: 00 00 0d 03	 Data
			.byte $13, $18, $00, $1b	; $8aa9: 13 18 00 1b	 Data
			.byte $f4, $00, $73, $74	; $8aad: f4 00 73 74	 Data
			.byte $7b, $7c, $82, $80	; $8ab1: 7b 7c 82 80	 Data
			.byte $87, $88, $2f, $00	; $8ab5: 87 88 2f 00	 Data
			.byte $3f, $3a, $00, $00	; $8ab9: 3f 3a 00 00	 Data
			.byte $0a, $04, $0f, $05	; $8abd: 0a 04 0f 05	 Data
			.byte $10, $1a, $fd, $00	; $8ac1: 10 1a fd 00	 Data
			.byte $24, $3a, $2a, $00	; $8ac5: 24 3a 2a 00	 Data
			.byte $37, $0e, $49, $51	; $8ac9: 37 0e 49 51	 Data
			.byte $52, $02, $62, $f8	; $8acd: 52 02 62 f8	 Data
			.byte $00, $22, $00, $23	; $8ad1: 00 22 00 23	 Data
			.byte $00, $25, $26, $28	; $8ad5: 00 25 26 28	 Data
			.byte $2b, $38, $39, $4a	; $8ad9: 2b 38 39 4a	 Data
			.byte $4b, $53, $54, $63	; $8add: 4b 53 54 63	 Data
			.byte $64, $fd, $00, $30	; $8ae1: 64 fd 00 30	 Data
			.byte $40, $41, $00, $00	; $8ae5: 40 41 00 00	 Data
			.byte $4c, $0f, $55, $10	; $8ae9: 4c 0f 55 10	 Data
			.byte $65, $1a, $f8, $00	; $8aed: 65 1a f8 00	 Data
			.byte $71, $72, $79, $7a	; $8af1: 71 72 79 7a	 Data
			.byte $7d, $81, $85, $86	; $8af5: 7d 81 85 86	 Data
			.byte $00, $00, $0d, $03	; $8af9: 00 00 0d 03	 Data
			.byte $13, $18, $00, $1b	; $8afd: 13 18 00 1b	 Data
			.byte $f8, $00, $73, $74	; $8b01: f8 00 73 74	 Data
			.byte $7b, $7c, $82, $80	; $8b05: 7b 7c 82 80	 Data
			.byte $87, $88, $00, $00	; $8b09: 87 88 00 00	 Data
			.byte $0a, $04, $0f, $05	; $8b0d: 0a 04 0f 05	 Data
			.byte $10, $1a, $fd, $00	; $8b11: 10 1a fd 00	 Data
			.byte $30, $40, $41, $00	; $8b15: 30 40 41 00	 Data
			.byte $00, $08, $09, $12	; $8b19: 00 08 09 12	 Data
			.byte $0e, $00, $19, $fd	; $8b1d: 0e 00 19 fd	 Data
			.byte $00, $2e, $3a, $3e	; $8b21: 00 2e 3a 3e	 Data
			.byte $00, $00, $08, $07	; $8b25: 00 00 08 07	 Data
			.byte $5a, $5b, $18, $6a	; $8b29: 5a 5b 18 6a	 Data
			.byte $fc, $00, $2f, $00	; $8b2d: fc 00 2f 00	 Data
			.byte $3f, $3a, $00, $00	; $8b31: 3f 3a 00 00	 Data
			.byte $0a, $0a, $5c, $5d	; $8b35: 0a 0a 5c 5d	 Data
			.byte $6a, $6a, $71, $72	; $8b39: 6a 6a 71 72	 Data
			.byte $79, $7a, $7d, $81	; $8b3d: 79 7a 7d 81	 Data
			.byte $85, $86, $f5, $00	; $8b41: 85 86 f5 00	 Data
			.byte $2e, $3a, $3e, $00	; $8b45: 2e 3a 3e 00	 Data
			.byte $00, $0a, $0a, $5d	; $8b49: 00 0a 0a 5d	 Data
			.byte $5d, $6a, $6a, $73	; $8b4d: 5d 6a 6a 73	 Data
			.byte $74, $7b, $7c, $82	; $8b51: 74 7b 7c 82	 Data
			.byte $80, $87, $88, $f4	; $8b55: 80 87 88 f4	 Data
			.byte $00, $2f, $00, $3f	; $8b59: 00 2f 00 3f	 Data
			.byte $3a, $00, $00, $0a	; $8b5d: 3a 00 00 0a	 Data
			.byte $0a, $5d, $5d, $6a	; $8b61: 0a 5d 5d 6a	 Data
			.byte $6a, $fd, $00, $30	; $8b65: 6a fd 00 30	 Data
			.byte $40, $41, $00, $00	; $8b69: 40 41 00 00	 Data
			.byte $0a, $0a, $5d, $5d	; $8b6d: 0a 0a 5d 5d	 Data
			.byte $6a, $6a, $fe, $00	; $8b71: 6a 6a fe 00	 Data
			.byte $3a, $3b, $00, $00	; $8b75: 3a 3b 00 00	 Data
			.byte $0a, $0a, $5d, $5d	; $8b79: 0a 0a 5d 5d	 Data
			.byte $6a, $6a, $fc, $00	; $8b7d: 6a 6a fc 00	 Data
			.byte $2c, $2d, $3c, $3d	; $8b81: 2c 2d 3c 3d	 Data
			.byte $00, $00, $0a, $0a	; $8b85: 00 00 0a 0a	 Data
			.byte $5d, $5d, $6a, $6a	; $8b89: 5d 5d 6a 6a	 Data
			.byte $f4, $00, $71, $72	; $8b8d: f4 00 71 72	 Data
			.byte $79, $7a, $7d, $81	; $8b91: 79 7a 7d 81	 Data
			.byte $85, $86, $00, $2e	; $8b95: 85 86 00 2e	 Data
			.byte $3a, $3e, $00, $00	; $8b99: 3a 3e 00 00	 Data
			.byte $0a, $0a, $5d, $5d	; $8b9d: 0a 0a 5d 5d	 Data
			.byte $6a, $6a, $f4, $00	; $8ba1: 6a 6a f4 00	 Data
			.byte $73, $74, $7b, $7c	; $8ba5: 73 74 7b 7c	 Data
			.byte $82, $80, $87, $88	; $8ba9: 82 80 87 88	 Data
			.byte $2f, $00, $3f, $3a	; $8bad: 2f 00 3f 3a	 Data
			.byte $00, $00, $0a, $0a	; $8bb1: 00 00 0a 0a	 Data
			.byte $5d, $5d, $6a, $6a	; $8bb5: 5d 5d 6a 6a	 Data
			.byte $fd, $00, $2e, $3a	; $8bb9: fd 00 2e 3a	 Data
			.byte $3e, $00, $00, $0a	; $8bbd: 3e 00 00 0a	 Data
			.byte $0a, $5e, $5f, $6a	; $8bc1: 0a 5e 5f 6a	 Data
			.byte $6a, $fc, $00, $2f	; $8bc5: 6a fc 00 2f	 Data
			.byte $00, $3f, $3a, $00	; $8bc9: 00 3f 3a 00	 Data
			.byte $00, $08, $07, $60	; $8bcd: 00 08 07 60	 Data
			.byte $61, $6a, $1a, $fd	; $8bd1: 61 6a 1a fd	 Data
			.byte $00, $30, $40, $41	; $8bd5: 00 30 40 41	 Data
			.byte $00, $00, $09, $07	; $8bd9: 00 00 09 07	 Data
			.byte $0e, $13, $19, $00	; $8bdd: 0e 13 19 00	 Data
			.byte $fe, $00, $3a, $00	; $8be1: fe 00 3a 00	 Data
			.byte $00, $c5, $0a, $0a	; $8be5: 00 c5 0a 0a	 Data
			.byte $5d, $5d, $6a, $6b	; $8be9: 5d 5d 6a 6b	 Data
			.byte $ff, $00, $3a, $c6	; $8bed: ff 00 3a c6	 Data
			.byte $00, $0a, $0a, $5d	; $8bf1: 00 0a 0a 5d	 Data
			.byte $5d, $70, $6a, $f8	; $8bf5: 5d 70 6a f8	 Data
			.byte $00, $71, $72, $79	; $8bf9: 00 71 72 79	 Data
			.byte $7a, $7d, $81, $85	; $8bfd: 7a 7d 81 85	 Data
			.byte $86, $00, $00, $0a	; $8c01: 86 00 00 0a	 Data
			.byte $0a, $5d, $5d, $6a	; $8c05: 0a 5d 5d 6a	 Data
			.byte $6a, $f8, $00, $73	; $8c09: 6a f8 00 73	 Data
			.byte $74, $7b, $7c, $82	; $8c0d: 74 7b 7c 82	 Data
			.byte $80, $87, $88, $00	; $8c11: 80 87 88 00	 Data
			.byte $00, $0a, $0a, $5d	; $8c15: 00 0a 0a 5d	 Data
			.byte $5d	; $8c19: 5d			Data
PRG06_8c1a:
			.byte $6a, $6a, $fd, $00	; $8c1a: 6a 6a fd 00	 Data
			.byte $30, $40, $41, $00	; $8c1e: 30 40 41 00	 Data
			.byte $00, $4c, $0f, $55	; $8c22: 00 4c 0f 55	 Data
			.byte $10, $65, $00, $fd	; $8c26: 10 65 00 fd	 Data
			.byte $00, $30, $40, $41	; $8c2a: 00 30 40 41	 Data
			.byte $00, $00, $07, $08	; $8c2e: 00 00 07 08	 Data
			.byte $11, $17, $00, $00	; $8c32: 11 17 00 00	 Data
			.byte $73, $74, $7b, $7c	; $8c36: 73 74 7b 7c	 Data
			.byte $82, $80, $87, $88	; $8c3a: 82 80 87 88	 Data
			.byte $f4, $00, $2f, $00	; $8c3e: f4 00 2f 00	 Data
			.byte $3f, $3a, $00, $00	; $8c42: 3f 3a 00 00	 Data
			.byte $0a, $04, $0f, $05	; $8c46: 0a 04 0f 05	 Data
			.byte $10, $00, $01, $02	; $8c4a: 10 00 01 02	 Data
			.byte $03, $03, $03, $03	; $8c4e: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8c52: 03 03 03 03	 Data
			.byte $01, $02, $04, $03	; $8c56: 01 02 04 03	 Data
			.byte $05, $03, $03, $06	; $8c5a: 05 03 03 06	 Data
			.byte $03, $03, $03, $03	; $8c5e: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8c62: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8c66: 03 03 03 03	 Data
			.byte $03, $03, $07, $03	; $8c6a: 03 03 07 03	 Data
			.byte $03, $04, $03, $03	; $8c6e: 03 04 03 03	 Data
			.byte $06, $03, $03, $03	; $8c72: 06 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8c76: 03 03 03 03	 Data
			.byte $03, $03, $03, $01	; $8c7a: 03 03 03 01	 Data
			.byte $02, $03, $03, $03	; $8c7e: 02 03 03 03	 Data
			.byte $03, $03, $0c, $03	; $8c82: 03 03 0c 03	 Data
			.byte $03, $03, $03, $03	; $8c86: 03 03 03 03	 Data
			.byte $01, $02, $03, $03	; $8c8a: 01 02 03 03	 Data
PRG06_8c8e:
			.byte $03, $05, $08, $09	; $8c8e: 03 05 08 09	 Data
			.byte $03, $03, $03, $03	; $8c92: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8c96: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8c9a: 03 03 03 03	 Data
			.byte $03, $04, $03, $06	; $8c9e: 03 04 03 06	 Data
			.byte $03, $03, $03, $03	; $8ca2: 03 03 03 03	 Data
			.byte $03, $06, $03, $03	; $8ca6: 03 06 03 03	 Data
			.byte $03, $03, $0c, $03	; $8caa: 03 03 0c 03	 Data
			.byte $03, $03, $03, $03	; $8cae: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8cb2: 03 03 03 03	 Data
			.byte $03, $03, $05, $03	; $8cb6: 03 03 05 03	 Data
			.byte $03, $03, $03, $03	; $8cba: 03 03 03 03	 Data
			.byte $03, $03, $01, $02	; $8cbe: 03 03 01 02	 Data
			.byte $03, $07, $03, $06	; $8cc2: 03 07 03 06	 Data
			.byte $03, $04, $08, $09	; $8cc6: 03 04 08 09	 Data
			.byte $04, $03, $03, $04	; $8cca: 04 03 03 04	 Data
			.byte $03, $03, $06, $03	; $8cce: 03 03 06 03	 Data
			.byte $03, $03, $03, $01	; $8cd2: 03 03 03 01	 Data
			.byte $02, $03, $03, $03	; $8cd6: 02 03 03 03	 Data
			.byte $03, $03, $0d, $03	; $8cda: 03 03 0d 03	 Data
			.byte $03, $03, $03, $03	; $8cde: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8ce2: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8ce6: 03 03 03 03	 Data
			.byte $03, $05, $03, $03	; $8cea: 03 05 03 03	 Data
			.byte $03, $03, $03, $03	; $8cee: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8cf2: 03 03 03 03	 Data
			.byte $03, $03, $08, $09	; $8cf6: 03 03 08 09	 Data
			.byte $03, $03, $03, $08	; $8cfa: 03 03 03 08	 Data
			.byte $09, $0a, $0b, $09	; $8cfe: 09 0a 0b 09	 Data
			.byte $01, $02, $03, $03	; $8d02: 01 02 03 03	 Data
			.byte $03, $03, $03, $03	; $8d06: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8d0a: 03 03 03 03	 Data
			.byte $03, $03, $03, $03	; $8d0e: 03 03 03 03	 Data
			.byte $03, $03, $2e, $33	; $8d12: 03 03 2e 33	 Data
			.byte $38, $47, $4c, $51	; $8d16: 38 47 4c 51	 Data
			.byte $56, $5b, $60, $65	; $8d1a: 56 5b 60 65	 Data
			.byte $6a, $3d, $42, $8d	; $8d1e: 6a 3d 42 8d	 Data
			.byte $8d, $8d, $8d, $8d	; $8d22: 8d 8d 8d 8d	 Data
			.byte $8d, $8d, $8d, $8d	; $8d26: 8d 8d 8d 8d	 Data
			.byte $8d, $8d, $8d, $8d	; $8d2a: 8d 8d 8d 8d	 Data
			.byte $21, $95, $99, $59	; $8d2e: 21 95 99 59	 Data
			.byte $55, $21, $65, $66	; $8d32: 55 21 65 66	 Data
			.byte $56, $55, $21, $55	; $8d36: 56 55 21 55	 Data
			.byte $55, $55, $55, $2b	; $8d3a: 55 55 55 2b	 Data
			.byte $55, $55, $55, $55	; $8d3e: 55 55 55 55	 Data
			.byte $2c, $55, $55, $55	; $8d42: 2c 55 55 55	 Data
			.byte $55, $21, $a5, $5a	; $8d46: 55 21 a5 5a	 Data
			.byte $55, $55, $21, $a5	; $8d4a: 55 55 21 a5	 Data
			.byte $aa, $5a, $55, $21	; $8d4e: aa 5a 55 21	 Data
			.byte $55, $aa, $55, $55	; $8d52: 55 aa 55 55	 Data
			.byte $21, $55, $a5, $5a	; $8d56: 21 55 a5 5a	 Data
			.byte $55, $21, $55, $99	; $8d5a: 55 21 55 99	 Data
			.byte $55, $55, $21, $55	; $8d5e: 55 55 21 55	 Data
			.byte $66, $55, $55, $21	; $8d62: 66 55 55 21	 Data
			.byte $95, $59, $55, $55	; $8d66: 95 59 55 55	 Data
			.byte $21, $65, $9a, $55	; $8d6a: 21 65 9a 55	 Data
			.byte $55, $01, $02, $03	; $8d6e: 55 01 02 03	 Data
			.byte $01, $04, $05, $01	; $8d72: 01 04 05 01	 Data
			.byte $02, $03, $01, $04	; $8d76: 02 03 01 04	 Data
			.byte $05, $06, $07, $07	; $8d7a: 05 06 07 07	 Data
			.byte $07, $08, $09, $0a	; $8d7e: 07 08 09 0a	 Data
			.byte $0b, $0c, $0d, $0e	; $8d82: 0b 0c 0d 0e	 Data
			.byte $06, $07, $07, $08	; $8d86: 06 07 07 08	 Data
			.byte $07, $0f, $10, $11	; $8d8a: 07 0f 10 11	 Data
			.byte $12, $07, $07, $08	; $8d8e: 12 07 07 08	 Data
			.byte $01, $02, $03, $01	; $8d92: 01 02 03 01	 Data
			.byte $04, $05, $01, $02	; $8d96: 04 05 01 02	 Data
			.byte $03, $01, $04, $05	; $8d9a: 03 01 04 05	 Data
			.byte $03, $00, $01, $02	; $8d9e: 03 00 01 02	 Data
			.byte $03, $01, $04, $05	; $8da2: 03 01 04 05	 Data
			.byte $01, $02, $0f, $13	; $8da6: 01 02 0f 13	 Data
			.byte $14, $12, $06, $07	; $8daa: 14 12 06 07	 Data
			.byte $07, $08, $0f, $15	; $8dae: 07 08 0f 15	 Data
			.byte $16, $12, $01, $02	; $8db2: 16 12 01 02	 Data
			.byte $01, $02, $03, $01	; $8db6: 01 02 03 01	 Data
			.byte $04, $05, $17, $18	; $8dba: 04 05 17 18	 Data
			.byte $01, $02, $03, $01	; $8dbe: 01 02 03 01	 Data
			.byte $04, $05, $03, $06	; $8dc2: 04 05 03 06	 Data
			.byte $19, $1a, $1b, $1c	; $8dc6: 19 1a 1b 1c	 Data
			.byte $08, $03, $1d, $1d	; $8dca: 08 03 1d 1d	 Data
			.byte $1d, $1d, $0f, $1e	; $8dce: 1d 1d 0f 1e	 Data
			.byte $1f, $12, $07, $08	; $8dd2: 1f 12 07 08	 Data
			.byte $20, $0d, $0e, $06	; $8dd6: 20 0d 0e 06	 Data
			.byte $07, $08, $01, $02	; $8dda: 07 08 01 02	 Data
			.byte $01, $02, $00, $01	; $8dde: 01 02 00 01	 Data
			.byte $02, $03, $01, $04	; $8de2: 02 03 01 04	 Data
			.byte $05, $01, $02, $01	; $8de6: 05 01 02 01	 Data
			.byte $02, $0f, $10, $11	; $8dea: 02 0f 10 11	 Data
			.byte $12, $06, $07, $07	; $8dee: 12 06 07 07	 Data
			.byte $07, $07, $07, $21	; $8df2: 07 07 07 21	 Data
			.byte $22, $23, $08, $03	; $8df6: 22 23 08 03	 Data
			.byte $01, $04, $05, $24	; $8dfa: 01 04 05 24	 Data
			.byte $25, $01, $02, $26	; $8dfe: 25 01 02 26	 Data
			.byte $27, $28, $29, $2a	; $8e02: 27 28 29 2a	 Data
			.byte $2b, $2c, $2d, $2e	; $8e06: 2b 2c 2d 2e	 Data
			.byte $2c, $2f, $30, $31	; $8e0a: 2c 2f 30 31	 Data
			.byte $32, $33, $2c, $2d	; $8e0e: 32 33 2c 2d	 Data
			.byte $2e, $2c, $2f, $30	; $8e12: 2e 2c 2f 30	 Data
			.byte $31, $32, $33, $34	; $8e16: 31 32 33 34	 Data
			.byte $35, $36, $37, $38	; $8e1a: 35 36 37 38	 Data
			.byte $39, $01, $02, $1d	; $8e1e: 39 01 02 1d	 Data
			.byte $1d, $0f, $1e, $1f	; $8e22: 1d 0f 1e 1f	 Data
			.byte $12, $1d, $1d, $0f	; $8e26: 12 1d 1d 0f	 Data
			.byte $1e, $1f, $12, $01	; $8e2a: 1e 1f 12 01	 Data
			.byte $02, $01, $02, $00	; $8e2e: 02 01 02 00	 Data
			.byte $01, $02, $01, $02	; $8e32: 01 02 01 02	 Data
			.byte $01, $02, $01, $02	; $8e36: 01 02 01 02	 Data
			.byte $17, $18, $01, $02	; $8e3a: 17 18 01 02	 Data
			.byte $24, $25, $01, $02	; $8e3e: 24 25 01 02	 Data
			.byte $01, $02, $06, $21	; $8e42: 01 02 06 21	 Data
			.byte $22, $23, $08, $0f	; $8e46: 22 23 08 0f	 Data
			.byte $10, $11, $12, $06	; $8e4a: 10 11 12 06	 Data
			.byte $21, $22, $23, $08	; $8e4e: 21 22 23 08	 Data
			.byte $26, $27, $28, $29	; $8e52: 26 27 28 29	 Data
			.byte $2a, $2b, $31, $32	; $8e56: 2a 2b 31 32	 Data
			.byte $33, $2c, $2f, $30	; $8e5a: 33 2c 2f 30	 Data
			.byte $34, $35, $36, $37	; $8e5e: 34 35 36 37	 Data
			.byte $38, $39, $01, $02	; $8e62: 38 39 01 02	 Data
			.byte $0f, $10, $11, $12	; $8e66: 0f 10 11 12	 Data
			.byte $01, $02, $01, $0f	; $8e6a: 01 02 01 0f	 Data
			.byte $13, $14, $12, $03	; $8e6e: 13 14 12 03	 Data
			.byte $01, $02, $1d, $1d	; $8e72: 01 02 1d 1d	 Data
			.byte $0f, $1e, $1f, $12	; $8e76: 0f 1e 1f 12	 Data
			.byte $17, $18, $01, $06	; $8e7a: 17 18 01 06	 Data
			.byte $19, $1a, $1b, $1c	; $8e7e: 19 1a 1b 1c	 Data
			.byte $08, $01, $02, $01	; $8e82: 08 01 02 01	 Data
			.byte $03, $1d, $0f, $1e	; $8e86: 03 1d 0f 1e	 Data
			.byte $1f, $12, $1d, $1d	; $8e8a: 1f 12 1d 1d	 Data
			.byte $1d, $01, $02, $03	; $8e8e: 1d 01 02 03	 Data
			.byte $00, $03, $01, $02	; $8e92: 00 03 01 02	 Data
			.byte $01, $02, $03, $03	; $8e96: 01 02 03 03	 Data
			.byte $01, $02, $01, $02	; $8e9a: 01 02 01 02	 Data
			.byte $03, $0f, $13, $14	; $8e9e: 03 0f 13 14	 Data
			.byte $12, $01, $02, $01	; $8ea2: 12 01 02 01	 Data
			.byte $02, $0f, $10, $11	; $8ea6: 02 0f 10 11	 Data
			.byte $12, $01, $02, $01	; $8eaa: 12 01 02 01	 Data
			.byte $0f, $3a, $3b, $12	; $8eae: 0f 3a 3b 12	 Data
			.byte $03, $06, $07, $3c	; $8eb2: 03 06 07 3c	 Data
			.byte $3c, $0f, $1e, $1f	; $8eb6: 3c 0f 1e 1f	 Data
			.byte $12, $3c, $3c, $07	; $8eba: 12 3c 3c 07	 Data
			.byte $07, $07, $3c, $3c	; $8ebe: 07 07 3c 3c	 Data
			.byte $07, $21, $22, $23	; $8ec2: 07 21 22 23	 Data
			.byte $07, $3c, $3c, $0f	; $8ec6: 07 3c 3c 0f	 Data
			.byte $1e, $1f, $12, $3c	; $8eca: 1e 1f 12 3c	 Data
			.byte $07, $07, $21, $22	; $8ece: 07 07 21 22	 Data
			.byte $23, $07, $07, $09	; $8ed2: 23 07 07 09	 Data
			.byte $0a, $0b, $0c, $0d	; $8ed6: 0a 0b 0c 0d	 Data
			.byte $0e, $19, $1a, $1b	; $8eda: 0e 19 1a 1b	 Data
			.byte $1c, $0f, $13, $14	; $8ede: 1c 0f 13 14	 Data
			.byte $12, $07, $07, $07	; $8ee2: 12 07 07 07	 Data
			.byte $07, $0f, $10, $11	; $8ee6: 07 0f 10 11	 Data
			.byte $12, $07, $3c, $3c	; $8eea: 12 07 3c 3c	 Data
			.byte $0f, $1e, $1f, $12	; $8eee: 0f 1e 1f 12	 Data
			.byte $07, $07, $07, $07	; $8ef2: 07 07 07 07	 Data
			.byte $07, $21, $22, $23	; $8ef6: 07 21 22 23	 Data
			.byte $08, $01, $02, $03	; $8efa: 08 01 02 03	 Data
			.byte $01, $02, $03, $01	; $8efe: 01 02 03 01	 Data
			.byte $02, $00, $7c, $88	; $8f02: 02 00 7c 88	 Data
			.byte $94, $a0, $ac, $b8	; $8f06: 94 a0 ac b8	 Data
			.byte $c3, $cf, $db, $f1	; $8f0a: c3 cf db f1	 Data
			.byte $07, $17, $2b, $42	; $8f0e: 07 17 2b 42	 Data
			.byte $5a, $66, $78, $8a	; $8f12: 5a 66 78 8a	 Data
			.byte $96, $ae, $c6, $d2	; $8f16: 96 ae c6 d2	 Data
			.byte $dd, $f3, $09, $1f	; $8f1a: dd f3 09 1f	 Data
			.byte $35, $4a, $60, $6b	; $8f1e: 35 4a 60 6b	 Data
			.byte $7d, $8f, $a3, $b8	; $8f22: 7d 8f a3 b8	 Data
			.byte $ce, $e3, $f7, $0b	; $8f26: ce e3 f7 0b	 Data
			.byte $17, $23, $2f, $3a	; $8f2a: 17 23 2f 3a	 Data
			.byte $46, $52, $5e, $6a	; $8f2e: 46 52 5e 6a	 Data
			.byte $76, $82, $8e, $9a	; $8f32: 76 82 8e 9a	 Data
			.byte $a6, $b2, $be, $ca	; $8f36: a6 b2 be ca	 Data
			.byte $d6, $e2, $ee, $fa	; $8f3a: d6 e2 ee fa	 Data
			.byte $10, $26, $8f, $8f	; $8f3e: 10 26 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $8f42: 8f 8f 8f 8f	 Data
			.byte $8f, $8f, $8f, $8f	; $8f46: 8f 8f 8f 8f	 Data
			.byte $90, $90, $90, $90	; $8f4a: 90 90 90 90	 Data
			.byte $90, $90, $90, $90	; $8f4e: 90 90 90 90	 Data
			.byte $90, $90, $90, $90	; $8f52: 90 90 90 90	 Data
			.byte $90, $90, $91, $91	; $8f56: 90 90 91 91	 Data
			.byte $91, $91, $91, $91	; $8f5a: 91 91 91 91	 Data
			.byte $91, $91, $91, $91	; $8f5e: 91 91 91 91	 Data
			.byte $91, $91, $91, $92	; $8f62: 91 91 91 92	 Data
			.byte $92, $92, $92, $92	; $8f66: 92 92 92 92	 Data
			.byte $92, $92, $92, $92	; $8f6a: 92 92 92 92	 Data
			.byte $92, $92, $92, $92	; $8f6e: 92 92 92 92	 Data
			.byte $92, $92, $92, $92	; $8f72: 92 92 92 92	 Data
			.byte $92, $92, $92, $92	; $8f76: 92 92 92 92	 Data
			.byte $93, $93, $fe, $00	; $8f7a: 93 93 fe 00	 Data
			.byte $29, $2a, $33, $33	; $8f7e: 29 2a 33 33	 Data
			.byte $39, $39, $3b, $3b	; $8f82: 39 39 3b 3b	 Data
			.byte $00, $00, $fe, $00	; $8f86: 00 00 fe 00	 Data
			.byte $2b, $2c, $33, $33	; $8f8a: 2b 2c 33 33	 Data
			.byte $39, $39, $3b, $3b	; $8f8e: 39 39 3b 3b	 Data
			.byte $00, $00, $fe, $00	; $8f92: 00 00 fe 00	 Data
			.byte $4a, $2c, $33, $33	; $8f96: 4a 2c 33 33	 Data
			.byte $39, $39, $3b, $3b	; $8f9a: 39 39 3b 3b	 Data
			.byte $00, $00, $fe, $00	; $8f9e: 00 00 fe 00	 Data
			.byte $2b, $2a, $33, $33	; $8fa2: 2b 2a 33 33	 Data
			.byte $39, $39, $3b, $3b	; $8fa6: 39 39 3b 3b	 Data
			.byte $00, $00, $fe, $00	; $8faa: 00 00 fe 00	 Data
			.byte $2c, $00, $33, $33	; $8fae: 2c 00 33 33	 Data
			.byte $39, $39, $3b, $3b	; $8fb2: 39 39 3b 3b	 Data
			.byte $00, $00, $fe, $00	; $8fb6: 00 00 fe 00	 Data
			.byte $4a, $2c, $d6, $d6	; $8fba: 4a 2c d6 d6	 Data
			.byte $f3, $8f, $91, $94	; $8fbe: f3 8f 91 94	 Data
			.byte $00, $fe, $00, $4a	; $8fc2: 00 fe 00 4a	 Data
			.byte $2c, $33, $33, $39	; $8fc6: 2c 33 33 39	 Data
			.byte $39, $90, $91, $00	; $8fca: 39 90 91 00	 Data
			.byte $00, $fe, $00, $4a	; $8fce: 00 fe 00 4a	 Data
			.byte $2c, $d6, $d6, $8f	; $8fd2: 2c d6 d6 8f	 Data
			.byte $8f, $90, $8f, $00	; $8fd6: 8f 90 8f 00	 Data
			.byte $94, $f4, $00, $26	; $8fda: 94 f4 00 26	 Data
			.byte $27, $2d, $2e, $81	; $8fde: 27 2d 2e 81	 Data
			.byte $82, $86, $07, $3a	; $8fe2: 82 86 07 3a	 Data
			.byte $88, $35, $2e, $2d	; $8fe6: 88 35 2e 2d	 Data
			.byte $32, $8c, $8c, $2d	; $8fea: 32 8c 8c 2d	 Data
			.byte $32, $3c, $3d, $f4	; $8fee: 32 3c 3d f4	 Data
			.byte $00, $28, $00, $21	; $8ff2: 00 28 00 21	 Data
			.byte $00, $83, $05, $08	; $8ff6: 00 83 05 08	 Data
			.byte $87, $89, $8c, $8d	; $8ffa: 87 89 8c 8d	 Data
			.byte $81, $21, $86, $8c	; $8ffe: 81 21 86 8c	 Data
			.byte $8c, $92, $35, $3e	; $9002: 8c 92 35 3e	 Data
			.byte $3c, $fa, $00, $27	; $9006: 3c fa 00 27	 Data
			.byte $28, $8c, $8c, $82	; $900a: 28 8c 8c 82	 Data
			.byte $83, $07, $08, $88	; $900e: 83 07 08 88	 Data
			.byte $89, $32, $92, $3d	; $9012: 89 32 92 3d	 Data
			.byte $3e, $f6, $00, $26	; $9016: 3e f6 00 26	 Data
			.byte $27, $81, $82, $86	; $901a: 27 81 82 86	 Data
			.byte $07, $8c, $88, $84	; $901e: 07 8c 88 84	 Data
			.byte $32, $87, $2e, $8c	; $9022: 32 87 2e 8c	 Data
			.byte $8c, $3a, $32, $3c	; $9026: 8c 3a 32 3c	 Data
			.byte $3d, $f3, $00, $26	; $902a: 3d f3 00 26	 Data
			.byte $00, $2d, $28, $3a	; $902e: 00 2d 28 3a	 Data
			.byte $83, $84, $08, $09	; $9032: 83 84 08 09	 Data
			.byte $89, $2d, $8d, $35	; $9036: 89 2d 8d 35	 Data
			.byte $21, $3a, $8c, $8c	; $903a: 21 3a 8c 8c	 Data
			.byte $92, $2d, $3e, $3c	; $903e: 92 2d 3e 3c	 Data
			.byte $00, $00, $27, $28	; $9042: 00 00 27 28	 Data
			.byte $32, $21, $32, $2f	; $9046: 32 21 32 2f	 Data
			.byte $2e, $2f, $32, $38	; $904a: 2e 2f 32 38	 Data
			.byte $2e, $21, $32, $8d	; $904e: 2e 21 32 8d	 Data
			.byte $2e, $2f, $8c, $8c	; $9052: 2e 2f 8c 8c	 Data
			.byte $32, $92, $3d, $3e	; $9056: 32 92 3d 3e	 Data
			.byte $fe, $00, $26, $27	; $905a: fe 00 26 27	 Data
			.byte $2d, $2e, $35, $32	; $905e: 2d 2e 35 32	 Data
			.byte $3a, $32, $3c, $3d	; $9062: 3a 32 3c 3d	 Data
			.byte $f8, $00, $0a, $0b	; $9066: f8 00 0a 0b	 Data
			.byte $10, $11, $0c, $0d	; $906a: 10 11 0c 0d	 Data
			.byte $d5, $24, $16, $17	; $906e: d5 24 16 17	 Data
			.byte $1a, $24, $16, $1f	; $9072: 1a 24 16 1f	 Data
			.byte $22, $24, $f8, $00	; $9076: 22 24 f8 00	 Data
			.byte $04, $05, $08, $09	; $907a: 04 05 08 09	 Data
			.byte $0e, $0f, $1c, $25	; $907e: 0e 0f 1c 25	 Data
			.byte $18, $19, $23, $1d	; $9082: 18 19 23 1d	 Data
			.byte $18, $19, $1c, $25	; $9086: 18 19 1c 25	 Data
			.byte $fe, $00, $27, $28	; $908a: fe 00 27 28	 Data
			.byte $32	; $908e: 32			Data
PRG06_908f:
			.byte $21, $2e, $38, $32	; $908f: 21 2e 38 32	 Data
			.byte $2f, $3d, $3e, $0a	; $9093: 2f 3d 3e 0a	 Data
			.byte $0b, $10, $11, $0c	; $9097: 0b 10 11 0c	 Data
			.byte $0d, $d5, $24, $16	; $909b: 0d d5 24 16	 Data
			.byte $17, $1a, $24, $16	; $909f: 17 1a 24 16	 Data
			.byte $1f, $22, $24, $16	; $90a3: 1f 22 24 16	 Data
			.byte $17, $1a, $24, $16	; $90a7: 17 1a 24 16	 Data
			.byte $1f, $22, $24, $04	; $90ab: 1f 22 24 04	 Data
			.byte $05, $08, $09, $0e	; $90af: 05 08 09 0e	 Data
			.byte $0f, $1c, $25, $18	; $90b3: 0f 1c 25 18	 Data
			.byte $19, $23, $1d, $18	; $90b7: 19 23 1d 18	 Data
			.byte $19, $1c, $25, $18	; $90bb: 19 1c 25 18	 Data
			.byte $19, $1c, $25, $18	; $90bf: 19 1c 25 18	 Data
			.byte $19, $1c, $25, $fe	; $90c3: 19 1c 25 fe	 Data
			.byte $00, $28, $00, $2f	; $90c7: 00 28 00 2f	 Data
			.byte $30, $2f, $36, $2f	; $90cb: 30 2f 36 2f	 Data
			.byte $30, $3e, $00, $ff	; $90cf: 30 3e 00 ff	 Data
			.byte $00, $26, $31, $2d	; $90d3: 00 26 31 2d	 Data
			.byte $37, $2d, $31, $2d	; $90d7: 37 2d 31 2d	 Data
			.byte $00, $3c, $f4, $00	; $90db: 00 3c f4 00	 Data
			.byte $02, $03, $06, $07	; $90df: 02 03 06 07	 Data
			.byte $0c, $0d, $12, $13	; $90e3: 0c 0d 12 13	 Data
			.byte $00, $00, $29, $2a	; $90e7: 00 00 29 2a	 Data
			.byte $33, $33, $39, $39	; $90eb: 33 33 39 39	 Data
			.byte $3b, $3b, $00, $00	; $90ef: 3b 3b 00 00	 Data
			.byte $f4, $00, $04, $05	; $90f3: f4 00 04 05	 Data
			.byte $08, $09, $0e, $0f	; $90f7: 08 09 0e 0f	 Data
			.byte $14, $15, $00, $00	; $90fb: 14 15 00 00	 Data
			.byte $2b, $2c, $33, $33	; $90ff: 2b 2c 33 33	 Data
			.byte $39, $39, $3b, $3b	; $9103: 39 39 3b 3b	 Data
			.byte $00, $00, $f4, $00	; $9107: 00 00 f4 00	 Data
			.byte $26, $27, $3a, $32	; $910b: 26 27 3a 32	 Data
			.byte $2d, $2e, $35, $32	; $910f: 2d 2e 35 32	 Data
			.byte $2d, $2e, $81, $82	; $9113: 2d 2e 81 82	 Data
			.byte $86, $07, $8c, $88	; $9117: 86 07 8c 88	 Data
			.byte $93, $32, $3c, $3d	; $911b: 93 32 3c 3d	 Data
			.byte $f4, $00, $28, $00	; $911f: f4 00 28 00	 Data
			.byte $2f, $00, $2f, $00	; $9123: 2f 00 2f 00	 Data
			.byte $38, $03, $21, $07	; $9127: 38 03 21 07	 Data
			.byte $83, $8e, $08, $87	; $912b: 83 8e 08 87	 Data
			.byte $89, $8c, $92, $30	; $912f: 89 8c 92 30	 Data
			.byte $3e, $00, $f5, $00	; $9133: 3e 00 f5 00	 Data
			.byte $26, $00, $2d, $00	; $9137: 26 00 2d 00	 Data
			.byte $3a, $04, $35, $08	; $913b: 3a 04 35 08	 Data
			.byte $2d, $37, $45, $31	; $913f: 2d 37 45 31	 Data
			.byte $3a, $8c, $8c, $31	; $9143: 3a 8c 8c 31	 Data
			.byte $2d, $00, $3c, $f4	; $9147: 2d 00 3c f4	 Data
			.byte $00, $27, $28, $32	; $914b: 00 27 28 32	 Data
			.byte $21, $2e, $21, $32	; $914f: 21 2e 21 32	 Data
			.byte $38, $32, $2f, $2e	; $9153: 38 32 2f 2e	 Data
			.byte $38, $32, $2f, $8c	; $9157: 38 32 2f 8c	 Data
			.byte $8c, $2e, $92, $3d	; $915b: 8c 2e 92 3d	 Data
			.byte $3e, $ff, $00, $00	; $915f: 3e ff 00 00	 Data
			.byte $33, $33, $39, $39	; $9163: 33 33 39 39	 Data
			.byte $3b, $3b, $00, $00	; $9167: 3b 3b 00 00	 Data
			.byte $f8, $00, $02, $03	; $916b: f8 00 02 03	 Data
			.byte $06, $07, $0c, $0d	; $916f: 06 07 0c 0d	 Data
			.byte $bd, $1b, $1e, $1f	; $9173: bd 1b 1e 1f	 Data
			.byte $22, $1b, $1e, $1f	; $9177: 22 1b 1e 1f	 Data
			.byte $22, $1b, $f8, $00	; $917b: 22 1b f8 00	 Data
			.byte $04, $05, $08, $09	; $917f: 04 05 08 09	 Data
			.byte $0e, $0f, $23, $1d	; $9183: 0e 0f 23 1d	 Data
			.byte $20, $21, $23, $1d	; $9187: 20 21 23 1d	 Data
			.byte $18, $19, $1c, $25	; $918b: 18 19 1c 25	 Data
			.byte $f6, $00, $26, $27	; $918f: f6 00 26 27	 Data
			.byte $81, $82, $86, $07	; $9193: 81 82 86 07	 Data
			.byte $2d, $88, $45, $32	; $9197: 2d 88 45 32	 Data
			.byte $3a, $2e, $8c, $8c	; $919b: 3a 2e 8c 8c	 Data
			.byte $2d, $32, $3c, $3d	; $919f: 2d 32 3c 3d	 Data
			.byte $f5, $00, $02, $00	; $91a3: f5 00 02 00	 Data
			.byte $06, $00, $0c, $00	; $91a7: 06 00 0c 00	 Data
			.byte $12, $00, $00, $4a	; $91ab: 12 00 00 4a	 Data
			.byte $2c, $33, $33, $39	; $91af: 2c 33 33 39	 Data
			.byte $39, $90, $91, $00	; $91b3: 39 90 91 00	 Data
			.byte $00, $f4, $00, $03	; $91b7: 00 f4 00 03	 Data
			.byte $04, $07, $08, $0d	; $91bb: 04 07 08 0d	 Data
			.byte $0e, $88, $89, $88	; $91bf: 0e 88 89 88	 Data
			.byte $89, $88, $89, $88	; $91c3: 89 88 89 88	 Data
			.byte $89, $88, $89, $88	; $91c7: 89 88 89 88	 Data
			.byte $89, $95, $96, $f4	; $91cb: 89 95 96 f4	 Data
			.byte $00, $05, $00, $09	; $91cf: 00 05 00 09	 Data
			.byte $00, $0f, $00, $15	; $91d3: 00 0f 00 15	 Data
			.byte $f3, $00, $4a, $2c	; $91d7: f3 00 4a 2c	 Data
			.byte $33, $33, $39, $39	; $91db: 33 33 39 39	 Data
			.byte $90, $91, $00, $00	; $91df: 90 91 00 00	 Data
			.byte $02, $03, $06, $07	; $91e3: 02 03 06 07	 Data
			.byte $0c, $0d, $12, $13	; $91e7: 0c 0d 12 13	 Data
			.byte $f6, $00, $29, $2a	; $91eb: f6 00 29 2a	 Data
			.byte $33, $33, $39, $39	; $91ef: 33 33 39 39	 Data
			.byte $3b, $3b, $00, $00	; $91f3: 3b 3b 00 00	 Data
			.byte $04, $05, $08, $09	; $91f7: 04 05 08 09	 Data
			.byte $0e, $0f, $14, $15	; $91fb: 0e 0f 14 15	 Data
			.byte $f6, $00, $2b, $2c	; $91ff: f6 00 2b 2c	 Data
			.byte $33, $33, $39, $39	; $9203: 33 33 39 39	 Data
			.byte $3b, $3b, $00, $00	; $9207: 3b 3b 00 00	 Data
			.byte $fe, $00, $29, $2a	; $920b: fe 00 29 2a	 Data
			.byte $33, $33, $39, $39	; $920f: 33 33 39 39	 Data
			.byte $66, $67, $00, $00	; $9213: 66 67 00 00	 Data
			.byte $fe, $00, $2c, $4a	; $9217: fe 00 2c 4a	 Data
			.byte $33, $33, $39, $39	; $921b: 33 33 39 39	 Data
			.byte $68, $69, $00, $00	; $921f: 68 69 00 00	 Data
			.byte $fe, $00, $2c, $29	; $9223: fe 00 2c 29	 Data
			.byte $33, $33, $39, $39	; $9227: 33 33 39 39	 Data
			.byte $6a, $6b, $00, $00	; $922b: 6a 6b 00 00	 Data
			.byte $fe, $00, $2a, $2c	; $922f: fe 00 2a 2c	 Data
			.byte $33, $33, $39, $39	; $9233: 33 33 39 39	 Data
			.byte $6c, $f3, $00, $fe	; $9237: 6c f3 00 fe	 Data
			.byte $00, $4a, $2c, $33	; $923b: 00 4a 2c 33	 Data
			.byte $33, $39, $39, $6d	; $923f: 33 39 39 6d	 Data
			.byte $6e, $00, $7f, $fe	; $9243: 6e 00 7f fe	 Data
			.byte $00, $4a, $2c, $33	; $9247: 00 4a 2c 33	 Data
			.byte $33, $39, $39, $6f	; $924b: 33 39 39 6f	 Data
			.byte $70, $7f, $80, $fe	; $924f: 70 7f 80 fe	 Data
			.byte $00, $29, $2a, $33	; $9253: 00 29 2a 33	 Data
			.byte $33, $39, $39, $71	; $9257: 33 39 39 71	 Data
			.byte $72, $80, $80, $fe	; $925b: 72 80 80 fe	 Data
			.byte $00, $2c, $29, $33	; $925f: 00 2c 29 33	 Data
			.byte $33, $39, $39, $73	; $9263: 33 39 39 73	 Data
			.byte $74, $80, $80, $fe	; $9267: 74 80 80 fe	 Data
			.byte $00, $2a, $2c, $33	; $926b: 00 2a 2c 33	 Data
			.byte $33, $39, $39, $75	; $926f: 33 39 39 75	 Data
			.byte $76, $80, $80, $fe	; $9273: 76 80 80 fe	 Data
			.byte $00, $2c, $29, $30	; $9277: 00 2c 29 30	 Data
			.byte $31, $0e, $0f, $73	; $927b: 31 0e 0f 73	 Data
			.byte $74, $80, $80, $fe	; $927f: 74 80 80 fe	 Data
			.byte $00, $2a, $2c, $30	; $9283: 00 2a 2c 30	 Data
			.byte $31, $0c, $0d, $75	; $9287: 31 0c 0d 75	 Data
			.byte $76, $80, $80, $fe	; $928b: 76 80 80 fe	 Data
			.byte $00, $29, $2a, $33	; $928f: 00 29 2a 33	 Data
			.byte $33, $39, $39, $74	; $9293: 33 39 39 74	 Data
			.byte $74, $80, $80, $fe	; $9297: 74 80 80 fe	 Data
			.byte $00, $2c, $29, $33	; $929b: 00 2c 29 33	 Data
			.byte $33, $39, $39, $74	; $929f: 33 39 39 74	 Data
			.byte $74, $80, $80, $fe	; $92a3: 74 80 80 fe	 Data
			.byte $00, $2a, $2c, $33	; $92a7: 00 2a 2c 33	 Data
			.byte $33, $39, $39, $74	; $92ab: 33 39 39 74	 Data
			.byte $74, $80, $80, $fe	; $92af: 74 80 80 fe	 Data
			.byte $00, $4a, $2c, $33	; $92b3: 00 4a 2c 33	 Data
			.byte $33, $39, $39, $77	; $92b7: 33 39 39 77	 Data
			.byte $78, $80, $7f, $fe	; $92bb: 78 80 7f fe	 Data
			.byte $00, $4a, $2c, $33	; $92bf: 00 4a 2c 33	 Data
			.byte $33, $39, $39, $79	; $92c3: 33 39 39 79	 Data
			.byte $7a, $7f, $00, $fe	; $92c7: 7a 7f 00 fe	 Data
			.byte $00, $29, $2a, $33	; $92cb: 00 29 2a 33	 Data
			.byte $33, $39, $39, $00	; $92cf: 33 39 39 00	 Data
			.byte $6b, $00, $00, $fe	; $92d3: 6b 00 00 fe	 Data
			.byte $00, $2c, $4a, $33	; $92d7: 00 2c 4a 33	 Data
			.byte $33, $39, $39, $6b	; $92db: 33 39 39 6b	 Data
			.byte $6a, $00, $00, $fe	; $92df: 6a 00 00 fe	 Data
			.byte $00, $2c, $29, $33	; $92e3: 00 2c 29 33	 Data
			.byte $33, $39, $39, $69	; $92e7: 33 39 39 69	 Data
			.byte $68, $00, $00, $fe	; $92eb: 68 00 00 fe	 Data
			.byte $00, $2a, $2c, $33	; $92ef: 00 2a 2c 33	 Data
			.byte $33, $39, $39, $67	; $92f3: 33 39 39 67	 Data
			.byte $66, $00, $00, $f4	; $92f7: 66 00 00 f4	 Data
			.byte $00, $0a, $0b, $10	; $92fb: 00 0a 0b 10	 Data
			.byte $11, $0c, $0d, $d5	; $92ff: 11 0c 0d d5	 Data
			.byte $24, $16, $17, $1a	; $9303: 24 16 17 1a	 Data
			.byte $24, $16, $1f, $22	; $9307: 24 16 1f 22	 Data
			.byte $24, $16, $17, $1a	; $930b: 24 16 17 1a	 Data
			.byte $24, $f4, $00, $04	; $930f: 24 f4 00 04	 Data
			.byte $05, $08, $09, $0e	; $9313: 05 08 09 0e	 Data
			.byte $0f, $1c, $25, $18	; $9317: 0f 1c 25 18	 Data
			.byte $19, $23, $1d, $18	; $931b: 19 23 1d 18	 Data
			.byte $19, $1c, $25, $18	; $931f: 19 1c 25 18	 Data
			.byte $19, $1c, $25, $ff	; $9323: 19 1c 25 ff	 Data
			.byte $00, $00, $33, $33	; $9327: 00 00 33 33	 Data
			.byte $39, $39, $90, $91	; $932b: 39 39 90 91	 Data
			.byte $00, $00, $01, $01	; $932f: 00 00 01 01	 Data
			.byte $01, $01, $01, $01	; $9333: 01 01 01 01	 Data
			.byte $02, $03, $04, $05	; $9337: 02 03 04 05	 Data
			.byte $05, $06, $03, $02	; $933b: 05 06 03 02	 Data
			.byte $05, $05, $03, $07	; $933f: 05 05 03 07	 Data
			.byte $01, $01, $01, $01	; $9343: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9347: 01 01 01 01	 Data
			.byte $01, $01, $05, $05	; $934b: 01 01 05 05	 Data
			.byte $02, $08, $05, $05	; $934f: 02 08 05 05	 Data
			.byte $01, $01, $01, $01	; $9353: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9357: 01 01 01 01	 Data
			.byte $09, $05, $05, $07	; $935b: 09 05 05 07	 Data
			.byte $0a, $0a, $05, $05	; $935f: 0a 0a 05 05	 Data
			.byte $08, $05, $06, $08	; $9363: 08 05 06 08	 Data
			.byte $01, $01, $16, $01	; $9367: 01 01 16 01	 Data
			.byte $01, $01, $01, $05	; $936b: 01 01 01 05	 Data
			.byte $05, $02, $03, $03	; $936f: 05 02 03 03	 Data
			.byte $0b, $08, $01, $01	; $9373: 0b 08 01 01	 Data
			.byte $01, $01, $01, $01	; $9377: 01 01 01 01	 Data
			.byte $03, $03, $03, $0c	; $937b: 03 03 03 0c	 Data
			.byte $03, $03, $03, $08	; $937f: 03 03 03 08	 Data
			.byte $02, $03, $03, $01	; $9383: 02 03 03 01	 Data
			.byte $01, $01, $0a, $05	; $9387: 01 01 0a 05	 Data
			.byte $05, $0a, $05, $05	; $938b: 05 0a 05 05	 Data
			.byte $01, $01, $16, $01	; $938f: 01 01 16 01	 Data
			.byte $01, $01, $01, $01	; $9393: 01 01 01 01	 Data
			.byte $01, $01, $01, $02	; $9397: 01 01 01 02	 Data
			.byte $0d, $04, $05, $06	; $939b: 0d 04 05 06	 Data
			.byte $0b, $08, $01, $01	; $939f: 0b 08 01 01	 Data
			.byte $03, $03, $03, $0c	; $93a3: 03 03 03 0c	 Data
			.byte $03, $01, $01, $01	; $93a7: 03 01 01 01	 Data
			.byte $05, $05, $01, $0e	; $93ab: 05 05 01 0e	 Data
			.byte $05, $0f, $01, $0a	; $93af: 05 0f 01 0a	 Data
			.byte $05, $05, $01, $09	; $93b3: 05 05 01 09	 Data
			.byte $05, $05, $07, $01	; $93b7: 05 05 07 01	 Data
			.byte $10, $05, $05, $0a	; $93bb: 10 05 05 0a	 Data
			.byte $11, $01, $17, $01	; $93bf: 11 01 17 01	 Data
			.byte $01, $01, $01, $01	; $93c3: 01 01 01 01	 Data
			.byte $05, $05, $01, $01	; $93c7: 05 05 01 01	 Data
			.byte $05, $05, $01, $0e	; $93cb: 05 05 01 0e	 Data
			.byte $05, $0f, $02, $12	; $93cf: 05 0f 02 12	 Data
			.byte $05, $05, $12, $03	; $93d3: 05 05 12 03	 Data
			.byte $13, $14, $0b, $03	; $93d7: 13 14 0b 03	 Data
			.byte $12, $05, $05, $14	; $93db: 12 05 05 14	 Data
			.byte $03, $0d, $03, $05	; $93df: 03 0d 03 05	 Data
			.byte $05, $05, $05, $05	; $93e3: 05 05 05 05	 Data
			.byte $05, $05, $03, $03	; $93e7: 05 05 03 03	 Data
			.byte $05, $05, $13, $15	; $93eb: 05 05 13 15	 Data
			.byte $05, $0d, $03, $03	; $93ef: 05 0d 03 03	 Data
			.byte $0b, $08, $01, $01	; $93f3: 0b 08 01 01	 Data
			.byte $01, $01, $27, $31	; $93f7: 01 01 27 31	 Data
			.byte $36, $3b, $40, $45	; $93fb: 36 3b 40 45	 Data
			.byte $4a, $4f, $54, $59	; $93ff: 4a 4f 54 59	 Data
			.byte $5e, $63, $68, $6d	; $9403: 5e 63 68 6d	 Data
			.byte $72, $77, $7c, $81	; $9407: 72 77 7c 81	 Data
			.byte $86, $8b, $90, $2c	; $940b: 86 8b 90 2c	 Data
			.byte $2c, $94, $94, $94	; $940f: 2c 94 94 94	 Data
			.byte $94, $94, $94, $94	; $9413: 94 94 94 94	 Data
			.byte $94, $94, $94, $94	; $9417: 94 94 94 94	 Data
			.byte $94, $94, $94, $94	; $941b: 94 94 94 94	 Data
			.byte $94, $94, $94, $94	; $941f: 94 94 94 94	 Data
			.byte $94, $94, $94, $94	; $9423: 94 94 94 94	 Data
			.byte $22, $55, $55, $aa	; $9427: 22 55 55 aa	 Data
			.byte $5a, $2f, $55, $55	; $942b: 5a 2f 55 55	 Data
			.byte $aa, $5a, $22, $55	; $942f: aa 5a 22 55	 Data
			.byte $55, $9a, $55, $22	; $9433: 55 9a 55 22	 Data
			.byte $55, $55, $aa, $55	; $9437: 55 55 aa 55	 Data
			.byte $22, $55, $55, $56	; $943b: 22 55 55 56	 Data
			.byte $55, $22, $55, $55	; $943f: 55 22 55 55	 Data
			.byte $55, $55, $22, $55	; $9443: 55 55 22 55	 Data
			.byte $55, $59, $55, $22	; $9447: 55 59 55 22	 Data
			.byte $55, $55, $9a, $59	; $944b: 55 55 9a 59	 Data
			.byte $22, $55, $55, $6a	; $944f: 22 55 55 6a	 Data
			.byte $55, $22, $55, $55	; $9453: 55 22 55 55	 Data
			.byte $6a, $56, $22, $55	; $9457: 6a 56 22 55	 Data
			.byte $55, $a5, $5a, $22	; $945b: 55 a5 5a 22	 Data
			.byte $55, $55, $66, $55	; $945f: 55 55 66 55	 Data
			.byte $22, $55, $55, $5a	; $9463: 22 55 55 5a	 Data
			.byte $55, $22, $55, $55	; $9467: 55 22 55 55	 Data
			.byte $99, $55, $22, $55	; $946b: 99 55 22 55	 Data
			.byte $55, $66, $56, $22	; $946f: 55 66 56 22	 Data
			.byte $55, $55, $99, $59	; $9473: 55 55 99 59	 Data
			.byte $22, $55, $55, $a6	; $9477: 22 55 55 a6	 Data
			.byte $5a, $22, $55, $55	; $947b: 5a 22 55 55	 Data
			.byte $a9, $5a, $22, $55	; $947f: a9 5a 22 55	 Data
			.byte $55, $a5, $55, $22	; $9483: 55 a5 55 22	 Data
			.byte $55, $55, $a6, $55	; $9487: 55 55 a6 55	 Data
			.byte $22, $55, $55, $a9	; $948b: 22 55 55 a9	 Data
			.byte $55, $22, $55, $55	; $948f: 55 22 55 55	 Data
			.byte $65, $55, $01, $02	; $9493: 65 55 01 02	 Data
			.byte $01, $02, $01, $03	; $9497: 01 02 01 03	 Data
			.byte $01, $02, $01, $02	; $949b: 01 02 01 02	 Data
			.byte $01, $03, $01, $03	; $949f: 01 03 01 03	 Data
			.byte $01, $04, $05, $02	; $94a3: 01 04 05 02	 Data
			.byte $01, $03, $01, $02	; $94a7: 01 03 01 02	 Data
			.byte $06, $02, $07, $02	; $94ab: 06 02 07 02	 Data
			.byte $08, $02, $09, $02	; $94af: 08 02 09 02	 Data
			.byte $0a, $02, $01, $04	; $94b3: 0a 02 01 04	 Data
			.byte $01, $03, $01, $04	; $94b7: 01 03 01 04	 Data
			.byte $01, $02, $05, $02	; $94bb: 01 02 05 02	 Data
			.byte $01, $0b, $01, $03	; $94bf: 01 0b 01 03	 Data
			.byte $01, $0c, $00, $01	; $94c3: 01 0c 00 01	 Data
			.byte $0d, $0a, $0d, $01	; $94c7: 0d 0a 0d 01	 Data
			.byte $0e, $0f, $10, $11	; $94cb: 0e 0f 10 11	 Data
			.byte $0d, $01, $12, $01	; $94cf: 0d 01 12 01	 Data
			.byte $0d, $0a, $02, $01	; $94d3: 0d 0a 02 01	 Data
			.byte $02, $01, $02, $0a	; $94d7: 02 01 02 0a	 Data
			.byte $02, $13, $14, $01	; $94db: 02 13 14 01	 Data
			.byte $02, $0a, $02, $13	; $94df: 02 0a 02 13	 Data
			.byte $15, $16, $02, $01	; $94e3: 15 16 02 01	 Data
			.byte $0d, $07, $02, $01	; $94e7: 0d 07 02 01	 Data
			.byte $03, $01, $09, $01	; $94eb: 03 01 09 01	 Data
			.byte $09, $01, $03, $05	; $94ef: 09 01 03 05	 Data
			.byte $03, $01, $17, $01	; $94f3: 03 01 17 01	 Data
			.byte $04, $01, $02, $18	; $94f7: 04 01 02 18	 Data
			.byte $19, $01, $1a, $1b	; $94fb: 19 01 1a 1b	 Data
			.byte $1c, $1d, $1e, $1f	; $94ff: 1c 1d 1e 1f	 Data
			.byte $20, $21, $04, $00	; $9503: 20 21 04 00	 Data
			.byte $01, $02, $07, $02	; $9507: 01 02 07 02	 Data
			.byte $0a, $02, $01, $02	; $950b: 0a 02 01 02	 Data
			.byte $22, $14, $0a, $03	; $950f: 22 14 0a 03	 Data
			.byte $13, $14, $01, $03	; $9513: 13 14 01 03	 Data
			.byte $01, $0d, $01, $0d	; $9517: 01 0d 01 0d	 Data
			.byte $06, $0d, $23, $24	; $951b: 06 0d 23 24	 Data
			.byte $25, $26, $0a, $27	; $951f: 25 26 0a 27	 Data
			.byte $13, $24, $28, $29	; $9523: 13 24 28 29	 Data
			.byte $01, $27, $01, $0d	; $9527: 01 27 01 0d	 Data
			.byte $0a, $0d, $05, $0d	; $952b: 0a 0d 05 0d	 Data
			.byte $0a, $2a, $2a, $0d	; $952f: 0a 2a 2a 0d	 Data
			.byte $0a, $0d, $05, $0d	; $9533: 0a 0d 05 0d	 Data
			.byte $01, $04, $01, $04	; $9537: 01 04 01 04	 Data
			.byte $2b, $02, $01, $02	; $953b: 2b 02 01 02	 Data
			.byte $2c, $2d, $01, $2e	; $953f: 2c 2d 01 2e	 Data
			.byte $16, $2f, $30, $02	; $9543: 16 2f 30 02	 Data
			.byte $01, $02, $07, $03	; $9547: 01 02 07 03	 Data
			.byte $01, $03, $07, $02	; $954b: 01 03 07 02	 Data
			.byte $31, $32, $0a, $02	; $954f: 31 32 0a 02	 Data
			.byte $33, $34, $01, $02	; $9553: 33 34 01 02	 Data
			.byte $00, $01, $0d, $0a	; $9557: 00 01 0d 0a	 Data
			.byte $35, $0f, $36, $21	; $955b: 35 0f 36 21	 Data
			.byte $27, $01, $0d, $0a	; $955f: 27 01 0d 0a	 Data
			.byte $0d, $01, $0d, $01	; $9563: 0d 01 0d 01	 Data
			.byte $0d, $01, $0d, $06	; $9567: 0d 01 0d 06	 Data
			.byte $0d, $01, $05, $01	; $956b: 0d 01 05 01	 Data
			.byte $0d, $01, $37, $38	; $956f: 0d 01 37 38	 Data
			.byte $0d, $13, $39, $13	; $9573: 0d 13 39 13	 Data
			.byte $39, $01, $3a, $01	; $9577: 39 01 3a 01	 Data
			.byte $3b, $3c, $3d, $0f	; $957b: 3b 3c 3d 0f	 Data
			.byte $3e, $21, $02, $31	; $957f: 3e 21 02 31	 Data
			.byte $32, $01, $3f, $38	; $9583: 32 01 3f 38	 Data
			.byte $03, $40, $02, $25	; $9587: 03 40 02 25	 Data
			.byte $41, $01, $02, $0a	; $958b: 41 01 02 0a	 Data
			.byte $02, $0a, $02, $42	; $958f: 02 0a 02 42	 Data
			.byte $43, $44, $45, $44	; $9593: 43 44 45 44	 Data
			.byte $45, $28, $29, $13	; $9597: 45 28 29 13	 Data
			.byte $24, $01, $27, $13	; $959b: 24 01 27 13	 Data
			.byte $39, $0a, $0d, $01	; $959f: 39 0a 0d 01	 Data
			.byte $0d, $46, $47, $13	; $95a3: 0d 46 47 13	 Data
			.byte $24, $01, $02, $01	; $95a7: 24 01 02 01	 Data
			.byte $02, $06, $02, $01	; $95ab: 02 06 02 01	 Data
			.byte $48, $01, $49, $38	; $95af: 48 01 49 38	 Data
			.byte $02, $13, $14, $13	; $95b3: 02 13 14 13	 Data
			.byte $14, $00, $01, $02	; $95b7: 14 00 01 02	 Data
			.byte $01, $02, $01, $02	; $95bb: 01 02 01 02	 Data
			.byte $01, $02, $13, $4a	; $95bf: 01 02 13 4a	 Data
			.byte $13, $14, $01, $02	; $95c3: 13 14 01 02	 Data
			.byte $07, $02, $01, $25	; $95c7: 07 02 01 25	 Data
			.byte $26, $0d, $0a, $0d	; $95cb: 26 0d 0a 0d	 Data
			.byte $4b, $4c, $4d, $4e	; $95cf: 4b 4c 4d 4e	 Data
			.byte $4f, $0d, $01, $0d	; $95d3: 4f 0d 01 0d	 Data
			.byte $50, $51, $01, $02	; $95d7: 50 51 01 02	 Data
			.byte $0a, $02, $52, $03	; $95db: 0a 02 52 03	 Data
			.byte $01, $53, $01, $02	; $95df: 01 53 01 02	 Data
			.byte $05, $02, $01, $03	; $95e3: 05 02 01 03	 Data
			.byte $01, $0b, $01, $49	; $95e7: 01 0b 01 49	 Data
			.byte $38, $02, $06, $02	; $95eb: 38 02 06 02	 Data
			.byte $54, $55, $56, $02	; $95ef: 54 55 56 02	 Data
			.byte $2b, $02, $57, $58	; $95f3: 2b 02 57 58	 Data
			.byte $59, $03, $0a, $02	; $95f7: 59 03 0a 02	 Data
			.byte $08, $02, $5a, $02	; $95fb: 08 02 5a 02	 Data
			.byte $5b, $03, $2a, $02	; $95ff: 5b 03 2a 02	 Data
			.byte $09, $02, $54, $55	; $9603: 09 02 54 55	 Data
			.byte $56, $02, $01, $0d	; $9607: 56 02 01 0d	 Data
			.byte $2b, $27, $07, $27	; $960b: 2b 27 07 27	 Data
			.byte $06, $27, $54, $55	; $960f: 06 27 54 55	 Data
			.byte $56, $35, $0f, $36	; $9613: 56 35 0f 36	 Data
			.byte $5c, $0d, $01, $02	; $9617: 5c 0d 01 02	 Data
			.byte $5d, $14, $1a, $02	; $961b: 5d 14 1a 02	 Data
			.byte $54, $55, $56, $02	; $961f: 54 55 56 02	 Data
			.byte $0a, $19, $01, $54	; $9623: 0a 19 01 54	 Data
			.byte $55, $56, $00, $e4	; $9627: 55 56 00 e4	 Data
			.byte $f2, $00, $0f, $21	; $962b: f2 00 0f 21	 Data
			.byte $33, $45, $55, $63	; $962f: 33 45 55 63	 Data
			.byte $71, $80, $8e, $a2	; $9633: 71 80 8e a2	 Data
			.byte $b0, $c2, $d0, $de	; $9637: b0 c2 d0 de	 Data
			.byte $ee, $04, $12, $20	; $963b: ee 04 12 20	 Data
			.byte $2e, $3c, $50, $5e	; $963f: 2e 3c 50 5e	 Data
			.byte $6c, $7a, $88, $96	; $9643: 6c 7a 88 96	 Data
			.byte $a4, $b2, $c0, $ce	; $9647: a4 b2 c0 ce	 Data
			.byte $dc, $f0, $06, $14	; $964b: dc f0 06 14	 Data
			.byte $22, $30, $3f, $51	; $964f: 22 30 3f 51	 Data
			.byte $63, $71, $85, $99	; $9653: 63 71 85 99	 Data
			.byte $ad, $bb, $cd, $df	; $9657: ad bb cd df	 Data
			.byte $ed, $fb, $13, $2b	; $965b: ed fb 13 2b	 Data
			.byte $39, $47, $5a, $6b	; $965f: 39 47 5a 6b	 Data
			.byte $7a, $8a, $9c, $ae	; $9663: 7a 8a 9c ae	 Data
			.byte $bc, $cb, $de, $f0	; $9667: bc cb de f0	 Data
			.byte $fe, $0e, $1e, $30	; $966b: fe 0e 1e 30	 Data
			.byte $42, $54, $65, $7b	; $966f: 42 54 65 7b	 Data
			.byte $8d, $9c, $ab, $b9	; $9673: 8d 9c ab b9	 Data
			.byte $cb, $d9, $ef, $05	; $9677: cb d9 ef 05	 Data
			.byte $1b, $29, $39, $47	; $967b: 1b 29 39 47	 Data
			.byte $55, $63, $71, $7f	; $967f: 55 63 71 7f	 Data
			.byte $8d, $9f, $af, $bf	; $9683: 8d 9f af bf	 Data
			.byte $96, $96, $97, $97	; $9687: 96 96 97 97	 Data
			.byte $97, $97, $97, $97	; $968b: 97 97 97 97	 Data
			.byte $97, $97, $97, $97	; $968f: 97 97 97 97	 Data
			.byte $97, $97	; $9693: 97 97		 Data
PRG06_9695:
			.byte $97, $97, $97, $97	; $9695: 97 97 97 97	 Data
			.byte $98, $98, $98, $98	; $9699: 98 98 98 98	 Data
			.byte $98, $98, $98, $98	; $969d: 98 98 98 98	 Data
			.byte $98, $98, $98, $98	; $96a1: 98 98 98 98	 Data
			.byte $98, $98, $98, $98	; $96a5: 98 98 98 98	 Data
			.byte $98, $99, $99, $99	; $96a9: 98 99 99 99	 Data
			.byte $99, $99, $99, $99	; $96ad: 99 99 99 99	 Data
			.byte $99, $99, $99, $99	; $96b1: 99 99 99 99	 Data
			.byte $99, $99, $99, $99	; $96b5: 99 99 99 99	 Data
			.byte $99, $9a, $9a, $9a	; $96b9: 99 9a 9a 9a	 Data
			.byte $9a, $9a, $9a, $9a	; $96bd: 9a 9a 9a 9a	 Data
			.byte $9a, $9a, $9a, $9a	; $96c1: 9a 9a 9a 9a	 Data
			.byte $9a, $9a, $9a, $9a	; $96c5: 9a 9a 9a 9a	 Data
			.byte $9b, $9b, $9b, $9b	; $96c9: 9b 9b 9b 9b	 Data
			.byte $9b, $9b, $9b, $9b	; $96cd: 9b 9b 9b 9b	 Data
			.byte $9b, $9b, $9b, $9b	; $96d1: 9b 9b 9b 9b	 Data
			.byte $9b, $9b, $9c, $9c	; $96d5: 9b 9b 9c 9c	 Data
			.byte $9c, $9c, $9c, $9c	; $96d9: 9c 9c 9c 9c	 Data
			.byte $9c, $9c, $9c, $9c	; $96dd: 9c 9c 9c 9c	 Data
			.byte $9c, $9c, $9c, $fc	; $96e1: 9c 9c 9c fc	 Data
			.byte $00, $10, $11, $54	; $96e5: 00 10 11 54	 Data
			.byte $55, $8a, $8b, $9a	; $96e9: 55 8a 8b 9a	 Data
			.byte $9b, $aa, $ab, $3b	; $96ed: 9b aa ab 3b	 Data
			.byte $bb, $fc, $00, $10	; $96f1: bb fc 00 10	 Data
			.byte $11, $56, $57, $8c	; $96f5: 11 56 57 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $96f9: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $fb	; $96fd: ad bc 3b fb	 Data
			.byte $00, $4d, $10, $4e	; $9701: 00 4d 10 4e	 Data
			.byte $56, $5e, $8c, $8d	; $9705: 56 5e 8c 8d	 Data
			.byte $9c, $9d, $ac, $ad	; $9709: 9c 9d ac ad	 Data
			.byte $bc, $3b, $f8, $00	; $970d: bc 3b f8 00	 Data
			.byte $6e, $6f, $7e, $7f	; $9711: 6e 6f 7e 7f	 Data
			.byte $8e, $8f, $9e, $9f	; $9715: 8e 8f 9e 9f	 Data
			.byte $8c	; $9719: 8c			Data
PRG06_971a:
			.byte $8d, $9c, $9d, $ac	; $971a: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $f8	; $971e: ad bc 3b f8	 Data
			.byte $00, $66, $67, $76	; $9722: 00 66 67 76	 Data
			.byte $77, $88, $89, $98	; $9726: 77 88 89 98	 Data
			.byte $99, $88, $89, $98	; $972a: 99 88 89 98	 Data
			.byte $99, $88, $89, $98	; $972e: 99 88 89 98	 Data
			.byte $99, $f8, $00, $6e	; $9732: 99 f8 00 6e	 Data
			.byte $6f, $7e, $7f, $8e	; $9736: 6f 7e 7f 8e	 Data
			.byte $8f, $9e, $9f, $8a	; $973a: 8f 9e 9f 8a	 Data
			.byte $8b, $9a, $9b, $aa	; $973e: 8b 9a 9b aa	 Data
			.byte $ab, $3b, $bb, $fa	; $9742: ab 3b bb fa	 Data
			.byte $00, $6e, $6f, $7e	; $9746: 00 6e 6f 7e	 Data
			.byte $7f, $4b, $4c, $5b	; $974a: 7f 4b 4c 5b	 Data
			.byte $5c, $9a, $9b, $aa	; $974e: 5c 9a 9b aa	 Data
			.byte $ab, $3b, $bb, $fc	; $9752: ab 3b bb fc	 Data
			.byte $00, $58, $59, $88	; $9756: 00 58 59 88	 Data
			.byte $89, $88, $89, $98	; $975a: 89 88 89 98	 Data
			.byte $99, $88, $89, $98	; $975e: 99 88 89 98	 Data
			.byte $99, $fc, $00, $66	; $9762: 99 fc 00 66	 Data
			.byte $67, $76, $77, $88	; $9766: 67 76 77 88	 Data
			.byte $89, $98, $99, $88	; $976a: 89 98 99 88	 Data
			.byte $89, $98, $99, $fb	; $976e: 89 98 99 fb	 Data
			.byte $00, $4d, $10, $4e	; $9772: 00 4d 10 4e	 Data
			.byte $54, $5e, $8a, $8b	; $9776: 54 5e 8a 8b	 Data
			.byte $9a, $9b, $aa, $ab	; $977a: 9a 9b aa ab	 Data
			.byte $3b, $bb, $fc, $00	; $977e: 3b bb fc 00	 Data
			.byte $10, $11, $56, $57	; $9782: 10 11 56 57	 Data
			.byte $66, $67, $76, $77	; $9786: 66 67 76 77	 Data
			.byte $88, $89, $98, $99	; $978a: 88 89 98 99	 Data
			.byte $f6	; $978e: f6			Data
PRG06_978f:
			.byte $00, $6e, $6f, $7e	; $978f: 00 6e 6f 7e	 Data
			.byte $7f, $8e, $8f, $4b	; $9793: 7f 8e 8f 4b	 Data
			.byte $4c, $5b, $5c, $8c	; $9797: 4c 5b 5c 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $979b: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $fc	; $979f: ad bc 3b fc	 Data
			.byte $00, $10, $11, $54	; $97a3: 00 10 11 54	 Data
			.byte $55, $8c, $8d, $9c	; $97a7: 55 8c 8d 9c	 Data
			.byte $9d, $ac, $ad, $bc	; $97ab: 9d ac ad bc	 Data
			.byte $3b, $f8, $00, $6e	; $97af: 3b f8 00 6e	 Data
			.byte $6f, $7e, $7f, $8e	; $97b3: 6f 7e 7f 8e	 Data
			.byte $8f, $9e, $9f, $8c	; $97b7: 8f 9e 9f 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $97bb: 8d 9c 9d ac	 Data
			.byte $ad, $0a, $0b, $fc	; $97bf: ad 0a 0b fc	 Data
			.byte $00, $10, $11, $54	; $97c3: 00 10 11 54	 Data
			.byte $55, $8a, $8b, $9a	; $97c7: 55 8a 8b 9a	 Data
			.byte $9b, $02, $03, $12	; $97cb: 9b 02 03 12	 Data
			.byte $13, $fc, $00, $10	; $97cf: 13 fc 00 10	 Data
			.byte $11, $56, $57, $8c	; $97d3: 11 56 57 8c	 Data
			.byte $8d, $9c, $9d, $04	; $97d7: 8d 9c 9d 04	 Data
			.byte $05, $14, $15, $fa	; $97db: 05 14 15 fa	 Data
			.byte $00, $6e, $6f, $7e	; $97df: 00 6e 6f 7e	 Data
			.byte $7f, $4b, $4c, $5b	; $97e3: 7f 4b 4c 5b	 Data
			.byte $5c, $9a, $9b, $aa	; $97e7: 5c 9a 9b aa	 Data
			.byte $ab, $1a, $1b, $f4	; $97eb: ab 1a 1b f4	 Data
			.byte $00, $66, $67, $76	; $97ef: 00 66 67 76	 Data
			.byte $77, $88, $89, $98	; $97f3: 77 88 89 98	 Data
			.byte $99, $88, $89, $98	; $97f7: 99 88 89 98	 Data
			.byte $99, $88, $89, $98	; $97fb: 99 88 89 98	 Data
			.byte $99	; $97ff: 99			Data
PRG06_9800:
			.byte $88, $89, $98, $99	; $9800: 88 89 98 99	 Data
			.byte $fc, $00, $10, $11	; $9804: fc 00 10 11	 Data
			.byte $54, $55, $8a, $8b	; $9808: 54 55 8a 8b	 Data
			.byte $9a, $9b, $34, $35	; $980c: 9a 9b 34 35	 Data
			.byte $44, $45, $fc, $00	; $9810: 44 45 fc 00	 Data
			.byte $10, $11, $56, $57	; $9814: 10 11 56 57	 Data
			.byte $8c, $8d, $9c, $9d	; $9818: 8c 8d 9c 9d	 Data
			.byte $36, $ba, $46, $bd	; $981c: 36 ba 46 bd	 Data
			.byte $fc, $00, $20, $21	; $9820: fc 00 20 21	 Data
			.byte $30, $31, $8c, $8d	; $9824: 30 31 8c 8d	 Data
			.byte $9c, $9d, $36, $ba	; $9828: 9c 9d 36 ba	 Data
			.byte $46, $bd, $fc, $00	; $982c: 46 bd fc 00	 Data
			.byte $22, $23, $32, $33	; $9830: 22 23 32 33	 Data
			.byte $8a, $8b, $9a, $9b	; $9834: 8a 8b 9a 9b	 Data
			.byte $aa, $ab, $3b, $bb	; $9838: aa ab 3b bb	 Data
			.byte $f6, $00, $6e, $6f	; $983c: f6 00 6e 6f	 Data
			.byte $8e, $8f, $7e, $7f	; $9840: 8e 8f 7e 7f	 Data
			.byte $8e, $8f, $9e, $9f	; $9844: 8e 8f 9e 9f	 Data
			.byte $8c, $8d, $9c, $9d	; $9848: 8c 8d 9c 9d	 Data
			.byte $ac, $ad, $bc, $3b	; $984c: ac ad bc 3b	 Data
			.byte $fc, $00, $10, $11	; $9850: fc 00 10 11	 Data
			.byte $54, $55, $58, $59	; $9854: 54 55 58 59	 Data
			.byte $98, $99, $88, $89	; $9858: 98 99 88 89	 Data
			.byte $98, $99, $fc, $00	; $985c: 98 99 fc 00	 Data
			.byte $10, $11, $56, $57	; $9860: 10 11 56 57	 Data
			.byte $58, $59, $98, $99	; $9864: 58 59 98 99	 Data
			.byte $88, $89, $98, $99	; $9868: 88 89 98 99	 Data
			.byte $fc, $00, $58, $59	; $986c: fc 00 58 59	 Data
			.byte $98, $99, $88, $89	; $9870: 98 99 88 89	 Data
			.byte $98, $99, $88, $89	; $9874: 98 99 88 89	 Data
			.byte $98, $99, $fc, $00	; $9878: 98 99 fc 00	 Data
			.byte $10, $11, $54, $55	; $987c: 10 11 54 55	 Data
			.byte $8a, $8b, $9a, $9b	; $9880: 8a 8b 9a 9b	 Data
			.byte $aa, $ab, $0a, $0b	; $9884: aa ab 0a 0b	 Data
			.byte $fc, $00, $10, $11	; $9888: fc 00 10 11	 Data
			.byte $56, $57, $8c, $8d	; $988c: 56 57 8c 8d	 Data
			.byte $9c, $9d, $06, $07	; $9890: 9c 9d 06 07	 Data
			.byte $16, $17, $fc, $00	; $9894: 16 17 fc 00	 Data
			.byte $10, $11, $54, $55	; $9898: 10 11 54 55	 Data
			.byte $8a, $8b, $9a, $9b	; $989c: 8a 8b 9a 9b	 Data
			.byte $08, $09, $18, $19	; $98a0: 08 09 18 19	 Data
			.byte $fc, $00, $10, $11	; $98a4: fc 00 10 11	 Data
			.byte $56, $57, $8c, $8d	; $98a8: 56 57 8c 8d	 Data
			.byte $9c, $9d, $ac, $ad	; $98ac: 9c 9d ac ad	 Data
			.byte $1a, $1b, $fc, $00	; $98b0: 1a 1b fc 00	 Data
			.byte $10, $11, $54, $55	; $98b4: 10 11 54 55	 Data
			.byte $8a, $8b, $9a, $9b	; $98b8: 8a 8b 9a 9b	 Data
			.byte $06, $07, $16, $17	; $98bc: 06 07 16 17	 Data
			.byte $fc, $00, $10, $11	; $98c0: fc 00 10 11	 Data
			.byte $56, $57, $8c, $8d	; $98c4: 56 57 8c 8d	 Data
			.byte $9c, $9d, $08, $09	; $98c8: 9c 9d 08 09	 Data
			.byte $18, $19, $fc, $00	; $98cc: 18 19 fc 00	 Data
			.byte $10, $11, $54, $55	; $98d0: 10 11 54 55	 Data
			.byte $8a, $8b, $9a, $9b	; $98d4: 8a 8b 9a 9b	 Data
			.byte $aa, $ab, $1a, $1b	; $98d8: aa ab 1a 1b	 Data
			.byte $f6, $00, $6e, $6f	; $98dc: f6 00 6e 6f	 Data
			.byte $7e, $7f, $8e, $8f	; $98e0: 7e 7f 8e 8f	 Data
			.byte $8e, $8f, $9e, $9f	; $98e4: 8e 8f 9e 9f	 Data
			.byte $8a, $8b, $9a, $9b	; $98e8: 8a 8b 9a 9b	 Data
			.byte $34, $35, $44, $45	; $98ec: 34 35 44 45	 Data
			.byte $f4, $00, $6e, $6f	; $98f0: f4 00 6e 6f	 Data
			.byte $7e, $7f, $8e, $8f	; $98f4: 7e 7f 8e 8f	 Data
			.byte $8e, $8f, $8e, $8f	; $98f8: 8e 8f 8e 8f	 Data
			.byte $9e, $9f, $8a, $8b	; $98fc: 9e 9f 8a 8b	 Data
			.byte $9a, $9b, $34, $35	; $9900: 9a 9b 34 35	 Data
			.byte $44, $45, $fc, $00	; $9904: 44 45 fc 00	 Data
			.byte $10, $11, $54, $55	; $9908: 10 11 54 55	 Data
			.byte $8c, $8d, $9c, $9d	; $990c: 8c 8d 9c 9d	 Data
			.byte $36, $ba, $46, $bd	; $9910: 36 ba 46 bd	 Data
			.byte $fc, $00, $10, $11	; $9914: fc 00 10 11	 Data
			.byte $54, $55, $34, $35	; $9918: 54 55 34 35	 Data
			.byte $44, $45, $88, $89	; $991c: 44 45 88 89	 Data
			.byte $98, $99, $fc, $00	; $9920: 98 99 fc 00	 Data
			.byte $10, $11, $54, $55	; $9924: 10 11 54 55	 Data
			.byte $36, $ba, $46, $bd	; $9928: 36 ba 46 bd	 Data
			.byte $88, $89, $98, $99	; $992c: 88 89 98 99	 Data
			.byte $fb, $00, $4d, $10	; $9930: fb 00 4d 10	 Data
			.byte $4e, $54, $5e, $8c	; $9934: 4e 54 5e 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $9938: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $f8	; $993c: ad bc 3b f8	 Data
			.byte $00, $20, $21, $30	; $9940: 00 20 21 30	 Data
			.byte $31, $40, $41, $50	; $9944: 31 40 41 50	 Data
			.byte $51, $8a, $8b, $9a	; $9948: 51 8a 8b 9a	 Data
			.byte $9b, $aa, $ab, $3b	; $994c: 9b aa ab 3b	 Data
			.byte $bb, $f8, $00, $22	; $9950: bb f8 00 22	 Data
			.byte $23, $32, $33, $42	; $9954: 23 32 33 42	 Data
			.byte $43, $52, $53, $8c	; $9958: 43 52 53 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $995c: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $fc	; $9960: ad bc 3b fc	 Data
			.byte $00, $10, $11, $54	; $9964: 00 10 11 54	 Data
			.byte $55, $66, $67, $76	; $9968: 55 66 67 76	 Data
			.byte $77, $88, $89, $98	; $996c: 77 88 89 98	 Data
			.byte $99, $f6, $00, $6e	; $9970: 99 f6 00 6e	 Data
			.byte $6f, $7e, $7f, $8e	; $9974: 6f 7e 7f 8e	 Data
			.byte $8f, $8e, $8f, $9e	; $9978: 8f 8e 8f 9e	 Data
			.byte $9f, $8a, $8b, $9a	; $997c: 9f 8a 8b 9a	 Data
			.byte $9b, $aa, $ab, $3b	; $9980: 9b aa ab 3b	 Data
			.byte $bb, $f6, $00, $20	; $9984: bb f6 00 20	 Data
			.byte $21, $30, $31, $40	; $9988: 21 30 31 40	 Data
			.byte $41, $50, $51, $40	; $998c: 41 50 51 40	 Data
			.byte $41, $50, $51, $40	; $9990: 41 50 51 40	 Data
			.byte $41, $50, $51, $24	; $9994: 41 50 51 24	 Data
			.byte $25, $f6, $00, $22	; $9998: 25 f6 00 22	 Data
			.byte $23, $32, $33, $42	; $999c: 23 32 33 42	 Data
			.byte $43, $52, $53, $42	; $99a0: 43 52 53 42	 Data
			.byte $43, $52, $53, $42	; $99a4: 43 52 53 42	 Data
			.byte $43, $52, $53, $26	; $99a8: 43 52 53 26	 Data
			.byte $27, $fc, $00, $20	; $99ac: 27 fc 00 20	 Data
			.byte $21, $30, $31, $8c	; $99b0: 21 30 31 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $99b4: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $f8	; $99b8: ad bc 3b f8	 Data
			.byte $00, $20, $21, $30	; $99bc: 00 20 21 30	 Data
			.byte $31, $40, $41, $50	; $99c0: 31 40 41 50	 Data
			.byte $51, $40, $41, $50	; $99c4: 51 40 41 50	 Data
			.byte $51, $40, $41, $24	; $99c8: 51 40 41 24	 Data
			.byte $25, $f8, $00, $22	; $99cc: 25 f8 00 22	 Data
			.byte $23, $32, $33, $42	; $99d0: 23 32 33 42	 Data
			.byte $43, $52, $53, $42	; $99d4: 43 52 53 42	 Data
			.byte $43, $52, $53, $42	; $99d8: 43 52 53 42	 Data
			.byte $43, $26, $27, $fc	; $99dc: 43 26 27 fc	 Data
			.byte $00, $20, $21, $30	; $99e0: 00 20 21 30	 Data
			.byte $31, $40, $41, $50	; $99e4: 31 40 41 50	 Data
			.byte $51, $50, $51, $24	; $99e8: 51 50 51 24	 Data
			.byte $25, $fc, $00, $22	; $99ec: 25 fc 00 22	 Data
			.byte $23, $32, $33, $42	; $99f0: 23 32 33 42	 Data
			.byte $43, $52, $53, $52	; $99f4: 43 52 53 52	 Data
			.byte $53, $26, $27, $20	; $99f8: 53 26 27 20	 Data
			.byte $21, $30, $31, $40	; $99fc: 21 30 31 40	 Data
			.byte $41, $50, $51, $30	; $9a00: 41 50 51 30	 Data
			.byte $31, $40, $41, $50	; $9a04: 31 40 41 50	 Data
			.byte $51, $30, $31, $40	; $9a08: 51 30 31 40	 Data
			.byte $41, $50, $51, $50	; $9a0c: 41 50 51 50	 Data
			.byte $51, $24, $25, $22	; $9a10: 51 24 25 22	 Data
			.byte $23, $32, $33, $42	; $9a14: 23 32 33 42	 Data
			.byte $43, $52, $53, $32	; $9a18: 43 52 53 32	 Data
			.byte $33, $42, $43, $52	; $9a1c: 33 42 43 52	 Data
			.byte $53, $32, $33, $42	; $9a20: 53 32 33 42	 Data
			.byte $43, $52, $53, $52	; $9a24: 43 52 53 52	 Data
			.byte $53, $26, $27, $fc	; $9a28: 53 26 27 fc	 Data
			.byte $00	; $9a2c: 00			Data
PRG06_9a2d:
			.byte $10, $11, $54, $55	; $9a2d: 10 11 54 55	 Data
			.byte $8c, $8d, $9c, $9d	; $9a31: 8c 8d 9c 9d	 Data
			.byte $ac, $ad, $0a, $0b	; $9a35: ac ad 0a 0b	 Data
			.byte $fc, $00, $10, $11	; $9a39: fc 00 10 11	 Data
			.byte $54, $55, $8c, $8d	; $9a3d: 54 55 8c 8d	 Data
			.byte $9c, $9d, $04, $05	; $9a41: 9c 9d 04 05	 Data
			.byte $14, $15, $28, $29	; $9a45: 14 15 28 29	 Data
			.byte $00, $39, $f7, $00	; $9a49: 00 39 f7 00	 Data
			.byte $4d, $10, $4e, $54	; $9a4d: 4d 10 4e 54	 Data
			.byte $5e, $8c, $8d, $9c	; $9a51: 5e 8c 8d 9c	 Data
			.byte $9d, $ac, $ad, $bc	; $9a55: 9d ac ad bc	 Data
			.byte $3b, $2a, $2b, $3a	; $9a59: 3b 2a 2b 3a	 Data
			.byte $f9, $00, $10, $11	; $9a5d: f9 00 10 11	 Data
			.byte $54, $55, $8a, $8b	; $9a61: 54 55 8a 8b	 Data
			.byte $9a, $9b, $aa, $ab	; $9a65: 9a 9b aa ab	 Data
			.byte $3b, $bb, $fb, $00	; $9a69: 3b bb fb 00	 Data
			.byte $4d, $10, $4e, $54	; $9a6d: 4d 10 4e 54	 Data
			.byte $5e, $8c, $8d, $9c	; $9a71: 5e 8c 8d 9c	 Data
			.byte $9d, $36, $ba, $46	; $9a75: 9d 36 ba 46	 Data
			.byte $bd, $fa, $00, $6e	; $9a79: bd fa 00 6e	 Data
			.byte $6f, $8e, $8f, $9e	; $9a7d: 6f 8e 8f 9e	 Data
			.byte $9f, $8c, $8d, $9c	; $9a81: 9f 8c 8d 9c	 Data
			.byte $9d	; $9a85: 9d			Data
PRG06_9a86:
			.byte $ac, $ad, $bc, $3b	; $9a86: ac ad bc 3b	 Data
			.byte $f8, $00, $20, $21	; $9a8a: f8 00 20 21	 Data
			.byte $30, $31, $40, $41	; $9a8e: 30 31 40 41	 Data
			.byte $50, $51, $8c, $8d	; $9a92: 50 51 8c 8d	 Data
			.byte $9c, $9d, $ac, $ad	; $9a96: 9c 9d ac ad	 Data
			.byte $bc, $3b, $f8, $00	; $9a9a: bc 3b f8 00	 Data
			.byte $22, $23, $32, $33	; $9a9e: 22 23 32 33	 Data
			.byte $42, $43, $52, $53	; $9aa2: 42 43 52 53	 Data
			.byte $8a, $8b, $9a, $9b	; $9aa6: 8a 8b 9a 9b	 Data
			.byte $aa, $ab, $3b, $bb	; $9aaa: aa ab 3b bb	 Data
			.byte $fc, $00, $10, $11	; $9aae: fc 00 10 11	 Data
			.byte $56, $57, $8c, $8d	; $9ab2: 56 57 8c 8d	 Data
			.byte $9c, $9d, $ac, $ad	; $9ab6: 9c 9d ac ad	 Data
			.byte $0a, $0b, $fb, $00	; $9aba: 0a 0b fb 00	 Data
			.byte $4d, $10, $4e, $56	; $9abe: 4d 10 4e 56	 Data
			.byte $5e, $8c, $8d, $9c	; $9ac2: 5e 8c 8d 9c	 Data
			.byte $9d, $04, $05, $14	; $9ac6: 9d 04 05 14	 Data
			.byte $15, $28, $29, $00	; $9aca: 15 28 29 00	 Data
			.byte $39, $f7, $00, $4d	; $9ace: 39 f7 00 4d	 Data
			.byte $10, $4e, $56, $5e	; $9ad2: 10 4e 56 5e	 Data
			.byte $8c, $8d, $9c, $9d	; $9ad6: 8c 8d 9c 9d	 Data
			.byte $ac, $ad, $bc, $3b	; $9ada: ac ad bc 3b	 Data
			.byte $f8, $00, $6e, $6f	; $9ade: f8 00 6e 6f	 Data
			.byte $7e, $7f, $4b, $4c	; $9ae2: 7e 7f 4b 4c	 Data
			.byte $5b, $5c, $8a, $8b	; $9ae6: 5b 5c 8a 8b	 Data
			.byte $9a, $9b, $aa, $ab	; $9aea: 9a 9b aa ab	 Data
			.byte $3b, $bb, $fc, $00	; $9aee: 3b bb fc 00	 Data
			.byte $10, $11, $56, $57	; $9af2: 10 11 56 57	 Data
			.byte $36, $ba, $46, $bd	; $9af6: 36 ba 46 bd	 Data
			.byte $88, $89, $98, $99	; $9afa: 88 89 98 99	 Data
			.byte $fa, $00, $20, $21	; $9afe: fa 00 20 21	 Data
			.byte $30, $31, $40, $41	; $9b02: 30 31 40 41	 Data
			.byte $50, $51, $30, $31	; $9b06: 50 51 30 31	 Data
			.byte $40, $41, $24	; $9b0a: 40 41 24		Data
PRG06_9b0d:
			.byte $25, $fa ; $9b0d
			.byte $00 ; $9b0f
			.byte $22 ; $9b10
			.byte $23, $32 ; $9b11
			.byte $33, $42 ; $9b13
			.byte $43, $52 ; $9b15
			.byte $53, $32 ; $9b17
			.byte $33, $42 ; $9b19
			.byte $43, $26 ; $9b1b
			.byte $27, $f8 ; $9b1d
			.byte $00 ; $9b1f
			.byte $20, $21, $30 ; $9b20
			.byte $31, $40 ; $9b23
			.byte $41, $50 ; $9b25
			.byte $51, $30 ; $9b27
			.byte $31, $40 ; $9b29
			.byte $41, $50 ; $9b2b
			.byte $51, $24 ; $9b2d
			.byte $25, $f8 ; $9b2f
			.byte $00 ; $9b31
			.byte $22 ; $9b32
			.byte $23, $32 ; $9b33
			.byte $33, $42 ; $9b35
			.byte $43, $52 ; $9b37
			.byte $53 ; $9b39
PRG06_9b3a:
			.byte $32, $33, $42, $43	; $9b3a: 32 33 42 43	 Data
			.byte $52, $53, $26, $27	; $9b3e: 52 53 26 27	 Data
			.byte $28, $29, $00, $39	; $9b42: 28 29 00 39	 Data
			.byte $f8, $00, $10, $11	; $9b46: f8 00 10 11	 Data
			.byte $54, $55, $8a, $8b	; $9b4a: 54 55 8a 8b	 Data
			.byte $9a, $9b, $aa, $ab	; $9b4e: 9a 9b aa ab	 Data
			.byte $3b, $bb, $2a, $2b	; $9b52: 3b bb 2a 2b	 Data
			.byte $3a, $f9, $00, $10	; $9b56: 3a f9 00 10	 Data
			.byte $11, $54, $55, $8c	; $9b5a: 11 54 55 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $9b5e: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $f4	; $9b62: ad bc 3b f4	 Data
			.byte $00, $6e, $6f, $7e	; $9b66: 00 6e 6f 7e	 Data
			.byte $7f, $8e, $8f, $7e	; $9b6a: 7f 8e 8f 7e	 Data
			.byte $7f, $8e, $8f, $9e	; $9b6e: 7f 8e 8f 9e	 Data
			.byte $9f, $8c, $8d, $9c	; $9b72: 9f 8c 8d 9c	 Data
			.byte $9d, $ac, $ad, $bc	; $9b76: 9d ac ad bc	 Data
			.byte $3b, $28, $29, $00	; $9b7a: 3b 28 29 00	 Data
			.byte $39, $f8, $00, $10	; $9b7e: 39 f8 00 10	 Data
			.byte $11, $56, $57, $8c	; $9b82: 11 56 57 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $9b86: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $fb	; $9b8a: ad bc 3b fb	 Data
			.byte $00, $4d, $10, $4e	; $9b8e: 00 4d 10 4e	 Data
			.byte $56, $5e, $8c, $8d	; $9b92: 56 5e 8c 8d	 Data
			.byte $9c, $9d, $36, $ba	; $9b96: 9c 9d 36 ba	 Data
			.byte $46, $bd, $fb, $00	; $9b9a: 46 bd fb 00	 Data
			.byte $4d, $10, $4e, $54	; $9b9e: 4d 10 4e 54	 Data
			.byte $5e, $8a, $8b, $9a	; $9ba2: 5e 8a 8b 9a	 Data
			.byte $9b, $aa, $ab, $0a	; $9ba6: 9b aa ab 0a	 Data
			.byte $0b, $fc, $00, $10	; $9baa: 0b fc 00 10	 Data
			.byte $11, $54, $55, $8c	; $9bae: 11 54 55 8c	 Data
			.byte $8d, $9c, $9d, $02	; $9bb2: 8d 9c 9d 02	 Data
			.byte $03, $12, $13, $f8	; $9bb6: 03 12 13 f8	 Data
			.byte $00, $6e, $6f, $7e	; $9bba: 00 6e 6f 7e	 Data
			.byte $7f, $8e, $8f, $9e	; $9bbe: 7f 8e 8f 9e	 Data
			.byte $9f, $8a, $8b, $9a	; $9bc2: 9f 8a 8b 9a	 Data
			.byte $9b, $04, $05, $14	; $9bc6: 9b 04 05 14	 Data
			.byte $15, $fc, $00, $10	; $9bca: 15 fc 00 10	 Data
			.byte $11, $54, $55, $8c	; $9bce: 11 54 55 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $9bd2: 8d 9c 9d ac	 Data
			.byte $ad, $1a, $1b, $f4	; $9bd6: ad 1a 1b f4	 Data
			.byte $00, $6e, $6f, $7e	; $9bda: 00 6e 6f 7e	 Data
			.byte $7f, $8e, $8f, $8e	; $9bde: 7f 8e 8f 8e	 Data
			.byte $8f, $8e, $8f, $9e	; $9be2: 8f 8e 8f 9e	 Data
			.byte $9f, $8a, $8b, $9a	; $9be6: 9f 8a 8b 9a	 Data
			.byte $9b, $aa, $ab, $3b	; $9bea: 9b aa ab 3b	 Data
			.byte $bb, $f4, $00, $20	; $9bee: bb f4 00 20	 Data
			.byte $21, $30, $31, $40	; $9bf2: 21 30 31 40	 Data
			.byte $41, $50, $51, $30	; $9bf6: 41 50 51 30	 Data
			.byte $31, $40, $41, $50	; $9bfa: 31 40 41 50	 Data
			.byte $51, $30, $31, $40	; $9bfe: 51 30 31 40	 Data
			.byte $41, $24, $25, $f4	; $9c02: 41 24 25 f4	 Data
			.byte $00, $22, $23, $32	; $9c06: 00 22 23 32	 Data
			.byte $33, $42, $43, $52	; $9c0a: 33 42 43 52	 Data
			.byte $53, $32, $33, $42	; $9c0e: 53 32 33 42	 Data
			.byte $43, $52, $53, $32	; $9c12: 43 52 53 32	 Data
			.byte $33, $42, $43, $26	; $9c16: 33 42 43 26	 Data
PRG06_9c1a:
			.byte $27, $fc, $00, $10	; $9c1a: 27 fc 00 10	 Data
			.byte $11, $54, $55, $8a	; $9c1e: 11 54 55 8a	 Data
			.byte $8b, $9a, $9b, $66	; $9c22: 8b 9a 9b 66	 Data
			.byte $67, $76, $77, $fa	; $9c26: 67 76 77 fa	 Data
			.byte $00, $58, $59, $88	; $9c2a: 00 58 59 88	 Data
			.byte $89, $98, $99, $8c	; $9c2e: 89 98 99 8c	 Data
			.byte $8d, $9c, $9d, $ac	; $9c32: 8d 9c 9d ac	 Data
			.byte $ad, $bc, $3b, $fc	; $9c36: ad bc 3b fc	 Data
			.byte $00, $60, $61, $70	; $9c3a: 00 60 61 70	 Data
			.byte $71, $80, $81, $90	; $9c3e: 71 80 81 90	 Data
			.byte $91, $a0, $a1, $b0	; $9c42: 91 a0 a1 b0	 Data
			.byte $b1, $fc, $00, $62	; $9c46: b1 fc 00 62	 Data
			.byte $63, $72, $73, $82	; $9c4a: 63 72 73 82	 Data
			.byte $83, $92, $93, $a2	; $9c4e: 83 92 93 a2	 Data
			.byte $a3, $b2, $b3, $fc	; $9c52: a3 b2 b3 fc	 Data
			.byte $00, $64, $65, $74	; $9c56: 00 64 65 74	 Data
			.byte $75, $84, $85, $94	; $9c5a: 75 84 85 94	 Data
			.byte $95, $a4, $a5, $b4	; $9c5e: 95 a4 a5 b4	 Data
			.byte $b5, $fc, $00, $60	; $9c62: b5 fc 00 60	 Data
			.byte $61, $70, $71, $8a	; $9c66: 61 70 71 8a	 Data
			.byte $8b, $9a, $9b, $aa	; $9c6a: 8b 9a 9b aa	 Data
			.byte $ab, $3b, $bb, $fc	; $9c6e: ab 3b bb fc	 Data
			.byte $00, $62, $63, $72	; $9c72: 00 62 63 72	 Data
			.byte $73, $8c, $8d, $9c	; $9c76: 73 8c 8d 9c	 Data
			.byte $9d, $ac, $ad, $bc	; $9c7a: 9d ac ad bc	 Data
			.byte $3b, $fc, $00, $64	; $9c7e: 3b fc 00 64	 Data
			.byte $65, $74, $75, $8a	; $9c82: 65 74 75 8a	 Data
			.byte $8b, $9a, $9b, $aa	; $9c86: 8b 9a 9b aa	 Data
			.byte $ab, $3b	; $9c8a: ab 3b		 Data
PRG06_9c8c:
			.byte $bb, $f8, $00, $58	; $9c8c: bb f8 00 58	 Data
			.byte $59, $98, $99, $88	; $9c90: 59 98 99 88	 Data
			.byte $89, $98, $99, $8a	; $9c94: 89 98 99 8a	 Data
			.byte $8b, $9a, $9b, $aa	; $9c98: 8b 9a 9b aa	 Data
			.byte $ab, $3b, $bb, $fa	; $9c9c: ab 3b bb fa	 Data
			.byte $00, $58, $59, $88	; $9ca0: 00 58 59 88	 Data
			.byte $89, $98, $99, $8a	; $9ca4: 89 98 99 8a	 Data
			.byte $8b, $9a, $9b, $aa	; $9ca8: 8b 9a 9b aa	 Data
			.byte $ab, $3b, $bb, $fa	; $9cac: ab 3b bb fa	 Data
			.byte $00, $58, $59, $88	; $9cb0: 00 58 59 88	 Data
			.byte $89, $98, $99, $8a	; $9cb4: 89 98 99 8a	 Data
			.byte $8b, $9a, $9b, $aa	; $9cb8: 8b 9a 9b aa	 Data
			.byte $ab, $1a, $1b, $f8	; $9cbc: ab 1a 1b f8	 Data
			.byte $00, $6e, $6f, $7e	; $9cc0: 00 6e 6f 7e	 Data
			.byte $7f, $8e, $8f, $9e	; $9cc4: 7f 8e 8f 9e	 Data
			.byte $9f, $8a, $8b, $9a	; $9cc8: 9f 8a 8b 9a	 Data
			.byte $9b, $34, $35, $44	; $9ccc: 9b 34 35 44	 Data
			.byte $45, $01, $01, $01	; $9cd0: 45 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9cd4: 01 01 01 01	 Data
			.byte $01, $02, $01, $01	; $9cd8: 01 02 01 01	 Data
			.byte $01, $01, $03, $03	; $9cdc: 01 01 03 03	 Data
			.byte $01, $01, $01, $01	; $9ce0: 01 01 01 01	 Data
			.byte $01, $02, $04, $01	; $9ce4: 01 02 04 01	 Data
			.byte $01	; $9ce8: 01			Data
PRG06_9ce9:
			.byte $01, $01, $01, $01	; $9ce9: 01 01 01 01	 Data
			.byte $01, $05, $01, $01	; $9ced: 01 05 01 01	 Data
			.byte $01, $01, $01, $06	; $9cf1: 01 01 01 06	 Data
			.byte $01, $01, $06, $01	; $9cf5: 01 01 06 01	 Data
			.byte $01, $01, $01, $07	; $9cf9: 01 01 01 07	 Data
			.byte $07, $01, $02, $01	; $9cfd: 07 01 02 01	 Data
			.byte $01, $01, $08, $07	; $9d01: 01 01 08 07	 Data
			.byte $01, $01, $01, $01	; $9d05: 01 01 01 01	 Data
			.byte $12, $01, $01, $01	; $9d09: 12 01 01 01	 Data
			.byte $06	; $9d0d: 06			Data
PRG06_9d0e:
			.byte $01, $06, $01, $01	; $9d0e: 01 06 01 01	 Data
			.byte $01, $01, $06, $08	; $9d12: 01 01 06 08	 Data
			.byte $01, $06, $01, $01	; $9d16: 01 06 01 01	 Data
			.byte $01, $01, $02, $04	; $9d1a: 01 01 02 04	 Data
			.byte $09, $01, $02, $01	; $9d1e: 09 01 02 01	 Data
			.byte $01, $01, $01, $01	; $9d22: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9d26: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9d2a: 01 01 01 01	 Data
			.byte $01, $01, $01, $12	; $9d2e: 01 01 01 12	 Data
			.byte $01, $01, $01, $01	; $9d32: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9d36: 01 01 01 01	 Data
			.byte $01, $0a, $01, $0b	; $9d3a: 01 0a 01 0b	 Data
			.byte $0c, $06, $06, $01	; $9d3e: 0c 06 06 01	 Data
			.byte $01, $01, $01, $01	; $9d42: 01 01 01 01	 Data
			.byte $01, $0b, $0c, $01	; $9d46: 01 0b 0c 01	 Data
			.byte $08, $01, $01, $01	; $9d4a: 08 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9d4e: 01 01 01 01	 Data
			.byte $06, $01, $06, $01	; $9d52: 06 01 06 01	 Data
			.byte $01, $0d, $06, $01	; $9d56: 01 0d 06 01	 Data
			.byte $01, $01, $01, $0b	; $9d5a: 01 01 01 0b	 Data
			.byte $0c, $06, $06, $13	; $9d5e: 0c 06 06 13	 Data
			.byte $01, $01, $01, $06	; $9d62: 01 01 01 06	 Data
			.byte $06, $01, $01, $04	; $9d66: 06 01 01 04	 Data
			.byte $09, $01, $01, $01	; $9d6a: 09 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9d6e: 01 01 01 01	 Data
			.byte $01, $0e, $0f, $01	; $9d72: 01 0e 0f 01	 Data
			.byte $02, $01, $04, $0b	; $9d76: 02 01 04 0b	 Data
			.byte $0c, $01, $01, $01	; $9d7a: 0c 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9d7e: 01 01 01 01	 Data
			.byte $03, $10, $11, $09	; $9d82: 03 10 11 09	 Data
			.byte $03, $01, $01, $01	; $9d86: 03 01 01 01	 Data
			.byte $01, $01, $01, $01	; $9d8a: 01 01 01 01	 Data
			.byte $01, $01, $11, $01	; $9d8e: 01 01 11 01	 Data
			.byte $06, $03, $01, $01	; $9d92: 06 03 01 01	 Data
			.byte $04, $01, $01, $bf	; $9d96: 04 01 01 bf	 Data
			.byte $ce, $d3, $d8, $dd	; $9d9a: ce d3 d8 dd	 Data
			.byte $e2, $e7, $ec, $f1	; $9d9e: e2 e7 ec f1	 Data
			.byte $f6, $fb, $00, $05	; $9da2: f6 fb 00 05	 Data
			.byte $0a, $0f, $14, $14	; $9da6: 0a 0f 14 14	 Data
			.byte $c4, $c9, $9d, $9d	; $9daa: c4 c9 9d 9d	 Data
			.byte $9d, $9d, $9d, $9d	; $9dae: 9d 9d 9d 9d	 Data
			.byte $9d, $9d, $9d, $9d	; $9db2: 9d 9d 9d 9d	 Data
			.byte $9d, $9e, $9e, $9e	; $9db6: 9d 9e 9e 9e	 Data
			.byte $9e, $9e, $9e, $9d	; $9dba: 9e 9e 9e 9d	 Data
			.byte $9d, $1f, $55, $55	; $9dbe: 9d 1f 55 55	 Data
			.byte $55, $55, $27, $55	; $9dc2: 55 55 27 55	 Data
			.byte $55, $55, $55, $28	; $9dc6: 55 55 55 28	 Data
			.byte $55, $55, $55, $55	; $9dca: 55 55 55 55	 Data
			.byte $1f, $55, $65, $66	; $9dce: 1f 55 65 66	 Data
			.byte $56, $1f, $55, $55	; $9dd2: 56 1f 55 55	 Data
			.byte $66, $56, $1f, $55	; $9dd6: 66 56 1f 55	 Data
			.byte $55, $95, $59, $1f	; $9dda: 55 95 59 1f	 Data
			.byte $55, $99, $99, $59	; $9dde: 55 99 99 59	 Data
			.byte $1f, $55, $55, $55	; $9de2: 1f 55 55 55	 Data
			.byte $5a, $1f, $55, $55	; $9de6: 5a 1f 55 55	 Data
			.byte $99, $59, $1f, $55	; $9dea: 99 59 1f 55	 Data
			.byte $55, $a5, $5a, $1f	; $9dee: 55 a5 5a 1f	 Data
			.byte $55, $55, $65, $56	; $9df2: 55 55 65 56	 Data
			.byte $1f, $55, $95, $99	; $9df6: 1f 55 95 99	 Data
			.byte $59, $1f, $95, $55	; $9dfa: 59 1f 95 55	 Data
			.byte $55, $55, $1f, $65	; $9dfe: 55 55 1f 65	 Data
			.byte $55, $55, $55, $1f	; $9e02: 55 55 55 1f	 Data
			.byte $a5, $55, $55, $55	; $9e06: a5 55 55 55	 Data
			.byte $1f, $55, $55, $55	; $9e0a: 1f 55 55 55	 Data
			.byte $56, $1f, $55, $95	; $9e0e: 56 1f 55 95	 Data
			.byte $59, $55, $1f, $55	; $9e12: 59 55 1f 55	 Data
			.byte $65, $56, $55, $01	; $9e16: 65 56 55 01	 Data
			.byte $02, $03, $04, $05	; $9e1a: 02 03 04 05	 Data
			.byte $06, $07, $08, $09	; $9e1e: 06 07 08 09	 Data
			.byte $0a, $0b, $0c, $0d	; $9e22: 0a 0b 0c 0d	 Data
			.byte $0e, $0f, $10, $11	; $9e26: 0e 0f 10 11	 Data
			.byte $12, $13, $14, $15	; $9e2a: 12 13 14 15	 Data
			.byte $16, $17, $18, $19	; $9e2e: 16 17 18 19	 Data
			.byte $1a, $1b, $1c, $1d	; $9e32: 1a 1b 1c 1d	 Data
			.byte $1e, $1f, $20, $21	; $9e36: 1e 1f 20 21	 Data
			.byte $22, $23, $24, $25	; $9e3a: 22 23 24 25	 Data
			.byte $26, $27, $28, $29	; $9e3e: 26 27 28 29	 Data
			.byte $2a, $2b, $2c, $2d	; $9e42: 2a 2b 2c 2d	 Data
			.byte $18, $19, $2e, $2f	; $9e46: 18 19 2e 2f	 Data
			.byte $30, $31, $32, $33	; $9e4a: 30 31 32 33	 Data
			.byte $34, $35, $36, $37	; $9e4e: 34 35 36 37	 Data
			.byte $06, $07, $08, $09	; $9e52: 06 07 08 09	 Data
			.byte $0a, $0b, $0c, $00	; $9e56: 0a 0b 0c 00	 Data
			.byte $c8, $d4, $e7, $f9	; $9e5a: c8 d4 e7 f9	 Data
			.byte $07, $1d, $2c, $43	; $9e5e: 07 1d 2c 43	 Data
			.byte $5b, $73, $8b, $a3	; $9e62: 5b 73 8b a3	 Data
			.byte $b3, $c1, $cd, $df	; $9e66: b3 c1 cd df	 Data
			.byte $ef, $ff, $0a, $1e	; $9e6a: ef ff 0a 1e	 Data
			.byte $30, $3e, $4e, $66	; $9e6e: 30 3e 4e 66	 Data
			.byte $7e, $96, $a8, $c0	; $9e72: 7e 96 a8 c0	 Data
			.byte $d7, $eb, $ff, $14	; $9e76: d7 eb ff 14	 Data
			.byte $22, $2d, $35, $49	; $9e7a: 22 2d 35 49	 Data
			.byte $53, $62, $74, $7f	; $9e7e: 53 62 74 7f	 Data
			.byte $8b, $a1, $b5, $c9	; $9e82: 8b a1 b5 c9	 Data
			.byte $db, $f3, $05, $1c	; $9e86: db f3 05 1c	 Data
			.byte $2b, $3b, $47, $53	; $9e8a: 2b 3b 47 53	 Data
			.byte $5e, $69, $77, $9e	; $9e8e: 5e 69 77 9e	 Data
			.byte $9e, $9e, $9e, $9f	; $9e92: 9e 9e 9e 9f	 Data
			.byte $9f	; $9e96: 9f			Data
PRG06_9e97:
			.byte $9f, $9f, $9f, $9f	; $9e97: 9f 9f 9f 9f	 Data
			.byte $9f, $9f, $9f, $9f	; $9e9b: 9f 9f 9f 9f	 Data
			.byte $9f, $9f, $9f, $9f	; $9e9f: 9f 9f 9f 9f	 Data
			.byte $a0, $a0, $a0, $a0	; $9ea3: a0 a0 a0 a0	 Data
			.byte $a0, $a0, $a0, $a0	; $9ea7: a0 a0 a0 a0	 Data
			.byte $a0, $a0, $a0, $a0	; $9eab: a0 a0 a0 a0	 Data
			.byte $a0, $a1, $a1, $a1	; $9eaf: a0 a1 a1 a1	 Data
			.byte $a1, $a1, $a1, $a1	; $9eb3: a1 a1 a1 a1	 Data
			.byte $a1, $a1, $a1, $a1	; $9eb7: a1 a1 a1 a1	 Data
			.byte $a1, $a1, $a1, $a1	; $9ebb: a1 a1 a1 a1	 Data
			.byte $a2, $a2, $a2, $a2	; $9ebf: a2 a2 a2 a2	 Data
			.byte $a2, $a2, $a2, $a2	; $9ec3: a2 a2 a2 a2	 Data
			.byte $a2, $fe, $00, $50	; $9ec7: a2 fe 00 50	 Data
			.byte $00, $5e, $00, $6e	; $9ecb: 00 5e 00 6e	 Data
			.byte $9b, $7f, $80, $94	; $9ecf: 9b 7f 80 94	 Data
			.byte $95, $f7, $00, $04	; $9ed3: 95 f7 00 04	 Data
			.byte $00, $0c, $00, $17	; $9ed7: 00 0c 00 17	 Data
			.byte $0d, $99, $00, $16	; $9edb: 0d 99 00 16	 Data
			.byte $00, $20, $29, $2a	; $9edf: 00 20 29 2a	 Data
			.byte $81, $82, $96, $97	; $9ee3: 81 82 96 97	 Data
			.byte $f6, $00, $05, $06	; $9ee7: f6 00 05 06	 Data
			.byte $f4, $00, $0f, $00	; $9eeb: f4 00 0f 00	 Data
			.byte $17, $04, $9a, $0c	; $9eef: 17 04 9a 0c	 Data
			.byte $2b, $16, $9d, $9e	; $9ef3: 2b 16 9d 9e	 Data
			.byte $98, $a0, $f4, $00	; $9ef7: 98 a0 f4 00	 Data
			.byte $0d, $0e, $f8, $00	; $9efb: 0d 0e f8 00	 Data
			.byte $05, $06, $00, $0d	; $9eff: 05 06 00 0d	 Data
			.byte $f4, $00, $42, $a1	; $9f03: f4 00 42 a1	 Data
			.byte $f4, $00, $0f, $00	; $9f07: f4 00 0f 00	 Data
			.byte $17, $00, $21, $00	; $9f0b: 17 00 21 00	 Data
			.byte $2b, $00, $34, $35	; $9f0f: 2b 00 34 35	 Data
			.byte $00, $41, $0e, $0f	; $9f13: 00 41 0e 0f	 Data
			.byte $00, $9c, $6f, $9f	; $9f17: 00 9c 6f 9f	 Data
			.byte $85, $a2, $f7, $00	; $9f1b: 85 a2 f7 00	 Data
			.byte $18, $f6, $00, $42	; $9f1f: 18 f6 00 42	 Data
			.byte $43, $51, $52, $60	; $9f23: 43 51 52 60	 Data
			.byte $61, $71, $72, $87	; $9f27: 61 71 72 87	 Data
			.byte $00, $00, $02, $f3	; $9f2b: 00 00 02 f3	 Data
			.byte $00, $10, $19, $1a	; $9f2f: 00 10 19 1a	 Data
			.byte $00, $22, $00, $2c	; $9f33: 00 22 00 2c	 Data
			.byte $00, $36, $44, $45	; $9f37: 00 36 44 45	 Data
			.byte $53, $54, $62, $63	; $9f3b: 53 54 62 63	 Data
			.byte $73, $74, $88, $89	; $9f3f: 73 74 88 89	 Data
			.byte $03, $00, $07, $08	; $9f43: 03 00 07 08	 Data
			.byte $11, $12, $1b, $1c	; $9f47: 11 12 1b 1c	 Data
			.byte $23, $24, $2d, $2e	; $9f4b: 23 24 2d 2e	 Data
			.byte $37, $38, $46, $47	; $9f4f: 37 38 46 47	 Data
			.byte $55, $56, $64, $65	; $9f53: 55 56 64 65	 Data
			.byte $75, $76, $8a, $8b	; $9f57: 75 76 8a 8b	 Data
			.byte $00, $00, $09, $0a	; $9f5b: 00 00 09 0a	 Data
			.byte $13, $14, $1d, $1e	; $9f5f: 13 14 1d 1e	 Data
			.byte $25, $26, $2f, $30	; $9f63: 25 26 2f 30	 Data
			.byte $39, $3a, $48, $49	; $9f67: 39 3a 48 49	 Data
			.byte $57, $58, $66, $67	; $9f6b: 57 58 66 67	 Data
			.byte $77, $78, $8c, $8d	; $9f6f: 77 78 8c 8d	 Data
			.byte $00, $00, $0b, $00	; $9f73: 00 00 0b 00	 Data
			.byte $15, $00, $1f, $00	; $9f77: 15 00 1f 00	 Data
			.byte $27, $28, $31, $32	; $9f7b: 27 28 31 32	 Data
			.byte $3b, $3c, $4a, $4b	; $9f7f: 3b 3c 4a 4b	 Data
			.byte $59, $5a, $68, $69	; $9f83: 59 5a 68 69	 Data
			.byte $79, $7a, $8e, $8f	; $9f87: 79 7a 8e 8f	 Data
			.byte $00, $04, $00, $0c	; $9f8b: 00 04 00 0c	 Data
			.byte $00, $16, $00, $20	; $9f8f: 00 16 00 20	 Data
			.byte $29, $2a, $33, $00	; $9f93: 29 2a 33 00	 Data
			.byte $3d, $3e, $4c, $4d	; $9f97: 3d 3e 4c 4d	 Data
			.byte $5b, $5c, $6a	; $9f9b: 5b 5c 6a		Data
PRG06_9f9e:
			.byte $6b, $7b, $7c, $90	; $9f9e: 6b 7b 7c 90	 Data
			.byte $91, $05, $06, $fa	; $9fa2: 91 05 06 fa	 Data
			.byte $00, $3f, $40, $4e	; $9fa6: 00 3f 40 4e	 Data
			.byte $4f, $00, $5d, $6c	; $9faa: 4f 00 5d 6c	 Data
			.byte $6d, $7d, $7e, $92	; $9fae: 6d 7d 7e 92	 Data
			.byte $93, $fc, $00, $15	; $9fb2: 93 fc 00 15	 Data
			.byte $04, $50, $0c, $5e	; $9fb6: 04 50 0c 5e	 Data
			.byte $16, $6e, $20, $7f	; $9fba: 16 6e 20 7f	 Data
			.byte $80, $94, $95, $fc	; $9fbe: 80 94 95 fc	 Data
			.byte $00, $05, $06, $18	; $9fc2: 00 05 06 18	 Data
			.byte $19, $f4, $00, $81	; $9fc6: 19 f4 00 81	 Data
			.byte $82, $a3, $a4, $f8	; $9fca: 82 a3 a4 f8	 Data
			.byte $00, $02, $03, $00	; $9fce: 00 02 03 00	 Data
			.byte $07, $10, $11, $1a	; $9fd2: 07 10 11 1a	 Data
			.byte $1b, $22, $23, $2c	; $9fd6: 1b 22 23 2c	 Data
			.byte $2d, $36, $37, $45	; $9fda: 2d 36 37 45	 Data
			.byte $46, $fa, $00, $08	; $9fde: 46 fa 00 08	 Data
			.byte $09, $12, $13, $1c	; $9fe2: 09 12 13 1c	 Data
			.byte $1d, $24, $25, $2e	; $9fe6: 1d 24 25 2e	 Data
			.byte $2f, $38, $39, $47	; $9fea: 2f 38 39 47	 Data
			.byte $48, $fa, $00, $0a	; $9fee: 48 fa 00 0a	 Data
			.byte $0b, $14, $15, $1e	; $9ff2: 0b 14 15 1e	 Data
			.byte $1f, $26, $27, $30	; $9ff6: 1f 26 27 30	 Data
			.byte $31, $3a, $3b, $49	; $9ffa: 31 3a 3b 49	 Data
			.byte $4a	; $9ffe: 4a			Data
PRG06_9fff:
			.byte $ff, $00, $00, $28	; $9fff: ff 00 00 28	 Data
			.byte $29, $32, $33, $3c	; $a003: 29 32 33 3c	 Data
			.byte $3d, $4b, $4c, $f5	; $a007: 3d 4b 4c f5	 Data
			.byte $00, $0d, $00, $00	; $a00b: 00 0d 00 00	 Data
			.byte $04, $05, $0c, $00	; $a00f: 04 05 0c 00	 Data
			.byte $16, $00, $20, $00	; $a013: 16 00 20 00	 Data
			.byte $2a, $f3, $00, $3e	; $a017: 2a f3 00 3e	 Data
			.byte $3f, $4d, $4e, $f4	; $a01b: 3f 4d 4e f4	 Data
			.byte $00, $0e, $0f, $00	; $a01f: 00 0e 0f 00	 Data
			.byte $17, $06, $21, $00	; $a023: 17 06 21 00	 Data
			.byte $2b, $00, $34, $f6	; $a027: 2b 00 34 f6	 Data
			.byte $00, $40, $6f, $a6	; $a02b: 00 40 6f a6	 Data
			.byte $85, $fc, $00, $35	; $a02f: 85 fc 00 35	 Data
			.byte $00, $41, $42, $00	; $a033: 00 41 42 00	 Data
			.byte $51, $5f, $60, $70	; $a037: 51 5f 60 70	 Data
			.byte $71, $86, $87, $f6	; $a03b: 71 86 87 f6	 Data
			.byte $00, $18, $19, $f6	; $a03f: 00 18 19 f6	 Data
			.byte $00, $43, $44, $52	; $a043: 00 43 44 52	 Data
			.byte $53, $61, $62, $72	; $a047: 53 61 62 72	 Data
			.byte $73, $00, $88, $00	; $a04b: 73 00 88 00	 Data
			.byte $03, $00, $07, $10	; $a04f: 03 00 07 10	 Data
			.byte $11, $1a, $1b, $22	; $a053: 11 1a 1b 22	 Data
			.byte $23, $2c, $2d, $36	; $a057: 23 2c 2d 36	 Data
			.byte $37, $45, $46, $54	; $a05b: 37 45 46 54	 Data
			.byte $55, $63, $64, $74	; $a05f: 55 63 64 74	 Data
			.byte $75, $89, $8a, $00	; $a063: 75 89 8a 00	 Data
			.byte $00, $08, $09, $12	; $a067: 00 08 09 12	 Data
			.byte $13, $1c, $1d, $24	; $a06b: 13 1c 1d 24	 Data
			.byte $25, $2e, $2f, $38	; $a06f: 25 2e 2f 38	 Data
			.byte $39, $47, $48, $56	; $a073: 39 47 48 56	 Data
			.byte $57, $65, $66, $76	; $a077: 57 65 66 76	 Data
			.byte $77, $8b, $8c, $00	; $a07b: 77 8b 8c 00	 Data
			.byte $00, $0a, $0b, $14	; $a07f: 00 0a 0b 14	 Data
			.byte $15, $1e, $1f, $26	; $a083: 15 1e 1f 26	 Data
			.byte $27, $30, $31, $3a	; $a087: 27 30 31 3a	 Data
			.byte $3b, $49, $4a, $58	; $a08b: 3b 49 4a 58	 Data
			.byte $59, $67, $68, $78	; $a08f: 59 67 68 78	 Data
			.byte $79, $8d, $8e, $f8	; $a093: 79 8d 8e f8	 Data
			.byte $00, $28, $29, $32	; $a097: 00 28 29 32	 Data
			.byte $a7, $3c, $3d, $4b	; $a09b: a7 3c 3d 4b	 Data
			.byte $4c, $5a, $5b, $69	; $a09f: 4c 5a 5b 69	 Data
			.byte $6a, $7a, $7b, $60	; $a0a3: 6a 7a 7b 60	 Data
			.byte $61, $04, $05, $0c	; $a0a7: 61 04 05 0c	 Data
			.byte $00, $16, $00, $20	; $a0ab: 00 16 00 20	 Data
			.byte $00, $2a, $10, $19	; $a0af: 00 2a 10 19	 Data
			.byte $1a, $3e, $22, $4d	; $a0b3: 1a 3e 22 4d	 Data
			.byte $2c, $5c, $36, $a5	; $a0b7: 2c 5c 36 a5	 Data
			.byte $45, $6c, $50, $62	; $a0bb: 45 6c 50 62	 Data
			.byte $63, $06, $f3, $00	; $a0bf: 63 06 f3 00	 Data
			.byte $03, $00, $07, $08	; $a0c3: 03 00 07 08	 Data
			.byte $11, $12, $1b, $1c	; $a0c7: 11 12 1b 1c	 Data
			.byte $23, $24, $2d, $2e	; $a0cb: 23 24 2d 2e	 Data
			.byte $37, $38, $46, $47	; $a0cf: 37 38 46 47	 Data
			.byte $55, $56, $64, $65	; $a0d3: 55 56 64 65	 Data
			.byte $f6, $00, $09, $0a	; $a0d7: f6 00 09 0a	 Data
			.byte $13, $14, $1d, $1e	; $a0db: 13 14 1d 1e	 Data
			.byte $25, $26, $2f, $30	; $a0df: 25 26 2f 30	 Data
			.byte $39, $3a, $48, $49	; $a0e3: 39 3a 48 49	 Data
			.byte $57, $58, $66, $67	; $a0e7: 57 58 66 67	 Data
			.byte $f6, $00, $0b, $00	; $a0eb: f6 00 0b 00	 Data
			.byte $15, $00, $1f, $00	; $a0ef: 15 00 1f 00	 Data
			.byte $27, $28, $31, $32	; $a0f3: 27 28 31 32	 Data
			.byte $3b, $3c, $4a, $4b	; $a0f7: 3b 3c 4a 4b	 Data
			.byte $59, $5a, $68, $69	; $a0fb: 59 5a 68 69	 Data
			.byte $f5, $00, $04, $00	; $a0ff: f5 00 04 00	 Data
			.byte $0c, $00, $16, $00	; $a103: 0c 00 16 00	 Data
			.byte $20, $29, $2a, $33	; $a107: 20 29 2a 33	 Data
			.byte $00, $3d, $3e, $4c	; $a10b: 00 3d 3e 4c	 Data
			.byte $4d, $5b, $5c, $6a	; $a10f: 4d 5b 5c 6a	 Data
			.byte $6b, $f4, $00, $05	; $a113: 6b f4 00 05	 Data
			.byte $06, $fa, $00, $3f	; $a117: 06 fa 00 3f	 Data
			.byte $40, $4e, $4f, $00	; $a11b: 40 4e 4f 00	 Data
			.byte $5d, $6c, $6d, $ff	; $a11f: 5d 6c 6d ff	 Data
			.byte $00, $04, $15, $0c	; $a123: 00 04 15 0c	 Data
			.byte $50, $17, $5e, $16	; $a127: 50 17 5e 16	 Data
			.byte $6e, $20, $fe, $00	; $a12b: 6e 20 fe 00	 Data
			.byte $05, $06, $f6, $00	; $a12f: 05 06 f6 00	 Data
			.byte $ac, $3d, $f6, $00	; $a133: ac 3d f6 00	 Data
			.byte $04, $05, $0c, $00	; $a137: 04 05 0c 00	 Data
			.byte $16, $00, $20, $00	; $a13b: 16 00 20 00	 Data
			.byte $0c, $00, $17, $00	; $a13f: 0c 00 17 00	 Data
			.byte $21, $00, $2b, $00	; $a143: 21 00 2b 00	 Data
			.byte $3e, $3f, $f6, $00	; $a147: 3e 3f f6 00	 Data
			.byte $06, $f8, $00, $0d	; $a14b: 06 f8 00 0d	 Data
			.byte $f6, $00, $40, $9b	; $a14f: f6 00 40 9b	 Data
			.byte $f9, $00, $0d, $f4	; $a153: f9 00 0d f4	 Data
			.byte $00, $0e, $0f, $00	; $a157: 00 0e 0f 00	 Data
			.byte $17, $00, $16, $00	; $a15b: 17 00 16 00	 Data
			.byte $20, $29, $2a, $f8	; $a15f: 20 29 2a f8	 Data
			.byte $00, $0e, $0f, $00	; $a163: 00 0e 0f 00	 Data
			.byte $17, $00, $21, $00	; $a167: 17 00 21 00	 Data
			.byte $2b, $00, $34, $00	; $a16b: 2b 00 34 00	 Data
			.byte $00, $0d, $0e, $00	; $a16f: 00 0d 0e 00	 Data
			.byte $00, $ff, $00, $00	; $a173: 00 ff 00 00	 Data
			.byte $35, $00, $41, $42	; $a177: 35 00 41 42	 Data
			.byte $0f, $51, $9c, $60	; $a17b: 0f 51 9c 60	 Data
			.byte $fa, $00, $18, $19	; $a17f: fa 00 18 19	 Data
			.byte $f6, $00, $43, $44	; $a183: f6 00 43 44	 Data
			.byte $52, $53, $61, $62	; $a187: 52 53 61 62	 Data
			.byte $f4, $00, $02, $03	; $a18b: f4 00 02 03	 Data
			.byte $00, $07, $10, $11	; $a18f: 00 07 10 11	 Data
			.byte $1a, $1b, $22, $23	; $a193: 1a 1b 22 23	 Data
			.byte $2c, $2d, $36, $37	; $a197: 2c 2d 36 37	 Data
			.byte $45, $46, $54, $55	; $a19b: 45 46 54 55	 Data
			.byte $63, $64, $f6, $00	; $a19f: 63 64 f6 00	 Data
			.byte $08, $09, $12, $13	; $a1a3: 08 09 12 13	 Data
			.byte $1c, $1d, $24, $25	; $a1a7: 1c 1d 24 25	 Data
			.byte $2e, $2f, $38, $39	; $a1ab: 2e 2f 38 39	 Data
			.byte $47, $48, $56, $57	; $a1af: 47 48 56 57	 Data
			.byte $65, $66, $f6, $00	; $a1b3: 65 66 f6 00	 Data
			.byte $0a, $0b, $14, $15	; $a1b7: 0a 0b 14 15	 Data
			.byte $1e, $1f, $26, $27	; $a1bb: 1e 1f 26 27	 Data
			.byte $30, $a8, $3a, $a9	; $a1bf: 30 a8 3a a9	 Data
			.byte $49, $4a, $58, $aa	; $a1c3: 49 4a 58 aa	 Data
			.byte $ad, $ae, $f6, $00	; $a1c7: ad ae f6 00	 Data
			.byte $18, $19, $f4, $00	; $a1cb: 18 19 f4 00	 Data
			.byte $28, $29, $43, $44	; $a1cf: 28 29 43 44	 Data
			.byte $52, $53, $61, $62	; $a1d3: 52 53 61 62	 Data
			.byte $00, $ab, $4e, $4f	; $a1d7: 00 ab 4e 4f	 Data
			.byte $02, $03, $00, $07	; $a1db: 02 03 00 07	 Data
			.byte $10, $11, $1a, $1b	; $a1df: 10 11 1a 1b	 Data
			.byte $22, $23, $2c, $2d	; $a1e3: 22 23 2c 2d	 Data
			.byte $36, $37, $45, $46	; $a1e7: 36 37 45 46	 Data
			.byte $54, $55, $63, $64	; $a1eb: 54 55 63 64	 Data
			.byte $74, $75, $00, $00	; $a1ef: 74 75 00 00	 Data
			.byte $f8, $00, $28, $29	; $a1f3: f8 00 28 29	 Data
			.byte $32, $33, $3c, $3d	; $a1f7: 32 33 3c 3d	 Data
			.byte $4b, $4c, $5a, $5b	; $a1fb: 4b 4c 5a 5b	 Data
			.byte $69, $6a, $7a, $7b	; $a1ff: 69 6a 7a 7b	 Data
			.byte $8f, $90, $04, $05	; $a203: 8f 90 04 05	 Data
			.byte $0c, $00, $16, $00	; $a207: 0c 00 16 00	 Data
			.byte $20, $00, $2a, $f3	; $a20b: 20 00 2a f3	 Data
			.byte $00, $3e, $3f, $4d	; $a20f: 00 3e 3f 4d	 Data
			.byte $4e, $5c, $00, $6b	; $a213: 4e 5c 00 6b	 Data
			.byte $6c, $7c, $7d, $91	; $a217: 6c 7c 7d 91	 Data
			.byte $92, $06, $fb, $00	; $a21b: 92 06 fb 00	 Data
			.byte $40, $15, $4f, $50	; $a21f: 40 15 4f 50	 Data
			.byte $5d, $5e, $6d, $6e	; $a223: 5d 5e 6d 6e	 Data
			.byte $7e, $7f, $93, $94	; $a227: 7e 7f 93 94	 Data
			.byte $fa, $00, $04, $05	; $a22b: fa 00 04 05	 Data
			.byte $0c, $00, $21, $00	; $a22f: 0c 00 21 00	 Data
			.byte $2b, $00, $34, $35	; $a233: 2b 00 34 35	 Data
			.byte $80, $81, $95, $96	; $a237: 80 81 95 96	 Data
			.byte $fa, $00, $06, $f4	; $a23b: fa 00 06 f4	 Data
			.byte $00, $0d, $f4, $00	; $a23f: 00 0d f4 00	 Data
			.byte $82, $83, $97, $98	; $a243: 82 83 97 98	 Data
			.byte $fe, $00, $0e, $0f	; $a247: fe 00 0e 0f	 Data
			.byte $00, $17, $00, $16	; $a24b: 00 17 00 16	 Data
			.byte $18, $20, $29, $2a	; $a24f: 18 20 29 2a	 Data
			.byte $ff, $00, $03, $00	; $a253: ff 00 03 00	 Data
			.byte $07, $10, $11, $1a	; $a257: 07 10 11 1a	 Data
			.byte $1b, $22, $23, $ff	; $a25b: 1b 22 23 ff	 Data
			.byte $00, $00, $08, $09	; $a25f: 00 00 08 09	 Data
			.byte $12, $13, $1c, $1d	; $a263: 12 13 1c 1d	 Data
			.byte $24, $25, $f4, $00	; $a267: 24 25 f4 00	 Data
			.byte $0d, $0e, $fa, $00	; $a26b: 0d 0e fa 00	 Data
			.byte $0a, $0b, $14, $15	; $a26f: 0a 0b 14 15	 Data
			.byte $1e, $1f, $26, $27	; $a273: 1e 1f 26 27	 Data
			.byte $f4, $00, $0f, $00	; $a277: f4 00 0f 00	 Data
			.byte $17, $00, $21, $00	; $a27b: 17 00 21 00	 Data
			.byte $2b, $00, $34, $35	; $a27f: 2b 00 34 35	 Data
			.byte $00, $41, $f3, $00	; $a283: 00 41 f3 00	 Data
			.byte $5f, $6f, $70, $85	; $a287: 5f 6f 70 85	 Data
			.byte $86, $01, $01, $01	; $a28b: 86 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a28f: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a293: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a297: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a29b: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a29f: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a2a3: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a2a7: 01 01 01 01	 Data
			.byte $01, $ae, $a2, $23	; $a2ab: 01 ae a2 23	 Data
			.byte $5a, $55, $55, $a5	; $a2af: 5a 55 55 a5	 Data
			.byte $01, $02, $03, $04	; $a2b3: 01 02 03 04	 Data
			.byte $05, $06, $01, $02	; $a2b7: 05 06 01 02	 Data
			.byte $03, $04, $05, $06	; $a2bb: 03 04 05 06	 Data
			.byte $01, $02, $03, $04	; $a2bf: 01 02 03 04	 Data
			.byte $05, $06, $07, $08	; $a2c3: 05 06 07 08	 Data
			.byte $03, $04, $05, $06	; $a2c7: 03 04 05 06	 Data
			.byte $07, $08, $03, $04	; $a2cb: 07 08 03 04	 Data
			.byte $05, $06, $07, $08	; $a2cf: 05 06 07 08	 Data
			.byte $03, $04, $05, $06	; $a2d3: 03 04 05 06	 Data
			.byte $01, $02, $03, $04	; $a2d7: 01 02 03 04	 Data
			.byte $05, $06, $01, $02	; $a2db: 05 06 01 02	 Data
			.byte $03, $04, $05, $06	; $a2df: 03 04 05 06	 Data
			.byte $00	; $a2e3: 00			Data
			.byte $01, $02 ; $a2e4
			.byte $03, $04 ; $a2e6
			.byte $05, $06 ; $a2e8
			.byte $01, $02 ; $a2ea
			.byte $03, $04 ; $a2ec
			.byte $05, $06 ; $a2ee
			.byte $07, $08 ; $a2f0
			.byte $03, $04 ; $a2f2
			.byte $05, $06 ; $a2f4
			.byte $01, $02 ; $a2f6
			.byte $03, $04 ; $a2f8
			.byte $05, $06 ; $a2fa
			.byte $07, $09 ; $a2fc
			.byte $0a ; $a2fe
			.byte $0b, $0c ; $a2ff
			.byte $0d, $01, $02 ; $a301
			.byte $03, $04 ; $a304
			.byte $05, $06 ; $a306
			.byte $01, $02 ; $a308
			.byte $03, $04 ; $a30a
			.byte $05, $06 ; $a30c
			.byte $07, $09 ; $a30e
			.byte $0a ; $a310
			.byte $0b, $0c ; $a311
			.byte $0d, $01, $02 ; $a313
			.byte $03, $04 ; $a316
			.byte $05, $06 ; $a318
			.byte $07, $08 ; $a31a
			.byte $03, $04 ; $a31c
			.byte $05, $06 ; $a31e
			.byte $01, $02 ; $a320
			.byte $03, $04 ; $a322
			.byte $00 ; $a324
			.byte $05, $06 ; $a325
			.byte $01, $02 ; $a327
			.byte $03, $04 ; $a329
			.byte $05, $06 ; $a32b
			.byte $01, $02 ; $a32d
			.byte $03, $04 ; $a32f
			.byte $05, $06 ; $a331
			.byte $07, $08 ; $a333
			.byte $03, $04 ; $a335
			.byte $05, $06 ; $a337
			.byte $01, $02 ; $a339
			.byte $03, $04 ; $a33b
			.byte $0e, $0d, $01 ; $a33d
			.byte $02 ; $a340
			.byte $03, $04 ; $a341
			.byte $0e, $0d, $01 ; $a343
			.byte $02 ; $a346
			.byte $03, $04 ; $a347
			.byte $05, $06 ; $a349
			.byte $0f, $06, $0f ; $a34b
			.byte $06, $0f ; $a34e
			.byte $06, $07 ; $a350
			.byte $08 ; $a352
			.byte $03, $04 ; $a353
			.byte $05, $06 ; $a355
			.byte $07, $08 ; $a357
			.byte $03, $04 ; $a359
			.byte $05, $06 ; $a35b
			.byte $0f, $06, $0f ; $a35d
			.byte $06, $0f ; $a360
			.byte $06, $01 ; $a362
			.byte $02 ; $a364
			.byte $03, $04 ; $a365
			.byte $05, $06 ; $a367
			.byte $07, $09 ; $a369
			.byte $0a ; $a36b
			.byte $0b, $0c ; $a36c
			.byte $0d, $01, $02 ; $a36e
			.byte $03, $04 ; $a371
			.byte $05, $06 ; $a373
			.byte $00 ; $a375
			.byte $01, $02 ; $a376
			.byte $03, $04 ; $a378
			.byte $05, $06 ; $a37a
			.byte $01, $02 ; $a37c
			.byte $03, $04 ; $a37e
			.byte $05, $06 ; $a380
			.byte $07, $09 ; $a382
			.byte $0a ; $a384
			.byte $0b, $0c ; $a385
			.byte $0d, $01, $02 ; $a387
			.byte $03, $04 ; $a38a
			.byte $05, $06 ; $a38c
			.byte $0f, $06, $0f ; $a38e
			.byte $06, $0f ; $a391
			.byte $06, $01 ; $a393
			.byte $02 ; $a395
			.byte $03, $04 ; $a396
			.byte $05, $06 ; $a398
			.byte $0f, $06, $0f ; $a39a
			.byte $06, $0f ; $a39d
			.byte $06, $01 ; $a39f
			.byte $02 ; $a3a1
			.byte $03, $04 ; $a3a2
			.byte $0e, $0d, $01 ; $a3a4
			.byte $02 ; $a3a7
			.byte $03, $04 ; $a3a8
			.byte $0e, $0d, $01 ; $a3aa
			.byte $02 ; $a3ad
			.byte $03, $04 ; $a3ae
			.byte $0e, $0d ; $a3b0
			.byte $01, $02 ; $a3b2
			.byte $03, $04 ; $a3b4
			.byte $05, $06 ; $a3b6
			.byte $07, $08 ; $a3b8
			.byte $03, $04 ; $a3ba
			.byte $05, $06 ; $a3bc
			.byte $07, $08 ; $a3be
			.byte $03, $04 ; $a3c0
			.byte $05, $06 ; $a3c2
			.byte $01, $02 ; $a3c4
			.byte $03, $04 ; $a3c6
			.byte $05, $06 ; $a3c8
			.byte $07, $09 ; $a3ca
			.byte $0a ; $a3cc
			.byte $0b, $0c ; $a3cd
			.byte $0d, $01, $02 ; $a3cf
			.byte $03, $04 ; $a3d2
			.byte $05, $06 ; $a3d4
			.byte $00 ; $a3d6
			.byte $01, $02 ; $a3d7
			.byte $03, $04 ; $a3d9
			.byte $05, $06 ; $a3db
			.byte $01, $02 ; $a3dd
			.byte $03, $04 ; $a3df
			.byte $05, $06 ; $a3e1
			.byte $07, $09 ; $a3e3
			.byte $0a ; $a3e5
			.byte $0b, $0c ; $a3e6
			.byte $0d, $01, $02 ; $a3e8
			.byte $03, $04 ; $a3eb
			.byte $05, $06 ; $a3ed
			.byte $07, $09 ; $a3ef
			.byte $0a ; $a3f1
			.byte $0b, $0c ; $a3f2
			.byte $0d, $01, $02 ; $a3f4
			.byte $03, $04 ; $a3f7
			.byte $05, $06 ; $a3f9
			.byte $01 ; $a3fb
			.byte $02 ; $a3fc
			.byte $03, $04 ; $a3fd
			.byte $05, $06 ; $a3ff
			.byte $01, $02 ; $a401
			.byte $03, $04 ; $a403
			.byte $05, $06 ; $a405
			.byte $01, $02 ; $a407
			.byte $03, $04 ; $a409
			.byte $05, $06 ; $a40b
			.byte $01, $02 ; $a40d
			.byte $03, $04 ; $a40f
			.byte $05, $06 ; $a411
			.byte $07, $09 ; $a413
			.byte $0a ; $a415
			.byte $0b, $0c ; $a416
			.byte $0d, $01, $02 ; $a418
			.byte $03, $04 ; $a41b
			.byte $05, $06 ; $a41d
			.byte $0f, $06, $0f ; $a41f
			.byte $06, $0f ; $a422
			.byte $06, $01 ; $a424
			.byte $02 ; $a426
			.byte $03, $04 ; $a427
			.byte $05, $06 ; $a429
			.byte $01, $02 ; $a42b
			.byte $03, $04 ; $a42d
			.byte $05, $06 ; $a42f
			.byte $07, $09 ; $a431
			.byte $0a ; $a433
			.byte $0b, $0c ; $a434
			.byte $0d, $01, $02 ; $a436
			.byte $03, $04 ; $a439
			.byte $05, $06 ; $a43b
			.byte $01, $02 ; $a43d
			.byte $03, $04 ; $a43f
			.byte $05, $06 ; $a441
			.byte $01, $02 ; $a443
			.byte $03, $04 ; $a445
			.byte $00 ; $a447
			.byte $66, $7e ; $a448
			.byte $96, $ae ; $a44a
			.byte $c6, $de ; $a44c
			.byte $f0, $08 ; $a44e
			.byte $20, $38, $50 ; $a450
			.byte $68 ; $a453
			.byte $80, $98 ; $a454
			.byte $b0, $a4 ; $a456
			.byte $a4, $a4 ; $a458
			.byte $a4, $a4 ; $a45a
			.byte $a4, $a4 ; $a45c
			.byte $a5, $a5 ; $a45e
			.byte $a5, $a5 ; $a460
			.byte $a5, $a5 ; $a462
			.byte $a5, $a5 ; $a464
			.byte $02 ; $a466
			.byte $03, $06 ; $a467
			.byte $07, $0b ; $a469
			.byte $0c ; $a46b
			.byte $2b, $2c ; $a46c
			.byte $00 ; $a46e
			.byte $3d, $4c, $4d ; $a46f
			.byte $61, $62 ; $a472
			.byte $77, $78 ; $a474
			.byte $8b, $51 ; $a476
			.byte $9b ; $a478
			.byte $3f, $ad, $7e ; $a479
			.byte $be, $bf, $04 ; $a47c
			.byte $04, $08 ; $a47f
			.byte $08 ; $a481
			.byte $0d, $0e, $2d ; $a482
			.byte $2e, $2d, $2e ; $a485
			.byte $2d, $4e, $63 ; $a488
			.byte $64, $79 ; $a48b
			.byte $7a ; $a48d
			.byte $57, $8c ; $a48e
			.byte $67, $9c ; $a490
			.byte $7f, $ae, $bf ; $a492
			.byte $bf, $04, $04 ; $a495
			.byte $08 ; $a498
			.byte $08 ; $a499
			.byte $0f, $0f, $2f ; $a49a
			.byte $2f, $3e, $3f ; $a49d
			.byte $4f, $50, $65 ; $a4a0
			.byte $66, $7b ; $a4a3
			.byte $7c, $8d, $8e ; $a4a5
			.byte $9d, $9e, $af ; $a4a8
			.byte $b0, $bf ; $a4ab
			.byte $bf, $04, $05 ; $a4ad
			.byte $06, $09 ; $a4b0
			.byte $1b, $1c, $37 ; $a4b2
			.byte $38 ; $a4b5
			.byte $37, $47 ; $a4b6
			.byte $51, $52 ; $a4b8
			.byte $3e, $3f, $7d ; $a4ba
			.byte $7e, $8f, $90 ; $a4bd
			.byte $9f, $a0, $b1 ; $a4c0
			.byte $b2 ; $a4c3
			.byte $bf, $bf, $03 ; $a4c4
			.byte $04, $0a ; $a4c7
			.byte $08 ; $a4c9
			.byte $1d, $1e, $39 ; $a4ca
			.byte $3a ; $a4cd
			.byte $00 ; $a4ce
			.byte $00 ; $a4cf
			.byte $53, $54 ; $a4d0
			.byte $67, $68 ; $a4d2
			.byte $7f, $68, $91 ; $a4d4
			.byte $68 ; $a4d7
			.byte $a1, $68 ; $a4d8
			.byte $b3, $b4 ; $a4da
			.byte $bf, $c0, $04 ; $a4dc
			.byte $04, $08 ; $a4df
			.byte $08 ; $a4e1
			.byte $1f, $1f, $3b ; $a4e2
			.byte $3c, $00, $00 ; $a4e5
			.byte $55, $56 ; $a4e8
			.byte $f8 ; $a4ea
			.byte $69, $b5 ; $a4eb
			.byte $b5, $c1 ; $a4ed
			.byte $c1, $02 ; $a4ef
			.byte $03, $06 ; $a4f1
			.byte $07, $0b ; $a4f3
			.byte $0c, $2b, $2c ; $a4f5
			.byte $00 ; $a4f8
			.byte $3d, $4c, $4d ; $a4f9
			.byte $61, $6b ; $a4fc
			.byte $77, $80 ; $a4fe
			.byte $8b, $92 ; $a500
			.byte $9b ; $a502
			.byte $a2, $ad ; $a503
			.byte $b6, $be ; $a505
			.byte $c2 ; $a507
			.byte $04, $04 ; $a508
			.byte $08 ; $a50a
			.byte $08 ; $a50b
			.byte $0d, $0e, $2d ; $a50c
			.byte $2e, $2d, $2e ; $a50f
			.byte $2d, $4e, $6c ; $a512
			.byte $64, $81 ; $a515
			.byte $7a ; $a517
			.byte $93, $8c ; $a518
			.byte $a3, $9c ; $a51a
			.byte $b7, $ae ; $a51c
			.byte $bf ; $a51e
			.byte $bf, $04, $04 ; $a51f
			.byte $08 ; $a522
			.byte $08 ; $a523
			.byte $0d, $0e, $2d ; $a524
			.byte $2e, $2d, $2e ; $a527
			.byte $2d, $4e, $6c ; $a52a
			.byte $64, $81 ; $a52d
			.byte $7a ; $a52f
			.byte $93, $8c ; $a530
			.byte $a3, $9c ; $a532
			.byte $b7, $ae ; $a534
			.byte $d0, $d0 ; $a536

			.byte $04, $04, $08, $08	; $a538: 04 04 08 08	 Data
			.byte $0f, $0f, $2f, $2f	; $a53c: 0f 0f 2f 2f	 Data
			.byte $3e, $3f, $4f, $50	; $a540: 3e 3f 4f 50	 Data
			.byte $65, $66, $7b, $7c	; $a544: 65 66 7b 7c	 Data
			.byte $8d, $8e, $9d, $9e	; $a548: 8d 8e 9d 9e	 Data
			.byte $af, $b0, $d0, $d0	; $a54c: af b0 d0 d0	 Data
			.byte $04, $05, $06, $09	; $a550: 04 05 06 09	 Data
			.byte $1b	; $a554: 1b			Data
			.byte $1c, $37, $38, $37	; $a555: 1c 37 38 37	 Data
			.byte $47, $51, $52, $3e	; $a559: 47 51 52 3e	 Data
			.byte $3f, $7d, $7e, $8f	; $a55d: 3f 7d 7e 8f	 Data
			.byte $90, $9f, $a0, $b1	; $a561: 90 9f a0 b1	 Data
			.byte $b2, $d0, $d0, $03	; $a565: b2 d0 d0 03	 Data
			.byte $04, $0a, $08, $1d	; $a569: 04 0a 08 1d	 Data
			.byte $1e, $39, $3a, $00	; $a56d: 1e 39 3a 00	 Data
			.byte $48, $53, $58, $67	; $a571: 48 53 58 67	 Data
			.byte $6d, $7f, $82, $91	; $a575: 6d 7f 82 91	 Data
			.byte $94, $a1, $68, $b3	; $a579: 94 a1 68 b3	 Data
			.byte $b4, $d0, $d0, $04	; $a57d: b4 d0 d0 04	 Data
			.byte $04, $08, $08, $1f	; $a581: 04 08 08 1f	 Data
			.byte $1f, $3b, $3c, $49	; $a585: 1f 3b 3c 49	 Data
			.byte $4a, $59, $5a, $6e	; $a589: 4a 59 5a 6e	 Data
			.byte $6f, $83, $84, $95	; $a58d: 6f 83 84 95	 Data
			.byte $96, $a4, $69, $b8	; $a591: 96 a4 69 b8	 Data
			.byte $b5, $c2, $c1, $03	; $a595: b5 c2 c1 03	 Data
			.byte $04, $0a, $08, $1d	; $a599: 04 0a 08 1d	 Data
			.byte $1e, $39, $3a, $00	; $a59d: 1e 39 3a 00	 Data
			.byte $48, $57, $58, $67	; $a5a1: 48 57 58 67	 Data
			.byte $6d, $7f, $82, $91	; $a5a5: 6d 7f 82 91	 Data
			.byte $94, $a1, $68, $b3	; $a5a9: 94 a1 68 b3	 Data
			.byte $b4, $bf, $c0, $02	; $a5ad: b4 bf c0 02	 Data
			.byte $04, $06, $08, $0b	; $a5b1: 04 06 08 0b	 Data
			.byte $1e, $2b, $3a, $00	; $a5b5: 1e 2b 3a 00	 Data
			.byte $00, $4c, $54, $61	; $a5b9: 00 4c 54 61	 Data
			.byte $68, $77, $68, $8b	; $a5bd: 68 77 68 8b	 Data
			.byte $68, $9b, $68, $ad	; $a5c1: 68 9b 68 ad	 Data
			.byte $b4, $be, $c0, $01	; $a5c5: b4 be c0 01	 Data
			.byte $01, $01, $01, $01	; $a5c9: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5cd: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5d1: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5d5: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5d9: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5dd: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5e1: 01 01 01 01	 Data
			.byte $01, $01, $01, $02	; $a5e5: 01 01 01 02	 Data
			.byte $01, $01, $01, $01	; $a5e9: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5ed: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5f1: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5f5: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5f9: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a5fd: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a601: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a605: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a609: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a60d: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a611: 01 01 01 01	 Data
			.byte $01, $01, $01, $03	; $a615: 01 01 01 03	 Data
			.byte $01, $01, $01, $01	; $a619: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a61d: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a621: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a625: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a629: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a62d: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a631: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a635: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a639: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a63d: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a641: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a645: 01 01 01 01	 Data
			.byte $01, $01, $01, $01	; $a649: 01 01 01 01	 Data
			.byte $01, $01, $01, $56	; $a64d: 01 01 01 56	 Data
			.byte $5b, $60, $a6, $a6	; $a651: 5b 60 a6 a6	 Data
			.byte $a6, $24, $5a, $55	; $a655: a6 24 5a 55	 Data
			.byte $55, $a5, $2d, $5a	; $a659: 55 a5 2d 5a	 Data
			.byte $55, $55, $a5, $2e	; $a65d: 55 55 a5 2e	 Data
			.byte $5a, $55, $55, $a5	; $a661: 5a 55 55 a5	 Data
			.byte $17, $17, $17, $17	; $a665: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $a669: 17 17 17 17	 Data
			.byte $17, $17, $01, $02	; $a66d: 17 17 01 02	 Data
			.byte $03, $04, $05, $06	; $a671: 03 04 05 06	 Data
			.byte $07, $08, $09, $0a	; $a675: 07 08 09 0a	 Data
			.byte $0b, $0c, $0d, $0e	; $a679: 0b 0c 0d 0e	 Data
			.byte $0f, $10, $11, $12	; $a67d: 0f 10 11 12	 Data
			.byte $13, $14, $15, $16	; $a681: 13 14 15 16	 Data
			.byte $17, $17, $17, $17	; $a685: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $a689: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $a68d: 17 17 17 17	 Data
			.byte $17, $17, $17, $17	; $a691: 17 17 17 17	 Data
			.byte $00, $c4, $cf, $de	; $a695: 00 c4 cf de	 Data
			.byte $ee, $fe, $10, $22	; $a699: ee fe 10 22	 Data
			.byte $34, $47, $5b, $6f	; $a69d: 34 47 5b 6f	 Data
			.byte $83, $9b, $b3, $c9	; $a6a1: 83 9b b3 c9	 Data
			.byte $e1, $f9, $0e, $24	; $a6a5: e1 f9 0e 24	 Data
			.byte $3a, $50, $64, $6d	; $a6a9: 3a 50 64 6d	 Data
			.byte $a6, $a6, $a6, $a6	; $a6ad: a6 a6 a6 a6	 Data
			.byte $a6, $a7, $a7, $a7	; $a6b1: a6 a7 a7 a7	 Data
			.byte $a7, $a7, $a7, $a7	; $a6b5: a7 a7 a7 a7	 Data
			.byte $a7, $a7, $a7, $a7	; $a6b9: a7 a7 a7 a7	 Data
			.byte $a7, $a8, $a8, $a8	; $a6bd: a7 a8 a8 a8	 Data
			.byte $a8, $a8, $a8, $fb	; $a6c1: a8 a8 a8 fb	 Data
			.byte $00, $a4, $ba, $bb	; $a6c5: 00 a4 ba bb	 Data
			.byte $cd, $ce, $f6, $00	; $a6c9: cd ce f6 00	 Data
			.byte $05, $05, $f9, $00	; $a6cd: 05 05 f9 00	 Data
			.byte $99, $a5, $a6, $bc	; $a6d1: 99 a5 a6 bc	 Data
			.byte $bd, $cf, $d0, $00	; $a6d5: bd cf d0 00	 Data
			.byte $e4, $f4, $00, $05	; $a6d9: e4 f4 00 05	 Data
			.byte $05, $f8, $00, $9a	; $a6dd: 05 f8 00 9a	 Data
			.byte $9b, $a7, $a8	; $a6e1: 9b a7 a8		Data
			.byte $be, $bf, $d1 ; $a6e4
			.byte $d2 ; $a6e7
			.byte $e5, $e6 ; $a6e8
			.byte $f4, $00 ; $a6ea
			.byte $05, $05 ; $a6ec
			.byte $f8 ; $a6ee
			.byte $00 ; $a6ef
			.byte $9c, $29, $a9 ; $a6f0
			.byte $aa ; $a6f3
			.byte $c0, $c1 ; $a6f4
			.byte $d3, $d4 ; $a6f6
			.byte $e7, $5f ; $a6f8
			.byte $f4, $00 ; $a6fa
			.byte $05, $05 ; $a6fc
			.byte $f8 ; $a6fe
			.byte $00 ; $a6ff
			.byte $29, $29 ; $a700
			.byte $ab, $ac ; $a702
			.byte $c2, $c3 ; $a704
			.byte $d5, $d6 ; $a706
			.byte $60 ; $a708
			.byte $ea ; $a709
			.byte $51, $52 ; $a70a
			.byte $00 ; $a70c
			.byte $00 ; $a70d
			.byte $05 ; $a70e
			.byte $05, $f8 ; $a70f
			.byte $00 ; $a711
			.byte $29, $29 ; $a712
			.byte $ad, $ae, $c4 ; $a714
			.byte $c5, $d7 ; $a717
			.byte $d8 ; $a719
			.byte $eb, $ec ; $a71a
			.byte $5c, $5d, $00 ; $a71c
			.byte $00 ; $a71f
			.byte $05, $05 ; $a720
			.byte $f8 ; $a722
			.byte $00 ; $a723
			.byte $29, $29 ; $a724
			.byte $af, $3a, $c6 ; $a726
			.byte $c7, $d9 ; $a729
			.byte $da ; $a72b
			.byte $ed, $61, $70 ; $a72c
			.byte $70, $00 ; $a72f
			.byte $00 ; $a731
			.byte $05, $05 ; $a732
			.byte $f7, $00 ; $a734
			.byte $90, $29 ; $a736
			.byte $9d, $b0, $3a ; $a738
			.byte $c8 ; $a73b
			.byte $48 ; $a73c
			.byte $db, $53, $ee ; $a73d
			.byte $61, $70 ; $a740
			.byte $70, $00 ; $a742
			.byte $00 ; $a744
			.byte $05, $05 ; $a745
			.byte $f6, $00 ; $a747
			.byte $81, $17 ; $a749
			.byte $2a ; $a74b
			.byte $2b, $3a ; $a74c
			.byte $3a ; $a74e
			.byte $48 ; $a74f
			.byte $48 ; $a750
			.byte $53, $53 ; $a751
			.byte $61, $61 ; $a753
			.byte $70, $70 ; $a755
			.byte $00 ; $a757
			.byte $00 ; $a758
			.byte $05, $05 ; $a759
			.byte $f6, $00 ; $a75b
			.byte $91, $82 ; $a75d
			.byte $2c, $2c ; $a75f
			.byte $b1, $b2 ; $a761
			.byte $48 ; $a763
			.byte $c9, $53 ; $a764
			.byte $dc, $ef, $50 ; $a766
			.byte $70, $70 ; $a769
			.byte $00 ; $a76b
			.byte $00 ; $a76c
			.byte $05, $05 ; $a76d
			.byte $f6, $00 ; $a76f
			.byte $1a ; $a771
			.byte $92 ; $a772
			.byte $2c, $9e, $3a ; $a773
			.byte $b3, $48 ; $a776
			.byte $ca ; $a778
			.byte $53, $dd ; $a779
			.byte $61, $61 ; $a77b
			.byte $70, $70 ; $a77d
			.byte $00 ; $a77f
			.byte $00 ; $a780
			.byte $05, $05 ; $a781
			.byte $00 ; $a783
			.byte $00 ; $a784
			.byte $86, $87 ; $a785
			.byte $8a ; $a787
			.byte $8b, $93 ; $a788
			.byte $94, $9f ; $a78a
			.byte $a0, $b4 ; $a78c
			.byte $b5, $b4 ; $a78e
			.byte $b5, $de ; $a790
			.byte $df, $61, $61 ; $a792
			.byte $70, $70 ; $a795
			.byte $00 ; $a797
			.byte $00 ; $a798
			.byte $05, $05 ; $a799
			.byte $80, $7f ; $a79b
			.byte $88 ; $a79d
			.byte $85, $8c ; $a79e
			.byte $8d, $95, $96 ; $a7a0
			.byte $a1, $a2 ; $a7a3
			.byte $b6, $b7 ; $a7a5
			.byte $b6, $cb ; $a7a7
			.byte $e0, $e1 ; $a7a9
			.byte $61, $61 ; $a7ab
			.byte $70, $70 ; $a7ad
			.byte $00 ; $a7af
			.byte $00 ; $a7b0
			.byte $05, $05 ; $a7b1
			.byte $f4, $00 ; $a7b3
			.byte $8e, $8f, $97 ; $a7b5
			.byte $98 ; $a7b8
			.byte $a3, $a3 ; $a7b9
			.byte $b8 ; $a7bb
			.byte $b9, $cc, $48 ; $a7bc
			.byte $e2, $e3 ; $a7bf
			.byte $61, $61 ; $a7c1
			.byte $70, $5e ; $a7c3
			.byte $00 ; $a7c5
			.byte $00 ; $a7c6
			.byte $05, $05 ; $a7c7
			.byte $00 ; $a7c9
			.byte $00 ; $a7ca
			.byte $7d, $06, $0a ; $a7cb
			.byte $0b, $1b ; $a7ce
			.byte $1c, $2d, $2e ; $a7d0
			.byte $3b, $3c, $49 ; $a7d3
			.byte $4a ; $a7d6
			.byte $54, $55 ; $a7d7
			.byte $62 ; $a7d9
			.byte $63 ; $a7da
			.byte $71, $72 ; $a7db
			.byte $00 ; $a7dd
			.byte $00 ; $a7de
			.byte $05, $05 ; $a7df
			.byte $00 ; $a7e1
			.byte $00 ; $a7e2
			.byte $07, $08 ; $a7e3
			.byte $0c, $0d, $1d ; $a7e5
			.byte $1e, $2f, $30 ; $a7e8
			.byte $3c, $3c, $4b ; $a7eb
			.byte $4b ; $a7ee
			.byte $56, $57 ; $a7ef
			.byte $64, $65 ; $a7f1
			.byte $73, $74 ; $a7f3
			.byte $00 ; $a7f5
			.byte $00 ; $a7f6
			.byte $05, $05 ; $a7f7
			.byte $f5, $00 ; $a7f9
			.byte $0e, $1f, $20 ; $a7fb
			.byte $31, $32 ; $a7fe
			.byte $3c, $3c, $4b ; $a800
			.byte $4b, $58 ; $a803
			.byte $59, $66 ; $a805
			.byte $67, $75 ; $a807
			.byte $76, $00 ; $a809
			.byte $00 ; $a80b
			.byte $05, $05 ; $a80c
			.byte $f4, $00 ; $a80e
			.byte $0f, $10, $21 ; $a810
			.byte $22 ; $a813
			.byte $33, $34 ; $a814
			.byte $3c, $3d, $4b ; $a816
			.byte $4b, $59 ; $a819
			.byte $59, $68, $68 ; $a81b
			.byte $77 ; $a81e
			.byte $78 ; $a81f
			.byte $00 ; $a820
			.byte $00 ; $a821
			.byte $05 ; $a822
			.byte $05, $f4 ; $a823
			.byte $00 ; $a825
			.byte $11, $11 ; $a826
			.byte $23, $23 ; $a828
			.byte $35, $36 ; $a82a
			.byte $3e, $3f, $4b ; $a82c
			.byte $4b, $5a ; $a82f
			.byte $3c, $69, $6a ; $a831
			.byte $79, $7a, $00 ; $a834
			.byte $00 ; $a837
			.byte $05, $05 ; $a838
			.byte $f4, $00 ; $a83a
			.byte $11, $11 ; $a83c
			.byte $24, $25 ; $a83e
			.byte $36, $37 ; $a840
			.byte $40 ; $a842
			.byte $41, $4b ; $a843
			.byte $4b, $3c ; $a845
			.byte $3c, $6b, $6b ; $a847
			.byte $7b, $7c, $00 ; $a84a
			.byte $00 ; $a84d
			.byte $05, $05 ; $a84e
			.byte $f4, $00 ; $a850
			.byte $12 ; $a852
			.byte $13, $26 ; $a853
			.byte $27, $00 ; $a855
			.byte $00 ; $a857
			.byte $42 ; $a858
			.byte $00 ; $a859
			.byte $4c, $4d, $3c ; $a85a
			.byte $5b, $6c, $6d ; $a85d
			.byte $f4, $00 ; $a860
			.byte $05, $05 ; $a862
			.byte $f4, $00 ; $a864
			.byte $14, $00 ; $a866
			.byte $28 ; $a868
			.byte $ff, $00, $05 ; $a869
			.byte $05, $ff ; $a86c
			.byte $00 ; $a86e
			.byte $f7, $00 ; $a86f
			.byte $05, $05 ; $a871
			.byte $01, $01 ; $a873
			.byte $01, $01 ; $a875
			.byte $01, $01 ; $a877
			.byte $01, $01 ; $a879
			.byte $01, $01 ; $a87b
			.byte $01, $01 ; $a87d
			.byte $01, $01 ; $a87f
			.byte $01, $01 ; $a881
			.byte $01, $01 ; $a883
			.byte $01, $01 ; $a885
			.byte $01, $01 ; $a887
			.byte $01, $01 ; $a889
			.byte $8d, $a8, $25 ; $a88b
			.byte $5a ; $a88e
			.byte $55, $55 ; $a88f
			.byte $aa ; $a891
			.byte $01, $01 ; $a892
			.byte $01, $01 ; $a894
			.byte $01, $01 ; $a896
			.byte $01, $01 ; $a898
			.byte $01, $01 ; $a89a
			.byte $01, $01 ; $a89c
			.byte $01, $01 ; $a89e
			.byte $01 ; $a8a0
			.byte $01, $01 ; $a8a1
			.byte $01, $01 ; $a8a3
			.byte $01, $01 ; $a8a5
			.byte $01, $01 ; $a8a7
			.byte $02 ; $a8a9
			.byte $03, $04 ; $a8aa
			.byte $05, $06 ; $a8ac
			.byte $01, $01 ; $a8ae
			.byte $01, $01 ; $a8b0
			.byte $00 ; $a8b2
			.byte $01, $01 ; $a8b3
			.byte $01, $01 ; $a8b5
			.byte $01, $01 ; $a8b7
			.byte $01, $01 ; $a8b9
			.byte $01, $01 ; $a8bb
			.byte $01, $01 ; $a8bd
			.byte $01, $01 ; $a8bf
			.byte $01, $01 ; $a8c1
			.byte $01, $01 ; $a8c3
			.byte $01, $01 ; $a8c5
			.byte $01, $01 ; $a8c7
			.byte $01, $07 ; $a8c9
			.byte $08 ; $a8cb
			.byte $09, $0a ; $a8cc
			.byte $0b, $01 ; $a8ce
			.byte $01, $01 ; $a8d0
			.byte $01, $00 ; $a8d2
			.byte $01, $01 ; $a8d4
			.byte $01, $01 ; $a8d6
			.byte $01, $01 ; $a8d8
			.byte $01, $01 ; $a8da
			.byte $01, $01 ; $a8dc
			.byte $01, $01 ; $a8de
			.byte $01, $01 ; $a8e0
			.byte $01, $01 ; $a8e2
			.byte $01, $01 ; $a8e4
			.byte $01, $01 ; $a8e6
			.byte $01, $01 ; $a8e8
			.byte $0c, $0d, $0e ; $a8ea
			.byte $0f, $10, $11 ; $a8ed
			.byte $01, $01 ; $a8f0
			.byte $01, $01 ; $a8f2
			.byte $00 ; $a8f4
			.byte $17, $1b ; $a8f5
			.byte $2b, $43 ; $a8f7
			.byte $5b, $73, $80 ; $a8f9
			.byte $97, $af ; $a8fc
			.byte $c7, $df ; $a8fe
			.byte $f5, $00 ; $a900
			.byte $11, $29 ; $a902
			.byte $40 ; $a904
			.byte $58 ; $a905
			.byte $a9, $a9 ; $a906
			.byte $a9, $a9 ; $a908
			.byte $a9, $a9 ; $a90a
			.byte $a9, $a9 ; $a90c
			.byte $a9, $a9 ; $a90e
			.byte $a9, $a9 ; $a910
			.byte $aa ; $a912
			.byte $aa ; $a913
			.byte $aa ; $a914
			.byte $aa ; $a915
			.byte $aa ; $a916
			.byte $ff, $00, $f9 ; $a917
			.byte $00 ; $a91a
			.byte $f3, $00 ; $a91b
			.byte $08 ; $a91d
			.byte $12 ; $a91e
			.byte $13, $0f ; $a91f
			.byte $1c, $24, $25 ; $a921
			.byte $10, $2e ; $a924
			.byte $38 ; $a926
			.byte $2c, $f9, $00 ; $a927
			.byte $52 ; $a92a
			.byte $02 ; $a92b
			.byte $03, $09 ; $a92c
			.byte $0a ; $a92e
			.byte $14, $15 ; $a92f
			.byte $1d, $1e, $26 ; $a931
			.byte $27, $2f ; $a934
			.byte $2d, $39, $35 ; $a936
			.byte $00 ; $a939
			.byte $3e, $43, $44 ; $a93a
			.byte $49, $4a ; $a93d
			.byte $4e, $41, $53 ; $a93f
			.byte $47, $04 ; $a942
			.byte $05, $0b ; $a944
			.byte $0c, $16, $17 ; $a946
			.byte $1f, $1a, $1b ; $a949
			.byte $23, $30 ; $a94c
			.byte $31, $3a ; $a94e
			.byte $2b, $3f ; $a950
			.byte $37, $45 ; $a952
			.byte $42 ; $a954
			.byte $4b, $48 ; $a955
			.byte $3d ; $a957

			.byte $4f, $54, $55, $06	; $a958: 4f 54 55 06	 Data
			.byte $00, $0d, $0e, $18	; $a95c: 00 0d 0e 18	 Data
			.byte $11, $20, $21, $28	; $a960: 11 20 21 28	 Data
			.byte $29, $32, $33, $36	; $a964: 29 32 33 36	 Data
			.byte $3b, $40, $00, $46	; $a968: 3b 40 00 46	 Data
			.byte $00, $4c, $4d, $50	; $a96c: 00 4c 4d 50	 Data
			.byte $51, $56, $57, $f4	; $a970: 51 56 57 f4	 Data
			.byte $00, $19, $00, $22	; $a974: 00 19 00 22	 Data
			.byte $00, $2a, $00, $34	; $a978: 00 2a 00 34	 Data
			.byte $00, $3c, $fb, $00	; $a97c: 00 3c fb 00	 Data
			.byte $f3, $00, $08, $12	; $a980: f3 00 08 12	 Data
			.byte $13, $0f, $1c, $24	; $a984: 13 0f 1c 24	 Data
			.byte $25, $10, $2e, $15	; $a988: 25 10 2e 15	 Data
			.byte $3d, $2c, $08, $12	; $a98c: 3d 2c 08 12	 Data
			.byte $13, $0f, $1c, $24	; $a990: 13 0f 1c 24	 Data
			.byte $25, $10, $2e, $02	; $a994: 25 10 2e 02	 Data
			.byte $03, $09, $0a, $14	; $a998: 03 09 0a 14	 Data
			.byte $15, $1d, $1e, $26	; $a99c: 15 1d 1e 26	 Data
			.byte $27, $2f, $35, $2b	; $a9a0: 27 2f 35 2b	 Data
			.byte $3d, $14, $15, $14	; $a9a4: 3d 14 15 14	 Data
			.byte $15, $1d, $1e, $26	; $a9a8: 15 1d 1e 26	 Data
			.byte $27, $2f, $2d, $04	; $a9ac: 27 2f 2d 04	 Data
			.byte $05, $0b, $0c, $16	; $a9b0: 05 0b 0c 16	 Data
			.byte $17, $1f, $1a, $1b	; $a9b4: 17 1f 1a 1b	 Data
			.byte $23	; $a9b8: 23			Data
			.byte $30, $2b, $04, $05	; $a9b9: 30 2b 04 05	 Data
			.byte $0b, $0c, $16, $17	; $a9bd: 0b 0c 16 17	 Data
			.byte $1f, $1a, $1b, $23	; $a9c1: 1f 1a 1b 23	 Data
			.byte $30, $31, $06, $00	; $a9c5: 30 31 06 00	 Data
			.byte $0d, $0f, $18, $1a	; $a9c9: 0d 0f 18 1a	 Data
			.byte $20, $23, $28, $2b	; $a9cd: 20 23 28 2b	 Data
			.byte $15, $36, $06, $15	; $a9d1: 15 36 06 15	 Data
			.byte $0d, $0e, $18, $11	; $a9d5: 0d 0e 18 11	 Data
			.byte $20, $21, $28, $29	; $a9d9: 20 21 28 29	 Data
			.byte $32, $33, $f4, $00	; $a9dd: 32 33 f4 00	 Data
			.byte $1b, $00, $1f, $00	; $a9e1: 1b 00 1f 00	 Data
			.byte $15	; $a9e5: 15			Data
			.byte $2c, $37, $36, $1a	; $a9e6: 2c 37 36 1a	 Data
			.byte $3b, $30, $15, $19	; $a9ea: 3b 30 15 19	 Data
			.byte $19, $22, $22, $2a	; $a9ee: 19 22 22 2a	 Data
			.byte $2a, $34, $00, $f5	; $a9f2: 2a 34 00 f5	 Data
			.byte $00, $12	; $a9f6: 00 12		 Data
			.byte $00, $0f, $00	; $a9f8: 00 0f 00		Data
			.byte $24, $00 ; $a9fb
			.byte $10, $fc ; $a9fd
			.byte $00 ; $a9ff
			.byte $00 ; $aa00
			.byte $00 ; $aa01
			.byte $03, $04 ; $aa02
			.byte $13, $0b ; $aa04
			.byte $1c, $1d, $25 ; $aa06
			.byte $26, $2e ; $aa09
			.byte $2f, $38, $2c ; $aa0b
			.byte $f9, $00, $52 ; $aa0e
			.byte $00 ; $aa11
			.byte $00 ; $aa12
			.byte $05, $06 ; $aa13
			.byte $0c, $0d, $14 ; $aa15
			.byte $15, $27 ; $aa18
			.byte $1b, $2d, $30 ; $aa1a
			.byte $39, $35, $00 ; $aa1d
			.byte $3e, $43, $44 ; $aa20
			.byte $49, $4a ; $aa23
			.byte $4e, $41, $53 ; $aa25
			.byte $47, $f3 ; $aa28
			.byte $00 ; $aa2a
			.byte $03, $1e ; $aa2b
			.byte $0c, $2b, $3a ; $aa2d
			.byte $1a ; $aa30
			.byte $20, $23, $28 ; $aa31
			.byte $3a ; $aa34
			.byte $2b, $3f ; $aa35
			.byte $37, $45 ; $aa37
			.byte $42 ; $aa39
			.byte $4b, $48 ; $aa3a
			.byte $3d, $4f, $54 ; $aa3c
			.byte $55, $00 ; $aa3f
			.byte $00 ; $aa41
			.byte $04, $06 ; $aa42
			.byte $15, $0d ; $aa44
			.byte $1a ; $aa46
			.byte $20, $23, $28 ; $aa47
			.byte $31, $32 ; $aa4a
			.byte $2b, $36 ; $aa4c
			.byte $40 ; $aa4e
			.byte $00 ; $aa4f
			.byte $46, $00 ; $aa50
			.byte $4c, $4d, $50 ; $aa52
			.byte $51, $56 ; $aa55
			.byte $57, $00 ; $aa57
			.byte $00 ; $aa59
			.byte $0e, $00, $15 ; $aa5a
			.byte $19, $21, $22 ; $aa5d
			.byte $29, $2a ; $aa60
			.byte $33, $34 ; $aa62
			.byte $3b, $3c ; $aa64
			.byte $fa ; $aa66
			.byte $00 ; $aa67
			.byte $01, $01 ; $aa68
			.byte $01, $01 ; $aa6a
			.byte $01, $01 ; $aa6c
			.byte $01, $01 ; $aa6e
			.byte $01, $01 ; $aa70
			.byte $01, $01 ; $aa72
			.byte $01, $01 ; $aa74
			.byte $01, $01 ; $aa76
			.byte $01, $01 ; $aa78
			.byte $01, $01 ; $aa7a
			.byte $01, $01 ; $aa7c
			.byte $01, $01 ; $aa7e
			.byte $01, $01 ; $aa80
			.byte $01, $01 ; $aa82
			.byte $01, $01 ; $aa84
			.byte $01, $01 ; $aa86
			.byte $8a ; $aa88
			.byte $aa ; $aa89
			.byte $26, $55 ; $aa8a
			.byte $55, $55 ; $aa8c
			.byte $55 ; $aa8e

PRG06_aa8f:
			jsr PRG06_aaea			; $aa8f: 20 ea aa
			ldy $0481			; $aa92: ac 81 04
			LoadAddressFromTable PRG06_abc7, PRG06_abd2, y
PRG06_aa9f:
			ldy #$00				; $aa9f: a0 00
			lda (LoadedAddress),y		; $aaa1: b1 a5
			sta $a2			; $aaa3: 85 a2
			bne PRG06_aaa8			; $aaa5: d0 01
			rts				; $aaa7: 60

;-------------------------------------------------------------------------------
PRG06_aaa8:
			iny				; $aaa8: c8
			lda (LoadedAddress),y		; $aaa9: b1 a5
			sta $a3			; $aaab: 85 a3
			iny				; $aaad: c8
			lda (LoadedAddress),y		; $aaae: b1 a5
			sta $a4			; $aab0: 85 a4
			iny				; $aab2: c8
			lda (LoadedAddress),y		; $aab3: b1 a5
			tax				; $aab5: aa
			iny				; $aab6: c8
			lda (LoadedAddress),y		; $aab7: b1 a5
			sta $a0			; $aab9: 85 a0
			iny				; $aabb: c8
			clc				; $aabc: 18
			lda (LoadedAddress),y		; $aabd: b1 a5
			tay				; $aabf: a8
			lda $0482,y		; $aac0: b9 82 04
			adc $a0			; $aac3: 65 a0
			sta $a0			; $aac5: 85 a0
			clc				; $aac7: 18
			lda LoadAddress_Low			; $aac8: a5 a5
			adc #$06				; $aaca: 69 06
			sta LoadAddress_Low			; $aacc: 85 a5
			lda LoadAddress_High			; $aace: a5 a6
			adc #$00				; $aad0: 69 00
			sta LoadAddress_High			; $aad2: 85 a6
			ldy #$00				; $aad4: a0 00
PRG06_aad6:
			lda ($a3),y		; $aad6: b1 a3
PRG06_aad8:
			clc				; $aad8: 18
			adc $a0			; $aad9: 65 a0
			sta $0200,x		; $aadb: 9d 00 02
			iny				; $aade: c8
			inx				; $aadf: e8
			inx				; $aae0: e8
			inx				; $aae1: e8
			inx				; $aae2: e8
			dec $a2			; $aae3: c6 a2
			bne PRG06_aad6			; $aae5: d0 ef
			jmp PRG06_aa9f			; $aae7: 4c 9f aa

;-------------------------------------------------------------------------------
PRG06_aaea:
			cpy #$ff				; $aaea: c0 ff
			php				; $aaec: 08
			beq +			; $aaed: f0 03
			sty $0481			; $aaef: 8c 81 04
+
			ldy $0481			; $aaf2: ac 81 04
PRG06_aaf5:
			lda PRG06_ab03-1,y			; $aaf5: b9 02 ab
			sta $a3			; $aaf8: 85 a3
			lda PRG06_ab0d,y			; $aafa: b9 0d ab
			sta $a4			; $aafd: 85 a4
			plp				; $aaff: 28
			jmp ($00a3)


PRG06_ab03:
			.byte $27, $2a ; $ab03
			.byte $4d, $86, $9a ; $ab05
			.byte $a5, $a5 ; $ab08
			.byte $a5, $a5 ; $ab0a
			.byte $a5 ; $ab0c
PRG06_ab0d:
			.byte $27, $ab, $ab, $ab	; $ab0d: 27 ab ab ab	 Data
			.byte $ab, $ab, $ab, $ab	; $ab11: ab ab ab ab	 Data
			.byte $ab, $ab, $ab, $ab	; $ab15: ab ab ab ab	 Data

;-------------------------------------------------------------------------------
PRG06_ab19:
			ldx #$03				; $ab19: a2 03
			lda #$00				; $ab1b: a9 00
PRG06_ab1d:
			sta $0482,x		; $ab1d: 9d 82 04
			sta $0486,x		; $ab20: 9d 86 04
			dex				; $ab23: ca
			bpl PRG06_ab1d			; $ab24: 10 f7
			rts				; $ab26: 60

;-------------------------------------------------------------------------------
			bne PRG06_ab19			; $ab27: d0 f0
			rts				; $ab29: 60

;-------------------------------------------------------------------------------
			beq PRG06_ab2f			; $ab2a: f0 03
			jmp PRG06_ab19			; $ab2c: 4c 19 ab

;-------------------------------------------------------------------------------
PRG06_ab2f:
			clc				; $ab2f: 18
			lda $0487			; $ab30: ad 87 04
			adc #$06				; $ab33: 69 06
			sta $0487			; $ab35: 8d 87 04
			bcc PRG06_ab3d			; $ab38: 90 03
			inc $0483			; $ab3a: ee 83 04
PRG06_ab3d:
			lda $0483			; $ab3d: ad 83 04
			lsr				; $ab40: 4a
			lsr				; $ab41: 4a
			lsr				; $ab42: 4a
			sta $0485			; $ab43: 8d 85 04
			jsr Main_c078			; $ab46: 20 78 c0
			sta $0484			; $ab49: 8d 84 04
			rts				; $ab4c: 60

;-------------------------------------------------------------------------------
			beq PRG06_ab52			; $ab4d: f0 03
			jmp PRG06_ab19			; $ab4f: 4c 19 ab

;-------------------------------------------------------------------------------
PRG06_ab52:
			sec				; $ab52: 38
			lda $0487			; $ab53: ad 87 04
			sbc #$08				; $ab56: e9 08
			sta $0487			; $ab58: 8d 87 04
			bcs PRG06_ab60			; $ab5b: b0 03
			dec $0483			; $ab5d: ce 83 04
PRG06_ab60:
			sec				; $ab60: 38
			lda $0488			; $ab61: ad 88 04
			sbc #$20				; $ab64: e9 20
			sta $0488			; $ab66: 8d 88 04
			bcs PRG06_ab6e			; $ab69: b0 03
			dec $0484			; $ab6b: ce 84 04
PRG06_ab6e:
			inc $0489			; $ab6e: ee 89 04
			lda $0489			; $ab71: ad 89 04
			tay				; $ab74: a8
			and #$3f				; $ab75: 29 3f
			bne PRG06_ab85			; $ab77: d0 0c
			tya				; $ab79: 98
			bmi PRG06_ab82			; $ab7a: 30 06
			inc $0485			; $ab7c: ee 85 04
			jmp PRG06_ab85			; $ab7f: 4c 85 ab

;-------------------------------------------------------------------------------
PRG06_ab82:
			dec $0485			; $ab82: ce 85 04
PRG06_ab85:
			rts				; $ab85: 60

;-------------------------------------------------------------------------------
			beq PRG06_ab8b			; $ab86: f0 03
			jmp PRG06_ab19			; $ab88: 4c 19 ab

;-------------------------------------------------------------------------------
PRG06_ab8b:
			clc				; $ab8b: 18
			lda $0487			; $ab8c: ad 87 04
			adc #$40				; $ab8f: 69 40
			sta $0487			; $ab91: 8d 87 04
			bcc PRG06_ab99			; $ab94: 90 03
			inc $0483			; $ab96: ee 83 04
PRG06_ab99:
			rts				; $ab99: 60

;-------------------------------------------------------------------------------
			beq PRG06_aba5			; $ab9a: f0 09
			jsr PRG06_ab19			; $ab9c: 20 19 ab
			lda #$ff				; $ab9f: a9 ff
			sta $0483			; $aba1: 8d 83 04
			rts				; $aba4: 60

;-------------------------------------------------------------------------------
PRG06_aba5:
			sec				; $aba5: 38
			lda $0487			; $aba6: ad 87 04
			sbc #$50				; $aba9: e9 50
			sta $0487			; $abab: 8d 87 04
			bcs PRG06_abc7			; $abae: b0 17
			dec $0483			; $abb0: ce 83 04
			lda $0483			; $abb3: ad 83 04
			eor #$ff				; $abb6: 49 ff
			lsr				; $abb8: 4a
			lsr				; $abb9: 4a
			lsr				; $abba: 4a
			clc				; $abbb: 18
			adc #$05				; $abbc: 69 05
			cmp #$0b				; $abbe: c9 0b
			bcc PRG06_abc4			; $abc0: 90 02
			lda #$0a				; $abc2: a9 0a
PRG06_abc4:
			sta $0481			; $abc4: 8d 81 04
PRG06_abc7:
			rts				; $abc7: 60

;-------------------------------------------------------------------------------
			.byte $0e, $27, $52 ; $abc8
			.byte $89, $c6 ; $abcb
			.byte $df, $f8, $11 ; $abcd
			.byte $2a ; $abd0
			.byte $43 ; $abd1
PRG06_abd2:
			.byte $5c, $ac, $ac, $ac	; $abd2: 5c ac ac ac	 Data
			.byte $ac, $ac, $ac, $ac	; $abd6: ac ac ac ac	 Data
			.byte $ad, $ad, $ad, $ad	; $abda: ad ad ad ad	 Data
			.byte $00, $00, $00, $00	; $abde: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $abe2: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $abe6: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $abea: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $abee: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $abf2: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $abf6: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $abfa: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $abfe: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $ac02: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $ac06: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $ac0a: 00 00 00 00	 Data
			.byte $13, $88, $ad, $05	; $ac0e: 13 88 ad 05	 Data
			.byte $00, $00, $13, $de	; $ac12: 00 00 13 de	 Data
			.byte $ab, $06, $01, $00	; $ac16: ab 06 01 00	 Data
			.byte $13, $9b, $ad, $07	; $ac1a: 13 9b ad 07	 Data
			.byte $00, $00, $13, $75	; $ac1e: 00 00 13 75	 Data
			.byte $ad, $04, $00, $00	; $ac22: ad 04 00 00	 Data
			.byte $00, $09, $c9, $ad	; $ac26: 00 09 c9 ad	 Data
			.byte $05, $00, $00, $09	; $ac2a: 05 00 00 09	 Data
			.byte $c0, $ad, $06, $00	; $ac2e: c0 ad 06 00	 Data
			.byte $00, $09, $b7, $ad	; $ac32: 00 09 b7 ad	 Data
			.byte $07, $00, $01, $01	; $ac36: 07 00 01 01	 Data
			.byte $ae, $ad, $04, $00	; $ac3a: ae ad 04 00	 Data
			.byte $02, $01, $af, $ad	; $ac3e: 02 01 af ad	 Data
			.byte $08, $00, $03, $02	; $ac42: 08 00 03 02	 Data
			.byte $b0, $ad, $0c, $00	; $ac46: b0 ad 0c 00	 Data
			.byte $02, $05, $b2, $ad	; $ac4a: 02 05 b2 ad	 Data
			.byte $14, $00, $00, $00	; $ac4e: 14 00 00 00	 Data
			.byte $0f, $fd, $ad, $07	; $ac52: 0f fd ad 07	 Data
			.byte $00, $02, $0c, $0c	; $ac56: 00 02 0c 0c	 Data
			.byte $ae, $43, $00, $01	; $ac5a: ae 43 00 01	 Data
			.byte $0f, $18, $ae, $73	; $ac5e: 0f 18 ae 73	 Data
			.byte $00, $00, $01, $27	; $ac62: 00 00 01 27	 Data
			.byte $ae, $af, $00, $01	; $ac66: ae af 00 01	 Data
			.byte $1b, $28, $ae, $05	; $ac6a: 1b 28 ae 05	 Data
			.byte $ff, $00, $10, $de	; $ac6e: ff 00 10 de	 Data
			.byte $ab, $71, $c6, $00	; $ac72: ab 71 c6 00	 Data
			.byte $2b, $de, $ab, $06	; $ac76: 2b de ab 06	 Data
			.byte $00, $00, $2a, $d2	; $ac7a: 00 00 2a d2	 Data
			.byte $ad, $04, $00, $00	; $ac7e: ad 04 00 00	 Data
			.byte $01, $fc, $ad, $ac	; $ac82: 01 fc ad ac	 Data
			.byte $00, $03, $00, $06	; $ac86: 00 03 00 06	 Data
			.byte $43, $ae, $07, $18	; $ac8a: 43 ae 07 18	 Data
			.byte $01, $06, $43, $ae	; $ac8e: 01 06 43 ae	 Data
			.byte $1f, $80, $01, $06	; $ac92: 1f 80 01 06	 Data
			.byte $43, $ae, $37, $b0	; $ac96: 43 ae 37 b0	 Data
			.byte $01, $12, $de, $ab	; $ac9a: 01 12 de ab	 Data
			.byte $06, $63, $00, $06	; $ac9e: 06 63 00 06	 Data
			.byte $49, $ae, $05, $00	; $aca2: 49 ae 05 00	 Data
			.byte $00, $06, $49, $ae	; $aca6: 00 06 49 ae	 Data
			.byte $1d, $00, $00, $06	; $acaa: 1d 00 00 06	 Data
			.byte $49, $ae, $35, $00	; $acae: 49 ae 35 00	 Data
			.byte $00, $06, $de, $ab	; $acb2: 00 06 de ab	 Data
			.byte $04, $48, $00, $06	; $acb6: 04 48 00 06	 Data
			.byte $de, $ab, $1c, $38	; $acba: de ab 1c 38	 Data
			.byte $00, $06, $de, $ab	; $acbe: 00 06 de ab	 Data
			.byte $34, $58, $00, $00	; $acc2: 34 58 00 00	 Data
			.byte $03, $68, $ae, $07	; $acc6: 03 68 ae 07	 Data
			.byte $00, $01, $03, $81	; $acca: 00 01 03 81	 Data
			.byte $ae, $06, $00, $00	; $acce: ae 06 00 00	 Data
			.byte $03, $9a, $ae, $05	; $acd2: 03 9a ae 05	 Data
			.byte $00, $00, $03, $4f	; $acd6: 00 00 03 4f	 Data
			.byte $ae, $04, $60, $00	; $acda: ae 04 60 00	 Data
			.byte $00, $07, $68, $ae	; $acde: 00 07 68 ae	 Data
			.byte $07, $00, $01, $07	; $ace2: 07 00 01 07	 Data
			.byte $81, $ae, $06, $00	; $ace6: 81 ae 06 00	 Data
			.byte $00, $07, $9a, $ae	; $acea: 00 07 9a ae	 Data
			.byte $05, $00, $00, $07	; $acee: 05 00 00 07	 Data
			.byte $4f, $ae, $04, $60	; $acf2: 4f ae 04 60	 Data
			.byte $00, $00, $0c, $68	; $acf6: 00 00 0c 68	 Data
			.byte $ae, $07, $00, $01	; $acfa: ae 07 00 01	 Data
			.byte $0c, $81, $ae, $06	; $acfe: 0c 81 ae 06	 Data
			.byte $00, $00, $0c, $9a	; $ad02: 00 00 0c 9a	 Data
			.byte $ae, $05, $00, $00	; $ad06: ae 05 00 00	 Data
			.byte $0c, $4f, $ae, $04	; $ad0a: 0c 4f ae 04	 Data
			.byte $60, $00, $00, $11	; $ad0e: 60 00 00 11	 Data
			.byte $68, $ae, $07, $00	; $ad12: 68 ae 07 00	 Data
			.byte $01, $11, $81, $ae	; $ad16: 01 11 81 ae	 Data
			.byte $06, $00, $00, $11	; $ad1a: 06 00 00 11	 Data
			.byte $9a, $ae, $05, $00	; $ad1e: 9a ae 05 00	 Data
			.byte $00, $11, $4f, $ae	; $ad22: 00 11 4f ae	 Data
			.byte $04, $60, $00, $00	; $ad26: 04 60 00 00	 Data
			.byte $15, $68, $ae, $07	; $ad2a: 15 68 ae 07	 Data
			.byte $00, $01, $15, $81	; $ad2e: 00 01 15 81	 Data
			.byte $ae, $06, $00, $00	; $ad32: ae 06 00 00	 Data
			.byte $15, $9a, $ae, $05	; $ad36: 15 9a ae 05	 Data
			.byte $00, $00, $15, $4f	; $ad3a: 00 00 15 4f	 Data
			.byte $ae, $04, $60, $00	; $ad3e: ae 04 60 00	 Data
			.byte $00, $19, $68, $ae	; $ad42: 00 19 68 ae	 Data
			.byte $07, $00, $01, $19	; $ad46: 07 00 01 19	 Data
			.byte $81, $ae, $06, $00	; $ad4a: 81 ae 06 00	 Data
			.byte $00, $19, $9a, $ae	; $ad4e: 00 19 9a ae	 Data
			.byte $05, $00, $00, $19	; $ad52: 05 00 00 19	 Data
			.byte $4f, $ae, $04, $60	; $ad56: 4f ae 04 60	 Data
			.byte $00, $00, $1a, $cd	; $ad5a: 00 00 1a cd	 Data
			.byte $ae, $6b, $00, $00	; $ad5e: ae 6b 00 00	 Data
			.byte $1a, $de, $ab, $6a	; $ad62: 1a de ab 6a	 Data
			.byte $03, $00, $1a, $e7	; $ad66: 03 00 1a e7	 Data
			.byte $ae, $69, $00, $00	; $ad6a: ae 69 00 00	 Data
			.byte $1a, $b3, $ae, $68	; $ad6e: 1a b3 ae 68	 Data
			.byte $10, $00, $00, $67	; $ad72: 10 00 00 67	 Data
			.byte $67, $77, $77, $77	; $ad76: 67 77 77 77	 Data
			.byte $77, $77, $77, $77	; $ad7a: 77 77 77 77	 Data
			.byte $77, $87, $87, $87	; $ad7e: 77 87 87 87	 Data
			.byte $87, $87, $87, $87	; $ad82: 87 87 87 87	 Data
			.byte $87, $97, $90, $92	; $ad86: 87 97 90 92	 Data
			.byte $94, $96, $98, $9a	; $ad8a: 94 96 98 9a	 Data
			.byte $9c, $9e, $a0, $a2	; $ad8e: 9c 9e a0 a2	 Data
			.byte $a4, $a6, $a8, $aa	; $ad92: a4 a6 a8 aa	 Data
			.byte $ac, $ae, $b0, $b2	; $ad96: ac ae b0 b2	 Data
			.byte $b4, $28, $40, $20	; $ad9a: b4 28 40 20	 Data
			.byte $28, $30, $38, $40	; $ad9e: 28 30 38 40	 Data
			.byte $48, $50, $58, $20	; $ada2: 48 50 58 20	 Data
			.byte $28, $30, $38, $40	; $ada6: 28 30 38 40	 Data
			.byte $48, $50, $58, $58	; $adaa: 48 50 58 58	 Data
			.byte $55, $56, $62, $62	; $adae: 55 56 62 62	 Data
			.byte $6d, $6d, $75, $80	; $adb2: 6d 6d 75 80	 Data
			.byte $91, $8a, $30, $b2	; $adb6: 91 8a 30 b2	 Data
			.byte $ba, $6a, $72, $52	; $adba: ba 6a 72 52	 Data
			.byte $20, $a8, $00, $01	; $adbe: 20 a8 00 01	 Data
			.byte $02, $02, $02, $02	; $adc2: 02 02 02 02	 Data
			.byte $03, $00, $01, $a6	; $adc6: 03 00 01 a6	 Data
			.byte $a8, $9e, $a0, $90	; $adca: a8 9e a0 90	 Data
			.byte $92, $aa, $ac, $ae	; $adce: 92 aa ac ae	 Data
			.byte $70, $70, $70, $70	; $add2: 70 70 70 70	 Data
			.byte $70, $80, $80, $80	; $add6: 70 80 80 80	 Data
			.byte $80, $80, $98, $98	; $adda: 80 80 98 98	 Data
			.byte $98, $98, $98, $58	; $adde: 98 98 98 58	 Data
			.byte $58, $58, $60, $60	; $ade2: 58 58 60 60	 Data
			.byte $60, $68, $68, $68	; $ade6: 60 68 68 68	 Data
			.byte $90, $90, $90, $38	; $adea: 90 90 90 38	 Data
			.byte $38, $40, $40, $48	; $adee: 38 40 40 48	 Data
			.byte $48, $50, $50, $50	; $adf2: 48 50 50 50	 Data
			.byte $50, $58, $78, $78	; $adf6: 50 58 78 78	 Data
			.byte $78, $88, $60, $b8	; $adfa: 78 88 60 b8	 Data
			.byte $c0, $c8, $d0, $d8	; $adfe: c0 c8 d0 d8	 Data
			.byte $58, $60, $68, $70	; $ae02: 58 60 68 70	 Data
			.byte $78, $c8, $d0, $d8	; $ae06: 78 c8 d0 d8	 Data
			.byte $e0, $e8, $58, $60	; $ae0a: e0 e8 58 60	 Data
			.byte $68, $88, $90, $98	; $ae0e: 68 88 90 98	 Data
			.byte $20, $28, $30, $a8	; $ae12: 20 28 30 a8	 Data
			.byte $b0, $b8, $40, $70	; $ae16: b0 b8 40 70	 Data
			.byte $28, $50, $20, $60	; $ae1a: 28 50 20 60	 Data
			.byte $10, $28, $40, $e8	; $ae1e: 10 28 40 e8	 Data
			.byte $e0, $28, $90, $a8	; $ae22: e0 28 90 a8	 Data
			.byte $38, $e8, $d3, $d5	; $ae26: 38 e8 d3 d5	 Data
			.byte $d7, $d9, $db, $d3	; $ae2a: d7 d9 db d3	 Data
			.byte $d5, $d7, $d9, $db	; $ae2e: d5 d7 d9 db	 Data
			.byte $d3, $d5, $d7, $d9	; $ae32: d3 d5 d7 d9	 Data
			.byte $db, $c1, $c3, $c5	; $ae36: db c1 c3 c5	 Data
			.byte $c1, $c3, $c5, $c1	; $ae3a: c1 c3 c5 c1	 Data
			.byte $c3, $c5, $c1, $c3	; $ae3e: c3 c5 c1 c3	 Data
			.byte $c5, $00, $08, $10	; $ae42: c5 00 08 10	 Data
			.byte $18, $20, $28, $e6	; $ae46: 18 20 28 e6	 Data
			.byte $e4, $e2, $e0, $de	; $ae4a: e4 e2 e0 de	 Data
			.byte $dc, $10, $20, $30	; $ae4e: dc 10 20 30	 Data
			.byte $08, $18, $20, $30	; $ae52: 08 18 20 30	 Data
			.byte $00, $10, $18, $28	; $ae56: 00 10 18 28	 Data
			.byte $38, $00, $10, $28	; $ae5a: 38 00 10 28	 Data
			.byte $20, $38, $10, $28	; $ae5e: 20 38 10 28	 Data
			.byte $20, $38, $10, $18	; $ae62: 20 38 10 18	 Data
			.byte $28, $38, $00, $00	; $ae66: 28 38 00 00	 Data
			.byte $00, $08, $08, $08	; $ae6a: 00 08 08 08	 Data
			.byte $08, $10, $10, $10	; $ae6e: 08 10 10 10	 Data
			.byte $10, $10, $18, $18	; $ae72: 10 10 18 18	 Data
			.byte $18, $18, $18, $20	; $ae76: 18 18 18 20	 Data
			.byte $20, $20, $20, $28	; $ae7a: 20 20 20 28	 Data
			.byte $28, $28, $28, $00	; $ae7e: 28 28 28 00	 Data
			.byte $00, $03, $00, $00	; $ae82: 00 03 00 00	 Data
			.byte $02, $03, $00, $00	; $ae86: 02 03 00 00	 Data
			.byte $01, $03, $03, $00	; $ae8a: 01 03 03 00	 Data
			.byte $00, $03, $02, $03	; $ae8e: 00 03 02 03	 Data
			.byte $00, $03, $02, $03	; $ae92: 00 03 02 03	 Data
			.byte $00, $01, $03, $03	; $ae96: 00 01 03 03	 Data
			.byte $cf, $d1, $d3, $d5	; $ae9a: cf d1 d3 d5	 Data
			.byte $d7, $d9, $db, $dd	; $ae9e: d7 d9 db dd	 Data
			.byte $df, $e1, $e3, $e5	; $aea2: df e1 e3 e5	 Data
			.byte $e7, $e9, $ed, $eb	; $aea6: e7 e9 ed eb	 Data
			.byte $ef, $f1, $f5, $f3	; $aeaa: ef f1 f5 f3	 Data
			.byte $f7, $f9, $fb, $fd	; $aeae: f7 f9 fb fd	 Data
			.byte $ff, $00, $00, $00	; $aeb2: ff 00 00 00	 Data
			.byte $08, $08, $08, $08	; $aeb6: 08 08 08 08	 Data
			.byte $10, $10, $10, $10	; $aeba: 10 10 10 10	 Data
			.byte $18, $18, $18, $18	; $aebe: 18 18 18 18	 Data
			.byte $20, $20, $28, $28	; $aec2: 20 20 28 28	 Data
			.byte $30, $30, $30, $30	; $aec6: 30 30 30 30	 Data
			.byte $38, $38, $38, $60	; $aeca: 38 38 38 60	 Data
			.byte $a0, $d0, $18, $20	; $aece: a0 d0 18 20	 Data
			.byte $38, $b0, $08, $90	; $aed2: 38 b0 08 90	 Data
			.byte $98, $e0, $28, $70	; $aed6: 98 e0 28 70	 Data
			.byte $88, $f0, $80, $c8	; $aeda: 88 f0 80 c8	 Data
			.byte $28, $b0, $10, $d0	; $aede: 28 b0 10 d0	 Data
			.byte $e0, $e8, $20, $50	; $aee2: e0 e8 20 50	 Data
			.byte $f0, $05, $07, $07	; $aee6: f0 05 07 07	 Data
			.byte $09, $07, $05, $0b	; $aeea: 09 07 05 0b	 Data
			.byte $0b, $01, $03, $05	; $aeee: 0b 01 03 05	 Data
			.byte $03, $05, $03, $07	; $aef2: 03 05 03 07	 Data
			.byte $09, $05, $0b, $07	; $aef6: 09 05 0b 07	 Data
			.byte $05, $07, $09, $03	; $aefa: 05 07 09 03	 Data
			.byte $07, $0b, $09	; $aefe: 07 0b 09		Data
			.byte $85, $21, $0a, $0a	; $af01: 85 21 0a 0a	 Data
			.byte $aa, $bd, $21, $af	; $af05: aa bd 21 af	 Data
			.byte $29, $bf, $a8	; $af09: 29 bf a8		Data
PRG06_af0c:
			inx				; $af0c: e8
			lda PRG06_af21,x			; $af0d: bd 21 af
			and #$40				; $af10: 29 40
			bne PRG06_af20			; $af12: d0 0c
			lda PRG06_af21,x			; $af14: bd 21 af
			and #$3f				; $af17: 29 3f
			sta $0080,y		; $af19: 99 80 00
			iny				; $af1c: c8
			jmp PRG06_af0c			; $af1d: 4c 0c af

;-------------------------------------------------------------------------------
PRG06_af20:
			.byte $e6	; $af20: e6		Suspected data
PRG06_af21:
			.byte $21, $a5, $21, $60	; $af21: 21 a5 21 60	 Data
			.byte $59, $07, $0f, $0f	; $af25: 59 07 0f 0f	 Data
			.byte $59, $17, $07, $0f	; $af29: 59 17 07 0f	 Data
			.byte $59, $27, $17, $06	; $af2d: 59 27 17 06	 Data
			.byte $59, $37, $27, $06	; $af31: 59 37 27 06	 Data
			.byte $41, $0c, $0f, $0f	; $af35: 41 0c 0f 0f	 Data
			.byte $0f, $0c, $0c, $40	; $af39: 0f 0c 0c 40	 Data
			.byte $41, $1c, $0c, $0f	; $af3d: 41 1c 0c 0f	 Data
			.byte $0f, $1c, $1c, $40	; $af41: 0f 1c 1c 40	 Data
			.byte $41, $2c, $1c, $0c	; $af45: 41 2c 1c 0c	 Data
			.byte $0f, $2c, $2c, $40	; $af49: 0f 2c 2c 40	 Data
			.byte $45, $2c, $16, $16	; $af4d: 45 2c 16 16	 Data
			.byte $59, $37, $37, $16	; $af51: 59 37 37 16	 Data
			.byte $59, $37, $30, $26	; $af55: 59 37 30 26	 Data
			.byte $c1, $2c, $1c, $0c	; $af59: c1 2c 1c 0c	 Data
			.byte $0f, $27, $18, $08	; $af5d: 0f 27 18 08	 Data
			.byte $0f, $28, $18, $08	; $af61: 0f 28 18 08	 Data
			.byte $0f, $28, $27, $08	; $af65: 0f 28 27 08	 Data
			.byte $0f, $30, $31, $12	; $af69: 0f 30 31 12	 Data
			.byte $0f, $30, $21, $12	; $af6d: 0f 30 21 12	 Data
			.byte $0f, $10, $12, $12	; $af71: 0f 10 12 12	 Data
			.byte $0f, $31, $12, $0c	; $af75: 0f 31 12 0c	 Data
			.byte $40, $ff, $00, $ff	; $af79: 40 ff 00 ff	 Data
			.byte $00, $ff, $00, $ca	; $af7d: 00 ff 00 ca	 Data
			.byte $00, $02, $0d, $0e	; $af81: 00 02 0d 0e	 Data
			.byte $9d, $00, $03, $0f	; $af85: 9d 00 03 0f	 Data
			.byte $10, $11, $9d, $00	; $af89: 10 11 9d 00	 Data
			.byte $04, $12, $13, $14	; $af8d: 04 12 13 14	 Data
			.byte $15, $9b, $00, $05	; $af91: 15 9b 00 05	 Data
			.byte $16, $17, $18, $19	; $af95: 16 17 18 19	 Data
			.byte $1a, $9c, $00	; $af99: 1a 9c 00		Data
			.byte $04, $1b	; $af9c: 04 1b		 Data
			.byte $1c, $1d, $1e, $9c	; $af9e: 1c 1d 1e 9c	 Data
			.byte $00, $04, $1f, $20	; $afa2: 00 04 1f 20	 Data
			.byte $21, $22, $9a, $00	; $afa6: 21 22 9a 00	 Data
			.byte $06, $23, $24, $25	; $afaa: 06 23 24 25	 Data
			.byte $26, $27, $28, $89	; $afae: 26 27 28 89	 Data
			.byte $00, $08, $29, $2a	; $afb2: 00 08 29 2a	 Data
			.byte $00, $2b, $2c, $2d	; $afb6: 00 2b 2c 2d	 Data
			.byte $2e, $2f, $89, $00	; $afba: 2e 2f 89 00	 Data
			.byte $19, $31, $32, $33	; $afbe: 19 31 32 33	 Data
			.byte $34, $35, $36, $00	; $afc2: 34 35 36 00	 Data
			.byte $00, $37, $38, $39	; $afc6: 00 37 38 39	 Data
			.byte $3a, $3b, $3c, $3d	; $afca: 3a 3b 3c 3d	 Data
			.byte $3e, $3f, $40, $41	; $afce: 3e 3f 40 41	 Data
			.byte $42, $43, $44, $45	; $afd2: 42 43 44 45	 Data
			.byte $46, $47, $83, $00	; $afd6: 46 47 83 00	 Data
			.byte $5e, $48, $49, $4a	; $afda: 5e 48 49 4a	 Data
			.byte $4b, $4c, $4d, $4e	; $afde: 4b 4c 4d 4e	 Data
			.byte $4f, $50, $51, $52	; $afe2: 4f 50 51 52	 Data
			.byte $53, $54, $55, $56	; $afe6: 53 54 55 56	 Data
			.byte $57, $58, $59, $5a	; $afea: 57 58 59 5a	 Data
			.byte $5b, $5c, $5d, $5e	; $afee: 5b 5c 5d 5e	 Data
			.byte $5f, $60, $61, $62	; $aff2: 5f 60 61 62	 Data
			.byte $63, $64, $65, $66	; $aff6: 63 64 65 66	 Data
			.byte $67, $68, $69, $6a	; $affa: 67 68 69 6a	 Data
			.byte $6b, $6c, $6d, $6e	; $affe: 6b 6c 6d 6e	 Data
			.byte $6f, $70, $71, $72	; $b002: 6f 70 71 72	 Data
			.byte $73, $74, $75, $76	; $b006: 73 74 75 76	 Data
			.byte $77, $78, $79, $7a	; $b00a: 77 78 79 7a	 Data
			.byte $7b, $7c, $7d, $7e	; $b00e: 7b 7c 7d 7e	 Data
			.byte $7f, $80, $81, $82	; $b012: 7f 80 81 82	 Data
			.byte $83, $84, $85, $86	; $b016: 83 84 85 86	 Data
			.byte $87, $00, $88, $89	; $b01a: 87 00 88 89	 Data
			.byte $8a, $00, $8b, $8c	; $b01e: 8a 00 8b 8c	 Data
			.byte $8d, $8e, $8f, $90	; $b022: 8d 8e 8f 90	 Data
			.byte $00, $91, $92, $93	; $b026: 00 91 92 93	 Data
			.byte $94, $95, $96, $97	; $b02a: 94 95 96 97	 Data
			.byte $98, $99, $9a, $9b	; $b02e: 98 99 9a 9b	 Data
			.byte $9c, $9d, $9e, $9f	; $b032: 9c 9d 9e 9f	 Data
			.byte $a0, $a1, $a2, $8f	; $b036: a0 a1 a2 8f	 Data
			.byte $00, $04, $a3, $a4	; $b03a: 00 04 a3 a4	 Data
			.byte $a5, $a6, $88, $00	; $b03e: a5 a6 88 00	 Data
			.byte $03, $a7, $a8, $a9	; $b042: 03 a7 a8 a9	 Data
			.byte $ff, $00, $ad, $00	; $b046: ff 00 ad 00	 Data
			.byte $10, $af, $20, $8c	; $b04a: 10 af 20 8c	 Data
			.byte $55, $5d, $ff, $55	; $b04e: 55 5d ff 55	 Data
			.byte $af, $0a, $00, $00	; $b052: af 0a 00 00	 Data
			.byte $0a, $06, $05, $0a	; $b056: 0a 06 05 0a	 Data
			.byte $02, $ff, $00, $ff	; $b05a: 02 ff 00 ff	 Data
			.byte $00, $ff, $00, $ff	; $b05e: 00 ff 00 ff	 Data
			.byte $00, $ff, $00, $cd	; $b062: 00 ff 00 cd	 Data
			.byte $00, $53, $48, $49	; $b066: 00 53 48 49	 Data
			.byte $4a, $4b, $4c, $ab	; $b06a: 4a 4b 4c ab	 Data
			.byte $49, $ac, $67, $48	; $b06e: 49 ac 67 48	 Data
			.byte $ad, $ae, $af, $b0	; $b072: ad ae af b0	 Data
			.byte $b1, $b2, $ad, $ae	; $b076: b1 b2 ad ae	 Data
			.byte $af, $b0, $b1, $b2	; $b07a: af b0 b1 b2	 Data
			.byte $48, $ad, $67, $49	; $b07e: 48 ad 67 49	 Data
			.byte $4a, $4b, $4c, $ac	; $b082: 4a 4b 4c ac	 Data
			.byte $b3, $67, $b4, $00	; $b086: b3 67 b4 00	 Data
			.byte $b5, $6b, $b6, $b7	; $b08a: b5 6b b6 b7	 Data
			.byte $b8, $b9, $ba, $00	; $b08e: b8 b9 ba 00	 Data
			.byte $bb, $bc, $00, $bd	; $b092: bb bc 00 bd	 Data
			.byte $be, $bf, $97, $00	; $b096: be bf 97 00	 Data
			.byte $c1, $c2, $c3, $c4	; $b09a: c1 c2 c3 c4	 Data
			.byte $c5, $c6, $c7, $c8	; $b09e: c5 c6 c7 c8	 Data
			.byte $c9, $ca, $cb, $85	; $b0a2: c9 ca cb 85	 Data
			.byte $86, $87, $cc, $00	; $b0a6: 86 87 cc 00	 Data
			.byte $89, $8a, $9c, $9d	; $b0aa: 89 8a 9c 9d	 Data
			.byte $9e	; $b0ae: 9e			Data
			.byte $00, $00, $a1, $89	; $b0af: 00 00 a1 89	 Data
			.byte $8a, $91, $92, $93	; $b0b3: 8a 91 92 93	 Data
			.byte $94, $95, $96, $97	; $b0b7: 94 95 96 97	 Data
			.byte $83, $00, $03, $9c	; $b0bb: 83 00 03 9c	 Data
			.byte $9d, $9e, $83, $00	; $b0bf: 9d 9e 83 00	 Data
			.byte $02, $a1, $a2, $88	; $b0c3: 02 a1 a2 88	 Data
			.byte $00, $03, $a7, $a8	; $b0c7: 00 03 a7 a8	 Data
			.byte $a9, $84, $00, $04	; $b0cb: a9 84 00 04	 Data
			.byte $a3, $a4, $a5, $a6	; $b0cf: a3 a4 a5 a6	 Data
			.byte $ff, $00, $b8, $00	; $b0d3: ff 00 b8 00	 Data
			.byte $88, $a0, $85, $0a	; $b0d7: 88 a0 85 0a	 Data
			.byte $03, $08, $0a, $02	; $b0db: 03 08 0a 02	 Data
			.byte $88, $00, $00, $56	; $b0df: 88 00 00 56	 Data
			.byte $5a, $7b, $97, $72	; $b0e3: 5a 7b 97 72	 Data
			.byte $7c, $97, $78, $7f	; $b0e7: 7c 97 78 7f	 Data
			.byte $5e, $7b, $94, $00	; $b0eb: 5e 7b 94 00	 Data
			.byte $36, $78, $5d, $93	; $b0ef: 36 78 5d 93	 Data
			.byte $72, $75, $75, $5a	; $b0f3: 72 75 75 5a	 Data
			.byte $97, $5c, $7b, $7e	; $b0f7: 97 5c 7b 7e	 Data
			.byte $7c, $71, $5e, $5d	; $b0fb: 7c 71 5e 5d	 Data
			.byte $97, $7d, $71, $5e	; $b0ff: 97 7d 71 5e	 Data
			.byte $00, $72, $77, $7f	; $b103: 00 72 77 7f	 Data
			.byte $5a, $5d, $5e, $7b	; $b107: 5a 5d 5e 7b	 Data
			.byte $7c, $97, $5f, $7b	; $b10b: 7c 97 5f 7b	 Data
			.byte $78, $76, $97, $3f	; $b10f: 78 76 97 3f	 Data
			.byte $75, $5a, $77, $5e	; $b113: 75 5a 77 5e	 Data
			.byte $7d, $97, $57, $94	; $b117: 7d 97 57 94	 Data
			.byte $00, $3f, $5e, $5a	; $b11b: 00 3f 5e 5a	 Data
			.byte $5c, $5e, $97, $71	; $b11f: 5c 5e 97 71	 Data
			.byte $5a, $7c, $97, $7b	; $b123: 5a 7c 97 7b	 Data
			.byte $5e, $7d, $7e, $7b	; $b127: 5e 7d 7e 7b	 Data
			.byte $77	; $b12b: 77			Data
			.byte $5e, $5d, $97, $7d	; $b12c: 5e 5d 97 7d	 Data
			.byte $78, $00, $7d, $71	; $b130: 78 00 7d 71	 Data
			.byte $5e, $97, $5e, $5a	; $b134: 5e 97 5e 5a	 Data
			.byte $7b, $7d, $71, $94	; $b138: 7b 7d 71 94	 Data
			.byte $00, $30, $5f, $7d	; $b13c: 00 30 5f 7d	 Data
			.byte $5e, $7b, $97, $7d	; $b140: 5e 7b 97 7d	 Data
			.byte $71, $5e, $97, $5f	; $b144: 71 5e 97 5f	 Data
			.byte $72, $5e, $7b, $5c	; $b148: 72 5e 7b 5c	 Data
			.byte $5e, $97, $5b, $5a	; $b14c: 5e 97 5b 5a	 Data
			.byte $7d, $7d, $75, $5e	; $b150: 7d 7d 75 5e	 Data
			.byte $96, $00, $7d, $71	; $b154: 96 00 7d 71	 Data
			.byte $5e, $97, $90, $78	; $b158: 5e 97 90 78	 Data
			.byte $7e, $77, $5d, $5e	; $b15c: 7e 77 5d 5e	 Data
			.byte $5d, $97, $76, $78	; $b160: 5d 97 76 78	 Data
			.byte $77, $7c, $7d, $5e	; $b164: 77 7c 7d 5e	 Data
			.byte $7b, $7c, $96, $00	; $b168: 7b 7c 96 00	 Data
			.byte $36, $78, $5d, $93	; $b16c: 36 78 5d 93	 Data
			.byte $72, $75, $75, $5a	; $b170: 72 75 75 5a	 Data
			.byte $97, $5a, $77, $5d	; $b174: 97 5a 77 5d	 Data
			.byte $97, $3c, $78, $7d	; $b178: 97 3c 78 7d	 Data
			.byte $71, $7b, $5a, $96	; $b17c: 71 7b 5a 96	 Data
			.byte $97, $5a, $7b, $5e	; $b180: 97 5a 7b 5e	 Data
			.byte $00, $7b, $5e, $7c	; $b184: 00 7b 5e 7c	 Data
			.byte $7d, $72, $77, $70	; $b188: 7d 72 77 70	 Data
			.byte $97, $7e, $77, $7d	; $b18c: 97 7e 77 7d	 Data
			.byte $72, $75, $97, $7d	; $b190: 72 75 97 7d	 Data
			.byte $71, $5e, $97, $5d	; $b194: 71 5e 97 5d	 Data
			.byte $5a, $92, $97, $7d	; $b198: 5a 92 97 7d	 Data
			.byte $71, $5e, $92, $00	; $b19c: 71 5e 92 00	 Data
			.byte $7b, $72, $7c, $5e	; $b1a0: 7b 72 7c 5e	 Data
			.byte $97, $5a, $70, $5a	; $b1a4: 97 5a 70 5a	 Data
			.byte $72, $77, $97, $5f	; $b1a8: 72 77 97 5f	 Data
			.byte $78, $7b, $97, $7d	; $b1ac: 78 7b 97 7d	 Data
			.byte $71, $5e, $97, $7c	; $b1b0: 71 5e 97 7c	 Data
			.byte $5a, $74, $5e, $00	; $b1b4: 5a 74 5e 00	 Data
			.byte $78, $5f, $97, $76	; $b1b8: 78 5f 97 76	 Data
			.byte $5a, $77, $74, $72	; $b1bc: 5a 77 74 72	 Data
			.byte $77, $5d, $94, $00	; $b1c0: 77 5d 94 00	 Data
			.byte $30, $77, $5d, $97	; $b1c4: 30 77 5d 97	 Data
			.byte $78, $77, $97, $5d	; $b1c8: 78 77 97 5d	 Data
			.byte $5e, $7f, $5a, $7c	; $b1cc: 5e 7f 5a 7c	 Data
			.byte $7d, $5a, $7d, $5e	; $b1d0: 7d 5a 7d 5e	 Data
			.byte $5d, $97, $3f, $75	; $b1d4: 5d 97 3f 75	 Data
			.byte $5a, $77, $5e, $7d	; $b1d8: 5a 77 5e 7d	 Data
			.byte $97, $57, $96, $00	; $b1dc: 97 57 96 00	 Data
			.byte $5a, $97, $76, $5e	; $b1e0: 5a 97 76 5e	 Data
			.byte $7c, $7c, $5a, $70	; $b1e4: 7c 7c 5a 70	 Data
			.byte $5e, $97, $72, $7c	; $b1e8: 5e 97 72 7c	 Data
			.byte $97, $75, $5e, $5f	; $b1ec: 97 75 5e 5f	 Data
			.byte $7d, $97, $5f, $78	; $b1f0: 7d 97 5f 78	 Data
			.byte $7b, $00, $5e, $5a	; $b1f4: 7b 00 5e 5a	 Data
			.byte $7b, $7d, $71, $75	; $b1f8: 7b 7d 71 75	 Data
			.byte $72, $77, $70, $7c	; $b1fc: 72 77 70 7c	 Data
			.byte $99, $97, $9a, $53	; $b200: 99 97 9a 53	 Data
			.byte $78, $97, $78, $7e	; $b204: 78 97 78 7e	 Data
			.byte $7b, $97, $5d, $5e	; $b208: 7b 97 5d 5e	 Data
			.byte $5e, $79, $5e, $7c	; $b20c: 5e 79 5e 7c	 Data
			.byte $7d, $00, $7b, $5e	; $b210: 7d 00 7b 5e	 Data
			.byte $70, $7b, $5e, $7d	; $b214: 70 7b 5e 7d	 Data
			.byte $96, $97, $90, $5e	; $b218: 96 97 90 5e	 Data
			.byte $97, $76, $7e, $7c	; $b21c: 97 76 7e 7c	 Data
			.byte $7d, $97, $5a, $5d	; $b220: 7d 97 5a 5d	 Data
			.byte $76, $72, $7d, $00	; $b224: 76 72 7d 00	 Data
			.byte $5d, $5e, $5f, $5e	; $b228: 5d 5e 5f 5e	 Data
			.byte $5a, $7d, $94, $94	; $b22c: 5a 7d 94 94	 Data
			.byte $94, $94, $7d, $71	; $b230: 94 94 7d 71	 Data
			.byte $72, $7c, $97, $7d	; $b234: 72 7c 97 7d	 Data
			.byte $72, $76, $5e, $94	; $b238: 72 76 5e 94	 Data
			.byte $00, $56, $5e, $97	; $b23c: 00 56 5e 97	 Data
			.byte $5a, $75, $76, $78	; $b240: 5a 75 76 78	 Data
			.byte $7c, $7d, $97, $90	; $b244: 7c 7d 97 90	 Data
			.byte $78, $77, $96, $97	; $b248: 78 77 96 97	 Data
			.byte $5b, $7e, $7d, $97	; $b24c: 5b 7e 7d 97	 Data
			.byte $90, $5e, $97, $5d	; $b250: 90 5e 97 5d	 Data
			.byte $72, $5d, $00, $77	; $b254: 72 5d 00 77	 Data
			.byte $78, $7d, $97, $74	; $b258: 78 7d 97 74	 Data
			.byte $77, $78, $90, $97	; $b25c: 77 78 90 97	 Data
			.byte $36, $78, $5d, $93	; $b260: 36 78 5d 93	 Data
			.byte $72, $75, $75, $5a	; $b264: 72 75 75 5a	 Data
			.byte $97, $90, $5a, $7c	; $b268: 97 90 5a 7c	 Data
			.byte $97, $7c, $7e, $5c	; $b26c: 97 7c 7e 5c	 Data
			.byte $71, $00, $5a, $97	; $b270: 71 00 5a 97	 Data
			.byte $79, $78, $90, $5e	; $b274: 79 78 90 5e	 Data
			.byte $7b, $5f, $7e, $75	; $b278: 7b 5f 7e 75	 Data
			.byte $97, $5f, $78, $5e	; $b27c: 97 5f 78 5e	 Data
			.byte $94, $97, $97, $36	; $b280: 94 97 97 36	 Data
			.byte $78, $77, $5e, $97	; $b284: 78 77 5e 97	 Data
			.byte $72, $7c, $00, $78	; $b288: 72 7c 00 78	 Data
			.byte $7e, $7b, $97, $75	; $b28c: 7e 7b 97 75	 Data
			.byte $5e, $70, $72, $78	; $b290: 5e 70 72 78	 Data
			.byte $77, $97, $78, $5f	; $b294: 77 97 78 5f	 Data
			.byte $97, $76, $78, $77	; $b298: 97 76 78 77	 Data
			.byte $7c, $7d, $5e, $7b	; $b29c: 7c 7d 5e 7b	 Data
			.byte $7c, $96, $00, $7d	; $b2a0: 7c 96 00 7d	 Data
			.byte $71, $5e, $97, $7c	; $b2a4: 71 5e 97 7c	 Data
			.byte $7d, $7b, $78, $77	; $b2a8: 7d 7b 78 77	 Data
			.byte $70, $5e, $7c, $7d	; $b2ac: 70 5e 7c 7d	 Data
			.byte $97, $5f, $78, $7b	; $b2b0: 97 5f 78 7b	 Data
			.byte $5c, $5e, $97, $72	; $b2b4: 5c 5e 97 72	 Data
			.byte $77, $97, $7d, $71	; $b2b8: 77 97 7d 71	 Data
			.byte $5e, $00, $7e, $77	; $b2bc: 5e 00 7e 77	 Data
			.byte $72, $7f, $5e, $7b	; $b2c0: 72 7f 5e 7b	 Data
			.byte $7c, $5e, $94, $97	; $b2c4: 7c 5e 94 97	 Data
			.byte $3d, $5e, $7f, $5e	; $b2c8: 3d 5e 7f 5e	 Data
			.byte $7b, $97, $5a, $70	; $b2cc: 7b 97 5a 70	 Data
			.byte $5a, $72, $77, $97	; $b2d0: 5a 72 77 97	 Data
			.byte $7c, $71, $5a, $75	; $b2d4: 7c 71 5a 75	 Data
			.byte $75, $00, $90, $5e	; $b2d8: 75 00 90 5e	 Data
			.byte $97, $7c, $5e, $5e	; $b2dc: 97 7c 5e 5e	 Data
			.byte $97, $36, $71, $72	; $b2e0: 97 36 71 72	 Data
			.byte $5d, $78, $7b, $5a	; $b2e4: 5d 78 7b 5a	 Data
			.byte $97, $78, $7b, $97	; $b2e8: 97 78 7b 97	 Data
			.byte $36, $72, $70, $5a	; $b2ec: 36 72 70 5a	 Data
			.byte $77, $94, $00, $37	; $b2f0: 77 94 00 37	 Data
			.byte $5a, $7f, $72, $77	; $b2f4: 5a 7f 72 77	 Data
			.byte $70, $97, $75, $78	; $b2f8: 70 97 75 78	 Data
			.byte $7c, $7d, $97, $78	; $b2fc: 7c 7d 97 78	 Data
			.byte $7e, $7b, $97, $5b	; $b300: 7e 7b 97 5b	 Data
			.byte $5a, $7c, $5e, $96	; $b304: 5a 7c 5e 96	 Data
			.byte $97, $56, $5e, $00	; $b308: 97 56 5e 00	 Data
			.byte $77, $78, $90, $97	; $b30c: 77 78 90 97	 Data
			.byte $5e, $76, $5b, $5a	; $b310: 5e 76 5b 5a	 Data
			.byte $7b, $74, $97, $78	; $b314: 7b 74 97 78	 Data
			.byte $77, $97, $5a, $97	; $b318: 77 97 5a 97	 Data
			.byte $73, $78, $7e, $7b	; $b31c: 73 78 7e 7b	 Data
			.byte $77, $5e, $92, $97	; $b320: 77 5e 92 97	 Data
			.byte $7d, $78, $00, $77	; $b324: 7d 78 00 77	 Data
			.byte $78, $90, $71, $5e	; $b328: 78 90 71 5e	 Data
			.byte $7b, $5e, $97, $72	; $b32c: 7b 5e 97 72	 Data
			.byte $77, $97, $7d, $71	; $b330: 77 97 7d 71	 Data
			.byte $5e, $97, $7e, $77	; $b334: 5e 97 7e 77	 Data
			.byte $72, $7f, $5e, $7b	; $b338: 72 7f 5e 7b	 Data
			.byte $7c, $5e, $94, $00	; $b33c: 7c 5e 94 00	 Data
			.byte $31, $7e, $7d, $96	; $b340: 31 7e 7d 96	 Data
			.byte $97, $5e, $5a, $7b	; $b344: 97 5e 5a 7b	 Data
			.byte $7d, $71, $75, $72	; $b348: 7d 71 75 72	 Data
			.byte $77, $70, $7c, $96	; $b34c: 77 70 7c 96	 Data
			.byte $97, $7c, $5a, $7f	; $b350: 97 7c 5a 7f	 Data
			.byte $5e, $97, $92, $78	; $b354: 5e 97 92 78	 Data
			.byte $7e, $7b, $00, $7b	; $b358: 7e 7b 00 7b	 Data
			.byte $5e, $73, $78, $72	; $b35c: 5e 73 78 72	 Data
			.byte $5c, $72, $77, $70	; $b360: 5c 72 77 70	 Data
			.byte $97, $78, $7f, $5e	; $b364: 97 78 7f 5e	 Data
			.byte $7b, $97, $7d, $71	; $b368: 7b 97 7d 71	 Data
			.byte $5e, $97, $7f, $72	; $b36c: 5e 97 7f 72	 Data
			.byte $5c, $7d, $78, $7b	; $b370: 5c 7d 78 7b	 Data
			.byte $92, $00, $90, $71	; $b374: 92 00 90 71	 Data
			.byte $72, $5c, $71, $97	; $b378: 72 5c 71 97	 Data
			.byte $36, $78, $5d, $93	; $b37c: 36 78 5d 93	 Data
			.byte $72, $75, $75, $5a	; $b380: 72 75 75 5a	 Data
			.byte $97, $5b, $7b, $78	; $b384: 97 5b 7b 78	 Data
			.byte $7e, $70, $71, $7d	; $b388: 7e 70 71 7d	 Data
			.byte $97, $7d, $78, $00	; $b38c: 97 7d 78 00	 Data
			.byte $92, $78, $7e, $94	; $b390: 92 78 7e 94	 Data
			.byte $97, $97, $3e, $7e	; $b394: 97 97 3e 7e	 Data
			.byte $7b, $97, $73, $78	; $b398: 7b 97 73 78	 Data
			.byte $7e, $7b, $77, $5e	; $b39c: 7e 7b 77 5e	 Data
			.byte $92, $97, $90, $72	; $b3a0: 92 97 90 72	 Data
			.byte $75, $75, $97, $77	; $b3a4: 75 75 97 77	 Data
			.byte $78, $7d, $00, $75	; $b3a8: 78 7d 00 75	 Data
			.byte $5a, $7c, $7d, $97	; $b3ac: 5a 7c 7d 97	 Data
			.byte $5f, $78, $7b, $5e	; $b3b0: 5f 78 7b 5e	 Data
			.byte $7f, $5e, $7b, $94	; $b3b4: 7f 5e 7b 94	 Data
			.byte $97, $56, $5e, $96	; $b3b8: 97 56 5e 96	 Data
			.byte $97, $7d, $71, $5e	; $b3bc: 97 7d 71 5e	 Data
			.byte $97, $79, $5e, $78	; $b3c0: 97 79 5e 78	 Data
			.byte $79, $75, $5e, $00	; $b3c4: 79 75 5e 00	 Data
			.byte $78, $5f, $97, $3f	; $b3c8: 78 5f 97 3f	 Data
			.byte $75, $5a, $77, $5e	; $b3cc: 75 5a 77 5e	 Data
			.byte $7d, $97, $57, $96	; $b3d0: 7d 97 57 96	 Data
			.byte $97, $90, $72, $75	; $b3d4: 97 90 72 75	 Data
			.byte $75, $97, $77, $5e	; $b3d8: 75 97 77 5e	 Data
			.byte $7f, $5e, $7b, $00	; $b3dc: 7f 5e 7b 00	 Data
			.byte $70, $72, $7f, $5e	; $b3e0: 70 72 7f 5e	 Data
			.byte $97, $7e, $79, $97	; $b3e4: 97 7e 79 97	 Data
			.byte $78, $7e, $7b, $97	; $b3e8: 78 7e 7b 97	 Data
			.byte $79, $75, $5a, $77	; $b3ec: 79 75 5a 77	 Data
			.byte $97, $7d, $78, $97	; $b3f0: 97 7d 78 97	 Data
			.byte $72, $77, $7f, $5a	; $b3f4: 72 77 7f 5a	 Data
			.byte $5d, $5e, $00, $7d	; $b3f8: 5d 5e 00 7d	 Data
			.byte $71, $5e, $97, $5e	; $b3fc: 71 5e 97 5e	 Data
			.byte $5a, $7b, $7d, $71	; $b400: 5a 7b 7d 71	 Data
			.byte $94, $97, $56, $5e	; $b404: 94 97 56 5e	 Data
			.byte $97, $79, $7b, $78	; $b408: 97 79 7b 78	 Data
			.byte $76, $72, $7c, $5e	; $b40c: 76 72 7c 5e	 Data
			.byte $97, $7d, $71, $5a	; $b410: 97 7d 71 5a	 Data
			.byte $7d, $00, $90, $5e	; $b414: 7d 00 90 5e	 Data
			.byte $97, $90, $72, $75	; $b418: 97 90 72 75	 Data
			.byte $75, $97, $78, $7b	; $b41c: 75 97 78 7b	 Data
			.byte $70, $5a, $77, $72	; $b420: 70 5a 77 72	 Data
			.byte $93, $5e, $97, $5a	; $b424: 93 5e 97 5a	 Data
			.byte $97, $7c, $5e, $5c	; $b428: 97 7c 5e 5c	 Data
			.byte $78, $77, $5d, $96	; $b42c: 78 77 5d 96	 Data
			.byte $00, $5e, $7f, $5e	; $b430: 00 5e 7f 5e	 Data
			.byte $77, $97, $5a, $97	; $b434: 77 97 5a 97	 Data
			.byte $7d, $71, $72, $7b	; $b438: 7d 71 72 7b	 Data
			.byte $5d, $97, $75, $5e	; $b43c: 5d 97 75 5e	 Data
			.byte $70, $72, $78, $77	; $b440: 70 72 78 77	 Data
			.byte $97, $78, $5f, $00	; $b444: 97 78 5f 00	 Data
			.byte $7c, $79, $5a, $5c	; $b448: 7c 79 5a 5c	 Data
			.byte $5e, $97, $76, $78	; $b44c: 5e 97 76 78	 Data
			.byte $77, $7c, $7d, $5e	; $b450: 77 7c 7d 5e	 Data
			.byte $7b, $7c, $97, $5a	; $b454: 7b 7c 97 5a	 Data
			.byte $77, $5d, $97, $5d	; $b458: 77 5d 97 5d	 Data
			.byte $5e, $7c, $7d, $7b	; $b45c: 5e 7c 7d 7b	 Data
			.byte $78, $92, $00, $92	; $b460: 78 92 00 92	 Data
			.byte $78, $7e, $97, $72	; $b464: 78 7e 97 72	 Data
			.byte $77, $97, $5f, $7e	; $b468: 77 97 5f 7e	 Data
			.byte $7d, $7e, $7b, $5e	; $b46c: 7d 7e 7b 5e	 Data
			.byte $98, $97, $97, $56	; $b470: 98 97 97 56	 Data
			.byte $5e, $97, $7c, $71	; $b474: 5e 97 7c 71	 Data
			.byte $5a, $75, $75, $00	; $b478: 5a 75 75 00	 Data
			.byte $77, $78, $7d, $97	; $b47c: 77 78 7d 97	 Data
			.byte $5f, $5a, $72, $75	; $b480: 5f 5a 72 75	 Data
			.byte $98, $97, $97, $53	; $b484: 98 97 97 53	 Data
			.byte $71, $72, $7c, $97	; $b488: 71 72 7c 97	 Data
			.byte $72, $7c, $97, $78	; $b48c: 72 7c 97 78	 Data
			.byte $7e, $7b, $00, $5c	; $b490: 7e 7b 00 5c	 Data
			.byte $71, $5a, $75, $75	; $b494: 71 5a 75 75	 Data
			.byte $5e, $77, $70, $5e	; $b498: 5e 77 70 5e	 Data
			.byte $97, $7d, $78, $97	; $b49c: 97 7d 78 97	 Data
			.byte $92, $78, $7e, $94	; $b4a0: 92 78 7e 94	 Data
			.byte $97, $53, $71, $5e	; $b4a4: 97 53 71 5e	 Data
			.byte $97, $75, $5a, $7c	; $b4a8: 97 75 5a 7c	 Data
			.byte $7d, $00, $5d, $5a	; $b4ac: 7d 00 5d 5a	 Data
			.byte $92, $7c, $97, $78	; $b4b0: 92 7c 97 78	 Data
			.byte $5f, $97, $7d, $71	; $b4b4: 5f 97 7d 71	 Data
			.byte $5e, $97, $5e, $5a	; $b4b8: 5e 97 5e 5a	 Data
			.byte $7b, $7d, $71, $97	; $b4bc: 7b 7d 71 97	 Data
			.byte $5a, $7b, $5e, $00	; $b4c0: 5a 7b 5e 00	 Data
			.byte $5c, $78, $76, $72	; $b4c4: 5c 78 76 72	 Data
			.byte $77, $70, $97, $7c	; $b4c8: 77 70 97 7c	 Data
			.byte $78, $78, $77, $98	; $b4cc: 78 78 77 98	 Data
			.byte $00, $34, $5a, $7b	; $b4d0: 00 34 5a 7b	 Data
			.byte $7d, $71, $75, $72	; $b4d4: 7d 71 75 72	 Data
			.byte $77, $70, $7c, $96	; $b4d8: 77 70 7c 96	 Data
			.byte $79, $7b, $5e, $79	; $b4dc: 79 7b 5e 79	 Data
			.byte $5a, $7b, $5e, $97	; $b4e0: 5a 7b 5e 97	 Data
			.byte $7d, $78, $97, $5d	; $b4e4: 7d 78 97 5d	 Data
			.byte $72, $5e, $98, $9a	; $b4e8: 72 5e 98 9a	 Data
			.byte $00, $97, $00, $97	; $b4ec: 00 97 00 97	 Data
			.byte $00, $97, $00, $97	; $b4f0: 00 97 00 97	 Data
			.byte $00, $97, $00, $97	; $b4f4: 00 97 00 97	 Data
			.byte $00, $97, $00, $97	; $b4f8: 00 97 00 97	 Data
			.byte $00, $97, $00, $97	; $b4fc: 00 97 00 97	 Data
			.byte $00, $97, $00, $00	; $b500: 00 97 00 00	 Data
			.byte $00, $00
PRG06_b506:
			.byte $ff, $00
			.byte $ff, $00, $ff, $00	; $b508: ff 00 ff 00	 Data
			.byte $ff, $00, $90, $00	; $b50c: ff 00 90 00	 Data
			.byte $07, $15, $00, $13	; $b510: 07 15 00 13	 Data
			.byte $00, $25, $00, $26	; $b514: 00 25 00 26	 Data
			.byte $ff, $00, $ff, $00	; $b518: ff 00 ff 00	 Data
			.byte $ff, $00, $b0, $00	; $b51c: ff 00 b0 00	 Data
			.byte $c0, $aa, $00, $ff	; $b520: c0 aa 00 ff	 Data
			.byte $00, $ff, $00, $ae	; $b524: 00 ff 00 ae	 Data
			.byte $00, $07, $19, $17	; $b528: 00 07 19 17	 Data
			.byte $2c, $21, $24, $13	; $b52c: 2c 21 24 13	 Data
			.byte $00, $8d, $00, $01	; $b530: 00 8d 00 01	 Data
			.byte $01, $9f, $00, $01	; $b534: 01 9f 00 01	 Data
			.byte $01, $8f, $00, $02	; $b538: 01 8f 00 02	 Data
			.byte $02, $03, $9d, $00	; $b53c: 02 03 9d 00	 Data
			.byte $03, $06, $07, $08	; $b540: 03 06 07 08	 Data
			.byte $9d, $00, $03, $0b	; $b544: 9d 00 03 0b	 Data
			.byte $0c, $0d, $9c, $00	; $b548: 0c 0d 9c 00	 Data
			.byte $04, $10, $11, $12	; $b54c: 04 10 11 12	 Data
			.byte $13, $9c, $00, $04	; $b550: 13 9c 00 04	 Data
			.byte $16, $17, $18, $19	; $b554: 16 17 18 19	 Data
			.byte $9c, $00, $04, $1c	; $b558: 9c 00 04 1c	 Data
			.byte $1d, $1e, $1f, $99	; $b55c: 1d 1e 1f 99	 Data
			.byte $00, $08, $5d, $5e	; $b560: 00 08 5d 5e	 Data
			.byte $00, $22, $23, $24	; $b564: 00 22 23 24	 Data
			.byte $25, $26, $98, $00	; $b568: 25 26 98 00	 Data
			.byte $08, $5f, $60, $61	; $b56c: 08 5f 60 61	 Data
			.byte $29, $2a, $2b	; $b570: 29 2a 2b		Data
			.byte $2c, $2d, $9a ; $b573
			.byte $00 ; $b576
			.byte $06, $63 ; $b577
			.byte $30, $31 ; $b579
			.byte $56, $33 ; $b57b
			.byte $34, $9a ; $b57d
			.byte $00 ; $b57f
			.byte $05, $47 ; $b580
			.byte $37 ; $b582
			.byte $38 ; $b583
			.byte $39, $3a, $9b ; $b584
			.byte $00 ; $b587
			.byte $06 ; $b588
			.byte $3b, $3c, $3d ; $b589
			.byte $3e, $3f, $40 ; $b58c
			.byte $9a ; $b58f
			.byte $00 ; $b590
			.byte $06, $41 ; $b591
			.byte $42 ; $b593
			.byte $43, $44 ; $b594
			.byte $45, $46 ; $b596
			.byte $ff, $00, $ee ; $b598
			.byte $00 ; $b59b
			.byte $92 ; $b59c
			.byte $aa ; $b59d
			.byte $03, $2a ; $b59e
			.byte $0a ; $b5a0
			.byte $0a ; $b5a1
			.byte $83, $aa ; $b5a2
			.byte $8b, $00 ; $b5a4
			.byte $01, $40 ; $b5a6
			.byte $9c, $00, $00 ; $b5a8
			.byte $ff ; $b5ab
			.byte $00 ; $b5ac
			.byte $ff, $00, $af ; $b5ad
			.byte $00 ; $b5b0
			.byte $07, $1f ; $b5b1
			.byte $21, $19 ; $b5b3
			.byte $27, $17 ; $b5b5
			.byte $24, $13 ; $b5b7
			.byte $8c, $00, $01 ; $b5b9
			.byte $01, $9f ; $b5bc
			.byte $00 ; $b5be
			.byte $01, $01 ; $b5bf
			.byte $cd, $00, $01 ; $b5c1
			.byte $71, $9e ; $b5c4
			.byte $00 ; $b5c6
			.byte $03, $73 ; $b5c7
			.byte $74, $75 ; $b5c9
			.byte $9d, $00, $06 ; $b5cb
			.byte $79, $7a, $7b ; $b5ce
			.byte $7c, $7d, $7e ; $b5d1
			.byte $9b ; $b5d4
			.byte $00 ; $b5d5
			.byte $05, $85 ; $b5d6
			.byte $86, $87 ; $b5d8
			.byte $88 ; $b5da
			.byte $89, $9a ; $b5db
			.byte $00 ; $b5dd
			.byte $06, $8f ; $b5de
			.byte $90, $91 ; $b5e0
			.byte $92 ; $b5e2
			.byte $93, $94 ; $b5e3
			.byte $9b ; $b5e5
			.byte $00 ; $b5e6
			.byte $04, $9b ; $b5e7
			.byte $9c, $9d, $9e ; $b5e9
			.byte $9c, $00, $04 ; $b5ec
			.byte $a6, $a7 ; $b5ef
			.byte $a8 ; $b5f1
			.byte $a9, $9d ; $b5f2
			.byte $00 ; $b5f4
			.byte $05, $b2 ; $b5f5
			.byte $b3, $b4 ; $b5f7
			.byte $b5, $b6 ; $b5f9
			.byte $9a ; $b5fb
			.byte $00 ; $b5fc
			.byte $05, $c2 ; $b5fd
			.byte $c3, $c4 ; $b5ff
			.byte $c5, $c6 ; $b601
			.byte $ff, $00, $ff ; $b603
			.byte $00 ; $b606
			.byte $8f, $00, $98 ; $b607
			.byte $aa ; $b60a
			.byte $83, $00 ; $b60b
			.byte $01, $54 ; $b60d
			.byte $87, $00 ; $b60f
			.byte $01, $05 ; $b611
			.byte $9c, $00, $00 ; $b613
			.byte $ff, $00, $ff ; $b616
			.byte $00 ; $b619
			.byte $ae, $00, $07 ; $b61a
			.byte $14, $13 ; $b61d
			.byte $24, $13 ; $b61f
			.byte $19, $21, $20 ; $b621
			.byte $8d, $00, $01 ; $b624
			.byte $01, $9f ; $b627
			.byte $00 ; $b629
			.byte $01, $01 ; $b62a
			.byte $ff, $00, $8c ; $b62c
			.byte $00 ; $b62f
			.byte $02 ; $b630
			.byte $53, $54 ; $b631
			.byte $9d, $00, $06 ; $b633
			.byte $63, $64 ; $b636
			.byte $65, $66 ; $b638
			.byte $05, $06 ; $b63a
			.byte $84, $00 ; $b63c
			.byte $01, $07 ; $b63e
			.byte $95, $00 ; $b640
			.byte $07, $71 ; $b642
			.byte $72 ; $b644
			.byte $73, $74 ; $b645
			.byte $0c, $0d, $0e ; $b647
			.byte $83, $00 ; $b64a
			.byte $01, $0f ; $b64c
			.byte $97, $00 ; $b64e
			.byte $09, $5d ; $b650
			.byte $93, $94 ; $b652
			.byte $95, $96 ; $b654
			.byte $97, $18 ; $b656
			.byte $19, $1a, $97 ; $b658
			.byte $00 ; $b65b
			.byte $08 ; $b65c
			.byte $9b ; $b65d
			.byte $9c, $9d, $9e ; $b65e
			.byte $9f, $a0, $25 ; $b661
			.byte $26, $ff ; $b664
			.byte $00 ; $b666
			.byte $ff, $00, $cd ; $b667
			.byte $00 ; $b66a
			.byte $98 ; $b66b
			.byte $aa ; $b66c
			.byte $a8 ; $b66d
			.byte $00 ; $b66e
			.byte $00 ; $b66f
			.byte $ff, $00, $ff ; $b670
			.byte $00 ; $b673
			.byte $af, $00, $05 ; $b674
			.byte $28 ; $b677
			.byte $13, $24 ; $b678
			.byte $13, $20 ; $b67a
			.byte $8e, $00, $01 ; $b67c
			.byte $01, $9f ; $b67f
			.byte $00 ; $b681
			.byte $01, $01 ; $b682
			.byte $ce, $00, $01 ; $b684
			.byte $02 ; $b687
			.byte $9e, $00, $04 ; $b688
			.byte $08 ; $b68b
			.byte $09, $0a ; $b68c
			.byte $0b, $9b ; $b68e
			.byte $00 ; $b690
			.byte $06, $1a ; $b691
			.byte $19, $14, $15 ; $b693
			.byte $16, $17 ; $b696
			.byte $9a ; $b698
			.byte $00 ; $b699
			.byte $06, $2a ; $b69a
			.byte $2b, $2c ; $b69c
			.byte $2d, $71, $72 ; $b69e
			.byte $9a ; $b6a1
			.byte $00 ; $b6a2
			.byte $06, $3f ; $b6a3
			.byte $40 ; $b6a5
			.byte $41, $07 ; $b6a6
			.byte $80, $81 ; $b6a8
			.byte $9b ; $b6aa
			.byte $00 ; $b6ab
			.byte $05, $51 ; $b6ac
			.byte $52 ; $b6ae
			.byte $10, $11 ; $b6af
			.byte $12 ; $b6b1
			.byte $9b ; $b6b2
			.byte $00 ; $b6b3
			.byte $05, $2e ; $b6b4
			.byte $59, $1c, $1d ; $b6b6
			.byte $1e, $9b, $00 ; $b6b9
			.byte $07, $44 ; $b6bc
			.byte $62 ; $b6be
			.byte $2f, $30, $31 ; $b6bf
			.byte $32 ; $b6c2
			.byte $33, $9a ; $b6c3
			.byte $00 ; $b6c5
			.byte $07, $44 ; $b6c6
			.byte $45, $46 ; $b6c8
			.byte $47, $48 ; $b6ca
			.byte $49, $4a ; $b6cc
			.byte $ff, $00, $ff ; $b6ce
			.byte $00 ; $b6d1
			.byte $8c ; $b6d2
			.byte $00 ; $b6d3
			.byte $98 ; $b6d4
			.byte $aa ; $b6d5
			.byte $a8 ; $b6d6
			.byte $00 ; $b6d7
			.byte $00 ; $b6d8
			.byte $ff, $00, $ff ; $b6d9
			.byte $00 ; $b6dc
			.byte $af, $00, $07 ; $b6dd
			.byte $1a ; $b6e0
			.byte $17, $16 ; $b6e1
			.byte $21, $24 ; $b6e3
			.byte $13, $1a ; $b6e5
			.byte $8c, $00, $01 ; $b6e7
			.byte $01, $9f ; $b6ea
			.byte $00 ; $b6ec
			.byte $01, $01 ; $b6ed
			.byte $d4, $00 ; $b6ef
			.byte $03, $02 ; $b6f1
			.byte $03, $04 ; $b6f3
			.byte $9d, $00, $03 ; $b6f5
			.byte $08 ; $b6f8
			.byte $09, $0a ; $b6f9
			.byte $9d, $00, $04 ; $b6fb
			.byte $0f, $10, $11 ; $b6fe
			.byte $12 ; $b701
			.byte $8d, $00, $04 ; $b702
			.byte $c4, $c5 ; $b705
			.byte $c6, $c7 ; $b707
			.byte $87, $00 ; $b709
			.byte $08 ; $b70b
			.byte $b2 ; $b70c
			.byte $b3, $b4 ; $b70d
			.byte $00 ; $b70f
			.byte $17, $18 ; $b710
			.byte $19, $1a, $8c ; $b712
			.byte $00 ; $b715
			.byte $14, $c8 ; $b716
			.byte $c9, $ca ; $b718
			.byte $cb, $cc ; $b71a
			.byte $cd, $ce, $cf ; $b71c
			.byte $d0, $b2 ; $b71f
			.byte $00 ; $b721
			.byte $5e, $60, $b5 ; $b722
			.byte $b6, $b7 ; $b725
			.byte $b8 ; $b727
			.byte $b9, $19, $71 ; $b728
			.byte $8c, $00, $14 ; $b72b
			.byte $d1, $d2 ; $b72e
			.byte $d3, $d4 ; $b730
			.byte $d5, $d6 ; $b732
			.byte $d7, $d8 ; $b734
			.byte $d9, $da, $00 ; $b736
			.byte $5b, $57, $ba ; $b739
			.byte $bb, $bc, $bd ; $b73c
			.byte $be, $24, $76 ; $b73f
			.byte $8c, $00, $05 ; $b742
			.byte $db, $dc, $dd ; $b745
			.byte $de, $df, $89 ; $b748
			.byte $00 ; $b74b
			.byte $06, $77 ; $b74c
			.byte $78 ; $b74e
			.byte $79, $7a, $7b ; $b74f
			.byte $7c, $9c, $00 ; $b752
			.byte $04, $43 ; $b755
			.byte $44, $45 ; $b757
			.byte $46, $9c ; $b759
			.byte $00 ; $b75b
			.byte $06, $4c ; $b75c
			.byte $4d, $4e, $4f ; $b75e
			.byte $4a ; $b761
			.byte $4b, $99 ; $b762
			.byte $00 ; $b764
			.byte $08 ; $b765
			.byte $53, $54 ; $b766
			.byte $55, $54 ; $b768
			.byte $5c, $58, $59 ; $b76a
			.byte $5a ; $b76d
			.byte $ff, $00, $e5 ; $b76e
			.byte $00 ; $b771
			.byte $98 ; $b772
			.byte $aa ; $b773
			.byte $85, $00 ; $b774
			.byte $01, $10 ; $b776
			.byte $83, $00 ; $b778
			.byte $01, $01 ; $b77a
			.byte $9e, $00, $00 ; $b77c
			.byte $ff, $00, $ff ; $b77f
			.byte $00 ; $b782
			.byte $af, $00, $05 ; $b783
			.byte $19, $1b, $19 ; $b786
			.byte $13, $20 ; $b789
			.byte $8e, $00, $01 ; $b78b
			.byte $01, $9f ; $b78e
			.byte $00 ; $b790
			.byte $01, $01 ; $b791
			.byte $ec, $00, $02 ; $b793
			.byte $49, $4a ; $b796
			.byte $9d, $00, $05 ; $b798
			.byte $58 ; $b79b
			.byte $56, $92 ; $b79c
			.byte $00 ; $b79e
			.byte $c4, $9a ; $b79f
			.byte $00 ; $b7a1
			.byte $06, $69 ; $b7a2
			.byte $6a ; $b7a4
			.byte $cf, $99, $9a ; $b7a5
			.byte $ce, $9b, $00 ; $b7a8
			.byte $06, $d9 ; $b7ab
			.byte $da ; $b7ad
			.byte $a7, $a8 ; $b7ae
			.byte $d7, $d8 ; $b7b0
			.byte $9b ; $b7b2
			.byte $00 ; $b7b3
			.byte $05, $e4 ; $b7b4
			.byte $e5, $b7 ; $b7b6
			.byte $e2, $e3 ; $b7b8
			.byte $9b ; $b7ba
			.byte $00 ; $b7bb
			.byte $04, $37 ; $b7bc
			.byte $38 ; $b7be
			.byte $39, $e9, $9c ; $b7bf
			.byte $00 ; $b7c2
			.byte $04, $15 ; $b7c3
			.byte $97, $47 ; $b7c5
			.byte $48 ; $b7c7
			.byte $9c, $00, $07 ; $b7c8
			.byte $0e, $a3, $54 ; $b7cb
			.byte $55, $c8 ; $b7ce
			.byte $c9, $ca ; $b7d0
			.byte $98 ; $b7d2
			.byte $00 ; $b7d3
			.byte $08 ; $b7d4
			.byte $af, $b0, $b1 ; $b7d5
			.byte $b4, $b5 ; $b7d8
			.byte $d2 ; $b7da
			.byte $d3, $d4 ; $b7db
			.byte $ff, $00, $ed ; $b7dd
			.byte $00 ; $b7e0
			.byte $98 ; $b7e1
			.byte $ff, $84, $00 ; $b7e2
			.byte $01, $30 ; $b7e5
			.byte $85, $00 ; $b7e7
			.byte $03, $04 ; $b7e9
			.byte $95, $33 ; $b7eb
			.byte $86, $00 ; $b7ed
			.byte $02 ; $b7ef
			.byte $59, $5a, $86 ; $b7f0
			.byte $00 ; $b7f3
			.byte $02 ; $b7f4
			.byte $05, $05 ; $b7f5
			.byte $8b, $00 ; $b7f7
			.byte $00 ; $b7f9
			.byte $ff, $00, $ff ; $b7fa
			.byte $00 ; $b7fd
			.byte $ab, $00 ; $b7fe
			.byte $0e, $1f, $17 ; $b800
			.byte $15, $1a ; $b803
			.byte $13, $2e ; $b805
			.byte $19, $21, $16 ; $b807
			.byte $2c, $1b, $1e ; $b80a
			.byte $1e, $13, $89 ; $b80d
			.byte $00 ; $b810
			.byte $01, $01 ; $b811
			.byte $9f, $00, $01 ; $b813
			.byte $01, $ed ; $b816
			.byte $00 ; $b818
			.byte $01, $38 ; $b819
			.byte $9e, $00, $04 ; $b81b
			.byte $3d, $3e, $3f ; $b81e
			.byte $0a ; $b821
			.byte $9b ; $b822
			.byte $00 ; $b823
			.byte $05, $4a ; $b824
			.byte $15, $4b ; $b826
			.byte $4c, $0d, $9b ; $b828
			.byte $00 ; $b82b
			.byte $06, $52 ; $b82c
			.byte $53, $54 ; $b82e
			.byte $55, $56 ; $b830
			.byte $14, $9c ; $b832
			.byte $00 ; $b834
			.byte $04, $5c ; $b835
			.byte $5d, $30, $28 ; $b837
			.byte $9c, $00, $04 ; $b83a
			.byte $89 ; $b83d
			.byte $8d, $8e, $8c ; $b83e
			.byte $9c, $00, $05 ; $b841
			.byte $9d, $9e, $9f ; $b844
			.byte $a0, $9c ; $b847
			.byte $9b ; $b849
			.byte $00 ; $b84a
			.byte $07, $b3 ; $b84b
			.byte $b4, $b5 ; $b84d
			.byte $b6, $b0 ; $b84f
			.byte $b1, $b2 ; $b851
			.byte $98 ; $b853
			.byte $00 ; $b854
			.byte $08 ; $b855
			.byte $c9, $ca ; $b856
			.byte $00 ; $b858
			.byte $cb, $cc ; $b859
			.byte $c7, $c8 ; $b85b
			.byte $00 ; $b85d
			.byte $ff, $00, $ec ; $b85e
			.byte $00 ; $b861
			.byte $98 ; $b862
			.byte $aa ; $b863
			.byte $83, $00 ; $b864
			.byte $01, $50 ; $b866
			.byte $a4, $00 ; $b868
			.byte $00 ; $b86a
			.byte $ff, $00, $ff ; $b86b
			.byte $00 ; $b86e
			.byte $ad, $00, $0a ; $b86f
			.byte $00 ; $b872
			.byte $19, $1a, $1b ; $b873
			.byte $16, $21 ; $b876
			.byte $24, $13 ; $b878
			.byte $00 ; $b87a
			.byte $00 ; $b87b
			.byte $8b, $00 ; $b87c
			.byte $01, $01 ; $b87e
			.byte $9f, $00, $01 ; $b880
			.byte $01, $8f ; $b883
			.byte $00 ; $b885
			.byte $01, $02 ; $b886
			.byte $9e, $00, $02 ; $b888
			.byte $03, $04 ; $b88b
			.byte $9e, $00, $03 ; $b88d
			.byte $05, $06 ; $b890
			.byte $07, $9d ; $b892
			.byte $00 ; $b894
			.byte $04, $08 ; $b895
			.byte $09, $0a ; $b897
			.byte $0b, $9c ; $b899
			.byte $00 ; $b89b
			.byte $05, $0c ; $b89c
			.byte $0d, $0e, $0f ; $b89e
			.byte $10, $9b ; $b8a1
			.byte $00 ; $b8a3
			.byte $06, $11 ; $b8a4
			.byte $12 ; $b8a6
			.byte $13, $14 ; $b8a7
			.byte $15, $16 ; $b8a9
			.byte $9a ; $b8ab
			.byte $00 ; $b8ac
			.byte $06, $19 ; $b8ad
			.byte $1a ; $b8af
			.byte $1b, $1c, $1d ; $b8b0
			.byte $1e, $96, $00 ; $b8b3
			.byte $0a ; $b8b6
			.byte $68 ; $b8b7
			.byte $69, $6a ; $b8b8
			.byte $00 ; $b8ba
			.byte $00 ; $b8bb
			.byte $22 ; $b8bc
			.byte $23, $24 ; $b8bd
			.byte $25, $26 ; $b8bf
			.byte $95, $00 ; $b8c1
			.byte $0c, $78, $79 ; $b8c3
			.byte $7a ; $b8c6
			.byte $7b, $7c, $00 ; $b8c7
			.byte $2c, $2d, $2e ; $b8ca
			.byte $2f, $30, $31 ; $b8cd
			.byte $94, $00 ; $b8d0
			.byte $0b, $92 ; $b8d2
			.byte $93, $94 ; $b8d4
			.byte $95, $96 ; $b8d6
			.byte $4f ; $b8d8
			.byte $38 ; $b8d9
			.byte $39, $3a, $3b ; $b8da
			.byte $3c, $94, $00 ; $b8dd
			.byte $0f, $ac, $ad ; $b8e0
			.byte $ae, $af, $b0 ; $b8e3
			.byte $b1, $5b ; $b8e6
			.byte $5c, $5d, $5e ; $b8e8
			.byte $5f, $00, $00 ; $b8eb
			.byte $60 ; $b8ee
			.byte $61 ; $b8ef
			.byte $91, $00 ; $b8f0
			.byte $04, $c1 ; $b8f2
			.byte $c2, $c3 ; $b8f4
			.byte $c4, $83 ; $b8f6
			.byte $00 ; $b8f8
			.byte $08 ; $b8f9
			.byte $52 ; $b8fa
			.byte $53, $54 ; $b8fb
			.byte $55, $56 ; $b8fd
			.byte $57, $58 ; $b8ff
			.byte $59, $92, $00 ; $b901
			.byte $03, $cf ; $b904
			.byte $d0, $d1 ; $b906
			.byte $85, $00 ; $b908
			.byte $03, $62 ; $b90a
			.byte $63, $64 ; $b90c
			.byte $95, $00 ; $b90e
			.byte $02 ; $b910
			.byte $d7, $d9 ; $b911
			.byte $88 ; $b913
			.byte $00 ; $b914
			.byte $01, $5a ; $b915
			.byte $ff, $00, $ac ; $b917
			.byte $00 ; $b91a
			.byte $93, $aa ; $b91b
			.byte $02 ; $b91d
			.byte $2a ; $b91e
			.byte $8a ; $b91f
			.byte $83 ; $b920
			.byte $aa, $a8, $00, $00	; $b921: aa a8 00 00	 Data
			.byte $ff, $00, $ff, $00	; $b925: ff 00 ff 00	 Data
			.byte $af, $00, $06, $1f	; $b929: af 00 06 1f	 Data
			.byte $21, $26, $1a, $24	; $b92d: 21 26 1a 24	 Data
			.byte $13, $8d, $00, $01	; $b931: 13 8d 00 01	 Data
			.byte $01, $9f, $00, $01	; $b935: 01 9f 00 01	 Data
			.byte $01, $ff, $00, $ff	; $b939: 01 ff 00 ff	 Data
			.byte $00, $ff, $00, $ff	; $b93d: 00 ff 00 ff	 Data
			.byte $00, $e3, $00, $98	; $b941: 00 e3 00 98	 Data
			.byte $aa, $a8, $00, $00	; $b945: aa a8 00 00	 Data
			.byte $ff, $00, $ff, $00	; $b949: ff 00 ff 00	 Data
			.byte $ae, $00, $08, $19	; $b94d: ae 00 08 19	 Data
			.byte $21, $16, $2c, $1b	; $b951: 21 16 2c 1b	 Data
			.byte $1e, $1e, $13, $8c	; $b955: 1e 1e 13 8c	 Data
			.byte $00, $01, $01, $9f	; $b959: 00 01 01 9f	 Data
			.byte $00, $01, $01, $ff	; $b95d: 00 01 01 ff	 Data
			.byte $00, $ff, $00, $ff	; $b961: 00 ff 00 ff	 Data
			.byte $00, $ff, $00, $e3	; $b965: 00 ff 00 e3	 Data
			.byte $00, $98, $aa, $a8	; $b969: 00 98 aa a8	 Data
			.byte $00, $00	; $b96d: 00 00		 Data

;-------------------------------------------------------------------------------
;	Credits scene
;-------------------------------------------------------------------------------

PRG06_GM_Credits:
			lda #MusID_Credits				; $b96f: a9 17
			jsr Goto_PlaySound			; $b971: 20 c6 c0
			lda #$00				; $b974: a9 00
			sta $04c0			; $b976: 8d c0 04

-			jsr Goto_WaitFrame			; $b979: 20 ba c0
			jsr PRG06_ba7a			; $b97c: 20 7a ba
			lda $04c0			; $b97f: ad c0 04
			bpl -			; $b982: 10 f5
			lda #$00				; $b984: a9 00
			sta $04c0			; $b986: 8d c0 04

-			jsr Goto_WaitFrame			; $b989: 20 ba c0
			jsr PRG06_bb43			; $b98c: 20 43 bb
			lda $04c0			; $b98f: ad c0 04
			bpl -				; $b992: 10 f5
			lda #$00				; $b994: a9 00
			sta $04c0			; $b996: 8d c0 04

-			jsr Goto_WaitFrame			; $b999: 20 ba c0
			jsr PRG06_bcaa			; $b99c: 20 aa bc
			lda $04c0			; $b99f: ad c0 04
			bpl -			; $b9a2: 10 f5
			
			jsr PRG06_b9aa			; $b9a4: 20 aa b9

-			jmp -		; Infinite loop

;-------------------------------------------------------------------------------
	; TODO: comment
PRG06_b9aa:
			ldx #(5*60)/6		; Wait 5 seconds
			jsr Goto_GameWait

			lda #$20				; $b9af: a9 20
			sta @w $0089

			ldx #1				; $b9b4: a2 01
			jsr Goto_GameWait			; $b9b6: 20 c3 c0

			lda #$10				; $b9b9: a9 10
			sta @w $0089

			ldx #1				; $b9be: a2 01
			jsr Goto_GameWait			; $b9c0: 20 c3 c0

			lda #$00				; $b9c3: a9 00
			sta @w $0089

			ldx #1				; $b9c8: a2 01
			jsr Goto_GameWait			; $b9ca: 20 c3 c0

			lda #$0f				; $b9cd: a9 0f
			sta @w $0089

			ldx #60/6		; Wait 1 second
			jsr Goto_GameWait

			LoadAddress PRG06_Credits_Toho
			lda #$23				; $b9df: a9 23
			sta $a3			; $b9e1: 85 a3
			lda #$21				; $b9e3: a9 21
			sta $a4			; $b9e5: 85 a4
			lda #$1a				; $b9e7: a9 1a
			sta $a1			; $b9e9: 85 a1
			lda #$00				; $b9eb: a9 00
			sta $a2			; $b9ed: 85 a2
			jsr Main_c027			; $b9ef: 20 27 c0

			LoadAddress PRG06_Credits_Presents
			lda #$6c				; $b9fa: a9 6c
			sta $a3			; $b9fc: 85 a3
			lda #$21				; $b9fe: a9 21
			sta $a4			; $ba00: 85 a4
			lda #$08				; $ba02: a9 08
			sta $a1			; $ba04: 85 a1
			lda #$00				; $ba06: a9 00
			sta $a2			; $ba08: 85 a2
			jsr Main_c027			; $ba0a: 20 27 c0

			lda #$00				; $ba0d: a9 00
			sta @w $0089

			ldx #$01				; $ba12: a2 01
			jsr Goto_GameWait			; $ba14: 20 c3 c0

			lda #$10				; $ba17: a9 10
			sta @w $0089

			ldx #$01				; $ba1c: a2 01
			jsr Goto_GameWait			; $ba1e: 20 c3 c0

			lda #$20				; $ba21: a9 20
			sta @w $0089

			ldx #$01				; $ba26: a2 01
			jsr Goto_GameWait			; $ba28: 20 c3 c0

			lda #$30				; $ba2b: a9 30
			sta @w $0089

			ldx #$0a				; $ba30: a2 0a
			jsr Goto_GameWait			; $ba32: 20 c3 c0

			LoadAddress PRG06_Credits_TheEnd
			lda #$d5				; $ba3d: a9 d5
			sta $a3			; $ba3f: 85 a3
			lda #$22				; $ba41: a9 22
			sta $a4			; $ba43: 85 a4
			lda #$07				; $ba45: a9 07
			sta $a1			; $ba47: 85 a1
			lda #$00				; $ba49: a9 00
			sta $a2			; $ba4b: 85 a2
			jsr Main_c027			; $ba4d: 20 27 c0

			rts				; $ba50: 60

;-------------------------------------------------------------------------------
			.encode Enc_Default
PRG06_Credits_Toho:		.text "TOHO CINEFILE-SOFT LIBRARY"
PRG06_Credits_Presents:	.text "PRESENTS"
PRG06_Credits_TheEnd:	.text "THE END"
			.endencode
;-------------------------------------------------------------------------------

PRG06_ba7a:
			ldy $04c0			; $ba7a: ac c0 04
			bpl PRG06_ba80			; $ba7d: 10 01
			rts				; $ba7f: 60

;-------------------------------------------------------------------------------
PRG06_ba80:
			LoadAddressFromTable PRG06_ba8d, PRG06_ba92, y
			jmp (LoadedAddress)		; $ba8a: 6c a5 00

;-------------------------------------------------------------------------------
			TableStart
			TableInsert $ba97
			TableInsert $baee
			TableInsert $baf8
			TableInsert $bb15
			TableInsert $bb37
;	TODO: table
PRG06_ba8d:	.byte <CurrentTable
PRG06_ba92:	.byte >CurrentTable

;	TODO: convert to code
			.byte $a9, $08, $8d	; $ba97: a9 08 8d	 Data
			.byte $20, $01, $20, $ae	; $ba9a: 20 01 20 ae	 Data
			.byte $c0, $20, $3c, $c0	; $ba9e: c0 20 3c c0	 Data
			.byte $a9, $02, $8d, $2b	; $baa2: a9 02 8d 2b	 Data
			.byte $01, $a5, $ec, $29	; $baa6: 01 a5 ec 29	 Data
			.byte $fe, $09, $02, $20	; $baaa: fe 09 02 20	 Data
			.byte $5a, $c0, $20, $2d	; $baae: 5a c0 20 2d	 Data
			.byte $c0, $a9, $17, $85	; $bab2: c0 a9 17 85	 Data
			.byte $e9, $a9, $0f, $85	; $bab6: e9 a9 0f 85	 Data
			.byte $e8, $a9, $7a, $85	; $baba: e8 a9 7a 85	 Data
			.byte $a5, $a9, $af, $85	; $babe: a5 a9 af 85	 Data
			.byte $a6, $a2, $20, $a0	; $bac2: a6 a2 20 a0	 Data
			.byte $00, $20, $c0, $c0	; $bac6: 00 20 c0 c0	 Data
			.byte $20, $84, $c0, $a0	; $baca: 20 84 c0 a0	 Data
			.byte $0b, $20, $8f, $aa	; $bace: 0b 20 8f aa	 Data
			.byte $a9, $0f, $8d, $00	; $bad2: a9 0f 8d 00	 Data
			.byte $01, $a9, $0e, $20	; $bad6: 01 a9 0e 20	 Data
			.byte $01, $af, $20, $ba	; $bada: 01 af 20 ba	 Data
			.byte $c0, $20, $ba, $c0	; $bade: c0 20 ba c0	 Data
			.byte $20, $b1, $c0, $a9	; $bae2: 20 b1 c0 a9	 Data
			.byte $fa, $8d, $c1, $04	; $bae6: fa 8d c1 04	 Data
			.byte $ee, $c0, $04, $60	; $baea: ee c0 04 60	 Data

			.byte $ce, $c1, $04, $f0	; $baee: ce c1 04 f0	 Data
			.byte $01, $60	; $baf2: 01 60		 Data
			.byte $ee, $c0, $04, $60	; $baf4: ee c0 04 60	 Data
			
			.byte $ce, $c1, $04, $ad	; $baf8: ce c1 04 ad	 Data
			.byte $c1, $04, $29, $01	; $bafc: c1 04 29 01	 Data
			.byte $f0, $01, $60	; $bb00: f0 01 60		Data
			.byte $e6, $d9, $a5, $d9	; $bb03: e6 d9 a5 d9	 Data
			.byte $c9, $20, $b0, $01	; $bb07: c9 20 b0 01	 Data
			.byte $60	; $bb0b: 60			Data
PRG06_bb0c:
			ldy #$05				; $bb0c: a0 05
			jsr PRG06_aa8f			; $bb0e: 20 8f aa
			inc $04c0			; $bb11: ee c0 04
			rts
			.byte $a0, $ff, $20	; $bb14: 60 a0 ff 20	 Data
			.byte $8f, $aa, $ce, $c1	; $bb18: 8f aa ce c1	 Data
			.byte $04, $ad, $c1, $04	; $bb1c: 04 ad c1 04	 Data
			.byte $29, $01, $f0, $01	; $bb20: 29 01 f0 01	 Data
			.byte $60	; $bb24: 60			Data
PRG06_bb25:
			.byte $a5, $d9, $c9, $ff	; $bb25: a5 d9 c9 ff	 Data
			.byte $f0, $03, $e6, $d9	; $bb29: f0 03 e6 d9	 Data
			.byte $60	; $bb2d: 60			Data
PRG06_bb2e:
			lda #$fa				; $bb2e: a9 fa
			sta $04c1			; $bb30: 8d c1 04
			inc $04c0			; $bb33: ee c0 04
			rts				; $bb36: 60

;-------------------------------------------------------------------------------
			dec $04c1			; $bb37: ce c1 04
			beq PRG06_bb3d			; $bb3a: f0 01
			rts				; $bb3c: 60

;-------------------------------------------------------------------------------
PRG06_bb3d:
			lda #$ff				; $bb3d: a9 ff
			sta $04c0			; $bb3f: 8d c0 04
			rts				; $bb42: 60

;-------------------------------------------------------------------------------
PRG06_bb43:
			ldy $04c0			; $bb43: ac c0 04
			bpl PRG06_bb49			; $bb46: 10 01
			rts				; $bb48: 60

;-------------------------------------------------------------------------------
PRG06_bb49:
			LoadAddressFromTable PRG06_bb56, PRG06_bb58, y
			jmp (LoadedAddress)		; $bb53: 6c a5 00

;-------------------------------------------------------------------------------
			TableStart
			TableInsert PRG06_bb5a
			TableInsert PRG06_bbb0
PRG06_bb56:	.byte <CurrentTable
PRG06_bb58:	.byte >CurrentTable
;	TODO: code
PRG06_bb5a:
			.byte $a9, $00	; $bb5a: a9 00	 Data
			.byte $85, $34, $8d, $c4	; $bb5c: 85 34 8d c4	 Data
			.byte $04, $a9, $e2, $8d	; $bb60: 04 a9 e2 8d	 Data
			.byte $c2, $04, $a9, $b0	; $bb64: c2 04 a9 b0	 Data
			.byte $8d, $c3, $04, $20	; $bb68: 8d c3 04 20	 Data
			.byte $84, $c0, $a9, $08	; $bb6c: 84 c0 a9 08	 Data
			.byte $8d, $20, $01, $20	; $bb70: 8d 20 01 20	 Data
			.byte $ae, $c0, $20, $3c	; $bb74: ae c0 20 3c	 Data
			.byte $c0, $a9, $02, $8d	; $bb78: c0 a9 02 8d	 Data
			.byte $2b, $01, $20, $2d	; $bb7c: 2b 01 20 2d	 Data
			.byte $c0, $a9, $04, $85	; $bb80: c0 a9 04 85	 Data
			.byte $d9, $a9, $00, $85	; $bb84: d9 a9 00 85	 Data
			.byte $e9, $a0, $1f, $a9	; $bb88: e9 a0 1f a9	 Data
			.byte $0f	; $bb8c: 0f			Data

PRG06_bb8d:
			sta $0100,y		; $bb8d: 99 00 01
			dey				; $bb90: 88
			bpl PRG06_bb8d			; $bb91: 10 fa
			lda #$30				; $bb93: a9 30
			sta $0101			; $bb95: 8d 01 01
			sta $0105			; $bb98: 8d 05 01
			sta $0109			; $bb9b: 8d 09 01
			sta $010d			; $bb9e: 8d 0d 01
			jsr Goto_ClearScreen			; $bba1: 20 7e c0
			jsr Main_c075			; $bba4: 20 75 c0
			inc $04c0			; $bba7: ee c0 04
			jsr Goto_ClearScreen			; $bbaa: 20 7e c0
			jmp Main_c0b1			; $bbad: 4c b1 c0

;-------------------------------------------------------------------------------
PRG06_bbb0:
			lda #$01				; $bbb0: a9 01
			jsr PRG06_bbd4			; $bbb2: 20 d4 bb
			lda #$02				; $bbb5: a9 02
			jsr PRG06_bbd4			; $bbb7: 20 d4 bb
			lda #$00				; $bbba: a9 00
			jsr PRG06_bbd4			; $bbbc: 20 d4 bb
			lda $04c0			; $bbbf: ad c0 04
			bpl PRG06_bbb0			; $bbc2: 10 ec
			jsr Goto_FadeInOut			; $bbc4: 20 ae c0
			lda #$00				; $bbc7: a9 00
			sta $d9			; $bbc9: 85 d9
			sta $da			; $bbcb: 85 da
			sta $db			; $bbcd: 85 db
			sta $dc			; $bbcf: 85 dc
			jmp Main_c072			; $bbd1: 4c 72 c0

;-------------------------------------------------------------------------------
PRG06_bbd4:
			sta $a1			; $bbd4: 85 a1
			lda $04c4			; $bbd6: ad c4 04
			sta $a3			; $bbd9: 85 a3
			lda #$00				; $bbdb: a9 00
			sta $a4			; $bbdd: 85 a4
			ldx #$05				; $bbdf: a2 05

-			asl $a3			; $bbe1: 06 a3
			rol $a4			; $bbe3: 26 a4
			dex				; $bbe5: ca
			bne -			; $bbe6: d0 f9

			lda $dc			; $bbe8: a5 dc
			and #$01				; $bbea: 29 01
			beq PRG06_bbf2			; $bbec: f0 04
			lda #$20				; $bbee: a9 20
			bne PRG06_bbf5			; $bbf0: d0 03
PRG06_bbf2:
			clc				; $bbf2: 18
			lda #$24				; $bbf3: a9 24
PRG06_bbf5:
			adc $a4			; $bbf5: 65 a4
			sta $a4			; $bbf7: 85 a4
			inc $04c4			; $bbf9: ee c4 04
			lda $04c4			; $bbfc: ad c4 04
			cmp #$1e				; $bbff: c9 1e
			bcc +			; $bc01: 90 05
			lda #$00				; $bc03: a9 00
			sta $04c4			; $bc05: 8d c4 04

+			ldx $a4			; $bc08: a6 a4
			ldy $a3			; $bc0a: a4 a3
			jsr Main_c00f			; $bc0c: 20 0f c0
			LoadAddressTransfer $04c2
			ldy #$00				; $bc19: a0 00
			lda #$20				; $bc1b: a9 20
			ldy $cb			; $bc1d: a4 cb
			jsr Main_c0e4			; $bc1f: 20 e4 c0
			tya				; $bc22: 98
			tax				; $bc23: aa
			lda #$00				; $bc24: a9 00
			sta $a0			; $bc26: 85 a0
			ldy #$03				; $bc28: a0 03

-			sta $0700,x		; $bc2a: 9d 00 07
			inx				; $bc2d: e8
			dey				; $bc2e: 88
			bne -			; $bc2f: d0 f9

-		lda $a1			; $bc31: a5 a1
			beq PRG06_bc53			; $bc33: f0 1e
			lda (LoadedAddress),y		; $bc35: b1 a5
			beq PRG06_bc53			; $bc37: f0 1a
			sta $a2			; $bc39: 85 a2
			lda $a1			; $bc3b: a5 a1
			cmp #$01				; $bc3d: c9 01
			beq +			; $bc3f: f0 07
			clc				; $bc41: 18
			lda $a2			; $bc42: a5 a2
			adc #$10				; $bc44: 69 10
			sta $a2			; $bc46: 85 a2

+			lda $a2			; $bc48: a5 a2
			sta $0700,x		; $bc4a: 9d 00 07
			inc $a0			; $bc4d: e6 a0
			inx				; $bc4f: e8
			iny				; $bc50: c8
			bne -			; $bc51: d0 de

PRG06_bc53:
			cpy #$1d				; $bc53: c0 1d
			bcs +			; $bc55: b0 07
			sta $0700,x		; $bc57: 9d 00 07
			inx				; $bc5a: e8
			iny				; $bc5b: c8
			bne PRG06_bc53			; $bc5c: d0 f5

+			lda #$20				; $bc5e: a9 20
			jsr Main_c0ea			; $bc60: 20 ea c0
			lda $a1			; $bc63: a5 a1
			cmp #$02				; $bc65: c9 02
			bne PRG06_bc8a			; $bc67: d0 21
			inc $a0			; $bc69: e6 a0
			clc				; $bc6b: 18
			lda LoadAddress_Low			; $bc6c: a5 a5
			adc $a0			; $bc6e: 65 a0
			sta LoadAddress_Low			; $bc70: 85 a5
			sta $04c2			; $bc72: 8d c2 04
			lda LoadAddress_High			; $bc75: a5 a6
			adc #$00				; $bc77: 69 00
			sta LoadAddress_High			; $bc79: 85 a6
			sta $04c3			; $bc7b: 8d c3 04
			ldy #$00				; $bc7e: a0 00
			lda (LoadedAddress),y		; $bc80: b1 a5
			bne PRG06_bc8a			; $bc82: d0 06
			lda #$ff				; $bc84: a9 ff
			sta $04c0			; $bc86: 8d c0 04
			rts				; $bc89: 60

;-------------------------------------------------------------------------------
PRG06_bc8a:
			ldx #$08				; $bc8a: a2 08
-			ldy #$06				; $bc8c: a0 06
-			jsr Goto_WaitFrame			; $bc8e: 20 ba c0
			dey				; $bc91: 88
			bne -			; $bc92: d0 fa
			inc $db			; $bc94: e6 db
			lda $db			; $bc96: a5 db
			cmp #$ef				; $bc98: c9 ef
			bcc +			; $bc9a: 90 0a
			lda #$00				; $bc9c: a9 00
			sta $db			; $bc9e: 85 db
			lda $dc			; $bca0: a5 dc
			eor #$01				; $bca2: 49 01
			sta $dc			; $bca4: 85 dc

+			dex				; $bca6: ca
			bne --			; $bca7: d0 e3
			rts				; $bca9: 60

;-------------------------------------------------------------------------------
PRG06_bcaa:
			ldy $04c0			; $bcaa: ac c0 04
			bpl PRG06_bcb0			; $bcad: 10 01
			rts				; $bcaf: 60

;-------------------------------------------------------------------------------
PRG06_bcb0:
			LoadAddressFromTable PRG06_bcbd, PRG06_bcc3, y
			jmp (LoadedAddress)		; $bcba: 6c a5 00

;-------------------------------------------------------------------------------
;	TODO: table
PRG06_bcbd:
			.byte $c9, $27, $4d, $c7	; $bcbd: c9 27 4d c7	 Data
			.byte $fb, $7b	; $bcc1: fb 7b		 Data
PRG06_bcc3:
			.byte $bc, $bd, $bd, $bd	; $bcc3: bc bd bd bd	 Data
			.byte $bd, $be
;	TODO: code
			.byte $58, $a9	; $bcc9: 58 a9	 Data
			.byte $00, $85, $34, $8d	; $bccb: 00 85 34 8d	 Data
			.byte $c2, $04, $a2, $ff	; $bccf: c2 04 a2 ff	 Data
PRG06_bcd3:
			sta $0400,x		; $bcd3: 9d 00 04
			sta $0500,x		; $bcd6: 9d 00 05
			dex				; $bcd9: ca
			bpl PRG06_bcd3			; $bcda: 10 f7
			jsr Main_c084			; $bcdc: 20 84 c0
			lda #$08				; $bcdf: a9 08
			sta $0120			; $bce1: 8d 20 01
			jsr Goto_FadeInOut			; $bce4: 20 ae c0
			jsr Main_c03c			; $bce7: 20 3c c0
			lda #$02				; $bcea: a9 02
			sta $012b			; $bcec: 8d 2b 01
			jsr Main_c02d			; $bcef: 20 2d c0
			lda #$1e				; $bcf2: a9 1e
			sta $c5			; $bcf4: 85 c5
			lda #$19				; $bcf6: a9 19
			sta WriteToCHR2_RAM			; $bcf8: 85 e9
			sta WriteToCHR1_RAM			; $bcfa: 85 e8
			LoadAddress PRG06_b506
			ldx #$20				; $bd04: a2 20
			ldy #$00				; $bd06: a0 00
			jsr Main_c0c0			; $bd08: 20 c0 c0
			lda #$20				; $bd0b: a9 20
			jsr Goto_LoadPalette			; $bd0d: 20 d2 c0
			lda #$30				; $bd10: a9 30
			sta $0109			; $bd12: 8d 09 01
			jsr Goto_WaitFrame			; $bd15: 20 ba c0
			jsr Goto_WaitFrame			; $bd18: 20 ba c0
			jsr Main_c0b1			; $bd1b: 20 b1 c0
			; TODO: convert to code
PRG06_bd1e:
			.byte $a9, $b4, $8d, $c1	; $bd1e: a9 b4 8d c1	 Data
			.byte $04, $ee, $c0, $04	; $bd22: 04 ee c0 04	 Data
			.byte $60, $ce, $c1, $04	; $bd26: 60 ce c1 04	 Data
			.byte $f0, $01, $60, $20	; $bd2a: f0 01 60 20	 Data
			.byte $ae, $c0, $a9, $01	; $bd2e: ae c0 a9 01	 Data
			.byte $8d, $c2, $04, $a9	; $bd32: 8d c2 04 a9	 Data
			.byte $48, $8d, $00, $02	; $bd36: 48 8d 00 02	 Data
			.byte $a9, $01, $8d, $01	; $bd3a: a9 01 8d 01	 Data
			.byte $02, $a9, $20, $8d	; $bd3e: 02 a9 20 8d	 Data
			.byte $02, $02, $a9, $00	; $bd42: 02 02 a9 00	 Data
			.byte $8d, $03, $02, $ee	; $bd46: 8d 03 02 ee	 Data
			.byte $c0, $04, $60, $a9	; $bd4a: c0 04 60 a9	 Data
			.byte $02, $8d, $2b, $01	; $bd4e: 02 8d 2b 01	 Data
			.byte $a9, $19, $85, $e9	; $bd52: a9 19 85 e9	 Data
			.byte $ac, $c2, $04, $b9	; $bd56: ac c2 04 b9	 Data
			.byte $a6, $bd, $85, $eb	; $bd5a: a6 bd 85 eb	 Data
			.byte $b9, $ae, $bd, $c0	; $bd5e: b9 ae bd c0	 Data
			.byte $06, $08, $20, $d2	; $bd62: 06 08 20 d2	 Data
			.byte $c0, $28, $f0, $12	; $bd66: c0 28 f0 12	 Data
			.byte $a0, $00, $b9, $04	; $bd6a: a0 00 b9 04	 Data
			.byte $01, $99, $00, $01	; $bd6e: 01 99 00 01	 Data
			.byte $c8, $c0, $0c, $d0	; $bd72: c8 c0 0c d0	 Data
			.byte $f5, $a9, $30, $8d	; $bd76: f5 a9 30 8d	 Data
			.byte $09, $01, $a9, $30	; $bd7a: 09 01 a9 30	 Data
			.byte $8d, $0d, $01, $ac	; $bd7e: 8d 0d 01 ac	 Data
			.byte $c2, $04, $b9, $b6	; $bd82: c2 04 b9 b6	 Data
			.byte $bd, $85, $a5, $b9	; $bd86: bd 85 a5 b9	 Data
			.byte $be, $bd, $85, $a6	; $bd8a: be bd 85 a6	 Data
			.byte $a2, $20, $a0, $00	; $bd8e: a2 20 a0 00	 Data
			.byte $20, $c0, $c0, $20	; $bd92: 20 c0 c0 20	 Data
			.byte $ba, $c0, $20, $3f	; $bd96: ba c0 20 3f	 Data
			.byte $c0, $20, $b1, $c0	; $bd9a: c0 20 b1 c0	 Data
			.byte $a9, $b4, $8d, $c1	; $bd9e: a9 b4 8d c1	 Data
			.byte $04, $ee, $c0, $04	; $bda2: 04 ee c0 04	 Data
			.byte $60, $13, $13, $15	; $bda6: 60 13 13 15	 Data
			.byte $14, $11, $16, $10	; $bdaa: 14 11 16 10	 Data
			.byte $12, $0e, $0a, $08	; $bdae: 12 0e 0a 08	 Data
			.byte $0b, $05, $07, $04	; $bdb2: 0b 05 07 04	 Data
			.byte $02, $23, $ab, $16	; $bdb6: 02 23 ab 16	 Data
			.byte $70, $d9, $7f	; $bdba: 70 d9 7f		Data
PRG06_bdbd:
			.byte $fa, $6b, $b5, $b5	; $bdbd: fa 6b b5 b5	 Data
			.byte $b6, $b6, $b6, $b7	; $bdc1: b6 b6 b6 b7	 Data
			.byte $b7, $b8, $20, $87	; $bdc5: b7 b8 20 87	 Data
			.byte $c0, $20, $87, $c0	; $bdc9: c0 20 87 c0	 Data
			.byte $ad, $02, $20, $ad	; $bdcd: ad 02 20 ad	 Data
			.byte $02, $20, $2c, $02	; $bdd1: 02 20 2c 02	 Data
			.byte $20, $50, $fb, $a5	; $bdd5: 20 50 fb a5	 Data
			.byte $eb, $20, $60, $c0	; $bdd9: eb 20 60 c0	 Data
			.byte $ce, $c1, $04, $f0	; $bddd: ce c1 04 f0	 Data
			.byte $01, $60, $20, $ae	; $bde1: 01 60 20 ae	 Data
			.byte $c0, $20, $3c, $c0	; $bde5: c0 20 3c c0	 Data
			.byte $ee, $c2, $04, $ad	; $bde9: ee c2 04 ad	 Data
			.byte $c2, $04, $c9, $09	; $bded: c2 04 c9 09	 Data
			.byte $f0, $04, $ce, $c0	; $bdf1: f0 04 ce c0	 Data
			.byte $04, $60, $ee, $c0	; $bdf5: 04 60 ee c0	 Data
			.byte $04, $60, $20, $ba	; $bdf9: 04 60 20 ba	 Data
			.byte $c0, $ac, $c2, $04	; $bdfd: c0 ac c2 04	 Data
			.byte $b9, $60, $be, $85	; $be01: b9 60 be 85	 Data
			.byte $ea, $85, $e8, $b9	; $be05: ea 85 e8 b9	 Data
			.byte $64, $be, $8d, $18	; $be09: 64 be 8d 18	 Data
			.byte $04, $8d, $19, $04	; $be0d: 04 8d 19 04	 Data
			.byte $8d, $00, $04, $8d	; $be11: 8d 00 04 8d	 Data
			.byte $01, $04, $b9, $66	; $be15: 01 04 b9 66	 Data
			.byte $be, $8d, $30, $04	; $be19: be 8d 30 04	 Data
			.byte $8d, $31, $04, $b9	; $be1d: 8d 31 04 b9	 Data
			.byte $68, $be, $8d, $60	; $be21: 68 be 8d 60	 Data
			.byte $04, $8d, $61, $04	; $be25: 04 8d 61 04	 Data
			.byte $b9, $6a, $be, $8d	; $be29: b9 6a be 8d	 Data
			.byte $f0, $04, $b9, $6c	; $be2d: f0 04 b9 6c	 Data
			.byte $be, $8d, $f1, $04	; $be31: be 8d f1 04	 Data
			.byte $a9, $03, $20, $cf	; $be35: a9 03 20 cf	 Data
			.byte $c0, $ac, $c2, $04	; $be39: c0 ac c2 04	 Data
			.byte $b9, $6e, $be, $85	; $be3d: b9 6e be 85	 Data
			.byte $a5, $b9, $70, $be	; $be41: a5 b9 70 be	 Data
			.byte $85, $a6, $a2, $20	; $be45: 85 a6 a2 20	 Data
			.byte $a0, $00, $20, $c0	; $be49: a0 00 20 c0	 Data
			.byte $c0, $ac, $c2, $04	; $be4d: c0 ac c2 04	 Data
			.byte $b9, $62, $be, $20	; $be51: b9 62 be 20	 Data
			.byte $d2, $c0, $a9, $30	; $be55: d2 c0 a9 30	 Data
			.byte $8d, $09, $01, $20	; $be59: 8d 09 01 20	 Data
			.byte $ba, $c0, $20, $ba	; $be5d: ba c0 20 ba	 Data
			.byte $c0, $20, $b1, $c0	; $be61: c0 20 b1 c0	 Data
			.byte $ee, $c0, $04, $60	; $be65: ee c0 04 60	 Data
			.byte $0d, $0a, $0f, $01	; $be69: 0d 0a 0f 01	 Data
			.byte $98, $80, $a8, $78	; $be6d: 98 80 a8 78	 Data
			.byte $88, $84, $5f, $00	; $be71: 88 84 5f 00	 Data
			.byte $53, $07, $25, $49	; $be75: 53 07 25 49	 Data
			.byte $b9, $b9, $ce, $c1	; $be79: b9 b9 ce c1	 Data
			.byte $04, $f0, $01, $60	; $be7d: 04 f0 01 60	 Data
			.byte $ee, $c2, $04, $ad	; $be81: ee c2 04 ad	 Data
			.byte $c2, $04, $c9, $0b	; $be85: c2 04 c9 0b	 Data
			.byte $f0, $07, $20, $ae	; $be89: f0 07 20 ae	 Data
			.byte $c0, $ce, $c0, $04	; $be8d: c0 ce c0 04	 Data
			.byte $60, $a9, $ff, $8d	; $be91: 60 a9 ff 8d	 Data
			.byte $c0, $04, $60	; $be95: c0 04 60		Data

;-------------------------------------------------------------------------------
PRG06_be98:
			lda $04c0			; $be98: ad c0 04
			cmp #$ff				; $be9b: c9 ff
			bne PRG06_bea0			; $be9d: d0 01
			rts				; $be9f: 60

;-------------------------------------------------------------------------------
PRG06_bea0:
			tay				; $bea0: a8
			and #$7f				; $bea1: 29 7f
			tax				; $bea3: aa
			tya				; $bea4: 98
			bmi PRG06_bebd			; $bea5: 30 16
			lda $04c0			; $bea7: ad c0 04
			ora #$80				; $beaa: 09 80
			sta $04c0			; $beac: 8d c0 04
			lda #$ff				; $beaf: a9 ff
			sta $04c3			; $beb1: 8d c3 04
			lda PRG06_bfa9,x			; $beb4: bd a9 bf
			sta $04c1			; $beb7: 8d c1 04
			sta $04c2			; $beba: 8d c2 04
PRG06_bebd:
			lda Input_RAM			; $bebd: a5 00
			and #$0f				; $bebf: 29 0f
			beq PRG06_bed4			; $bec1: f0 11
			lda $04c0			; $bec3: ad c0 04
			and #$7f				; $bec6: 29 7f
			cmp #$02				; $bec8: c9 02
			bcs PRG06_bed4			; $beca: b0 08
			lda #$01				; $becc: a9 01
			sta $04c0			; $bece: 8d c0 04
			jmp PRG06_bef7			; $bed1: 4c f7 be

;-------------------------------------------------------------------------------
PRG06_bed4:
			dec $04c2			; $bed4: ce c2 04
			bne +			; $bed7: d0 1d
			lda PRG06_bfae,x			; $bed9: bd ae bf
			ldy PRG06_bfb2,x			; $bedc: bc b2 bf
			sta LoadAddress_Low			; $bedf: 85 a5
			sty LoadAddress_High			; $bee1: 84 a6
			lda $04c1			; $bee3: ad c1 04
			sta $04c2			; $bee6: 8d c2 04
			inc $04c3			; $bee9: ee c3 04
			ldy $04c3			; $beec: ac c3 04
			lda (LoadedAddress),y		; $beef: b1 a5
			beq PRG06_bef7			; $bef1: f0 04
			jsr Goto_LoadPalette			; $bef3: 20 d2 c0
+			rts				; $bef6: 60

;-------------------------------------------------------------------------------
PRG06_bef7:
			lda $04c0			; $bef7: ad c0 04
			and #$7f				; $befa: 29 7f
			sta $04c0			; $befc: 8d c0 04
			inc $04c0			; $beff: ee c0 04
			lda $04c0			; $bf02: ad c0 04
			cmp #$03				; $bf05: c9 03
			bne +			; $bf07: d0 03
			jsr PRG06_bf1a			; $bf09: 20 1a bf

+			ldx $04c0			; $bf0c: ae c0 04
			lda PRG06_bfa9,x			; $bf0f: bd a9 bf
			bne +			; $bf12: d0 05

			lda #$ff				; $bf14: a9 ff
			sta $04c0			; $bf16: 8d c0 04
+			rts				; $bf19: 60

;-------------------------------------------------------------------------------
PRG06_bf1a:
			lda #$1e				; $bf1a: a9 1e
			sta WriteToCHR2_RAM			; $bf1c: 85 e9
			lda #$1c				; $bf1e: a9 1c
			sta $eb			; $bf20: 85 eb
			ldy #PRG06_bf31_end-PRG06_bf31				; $bf22: a0 78
			ldx #$00				; $bf24: a2 00
-			lda PRG06_bf31,x			; $bf26: bd 31 bf
			sta $0204,x		; $bf29: 9d 04 02
			inx				; $bf2c: e8
			dey				; $bf2d: 88
			bne -			; $bf2e: d0 f6
			rts				; $bf30: 60

;-------------------------------------------------------------------------------
PRG06_bf31:
			.byte $51, $c2, $02, $90	; $bf31: 51 c2 02 90	 Data
			.byte $51, $c4, $02, $98	; $bf35: 51 c4 02 98	 Data
			.byte $61, $c6, $02, $90	; $bf39: 61 c6 02 90	 Data
			.byte $61, $c8, $02, $98	; $bf3d: 61 c8 02 98	 Data
			.byte $71, $ca, $02, $80	; $bf41: 71 ca 02 80	 Data
			.byte $71, $cc, $02, $88	; $bf45: 71 cc 02 88	 Data
			.byte $71, $ce, $02, $90	; $bf49: 71 ce 02 90	 Data
			.byte $71, $d0, $02, $98	; $bf4d: 71 d0 02 98	 Data
			.byte $81, $d2, $02, $80	; $bf51: 81 d2 02 80	 Data
			.byte $81, $d4, $02, $88	; $bf55: 81 d4 02 88	 Data
			.byte $81, $d6, $02, $90	; $bf59: 81 d6 02 90	 Data
			.byte $81, $d8, $02, $98	; $bf5d: 81 d8 02 98	 Data
			.byte $41, $e8, $01, $c8	; $bf61: 41 e8 01 c8	 Data
			.byte $41, $ea, $01, $d0	; $bf65: 41 ea 01 d0	 Data
			.byte $51, $ec, $01, $c8	; $bf69: 51 ec 01 c8	 Data
			.byte $51, $ee, $01, $d0	; $bf6d: 51 ee 01 d0	 Data
			.byte $51, $f0, $01, $d8	; $bf71: 51 f0 01 d8	 Data
			.byte $61, $e2, $01, $a0	; $bf75: 61 e2 01 a0	 Data
			.byte $61, $e4, $01, $a8	; $bf79: 61 e4 01 a8	 Data
			.byte $61, $f2, $01, $d0	; $bf7d: 61 f2 01 d0	 Data
			.byte $61, $f4, $01, $d8	; $bf81: 61 f4 01 d8	 Data
			.byte $61, $f6, $01, $e0	; $bf85: 61 f6 01 e0	 Data
			.byte $71, $e6, $01, $a0	; $bf89: 71 e6 01 a0	 Data
			.byte $71, $f8, $01, $d0	; $bf8d: 71 f8 01 d0	 Data
			.byte $71, $fa, $01, $d8	; $bf91: 71 fa 01 d8	 Data
			.byte $71, $fc, $01, $e0	; $bf95: 71 fc 01 e0	 Data
			.byte $81, $de, $00, $90	; $bf99: 81 de 00 90	 Data
			.byte $81, $e0, $00, $98	; $bf9d: 81 e0 00 98	 Data
			.byte $91, $da, $00, $40	; $bfa1: 91 da 00 40	 Data
			.byte $91, $dc, $00, $48	; $bfa5: 91 dc 00 48	 Data
PRG06_bf31_end:

PRG06_bfa9:
			.byte $08, $88, $04, $04	; $bfa9: 08 88 04 04	 Data
			.byte $00	; $bfad: 00			Data
			; TODO: table
PRG06_bfae:
			.byte $b6, $b8, $ba, $bf	; $bfae: b6 b8 ba bf	 Data
PRG06_bfb2:
			.byte $bf, $bf, $bf, $bf	; $bfb2: bf bf bf bf	 Data

			.byte $3e, $00, $3e, $00	; $bfb6: 3e 00 3e 00	 Data
			.byte $3e, $3f, $40, $41	; $bfba: 3e 3f 40 41	 Data
			.byte $00, $41, $42, $43	; $bfbe: 00 41 42 43	 Data
			.byte $44, $00, $32, $30	; $bfc2: 44 00 32 30	 Data
			.byte $2a, $09, $ac, $9d	; $bfc6: 2a 09 ac 9d	 Data
			.byte $e0, $32, $9e, $b0	; $bfca: e0 32 9e b0	 Data
			.byte $32, $9e, $50, $35	; $bfce: 32 9e 50 35	 Data
			.byte $20, $a5, $be, $9e	; $bfd2: 20 a5 be 9e	 Data
			.byte $70, $33, $78, $d8	; $bfd6: 70 33 78 d8	 Data
			.byte $ee, $df, $ff, $4c	; $bfda: ee df ff 4c	 Data
			.byte $00, $c0
			
			BankEnd
			.endlogical