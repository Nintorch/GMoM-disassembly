;-------------------------------------------------------------------------------
;	Bank 4
;-------------------------------------------------------------------------------

			.logical $8000
			BankHeader

;-------------------------------------------------------------------------------
;	Cross bank jump labels
;-------------------------------------------------------------------------------

PRG04_Goto_Obj_Godzilla:	jmp Obj_Godzilla			; $8004: 4c b8 90

PRG04_Goto_Obj_Mothra:
			jmp Obj_Mothra			; $8007: 4c 3d 95

PRG04_Goto_Obj_Rodan:
			jmp Obj_Rodan			; $800a: 4c dd 89

PRG04_Goto_Obj_Anguirus:	jmp Obj_Anguirus			; $800d: 4c 35 8b

PRG04_8010:
			jmp PRG04_96c9			; $8010: 4c c9 96

PRG04_Goto_Obj_Mothra_2:	jmp Obj_Mothra_2			; $8013: 4c 63 95

PRG04_8016:
			jmp PRG04_8da0			; $8016: 4c a0 8d

PRG04_8019:
			jmp PRG04_988a			; $8019: 4c 8a 98

PRG04_801c:
			jmp PRG04_96bf			; $801c: 4c bf 96

PRG04_801f:
			jmp PRG04_a8bb			; $801f: 4c bb a8

PRG04_8022:
			jmp PRG04_a184			; $8022: 4c 84 a1

PRG04_Goto_Obj_Anguirus_2:	jmp Obj_Anguirus_2			; $8025: 4c 8c 89

PRG04_8028:
			jmp PRG04_89ce			; $8028: 4c ce 89

PRG04_802b:
			jmp PRG04_9c1f			; $802b: 4c 1f 9c

PRG04_Goto_Obj_Rodan_2:
			jmp Obj_Rodan_2			; $802e: 4c 12 8b

PRG04_8031:
			jmp PRG04_ab69			; $8031: 4c 69 ab

;-------------------------------------------------------------------------------
;	The bank code
;-------------------------------------------------------------------------------

PRG04_8034:
			sta $10			; $8034: 85 10
			lda $0430,x		; $8036: bd 30 04
			cmp $05c8,x		; $8039: dd c8 05
			bcs PRG04_804d			; $803c: b0 0f
			lda $04a8,x		; $803e: bd a8 04
			adc $10			; $8041: 65 10
			sta $04a8,x		; $8043: 9d a8 04
			bcc PRG04_804b			; $8046: 90 03
			inc $0490,x		; $8048: fe 90 04
PRG04_804b:
			sec				; $804b: 38
			rts				; $804c: 60

;-------------------------------------------------------------------------------
PRG04_804d:
			lda $04a8,x		; $804d: bd a8 04
			sbc $10			; $8050: e5 10
			sta $04a8,x		; $8052: 9d a8 04
			bcs PRG04_805a			; $8055: b0 03
			dec $0490,x		; $8057: de 90 04
PRG04_805a:
			clc				; $805a: 18
			rts				; $805b: 60

;-------------------------------------------------------------------------------
			sta $10			; $805c: 85 10
			lda $0460,x		; $805e: bd 60 04
			cmp $05e0,x		; $8061: dd e0 05
			bcs PRG04_8075			; $8064: b0 0f
			lda $04d8,x		; $8066: bd d8 04
			adc $10			; $8069: 65 10
			sta $04d8,x		; $806b: 9d d8 04
			bcc PRG04_8073			; $806e: 90 03
			inc $04c0,x		; $8070: fe c0 04
PRG04_8073:
			sec				; $8073: 38
			rts				; $8074: 60

;-------------------------------------------------------------------------------
PRG04_8075:
			lda $04d8,x		; $8075: bd d8 04
			sbc $10			; $8078: e5 10
			sta $04d8,x		; $807a: 9d d8 04
			bcs PRG04_8082			; $807d: b0 03
			dec $04c0,x		; $807f: de c0 04
PRG04_8082:
			clc				; $8082: 18
			rts				; $8083: 60

;-------------------------------------------------------------------------------
PRG04_8084:
			ldy #$03				; $8084: a0 03
			clc				; $8086: 18
PRG04_8087:
			lda $0418,y		; $8087: b9 18 04
			ora $0400,y		; $808a: 19 00 04
			bne PRG04_8091			; $808d: d0 02
			sec				; $808f: 38
			rts				; $8090: 60

;-------------------------------------------------------------------------------
PRG04_8091:
			iny				; $8091: c8
			cpy #$10				; $8092: c0 10
			bne PRG04_8087			; $8094: d0 f1
			clc				; $8096: 18
			rts				; $8097: 60

;-------------------------------------------------------------------------------
PRG04_8098:
			sta $0400,y		; $8098: 99 00 04
			lda $0430,x		; $809b: bd 30 04
			sta $0430,y		; $809e: 99 30 04
			lda $0460,x		; $80a1: bd 60 04
			sta $0460,y		; $80a4: 99 60 04
			rts				; $80a7: 60

;-------------------------------------------------------------------------------
PRG04_80a8:
			lda #$10				; $80a8: a9 10
			pha				; $80aa: 48
			lda $0550,x		; $80ab: bd 50 05
			and #$04				; $80ae: 29 04
			bne PRG04_80ca			; $80b0: d0 18
			pla				; $80b2: 68
			jsr PRG04_8034			; $80b3: 20 34 80
			lda $0490,x		; $80b6: bd 90 04
			bmi PRG04_80c9			; $80b9: 30 0e
			cmp #$08				; $80bb: c9 08
			bcc PRG04_80c9			; $80bd: 90 0a
			lda #$ff				; $80bf: a9 ff
			sta $04a8,x		; $80c1: 9d a8 04
			lda #$07				; $80c4: a9 07
			sta $0490,x		; $80c6: 9d 90 04
PRG04_80c9:
			rts				; $80c9: 60

;-------------------------------------------------------------------------------
PRG04_80ca:
			pla				; $80ca: 68
			jmp PRG04_80d4			; $80cb: 4c d4 80

;-------------------------------------------------------------------------------
PRG04_80ce:
			jsr PRG04_80d4			; $80ce: 20 d4 80
			jmp PRG04_80dd			; $80d1: 4c dd 80

;-------------------------------------------------------------------------------
PRG04_80d4:
			lda #$00				; $80d4: a9 00
			sta $0490,x		; $80d6: 9d 90 04
			sta $04a8,x		; $80d9: 9d a8 04
			rts				; $80dc: 60

;-------------------------------------------------------------------------------
PRG04_80dd:
			lda #$00				; $80dd: a9 00
			sta $04c0,x		; $80df: 9d c0 04
			sta $04d8,x		; $80e2: 9d d8 04
			rts				; $80e5: 60

;-------------------------------------------------------------------------------
PRG04_80e6:
			sty $a0			; $80e6: 84 a0
			pha				; $80e8: 48
			tya				; $80e9: 98
			and #$80				; $80ea: 29 80
			bne PRG04_8107			; $80ec: d0 19
			pla				; $80ee: 68
			ldy $0142			; $80ef: ac 42 01
			cpy #$20				; $80f2: c0 20
			bne PRG04_80f8			; $80f4: d0 02
			clc				; $80f6: 18
			rts				; $80f7: 60

;-------------------------------------------------------------------------------
PRG04_80f8:
			sta $06a0,y		; $80f8: 99 a0 06
			txa				; $80fb: 8a
			ora $a0			; $80fc: 05 a0
			sta $0660,y		; $80fe: 99 60 06
			iny				; $8101: c8
			sty $0142			; $8102: 8c 42 01
			sec				; $8105: 38
			rts				; $8106: 60

;-------------------------------------------------------------------------------
PRG04_8107:
			pla				; $8107: 68
			ldy $0143			; $8108: ac 43 01
			cpy #$20				; $810b: c0 20
			bne PRG04_8111			; $810d: d0 02
			clc				; $810f: 18
			rts				; $8110: 60

;-------------------------------------------------------------------------------
PRG04_8111:
			sta $06c0,y		; $8111: 99 c0 06
			txa				; $8114: 8a
			ora $a0			; $8115: 05 a0
			sta $0680,y		; $8117: 99 80 06
			iny				; $811a: c8
			sty $0143			; $811b: 8c 43 01
			sec				; $811e: 38
			rts				; $811f: 60

;-------------------------------------------------------------------------------
PRG04_8120:
			lda $0520,x		; $8120: bd 20 05
			and #$0f				; $8123: 29 0f
			beq PRG04_812f			; $8125: f0 08
			dec $0520,x		; $8127: de 20 05
			clc				; $812a: 18
			php				; $812b: 08
			jmp PRG04_8164			; $812c: 4c 64 81

;-------------------------------------------------------------------------------
PRG04_812f:
			sec				; $812f: 38
			php				; $8130: 08
			lda $0520,x		; $8131: bd 20 05
			lsr				; $8134: 4a
			lsr				; $8135: 4a
			lsr				; $8136: 4a
			lsr				; $8137: 4a
			ora $0520,x		; $8138: 1d 20 05
			sta $0520,x		; $813b: 9d 20 05
			lda $0418,x		; $813e: bd 18 04
			and #$08				; $8141: 29 08
			beq PRG04_814a			; $8143: f0 05
			lda $04c0,x		; $8145: bd c0 04
			bmi PRG04_816c			; $8148: 30 22
PRG04_814a:
			inc $0508,x		; $814a: fe 08 05
			lda $0508,x		; $814d: bd 08 05
			tay				; $8150: a8
			and #$0f				; $8151: 29 0f
			sta $a1			; $8153: 85 a1
PRG04_8155:
			tya				; $8155: 98
			lsr				; $8156: 4a
			lsr				; $8157: 4a
			lsr				; $8158: 4a
			lsr				; $8159: 4a
			cmp $a1			; $815a: c5 a1
			bcs PRG04_8164			; $815c: b0 06
			tya				; $815e: 98
			and #$f0				; $815f: 29 f0
			sta $0508,x		; $8161: 9d 08 05
PRG04_8164:
			lda $0508,x		; $8164: bd 08 05
			and #$0f				; $8167: 29 0f
			tay				; $8169: a8
			plp				; $816a: 28
			rts				; $816b: 60

;-------------------------------------------------------------------------------
PRG04_816c:
			lda $0508,x		; $816c: bd 08 05
			and #$0f				; $816f: 29 0f
			beq PRG04_8179			; $8171: f0 06
			dec $0508,x		; $8173: de 08 05
			jmp PRG04_8164			; $8176: 4c 64 81

;-------------------------------------------------------------------------------
PRG04_8179:
			lda $0508,x		; $8179: bd 08 05
			lsr				; $817c: 4a
			lsr				; $817d: 4a
			lsr				; $817e: 4a
			lsr				; $817f: 4a
			ora $0508,x		; $8180: 1d 08 05
			sta $0508,x		; $8183: 9d 08 05
			jmp PRG04_8164			; $8186: 4c 64 81

;-------------------------------------------------------------------------------
PRG04_8189:
			ldy #$00				; $8189: a0 00
			beq PRG04_8197			; $818b: f0 0a
PRG04_818d:
			LoadAddress $5b0
			txa				; $8195: 8a
			tay				; $8196: a8
PRG04_8197:
			lda (LoadedAddress),y		; $8197: b1 a5
			and #$0f				; $8199: 29 0f
			beq PRG04_81ab			; $819b: f0 0e
			lda (LoadedAddress),y		; $819d: b1 a5
			sta $a0			; $819f: 85 a0
			dec $a0			; $81a1: c6 a0
			lda $a0			; $81a3: a5 a0
			sta (LoadedAddress),y		; $81a5: 91 a5
			clc				; $81a7: 18
			php				; $81a8: 08
			bcc PRG04_81b7			; $81a9: 90 0c
PRG04_81ab:
			sec				; $81ab: 38
			php				; $81ac: 08
			lda (LoadedAddress),y		; $81ad: b1 a5
			lsr				; $81af: 4a
			lsr				; $81b0: 4a
			lsr				; $81b1: 4a
			lsr				; $81b2: 4a
			ora (LoadedAddress),y		; $81b3: 11 a5
			sta (LoadedAddress),y		; $81b5: 91 a5
PRG04_81b7:
			lda (LoadedAddress),y		; $81b7: b1 a5
			and #$0f				; $81b9: 29 0f
			tay				; $81bb: a8
			plp				; $81bc: 28
			rts				; $81bd: 60

;-------------------------------------------------------------------------------
			jsr $10c0			; $81be: 20 c0 10
			.byte $f0	; $81c1: f0		Suspected data
PRG04_81c2:
			tay				; $81c2: a8
			lda $0460,x		; $81c3: bd 60 04
			and #$fe				; $81c6: 29 fe
			sta $0460,x		; $81c8: 9d 60 04
			lda $0538,x		; $81cb: bd 38 05
			beq PRG04_81e2			; $81ce: f0 12
			lda $22			; $81d0: a5 22
			and #$fe				; $81d2: 29 fe
			sta $22			; $81d4: 85 22
			lda $d9			; $81d6: a5 d9
			and #$fe				; $81d8: 29 fe
			sta $d9			; $81da: 85 d9
			lda #$00				; $81dc: a9 00
			sta $04a8,x		; $81de: 9d a8 04
			iny				; $81e1: c8
PRG04_81e2:
			lda PRG04_81fb,y			; $81e2: b9 fb 81
			sta $04a8,x		; $81e5: 9d a8 04
			lda PRG04_820c,y			; $81e8: b9 0c 82
			sta $0490,x		; $81eb: 9d 90 04
			lda PRG04_821d,y			; $81ee: b9 1d 82
			sta $04d8,x		; $81f1: 9d d8 04
			lda PRG04_822e,y			; $81f4: b9 2e 82
			sta $04c0,x		; $81f7: 9d c0 04
			rts				; $81fa: 60

;-------------------------------------------------------------------------------
PRG04_81fb:
			.byte $00, $00, $00, $00	; $81fb: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $81ff: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8203: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8207: 00 00 00 00	 Data
			.byte $00	; $820b: 00			Data
PRG04_820c:
			.byte $00, $00, $02, $02	; $820c: 00 00 02 02	 Data
			.byte $02, $02, $02, $02	; $8210: 02 02 02 02	 Data
			.byte $00, $00, $fe, $fe	; $8214: 00 00 fe fe	 Data
			.byte $fe, $fe, $fe, $fe	; $8218: fe fe fe fe	 Data
			.byte $00	; $821c: 00			Data
PRG04_821d:
			.byte $00, $00, $00, $00	; $821d: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8221: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8225: 00 00 00 00	 Data
			.byte $00, $00, $00, $00	; $8229: 00 00 00 00	 Data
			.byte $00	; $822d: 00			Data
PRG04_822e:
			.byte $02, $02, $02, $02	; $822e: 02 02 02 02	 Data
			.byte $00, $00, $fe, $fe	; $8232: 00 00 fe fe	 Data
			.byte $fe, $fe, $fe, $fe	; $8236: fe fe fe fe	 Data
			.byte $00, $00, $02, $02	; $823a: 00 00 02 02	 Data
			.byte $00	; $823e: 00			Data
PRG04_823f:
			.byte $06, $08, $0a, $04	; $823f: 06 08 0a 04	 Data
			.byte $10, $0c, $02, $00	; $8243: 10 0c 02 00	 Data
			.byte $0e	; $8247: 0e			Data here
PRG04_8248:
			lda #$00				; $8248: a9 00
			sta $0400,x		; $824a: 9d 00 04
			sta $0418,x		; $824d: 9d 18 04
			sta $0430,x		; $8250: 9d 30 04
			sta $0448,x		; $8253: 9d 48 04
			sta $0460,x		; $8256: 9d 60 04
			sta $0478,x		; $8259: 9d 78 04
			sta $0490,x		; $825c: 9d 90 04
			sta $04a8,x		; $825f: 9d a8 04
			sta $04c0,x		; $8262: 9d c0 04
			sta $04d8,x		; $8265: 9d d8 04
			sta $04f0,x		; $8268: 9d f0 04
			sta $0508,x		; $826b: 9d 08 05
			sta $0520,x		; $826e: 9d 20 05
			sta $0538,x		; $8271: 9d 38 05
			sta $0550,x		; $8274: 9d 50 05
			sta $0568,x		; $8277: 9d 68 05
			sta $0580,x		; $827a: 9d 80 05
			sta $0598,x		; $827d: 9d 98 05
			sta $05b0,x		; $8280: 9d b0 05
			sta $05c8,x		; $8283: 9d c8 05
			sta $05e0,x		; $8286: 9d e0 05
			sta $05f8,x		; $8289: 9d f8 05
			sta $0610,x		; $828c: 9d 10 06
			sta $0628,x		; $828f: 9d 28 06
			sta $0640,x		; $8292: 9d 40 06
			rts				; $8295: 60

;-------------------------------------------------------------------------------
PRG04_8296:
			txa				; $8296: 8a
			pha				; $8297: 48
			tya				; $8298: 98
			and #$01				; $8299: 29 01
			tax				; $829b: aa
			lda $37,x			; $829c: b5 37
			bpl PRG04_82aa			; $829e: 10 0a
			dec $37,x			; $82a0: d6 37
			bmi PRG04_82ac			; $82a2: 30 08
			lda #$80				; $82a4: a9 80
			sta $37,x			; $82a6: 95 37
			bne PRG04_82ac			; $82a8: d0 02
PRG04_82aa:
			dec $37,x			; $82aa: d6 37
PRG04_82ac:
			pla				; $82ac: 68
			tax				; $82ad: aa
			rts				; $82ae: 60

;-------------------------------------------------------------------------------
PRG04_82af:
			lda $0147			; $82af: ad 47 01
			and #$01				; $82b2: 29 01
			beq PRG04_82da			; $82b4: f0 24
			jsr Main_c08a			; $82b6: 20 8a c0
			and #$3f				; $82b9: 29 3f
			bne PRG04_82da			; $82bb: d0 1d
			lda #$9f				; $82bd: a9 9f
			sta $0148			; $82bf: 8d 48 01
			jsr PRG04_83a5			; $82c2: 20 a5 83
			lda $0147			; $82c5: ad 47 01
			and #$fe				; $82c8: 29 fe
			sta $0147			; $82ca: 8d 47 01
			jsr Main_c08a			; $82cd: 20 8a c0
			and $a0			; $82d0: 25 a0
			bne PRG04_82da			; $82d2: d0 06
			jsr PRG04_838c			; $82d4: 20 8c 83
			jsr PRG04_83e3			; $82d7: 20 e3 83
PRG04_82da:
			rts				; $82da: 60

;-------------------------------------------------------------------------------
PRG04_82db:
			lda $0148			; $82db: ad 48 01
			and #$1f				; $82de: 29 1f
			beq PRG04_82f9			; $82e0: f0 17
			dec $0148			; $82e2: ce 48 01
			jsr PRG04_83a5			; $82e5: 20 a5 83
			lda $0148			; $82e8: ad 48 01
			and #$80				; $82eb: 29 80
			beq PRG04_82f9			; $82ed: f0 0a
			lda $0490			; $82ef: ad 90 04
			bmi PRG04_82f9			; $82f2: 30 05
			lda #$00				; $82f4: a9 00
			sta $0148			; $82f6: 8d 48 01
PRG04_82f9:
			lda $0550,x		; $82f9: bd 50 05
			and #$04				; $82fc: 29 04
			bne PRG04_8318			; $82fe: d0 18
			lda $04c0,x		; $8300: bd c0 04
			ora $04d8,x		; $8303: 1d d8 04
			beq PRG04_8318			; $8306: f0 10
			lda $04c0,x		; $8308: bd c0 04
			bmi PRG04_8313			; $830b: 30 06
			jsr PRG04_8373			; $830d: 20 73 83
			jmp PRG04_8316			; $8310: 4c 16 83

;-------------------------------------------------------------------------------
PRG04_8313:
			jsr PRG04_838c			; $8313: 20 8c 83
PRG04_8316:
			sec				; $8316: 38
			rts				; $8317: 60

;-------------------------------------------------------------------------------
PRG04_8318:
			clc				; $8318: 18
			rts				; $8319: 60

;-------------------------------------------------------------------------------
PRG04_831a:
			lda $0610			; $831a: ad 10 06
			ora $0628			; $831d: 0d 28 06
			and #$0f				; $8320: 29 0f
			beq PRG04_8352			; $8322: f0 2e
			clc				; $8324: 18
			lda $0460,x		; $8325: bd 60 04
			sbc $0460			; $8328: ed 60 04
			cmp #$1e				; $832b: c9 1e
			beq PRG04_8352			; $832d: f0 23
			bcs PRG04_8352			; $832f: b0 21
			lda $0147			; $8331: ad 47 01
			and #$02				; $8334: 29 02
			beq PRG04_834f			; $8336: f0 17
			jsr Main_c08a			; $8338: 20 8a c0
			and #$3f				; $833b: 29 3f
			bne PRG04_834f			; $833d: d0 10
			jsr PRG04_83a5			; $833f: 20 a5 83
			lda #$10				; $8342: a9 10
			sta $0148			; $8344: 8d 48 01
			lda $0147			; $8347: ad 47 01
			and #$fd				; $834a: 29 fd
			sta $0147			; $834c: 8d 47 01
PRG04_834f:
			jmp PRG04_8373			; $834f: 4c 73 83

;-------------------------------------------------------------------------------
PRG04_8352:
			rts				; $8352: 60

;-------------------------------------------------------------------------------
			lda $014a			; $8353: ad 4a 01
			beq PRG04_8372			; $8356: f0 1a
			LoadAddress $14b
			jsr PRG04_8189			; $8360: 20 89 81
			bcc PRG04_8372			; $8363: 90 0d
			dec $014a			; $8365: ce 4a 01
			jsr PRG04_8084			; $8368: 20 84 80
			bcc PRG04_8372			; $836b: 90 05
			lda #$10				; $836d: a9 10
			jsr PRG04_8098			; $836f: 20 98 80
PRG04_8372:
			rts				; $8372: 60

;-------------------------------------------------------------------------------
PRG04_8373:
			lda $03			; $8373: a5 03
			cmp #$08				; $8375: c9 08
			beq PRG04_838b			; $8377: f0 12
			cmp #$05				; $8379: c9 05
			bne PRG04_8381			; $837b: d0 04
			lda #$08				; $837d: a9 08
			bne PRG04_8383			; $837f: d0 02
PRG04_8381:
			lda #$07				; $8381: a9 07
PRG04_8383:
			sta $03			; $8383: 85 03
			lda $01			; $8385: a5 01
			ora #$80				; $8387: 09 80
			sta $01			; $8389: 85 01
PRG04_838b:
			rts				; $838b: 60

;-------------------------------------------------------------------------------
PRG04_838c:
			lda $03			; $838c: a5 03
			cmp #$02				; $838e: c9 02
			beq PRG04_83a4			; $8390: f0 12
			cmp #$05				; $8392: c9 05
			bne PRG04_839a			; $8394: d0 04
			lda #$02				; $8396: a9 02
			bne PRG04_839c			; $8398: d0 02
PRG04_839a:
			lda #$01				; $839a: a9 01
PRG04_839c:
			sta $03			; $839c: 85 03
			lda $01			; $839e: a5 01
			ora #$40				; $83a0: 09 40
			sta $01			; $83a2: 85 01
PRG04_83a4:
			rts				; $83a4: 60

;-------------------------------------------------------------------------------
PRG04_83a5:
			lda $03			; $83a5: a5 03
			cmp #$01				; $83a7: c9 01
			bne PRG04_83af			; $83a9: d0 04
			lda #$02				; $83ab: a9 02
			bne PRG04_83b9			; $83ad: d0 0a
PRG04_83af:
			cmp #$07				; $83af: c9 07
			bne PRG04_83b7			; $83b1: d0 04
			lda #$08				; $83b3: a9 08
			bne PRG04_83b9			; $83b5: d0 02
PRG04_83b7:
			lda #$05				; $83b7: a9 05
PRG04_83b9:
			sta $03			; $83b9: 85 03
			lda $01			; $83bb: a5 01
			ora #$10				; $83bd: 09 10
			sta $01			; $83bf: 85 01
			rts				; $83c1: 60

;-------------------------------------------------------------------------------
PRG04_83c2:
			lda $01			; $83c2: a5 01
			and #$02				; $83c4: 29 02
			bne PRG04_83e2			; $83c6: d0 1a
			lda $0149			; $83c8: ad 49 01
			ora #$01				; $83cb: 09 01
			sta $0149			; $83cd: 8d 49 01
			and #$08				; $83d0: 29 08
			bne PRG04_83e2			; $83d2: d0 0e
			lda $01			; $83d4: a5 01
			ora #$01				; $83d6: 09 01
			sta $01			; $83d8: 85 01
			lda $0149			; $83da: ad 49 01
			ora #$08				; $83dd: 09 08
			sta $0149			; $83df: 8d 49 01
PRG04_83e2:
			rts				; $83e2: 60

;-------------------------------------------------------------------------------
PRG04_83e3:
			lda $01			; $83e3: a5 01
			and #$01				; $83e5: 29 01
			bne PRG04_8403			; $83e7: d0 1a
			lda $0149			; $83e9: ad 49 01
			ora #$02				; $83ec: 09 02
			sta $0149			; $83ee: 8d 49 01
			and #$10				; $83f1: 29 10
			bne PRG04_8403			; $83f3: d0 0e
			lda $01			; $83f5: a5 01
			ora #$02				; $83f7: 09 02
			sta $01			; $83f9: 85 01
			lda $0149			; $83fb: ad 49 01
			ora #$10				; $83fe: 09 10
			sta $0149			; $8400: 8d 49 01
PRG04_8403:
			rts				; $8403: 60

;-------------------------------------------------------------------------------
PRG04_8404:
			lda #$03				; $8404: a9 03
			sta $03			; $8406: 85 03
			lda $01			; $8408: a5 01
			ora #$20				; $840a: 09 20
			sta $01			; $840c: 85 01
			rts				; $840e: 60

;-------------------------------------------------------------------------------
PRG04_840f:
			lda $01			; $840f: a5 01
			ora #$04				; $8411: 09 04
			sta $01			; $8413: 85 01
			rts				; $8415: 60

;-------------------------------------------------------------------------------
			lda $01			; $8416: a5 01
			ora #$08				; $8418: 09 08
			sta $01			; $841a: 85 01
			rts				; $841c: 60

;-------------------------------------------------------------------------------
PRG04_841d:
			lda $0149			; $841d: ad 49 01
			and #$01				; $8420: 29 01
			bne PRG04_842c			; $8422: d0 08
			lda $0149			; $8424: ad 49 01
			and #$f7				; $8427: 29 f7
			sta $0149			; $8429: 8d 49 01
PRG04_842c:
			lda $0149			; $842c: ad 49 01
			and #$02				; $842f: 29 02
			bne PRG04_843b			; $8431: d0 08
			lda $0149			; $8433: ad 49 01
			and #$ef				; $8436: 29 ef
			sta $0149			; $8438: 8d 49 01
PRG04_843b:
			lda $0149			; $843b: ad 49 01
			and #$08				; $843e: 29 08
			bne PRG04_844a			; $8440: d0 08
			lda $0149			; $8442: ad 49 01
			and #$df				; $8445: 29 df
			sta $0149			; $8447: 8d 49 01
PRG04_844a:
			lda $0149			; $844a: ad 49 01
			and #$f4				; $844d: 29 f4
			sta $0149			; $844f: 8d 49 01
			rts				; $8452: 60

;-------------------------------------------------------------------------------
PRG04_8453:
			lda $014d			; $8453: ad 4d 01
			bne PRG04_8461			; $8456: d0 09
			lda #$00				; $8458: a9 00
			sta $0152			; $845a: 8d 52 01
PRG04_845d:
			sta $014d			; $845d: 8d 4d 01
			rts				; $8460: 60

;-------------------------------------------------------------------------------
PRG04_8461:
			lda $014c			; $8461: ad 4c 01
			beq PRG04_845d			; $8464: f0 f7
			dec $014c			; $8466: ce 4c 01
			lda #$01				; $8469: a9 01
			ldy #$01				; $846b: a0 01
			jsr PRG04_ab90			; $846d: 20 90 ab
			bcc PRG04_849a			; $8470: 90 28
			jsr PRG04_8084			; $8472: 20 84 80
			bcc PRG04_849a			; $8475: 90 23
			lda #$10				; $8477: a9 10
			jsr PRG04_8098			; $8479: 20 98 80
			jsr PRG04_838c			; $847c: 20 8c 83
			lda $0580,x		; $847f: bd 80 05
			cmp #$08				; $8482: c9 08
			beq PRG04_848a			; $8484: f0 04
			cmp #$09				; $8486: c9 09
			bne PRG04_8491			; $8488: d0 07
PRG04_848a:
			lda #$01				; $848a: a9 01
			sta $0580,y		; $848c: 99 80 05
			bne PRG04_849a			; $848f: d0 09
PRG04_8491:
			cmp #$04				; $8491: c9 04
			bne PRG04_849a			; $8493: d0 05
			lda #$02				; $8495: a9 02
			sta $0580,y		; $8497: 99 80 05
PRG04_849a:
			lda #$00				; $849a: a9 00
			beq PRG04_845d			; $849c: f0 bf
PRG04_849e:
			lda $014d			; $849e: ad 4d 01
			bne PRG04_84ad			; $84a1: d0 0a
			lda #$08				; $84a3: a9 08
			sta $014c			; $84a5: 8d 4c 01
			lda #$01				; $84a8: a9 01
			sta $014d			; $84aa: 8d 4d 01
PRG04_84ad:
			rts				; $84ad: 60

;-------------------------------------------------------------------------------
PRG04_84ae:
			sec				; $84ae: 38
			lda $0460,x		; $84af: bd 60 04
			sbc $0460			; $84b2: ed 60 04
			cmp #$30				; $84b5: c9 30
			bcs PRG04_84ba			; $84b7: b0 01
PRG04_84b9:
			rts				; $84b9: 60

;-------------------------------------------------------------------------------
PRG04_84ba:
			jsr Main_c08a			; $84ba: 20 8a c0
			lda $0580,x		; $84bd: bd 80 05
			cmp #$09				; $84c0: c9 09
			bne PRG04_84cd			; $84c2: d0 09
			lda $20			; $84c4: a5 20
			and #$7f				; $84c6: 29 7f
			bne PRG04_84b9			; $84c8: d0 ef
			jmp PRG04_849e			; $84ca: 4c 9e 84

;-------------------------------------------------------------------------------
PRG04_84cd:
			lda $0580,x		; $84cd: bd 80 05
			cmp #$07				; $84d0: c9 07
			bne PRG04_84dd			; $84d2: d0 09
			lda $20			; $84d4: a5 20
			and #$3f				; $84d6: 29 3f
			bne PRG04_84b9			; $84d8: d0 df
			jmp PRG04_849e			; $84da: 4c 9e 84

;-------------------------------------------------------------------------------
PRG04_84dd:
			lda $20			; $84dd: a5 20
			and #$1f				; $84df: 29 1f
			bne PRG04_84b9			; $84e1: d0 d6
			jmp PRG04_849e			; $84e3: 4c 9e 84

;-------------------------------------------------------------------------------
PRG04_84e6:
			lda $0153			; $84e6: ad 53 01
			ora $0154			; $84e9: 0d 54 01
			beq PRG04_84fd			; $84ec: f0 0f
			lda $0153			; $84ee: ad 53 01
			beq PRG04_84f7			; $84f1: f0 04
PRG04_84f3:
			dec $0153			; $84f3: ce 53 01
			rts				; $84f6: 60

;-------------------------------------------------------------------------------
PRG04_84f7:
			dec $0154			; $84f7: ce 54 01
			jmp PRG04_84f3			; $84fa: 4c f3 84

;-------------------------------------------------------------------------------
PRG04_84fd:
			jsr Main_c08a			; $84fd: 20 8a c0
			and #$03				; $8500: 29 03
			bne PRG04_8508			; $8502: d0 04
			ldy #$01				; $8504: a0 01
			bne PRG04_851a			; $8506: d0 12
PRG04_8508:
			cmp #$01				; $8508: c9 01
			bne PRG04_8510			; $850a: d0 04
			ldy #$02				; $850c: a0 02
			bne PRG04_851a			; $850e: d0 0a
PRG04_8510:
			cmp #$02				; $8510: c9 02
			bne PRG04_8518			; $8512: d0 04
			ldy #$04				; $8514: a0 04
			bne PRG04_851a			; $8516: d0 02
PRG04_8518:
			ldy #$08				; $8518: a0 08
PRG04_851a:
			lda $0155			; $851a: ad 55 01
			and #$f0				; $851d: 29 f0
			sta $0155			; $851f: 8d 55 01
			tya				; $8522: 98
			ora $0155			; $8523: 0d 55 01
			sta $0155			; $8526: 8d 55 01
			lda #$80				; $8529: a9 80
			sta $0153			; $852b: 8d 53 01
			rts				; $852e: 60

;-------------------------------------------------------------------------------
PRG04_852f:
			lda $0640,x		; $852f: bd 40 06
			and #$0f				; $8532: 29 0f
			beq PRG04_8537			; $8534: f0 01
			rts				; $8536: 60

;-------------------------------------------------------------------------------
PRG04_8537:
			lda $0155			; $8537: ad 55 01
			and #$01				; $853a: 29 01
			beq PRG04_8542			; $853c: f0 04
			lda $a2			; $853e: a5 a2
			bne PRG04_8562			; $8540: d0 20
PRG04_8542:
			lda $0155			; $8542: ad 55 01
			and #$02				; $8545: 29 02
			beq PRG04_854d			; $8547: f0 04
			lda $a1			; $8549: a5 a1
			bne PRG04_8562			; $854b: d0 15
PRG04_854d:
			lda $0155			; $854d: ad 55 01
			and #$04				; $8550: 29 04
			beq PRG04_855b			; $8552: f0 07
			jsr PRG04_838c			; $8554: 20 8c 83
			lda #$01				; $8557: a9 01
			clc				; $8559: 18
			rts				; $855a: 60

;-------------------------------------------------------------------------------
PRG04_855b:
			sec				; $855b: 38
			lda $0460,x		; $855c: bd 60 04
			sbc $0460			; $855f: ed 60 04
PRG04_8562:
			sta $a0			; $8562: 85 a0
			sec				; $8564: 38
			lda $0460,x		; $8565: bd 60 04
			sbc $0460			; $8568: ed 60 04
			cmp $a0			; $856b: c5 a0
			rts				; $856d: 60

;-------------------------------------------------------------------------------
			sta $a0			; $856e: 85 a0
			sec				; $8570: 38
			lda $0460,x		; $8571: bd 60 04
			sbc $0460			; $8574: ed 60 04
			cmp $a0			; $8577: c5 a0
			rts				; $8579: 60

;-------------------------------------------------------------------------------

;	TODO: document characters' code

;-------------------------------------------------------------------------------
;	Initialize a playable character
;
;	Input:
;		X - Object id
;-------------------------------------------------------------------------------

; PRG04_857a:
PRG04_Char_Init:
			lda $0418,x
			and #$80
			bne _Skip2

			ldy $0127			; $8581: ac 27 01
			tya				; $8584: 98
			sta $0580,x		; $8585: 9d 80 05

			lda PRG04_Char_WalkFrameCount,y			; $8588: b9 58 86
			sta $0508,x		; $858b: 9d 08 05

			lda PRG04_Char_WalkAnimSpeed,y			; $858e: b9 5c 86
			sta $0520,x		; $8591: 9d 20 05
			sta $05b0,x		; $8594: 9d b0 05

			; TODO: confirm this is boss fight
			lda $012b	; are we at boss fight?
			bne _YStartBoss	; if yes, branch

			lda PRG04_Char_YStart,y			; $859c: b9 60 86
			sta $0430,x		; $859f: 9d 30 04
			bne _Skip			; $85a2: d0 06

_YStartBoss:
			lda PRG04_Char_YStartBoss,y			; $85a4: b9 64 86
			sta $0430,x		; $85a7: 9d 30 04

_Skip:
			lda PRG04_Char_CHRInit,y			; $85aa: b9 68 86
			sta WriteToCHR1_RAM			; $85ad: 85 e8

			lda PRG04_8650,y			; $85af: b9 50 86
			sta $0418,x		; $85b2: 9d 18 04

			lda PRG04_8654,y			; $85b5: b9 54 86
			sta $0401,x		; $85b8: 9d 01 04

			lda PRG04_Char_WalkSpeed,y			; $85bb: b9 6c 86
			sta $0538,x		; $85be: 9d 38 05

			lda #$ff				; $85c1: a9 ff
			sta $05c8,x		; $85c3: 9d c8 05

			lda #$00				; $85c6: a9 00
			sta $0610,x		; $85c8: 9d 10 06
			sta $0628,x		; $85cb: 9d 28 06
			sta $0640,x		; $85ce: 9d 40 06

			lda PRG04_Char_IntroXEnd,y			; $85d1: b9 4c 86
			sta $05f8,x		; $85d4: 9d f8 05

_Skip2:
			lda $05f8,x		; $85d7: bd f8 05
			bmi PRG04_85dd			; $85da: 30 01
			rts				; $85dc: 60
;-------------------------------------------------------------------------------
PRG04_85dd:
			lda $05f8,x		; $85dd: bd f8 05
			and #$7f				; $85e0: 29 7f
			bne PRG04_85e8			; $85e2: d0 04
			sta $05f8,x		; $85e4: 9d f8 05
			rts				; $85e7: 60

;-------------------------------------------------------------------------------
PRG04_85e8:
			dec $05f8,x		; $85e8: de f8 05
			lda #$07				; $85eb: a9 07
			sta $02			; $85ed: 85 02
			lda Input_RAM			; $85ef: a5 00
			and #Btn_Select				; $85f1: 29 04
			sta Input_RAM			; $85f3: 85 00
			lda $0126			; $85f5: ad 26 01
			bmi PRG04_8600			; $85f8: 30 06
			lda $016e			; $85fa: ad 6e 01
			beq PRG04_8600			; $85fd: f0 01
			rts				; $85ff: 60

;-------------------------------------------------------------------------------
PRG04_8600:
			ldy $0127			; $8600: ac 27 01
			lda $05f8,x		; $8603: bd f8 05
			and #$7f				; $8606: 29 7f
			cmp #$01				; $8608: c9 01
			beq PRG04_8617			; $860a: f0 0b
			and #$0f				; $860c: 29 0f
			bne +			; $860e: d0 06
			lda PRG04_MonsterIntroSounds,y			; $8610: b9 34 86
			jsr Goto_PlaySound			; $8613: 20 c6 c0
+			rts				; $8616: 60

;-------------------------------------------------------------------------------
PRG04_8617:
			lda PRG04_MonsterRoarSounds,y			; $8617: b9 48 86
			jsr Goto_PlaySound			; $861a: 20 c6 c0
			lda $0126			; $861d: ad 26 01
			bmi PRG04_862b			; $8620: 30 09
			ldy v_PlanetID			; $8622: ac 58 01
			lda PRG04_LevelMusicIndex,y			; $8625: b9 40 86
			jmp Goto_PlaySound			; $8628: 4c c6 c0

;-------------------------------------------------------------------------------
PRG04_862b:
			ldy $0128			; $862b: ac 28 01
			lda PRG04_MonsterIntroSounds,y			; $862e: b9 34 86
			jmp Goto_PlaySound			; $8631: 4c c6 c0

;-------------------------------------------------------------------------------
; Sounds that are played when a character enters the level
PRG04_MonsterIntroSounds:
			.byte SFXID_GodzillaStep
			.byte SFXID_MothraStep
			.byte SFXID_MothraStep		; Rodan step
			.byte SFXID_GodzillaStep	; Anguirus step
; PRG04_BossMusicIndex:
			.byte MusID_Ghidorah
			.byte MusID_MechaGodzilla
			.byte MusID_Hedorah
			.byte MusID_Gigan
			.byte MusID_Baragon
			.byte MusID_Moguera
			.byte MusID_Varan
			.byte MusID_Gezora

PRG04_LevelMusicIndex:
			.byte MusID_TheEarth
			.byte MusID_Mars
			.byte MusID_Jupiter
			.byte MusID_Saturn
			.byte MusID_Uranus
			.byte MusID_Pluto
			.byte MusID_Neptune
			.byte MusID_PlanetX

		PlanetCheck PRG04_LevelMusicIndex, 1

PRG04_MonsterRoarSounds:
			.byte SFXID_GodzillaRoar
			.byte SFXID_MothraRoar
			.byte SFXID_RodanRoar
			.byte SFXID_AnguirusRoar

PRG04_Char_IntroXEnd:
			.byte $e0, $b0, $e0, $e0	; $864c: e0 b0 e0 e0	 Data
PRG04_8650:
			.byte $8a, $9a, $9a, $9a	; $8650: 8a 9a 9a 9a	 Data ; not sure what is this
PRG04_8654:
			.byte $02, $09, $00, $0d	; $8654: 02 09 00 0d	 Data ; and this

Char_FrameCount .sfunction start, end, ((end-start)/2-1)<<4
PRG04_Char_WalkFrameCount:
			.byte Char_FrameCount(Godzilla_WalkAnim, Godzilla_WalkAnimEnd)
			.byte $20
			.byte $20
			.byte $30

PRG04_Char_WalkAnimSpeed:
			.byte $77, $bb, $99, $99	; Walking animation speed
PRG04_Char_YStart:
			.byte $93, $83, $83, $83	; Y position character starts at
PRG04_Char_YStartBoss:
			.byte $97, $b7, $83, $83	; $8664: 97 b7 83 83	 Data
PRG04_Char_CHRInit:
			.byte $08, $0d, $0c, $0b	; $8668: 08 0d 0c 0b	 Data
PRG04_Char_WalkSpeed:
			.byte $01, $00, $00, $01	; Walking speed

;-------------------------------------------------------------------------------
PRG04_Char_Walk:
			ldy $02			; $8670: a4 02
			jsr PRG04_8704			; $8672: 20 04 87
			bcc PRG04_8680			; $8675: 90 09
			lda PRG04_823f,y			; $8677: b9 3f 82	\\n"]\n
			jsr PRG04_81c2			; $867a: 20 c2 81
			jmp PRG04_8685			; $867d: 4c 85 86

;-------------------------------------------------------------------------------
PRG04_8680:
			ldy $02			; $8680: a4 02
			jsr PRG04_Obj_MoveSpeed			; $8682: 20 b8 aa
PRG04_8685:
			lda $04c0,x		; $8685: bd c0 04
			beq PRG04_86a6			; $8688: f0 1c
			bpl PRG04_8697			; $868a: 10 0b
			lda $0460			; $868c: ad 60 04
			cmp #$10				; $868f: c9 10
			bcs PRG04_86a6			; $8691: b0 13
			lda #$10				; $8693: a9 10
			bcc PRG04_86a0			; $8695: 90 09
PRG04_8697:
			lda $0460			; $8697: ad 60 04
			cmp #$ff				; $869a: c9 ff
			bcc PRG04_86a6			; $869c: 90 08
			lda #$ff				; $869e: a9 ff
PRG04_86a0:
			sta $0460			; $86a0: 8d 60 04
			jsr PRG04_80dd			; $86a3: 20 dd 80
PRG04_86a6:
			rts				; $86a6: 60

;-------------------------------------------------------------------------------
PRG04_86a7:
			lda $0418			; $86a7: ad 18 04
			sta $0419			; $86aa: 8d 19 04

			lda $0430			; $86ad: ad 30 04
			sta $0431			; $86b0: 8d 31 04

			lda $0448			; $86b3: ad 48 04
			sta $0449			; $86b6: 8d 49 04

			lda $0460			; $86b9: ad 60 04
			sta $0461			; $86bc: 8d 61 04

			lda $0478			; $86bf: ad 78 04
			sta $0479			; $86c2: 8d 79 04

			lda $0490			; $86c5: ad 90 04
			sta $0491			; $86c8: 8d 91 04

			lda $04a8			; $86cb: ad a8 04
			sta $04a9			; $86ce: 8d a9 04

			lda $04c0			; $86d1: ad c0 04
			sta $04c1			; $86d4: 8d c1 04

			lda $04d8			; $86d7: ad d8 04
			sta $04d9			; $86da: 8d d9 04

			lda $0550			; $86dd: ad 50 05
			sta $0551			; $86e0: 8d 51 05

			rts				; $86e3: 60

;-------------------------------------------------------------------------------
PRG04_86e4:
			lda $0490			; $86e4: ad 90 04
			bmi +			; $86e7: 30 08
			lda $0147			; $86e9: ad 47 01
			and #$fe				; $86ec: 29 fe
			sta $0147			; $86ee: 8d 47 01

+			lda $0610			; $86f1: ad 10 06
			ora $0628			; $86f4: 0d 28 06
			and #$0f				; $86f7: 29 0f
			bne +			; $86f9: d0 08

			lda $0147			; $86fb: ad 47 01
			and #$fd				; $86fe: 29 fd
			sta $0147			; $8700: 8d 47 01
+			rts				; $8703: 60

;-------------------------------------------------------------------------------
PRG04_8704:
			lda $0127			; $8704: ad 27 01
			cmp #$01				; $8707: c9 01
			beq PRG04_8711			; $8709: f0 06
			cmp #$02				; $870b: c9 02
			beq PRG04_8711			; $870d: f0 02
			clc				; $870f: 18
			rts				; $8710: 60

;-------------------------------------------------------------------------------
PRG04_8711:
			sec				; $8711: 38
			rts				; $8712: 60

;-------------------------------------------------------------------------------
PRG04_8713:
			bne PRG04_8716			; $8713: d0 01
			rts				; $8715: 60

;-------------------------------------------------------------------------------
PRG04_8716:
			sta $a0			; $8716: 85 a0
			txa				; $8718: 8a
			pha				; $8719: 48
			tya				; $871a: 98
			pha				; $871b: 48
			ldy $a0			; $871c: a4 a0
			LoadAddressFromTable PRG04_878d, PRG04_888c, y
			ldy #$00				; $8728: a0 00
PRG04_872a:
			lda (LoadedAddress),y		; $872a: b1 a5
			beq PRG04_875b			; $872c: f0 2d
			bmi PRG04_8760			; $872e: 30 30
			iny				; $8730: c8
			pha				; $8731: 48
			jsr Main_c0e4			; $8732: 20 e4 c0
			ldx $ca			; $8735: a6 ca
			inx				; $8737: e8
			lda (LoadedAddress),y		; $8738: b1 a5
			iny				; $873a: c8
			sta $0700,x		; $873b: 9d 00 07
			inx				; $873e: e8
			lda (LoadedAddress),y		; $873f: b1 a5
			iny				; $8741: c8
			sta $0700,x		; $8742: 9d 00 07
			inx				; $8745: e8
			lda #$00				; $8746: a9 00
PRG04_8748:
			sta $0700,x		; $8748: 9d 00 07
			inx				; $874b: e8
			dec $cb			; $874c: c6 cb
			bne PRG04_8748			; $874e: d0 f8
			sty $a0			; $8750: 84 a0
			pla				; $8752: 68
			jsr Main_c0ea			; $8753: 20 ea c0
			ldy $a0			; $8756: a4 a0
			jmp PRG04_872a			; $8758: 4c 2a 87

;-------------------------------------------------------------------------------
PRG04_875b:
			pla				; $875b: 68
			tay				; $875c: a8
			pla				; $875d: 68
			tax				; $875e: aa
			rts				; $875f: 60

;-------------------------------------------------------------------------------
PRG04_8760:
			iny				; $8760: c8
			and #$7f				; $8761: 29 7f
			pha				; $8763: 48
			jsr Main_c0e4			; $8764: 20 e4 c0
			ldx $ca			; $8767: a6 ca
			inx				; $8769: e8
			lda (LoadedAddress),y		; $876a: b1 a5
			iny				; $876c: c8
			sta $0700,x		; $876d: 9d 00 07
			inx				; $8770: e8
			lda (LoadedAddress),y		; $8771: b1 a5
			iny				; $8773: c8
			sta $0700,x		; $8774: 9d 00 07
			inx				; $8777: e8
PRG04_8778:
			lda (LoadedAddress),y		; $8778: b1 a5
			iny				; $877a: c8
			sta $0700,x		; $877b: 9d 00 07
			inx				; $877e: e8
			dec $cb			; $877f: c6 cb
			bne PRG04_8778			; $8781: d0 f5
			sty $a0			; $8783: 84 a0
			pla				; $8785: 68
			jsr Main_c0ea			; $8786: 20 ea c0
			ldy $a0			; $8789: a4 a0
			.byte $4c, $2a	; $878b: 4c 2a	 Suspected data

;-------------------------------------------------------------------------------

			TableStart
			TableInsert $ba87
			TableInsert $a534
			TableInsert $a538
			TableInsert $a545
			TableInsert $a54c
			TableInsert $a550
			TableInsert $a55b
			TableInsert $a55f
			TableInsert $a563
			TableInsert $a56a
			TableInsert $a56e
			TableInsert $a572
			TableInsert $a589
			TableInsert $a593
			TableInsert $a597
			TableInsert $a59e
			TableInsert $a5a3
			TableInsert $a5a8
			TableInsert $a5ac
			TableInsert $a5b3
			TableInsert $a5c3
			TableInsert $a5c7
			TableInsert $a5d1
			TableInsert $a5ed
			TableInsert $a5f4
			TableInsert $a604
			TableInsert $a60e
			TableInsert $a615
			TableInsert $a622
			TableInsert $a635
			TableInsert $a642
			TableInsert $a64c
			TableInsert $a650
			TableInsert $a654
			TableInsert $a76a
			TableInsert $a774
			TableInsert $a77b
			TableInsert $a65b
			TableInsert $a80d
			TableInsert $a811
			TableInsert $a815
			TableInsert $a81c
			TableInsert $a820
			TableInsert $a662
			TableInsert $a669
			TableInsert $a670
			TableInsert $a674
			TableInsert $a678
			TableInsert $a67c
			TableInsert $a680
			TableInsert $a684
			TableInsert $a68c
			TableInsert $a697
			TableInsert $a69f
			TableInsert $a6aa
			TableInsert $a6b2
			TableInsert $a6b7
			TableInsert $a6c2
			TableInsert $a6d6
			TableInsert $a6e1
			TableInsert $a6e8
			TableInsert $a6ec
			TableInsert $a6f0
			TableInsert $a6fe
			TableInsert $a705
			TableInsert $a70c
			TableInsert $a713
			TableInsert $a721
			TableInsert $a725
			TableInsert $a747
			TableInsert $a74b
			TableInsert $a786
			TableInsert $a78a
			TableInsert $a78e
			TableInsert $a782
			TableInsert $a792
			TableInsert $a79c
			TableInsert $a7a0
			TableInsert $a7b0
			TableInsert $a7bd
			TableInsert $a7c4
			TableInsert $a7c8
			TableInsert $a7cc
			TableInsert $a7d0
			TableInsert $a7d4
			TableInsert $a7d8
			TableInsert $a7dc
			TableInsert $a7e6
			TableInsert $a7ed
			TableInsert $a7f1
			TableInsert $a7f5
			TableInsert $a7fd
			TableInsert $a801
			TableInsert $a809
			TableInsert $a824
			TableInsert $a831
			TableInsert $a83b
			TableInsert $a845
			TableInsert $a849
			TableInsert $a84d
			TableInsert $a851
			TableInsert $a858
			TableInsert $a868
			TableInsert $a86f
			TableInsert $a876
			TableInsert $a880
			TableInsert $a884
			TableInsert $a88e
			TableInsert $a895
			TableInsert $a89f
			TableInsert $a8af
			TableInsert $a8b3
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
			TableInsert $a8ba
PRG04_878d:	.byte <CurrentTable
PRG04_888c:	.byte >CurrentTable
			.byte $a8

Obj_Anguirus_2:
			jsr PRG04_Char_Init			; $898c: 20 7a 85
			jsr PRG04_Char_Walk			; $898f: 20 70 86
			lda Input_RAM			; $8992: a5 00
			and #Btn_A				; $8994: 29 01
			beq PRG04_899f			; $8996: f0 07
			lda #$01				; $8998: a9 01
			ldy #$40				; $899a: a0 40
			jsr PRG04_80e6			; $899c: 20 e6 80
PRG04_899f:
			lda Input_RAM			; $899f: a5 00
			and #Btn_B				; $89a1: 29 02
			beq PRG04_89ac			; $89a3: f0 07
			lda #$02				; $89a5: a9 02
			ldy #$40				; $89a7: a0 40
			jsr PRG04_80e6			; $89a9: 20 e6 80
PRG04_89ac:
			lda $04c0,x		; $89ac: bd c0 04
			ora $04d8,x		; $89af: 1d d8 04
			beq PRG04_89c3			; $89b2: f0 0f
			jsr PRG04_8120			; $89b4: 20 20 81
			lda PRG04_89c6,y			; $89b7: b9 c6 89
			sta $04f0,x		; $89ba: 9d f0 04
			lda PRG04_89ca,y			; $89bd: b9 ca 89
			sta $04f1,x		; $89c0: 9d f1 04
PRG04_89c3:
			jmp PRG04_80a8			; $89c3: 4c a8 80

;-------------------------------------------------------------------------------
PRG04_89c6:		.byte $63, $62, $64, $62	; $89c6: 63 62 64 62	 Data
PRG04_89ca:		.byte $66, $65, $67, $65	; $89ca: 66 65 67 65	 Data
PRG04_89ce:
			lda $0418,x		; $89ce: bd 18 04
			and #$80				; $89d1: 29 80
			bne PRG04_89da			; $89d3: d0 05
			lda #$65				; $89d5: a9 65
			sta $04f0,x		; $89d7: 9d f0 04
PRG04_89da:
			jmp PRG04_86a7			; $89da: 4c a7 86

;-------------------------------------------------------------------------------
	; TODO: decompile
Obj_Rodan:
			.byte $bd, $18	; $89dd: bd 18	 Suspected data
PRG04_89df:
			.byte $04, $29, $80, $d0	; $89df: 04 29 80 d0	 Data
			.byte $0b, $a9, $6d, $85	; $89e3: 0b a9 6d 85	 Data
			.byte $a5, $a9, $8a, $85	; $89e7: a5 a9 8a 85	 Data
			.byte $a6, $20, $4b, $aa	; $89eb: a6 20 4b aa	 Data
			.byte $a9, $2d, $20, $4e	; $89ef: a9 2d 20 4e	 Data
			.byte $ab, $20, $a0, $ac	; $89f3: ab 20 a0 ac	 Data
			.byte $bd, $40, $06, $c9	; $89f7: bd 40 06 c9	 Data
			.byte $ff, $d0, $03, $4c	; $89fb: ff d0 03 4c	 Data
			.byte $c0, $ab	; $89ff: c0 ab		 Data
PRG04_8a01:
			.byte $a5, $68, $f0, $0b	; $8a01: a5 68 f0 0b	 Data
			.byte $29, $01, $a8, $b9	; $8a05: 29 01 a8 b9	 Data
			.byte $10, $8b, $8d, $87	; $8a09: 10 8b 8d 87	 Data
			.byte $00, $c6, $68	; $8a0d: 00 c6 68		Data
PRG04_8a10:
			.byte $20, $1d, $84	; $8a10: 20 1d 84		Data
PRG04_8a13:
			.byte $20, $a5, $aa, $ad	; $8a13: 20 a5 aa ad	 Data
			.byte $f8, $05, $30, $06	; $8a17: f8 05 30 06	 Data
			.byte $20, $ca, $9d, $20	; $8a1b: 20 ca 9d 20	 Data
			.byte $9b, $8a, $a4, $03	; $8a1f: 9b 8a a4 03	 Data
			.byte $20, $b8, $aa, $a9	; $8a23: 20 b8 aa a9	 Data
			.byte $10, $a0, $a0, $20	; $8a27: 10 a0 a0 20	 Data
			.byte $e6, $80, $a9, $73	; $8a2b: e6 80 a9 73	 Data
			.byte $85, $a5, $a9, $8a	; $8a2f: 85 a5 a9 8a	 Data
			.byte $85, $a6, $20, $73	; $8a33: 85 a6 20 73	 Data
			.byte $a9, $20, $98, $a9	; $8a37: a9 20 98 a9	 Data
			.byte $90, $03, $20, $46	; $8a3b: 90 03 20 46	 Data
			.byte $8a	; $8a3f: 8a			Data
PRG04_8a40:
			.byte $20, $c8, $a9, $4c	; $8a40: 20 c8 a9 4c	 Data
			.byte $a8, $80	; $8a44: a8 80		 Data
PRG04_8a46:
			.byte $bd, $f8, $05, $f0	; $8a46: bd f8 05 f0	 Data
			.byte $0c, $de, $f8, $05	; $8a4a: 0c de f8 05	 Data
			.byte $c9, $10, $d0, $05	; $8a4e: c9 10 d0 05	 Data
			.byte $a9, $3e, $20, $c6	; $8a52: a9 3e 20 c6	 Data
			.byte $c0	; $8a56: c0			Data
PRG04_8a57:
			.byte $ee, $4b, $01, $ad	; $8a57: ee 4b 01 ad	 Data
			.byte $4b, $01, $29, $07	; $8a5b: 4b 01 29 07	 Data
			.byte $a8, $b9, $93, $8a	; $8a5f: a8 b9 93 8a	 Data
			.byte $20, $13, $87, $b9	; $8a63: 20 13 87 b9	 Data
			.byte $8b, $8a, $20, $de	; $8a67: 8b 8a 20 de	 Data
			.byte $c0, $60, $a0, $30	; $8a6b: c0 60 a0 30	 Data
			.byte $02, $04, $80, $97	; $8a6f: 02 04 80 97	 Data
			.byte $7b, $8a, $7f, $8a	; $8a73: 7b 8a 7f 8a	 Data
			.byte $83, $8a, $87, $8a	; $8a77: 83 8a 87 8a	 Data
			.byte $81, $15, $00, $00	; $8a7b: 81 15 00 00	 Data
			.byte $82, $16, $00, $00	; $8a7f: 82 16 00 00	 Data
			.byte $83, $13, $00, $00	; $8a83: 83 13 00 00	 Data
			.byte $82, $14, $00, $00	; $8a87: 82 14 00 00	 Data
PRG04_8a8b:
			.byte $04, $05, $06, $07	; $8a8b: 04 05 06 07	 Data
			.byte $08, $07, $06, $05	; $8a8f: 08 07 06 05	 Data
PRG04_8a93:
			.byte $17, $18, $19, $1a	; $8a93: 17 18 19 1a	 Data
			.byte $1b, $1c, $1d, $1e	; $8a97: 1b 1c 1d 1e	 Data
			.byte $ad, $4d, $01	; $8a9b: ad 4d 01		Data
PRG04_8a9e:
			.byte $d0, $0b, $a9, $00	; $8a9e: d0 0b a9 00	 Data
			.byte $8d, $52, $01	; $8aa2: 8d 52 01		Data
PRG04_8aa5:
			sta $014d			; $8aa5: 8d 4d 01
			ldx $a7			; $8aa8: a6 a7
			rts				; $8aaa: 60

;-------------------------------------------------------------------------------
PRG04_8aab:
			.byte $ad, $4c, $01, $f0	; $8aab: ad 4c 01 f0	 Data
			.byte $f5, $ce, $4c, $01	; $8aaf: f5 ce 4c 01	 Data
			.byte $a9, $01, $a0, $01	; $8ab3: a9 01 a0 01	 Data
			.byte $20, $90, $ab, $90	; $8ab7: 20 90 ab 90	 Data
			.byte $30, $20, $84, $80	; $8abb: 30 20 84 80	 Data
			.byte $90, $2b, $a9, $10	; $8abf: 90 2b a9 10	 Data
			.byte $20, $98, $80, $ad	; $8ac3: 20 98 80 ad	 Data
			.byte $4b, $01, $29, $07	; $8ac7: 4b 01 29 07	 Data
			.byte $0a, $aa, $20, $8a	; $8acb: 0a aa 20 8a	 Data
			.byte $c0, $29, $01, $e8	; $8acf: c0 29 01 e8	 Data
			.byte $18, $b9, $30, $04	; $8ad3: 18 b9 30 04	 Data
			.byte $7d, $f0, $8a, $99	; $8ad7: 7d f0 8a 99	 Data
			.byte $30, $04, $18, $b9	; $8adb: 30 04 18 b9	 Data
			.byte $60, $04, $7d, $00	; $8adf: 60 04 7d 00	 Data
			.byte $8b, $99, $60, $04	; $8ae3: 8b 99 60 04	 Data
			.byte $a9, $02, $99, $80	; $8ae7: a9 02 99 80	 Data
			.byte $05	; $8aeb: 05			Data
PRG04_8aec:
			lda #$00				; $8aec: a9 00
			beq PRG04_8aa5			; $8aee: f0 b5
PRG04_8af0:
			.byte $1c, $30, $28, $28	; $8af0: 1c 30 28 28	 Data
			.byte $1c, $30, $18, $28	; $8af4: 1c 30 18 28	 Data
			.byte $0d, $20, $18, $28	; $8af8: 0d 20 18 28	 Data
			.byte $1c, $30, $28, $28	; $8afc: 1c 30 28 28	 Data
PRG04_8b00:
			.byte $08, $0c, $08, $08	; $8b00: 08 0c 08 08	 Data
			.byte $08, $0c, $10, $08	; $8b04: 08 0c 10 08	 Data
			.byte $08, $f8, $10, $08	; $8b08: 08 f8 10 08	 Data
			.byte $08, $0c, $08, $08	; $8b0c: 08 0c 08 08	 Data
PRG04_8b10:
			.byte $16, $08	; $8b10: 16 08		 Data

Obj_Rodan_2:
			jsr PRG04_Char_Init			; $8b12: 20 7a 85
			jsr PRG04_Char_Walk			; $8b15: 20 70 86

			lda Input_RAM
			and #Btn_Up		; Is up button held?
			beq +			; If not, branch
			lda #$6a				; $8b1e: a9 6a
			bne _write			; $8b20: d0 0c

+			lda Input_RAM
			and #Btn_Down	; Is down button held?
			beq +		; If not, branch
			lda #$69				; $8b28: a9 69
			bne _write			; $8b2a: d0 02

+			lda #$68				; $8b2c: a9 68
_write:
			sta $04f0,x		; $8b2e: 9d f0 04
			rts				; $8b31: 60

;-------------------------------------------------------------------------------
			pla				; $8b32: 68
			adc #$6a				; $8b33: 69 6a
			
Obj_Anguirus:
			lda $0418,x		; $8b35: bd 18 04
			and #$80				; $8b38: 29 80
			bne PRG04_8b47			; $8b3a: d0 0b
			LoadAddress PRG04_8d39
			jsr PRG04_aa4b			; $8b44: 20 4b aa
PRG04_8b47:
			lda #$2d				; $8b47: a9 2d
			jsr PRG04_ab4e			; $8b49: 20 4e ab
			jsr PRG04_aca0			; $8b4c: 20 a0 ac
			lda $0640,x		; $8b4f: bd 40 06
			cmp #$ff				; $8b52: c9 ff
			bne PRG04_8b59			; $8b54: d0 03
			jmp PRG04_abc0			; $8b56: 4c c0 ab

;-------------------------------------------------------------------------------
PRG04_8b59:
			lda #$00				; $8b59: a9 00
			sta $33			; $8b5b: 85 33
			lda $68			; $8b5d: a5 68
			beq PRG04_8b6f			; $8b5f: f0 0e
			and #$01				; $8b61: 29 01
			tay				; $8b63: a8
			lda PRG04_8d9e,y			; $8b64: b9 9e 8d
			sta @w $0086	; $8b67: 8d 86 00
			STA @w $008a	; $8b6a: 8d 8a 00
			dec $68			; $8b6d: c6 68
PRG04_8b6f:
			jsr PRG04_841d			; $8b6f: 20 1d 84
			jsr PRG04_aaa5			; $8b72: 20 a5 aa
			lda $05f8			; $8b75: ad f8 05
			bmi PRG04_8b80			; $8b78: 30 06
			jsr PRG04_9e45			; $8b7a: 20 45 9e
			jsr PRG04_8453			; $8b7d: 20 53 84
PRG04_8b80:
			lda $0640,x		; $8b80: bd 40 06
			and #$0f				; $8b83: 29 0f
			beq PRG04_8b97			; $8b85: f0 10
			lda $0640,x		; $8b87: bd 40 06
			and #$f0				; $8b8a: 29 f0
			bne PRG04_8b97			; $8b8c: d0 09
			lda $33			; $8b8e: a5 33
			ora #$04				; $8b90: 09 04
			sta $33			; $8b92: 85 33
			jsr PRG04_8373			; $8b94: 20 73 83
PRG04_8b97:
			ldy $03			; $8b97: a4 03
			jsr PRG04_Obj_MoveSpeed			; $8b99: 20 b8 aa
			jsr PRG04_8cc1			; $8b9c: 20 c1 8c
			lda #$07				; $8b9f: a9 07
			ldy #$a0				; $8ba1: a0 a0
			jsr PRG04_80e6			; $8ba3: 20 e6 80
			lda #$08				; $8ba6: a9 08
			ldy #$a0				; $8ba8: a0 a0
			jsr PRG04_80e6			; $8baa: 20 e6 80
			LoadAddress PRG04_8d3f
			jsr PRG04_a973			; $8bb5: 20 73 a9
			jsr PRG04_a998			; $8bb8: 20 98 a9
			bcc PRG04_8bc0			; $8bbb: 90 03
			jsr PRG04_8bc6			; $8bbd: 20 c6 8b
PRG04_8bc0:
			jsr PRG04_a9c8			; $8bc0: 20 c8 a9
			jmp PRG04_80a8			; $8bc3: 4c a8 80

;-------------------------------------------------------------------------------
PRG04_8bc6:
			lda $0640,x		; $8bc6: bd 40 06
			and #$0f				; $8bc9: 29 0f
			beq PRG04_8c29			; $8bcb: f0 5c
			tay				; $8bcd: a8
			lda $0640,x		; $8bce: bd 40 06
			and #$f0				; $8bd1: 29 f0
			bne PRG04_8bfa			; $8bd3: d0 25
			cpy #$08				; $8bd5: c0 08
			bne PRG04_8bde			; $8bd7: d0 05
			lda #$41				; $8bd9: a9 41
			jsr Goto_PlaySound			; $8bdb: 20 c6 c0
PRG04_8bde:
			lda PRG04_8d6e,y			; $8bde: b9 6e 8d
			jsr PRG04_8713			; $8be1: 20 13 87
			lda PRG04_8d66,y			; $8be4: b9 66 8d
			jsr Main_c0de			; $8be7: 20 de c0
			dec $0640,x		; $8bea: de 40 06
			lda $0640,x		; $8bed: bd 40 06
			and #$0f				; $8bf0: 29 0f
			bne PRG04_8bf9			; $8bf2: d0 05
PRG04_8bf4:
			.byte $a9, $cc, $9d, $b0	; $8bf4: a9 cc 9d b0	 Data
			.byte $05	; $8bf8: 05			Data
PRG04_8bf9:
			rts				; $8bf9: 60

;-------------------------------------------------------------------------------
PRG04_8bfa:
			lda PRG04_8d83,y			; $8bfa: b9 83 8d
			jsr PRG04_8713			; $8bfd: 20 13 87
			lda PRG04_8d76,y			; $8c00: b9 76 8d
			jsr Main_c0de			; $8c03: 20 de c0
			dec $0640,x		; $8c06: de 40 06
			lda $0640,x		; $8c09: bd 40 06
			tay				; $8c0c: a8
			and #$0f				; $8c0d: 29 0f
			cmp #$01				; $8c0f: c9 01
			bne PRG04_8bf9			; $8c11: d0 e6
PRG04_8c13:
			.byte $98, $29, $f0, $c9	; $8c13: 98 29 f0 c9	 Data
			.byte $10, $f0, $09	; $8c17: 10 f0 09		Data
PRG04_8c1a:
			.byte $18, $69, $f0, $09	; $8c1a: 18 69 f0 09	 Data
			.byte $0d, $9d, $40, $06	; $8c1e: 0d 9d 40 06	 Data
			.byte $60, $de, $40, $06	; $8c22: 60 de 40 06	 Data
			.byte $4c, $f4, $8b	; $8c26: 4c f4 8b		Data
PRG04_8c29:
			lda $0628,x		; $8c29: bd 28 06
			and #$0f				; $8c2c: 29 0f
			beq PRG04_8c8e			; $8c2e: f0 5e
			tay				; $8c30: a8
			lda PRG04_8d61,y			; $8c31: b9 61 8d
			jsr PRG04_8713			; $8c34: 20 13 87
			lda PRG04_8d5c,y			; $8c37: b9 5c 8d
			jsr Main_c0de			; $8c3a: 20 de c0
			lda $0628,x		; $8c3d: bd 28 06
			cmp #$04				; $8c40: c9 04
			bne PRG04_8c58			; $8c42: d0 14
			lda #$0e				; $8c44: a9 0e
			jsr Main_c0de			; $8c46: 20 de c0
			lda #$12				; $8c49: a9 12
			jsr PRG04_8713			; $8c4b: 20 13 87
			lda #$0e				; $8c4e: a9 0e
			ldy #$c0				; $8c50: a0 c0
			jsr PRG04_80e6			; $8c52: 20 e6 80
			jmp PRG04_8c75			; $8c55: 4c 75 8c

;-------------------------------------------------------------------------------
PRG04_8c58:
			lda $0628,x		; $8c58: bd 28 06
			cmp #$03				; $8c5b: c9 03
			bne PRG04_8c6c			; $8c5d: d0 0d
			lda #$13				; $8c5f: a9 13
			jsr Main_c0de			; $8c61: 20 de c0
			lda #$11				; $8c64: a9 11
			jsr PRG04_8713			; $8c66: 20 13 87
			jmp PRG04_8c75			; $8c69: 4c 75 8c

;-------------------------------------------------------------------------------
PRG04_8c6c:
			cmp #$02				; $8c6c: c9 02
			bne PRG04_8c75			; $8c6e: d0 05
			lda #$01				; $8c70: a9 01
			jsr Main_c0de			; $8c72: 20 de c0
PRG04_8c75:
			dec $0628,x		; $8c75: de 28 06
			lda $0628,x		; $8c78: bd 28 06
			and #$0f				; $8c7b: 29 0f
			bne PRG04_8c8d			; $8c7d: d0 0e
			lda $0610,x		; $8c7f: bd 10 06
			bne PRG04_8c88			; $8c82: d0 04
			lda #$cc				; $8c84: a9 cc
			bne PRG04_8c8a			; $8c86: d0 02
PRG04_8c88:
			lda #$44				; $8c88: a9 44
PRG04_8c8a:
			sta $05b0,x		; $8c8a: 9d b0 05
PRG04_8c8d:
			rts				; $8c8d: 60

;-------------------------------------------------------------------------------
PRG04_8c8e:
			lda $0610,x		; $8c8e: bd 10 06
			and #$0f				; $8c91: 29 0f
			beq PRG04_8cc0			; $8c93: f0 2b
			tay				; $8c95: a8
			lda PRG04_8d53,y			; $8c96: b9 53 8d
			jsr PRG04_8713			; $8c99: 20 13 87
			lda PRG04_8d4a,y			; $8c9c: b9 4a 8d
			jsr Main_c0de			; $8c9f: 20 de c0
			cpy #$07				; $8ca2: c0 07
			beq PRG04_8caa			; $8ca4: f0 04
			cpy #$03				; $8ca6: c0 03
			bne PRG04_8cb1			; $8ca8: d0 07
PRG04_8caa:
			lda #$0d				; $8caa: a9 0d
			ldy #$c0				; $8cac: a0 c0
			jsr PRG04_80e6			; $8cae: 20 e6 80
PRG04_8cb1:
			dec $0610,x		; $8cb1: de 10 06
			lda $0610,x		; $8cb4: bd 10 06
			and #$0f				; $8cb7: 29 0f
			bne PRG04_8cc0			; $8cb9: d0 05
			lda #$cc				; $8cbb: a9 cc
			sta $05b0,x		; $8cbd: 9d b0 05
PRG04_8cc0:
			rts				; $8cc0: 60

;-------------------------------------------------------------------------------
PRG04_8cc1:
			lda $0640,x		; $8cc1: bd 40 06
			and #$0f				; $8cc4: 29 0f
			beq PRG04_8cc9			; $8cc6: f0 01
			rts				; $8cc8: 60

;-------------------------------------------------------------------------------
PRG04_8cc9:
			lda $0610,x		; $8cc9: bd 10 06
			bne PRG04_8cdf			; $8ccc: d0 11
			lda $01			; $8cce: a5 01
			and #$01				; $8cd0: 29 01
			beq PRG04_8cdf			; $8cd2: f0 0b
			lda #$09				; $8cd4: a9 09
			sta $0610,x		; $8cd6: 9d 10 06
			lda #$44				; $8cd9: a9 44
			sta $05b0,x		; $8cdb: 9d b0 05
			rts				; $8cde: 60

;-------------------------------------------------------------------------------
PRG04_8cdf:
			lda $0628,x		; $8cdf: bd 28 06
			bne PRG04_8cf5			; $8ce2: d0 11
			lda $01			; $8ce4: a5 01
			and #$02				; $8ce6: 29 02
			beq PRG04_8cf5			; $8ce8: f0 0b
			lda #$05				; $8cea: a9 05
			sta $0628,x		; $8cec: 9d 28 06
			lda #$66				; $8cef: a9 66
			sta $05b0,x		; $8cf1: 9d b0 05
			rts				; $8cf4: 60

;-------------------------------------------------------------------------------
PRG04_8cf5:
			lda $0628,x		; $8cf5: bd 28 06
			ora $0610,x		; $8cf8: 1d 10 06
			and #$0f				; $8cfb: 29 0f
			bne PRG04_8d1e			; $8cfd: d0 1f
			lda $01			; $8cff: a5 01
			and #$20				; $8d01: 29 20
			beq PRG04_8d1e			; $8d03: f0 19
			lda #$5d				; $8d05: a9 5d
			sta $0640,x		; $8d07: 9d 40 06
			lda #$33				; $8d0a: a9 33
			sta $05b0,x		; $8d0c: 9d b0 05
			lda #$01				; $8d0f: a9 01
			jsr PRG04_8713			; $8d11: 20 13 87
			lda #$01				; $8d14: a9 01
			jsr Main_c0de			; $8d16: 20 de c0
			lda #$08				; $8d19: a9 08
			jsr Main_c0de			; $8d1b: 20 de c0
PRG04_8d1e:
			rts				; $8d1e: 60

;-------------------------------------------------------------------------------
			lda $0640,x		; $8d1f: bd 40 06
			and #$0f				; $8d22: 29 0f
			bne PRG04_8d38			; $8d24: d0 12
			lda #$08				; $8d26: a9 08
			sta $0640,x		; $8d28: 9d 40 06
			lda #$00				; $8d2b: a9 00
			sta $0610,x		; $8d2d: 9d 10 06
			sta $0628,x		; $8d30: 9d 28 06
			lda #$55				; $8d33: a9 55
			sta $05b0,x		; $8d35: 9d b0 05
PRG04_8d38:
			rts				; $8d38: 60

;-------------------------------------------------------------------------------
PRG04_8d39:
			.byte $c0, $30 ; $8d39
			.byte $02 ; $8d3b
			.byte $05, $c8 ; $8d3c
			.byte $97
PRG04_8d3f:
			.byte $91
			.byte $8d, $96, $8d ; $8d40
			.byte $91, $8d ; $8d43
			.byte $9a ; $8d45
			.byte $8d, $10, $10 ; $8d46
			.byte $10	; $8d49: 10		Suspected data
PRG04_8d4a:
			.byte $10, $01, $06, $03	; $8d4a: 10 01 06 03	 Data
			.byte $06, $01, $07, $05	; $8d4e: 06 01 07 05	 Data
			.byte $07	; $8d52: 07			Data
PRG04_8d53:
			.byte $01, $0a, $09, $08	; $8d53: 01 0a 09 08	 Data
			.byte $00, $0a, $09, $08	; $8d57: 00 0a 09 08	 Data
			.byte $00	; $8d5b: 00			Data
PRG04_8d5c:
			.byte $00, $08, $0b, $0c	; $8d5c: 00 08 0b 0c	 Data
			.byte $0b	; $8d60: 0b			Data
PRG04_8d61:
			.byte $08, $04, $02, $03	; $8d61: 08 04 02 03	 Data
			.byte $00	; $8d65: 00			Data
PRG04_8d66:
			.byte $01, $01, $16, $17	; $8d66: 01 01 16 17	 Data
			.byte $16, $01, $14, $15	; $8d6a: 16 01 14 15	 Data
PRG04_8d6e:
			.byte $14, $0e, $00, $0d	; $8d6e: 14 0e 00 0d	 Data
			.byte $0c, $10, $00, $00	; $8d72: 0c 10 00 00	 Data
PRG04_8d76:
			.byte $0b, $18, $18, $19	; $8d76: 0b 18 18 19	 Data
			.byte $1a, $1b, $1c, $1d	; $8d7a: 1a 1b 1c 1d	 Data
			.byte $18, $19, $1a, $1b	; $8d7e: 18 19 1a 1b	 Data
			.byte $1c	; $8d82: 1c			Data
PRG04_8d83:
			.byte $1d, $00, $10, $00	; $8d83: 1d 00 10 00	 Data
			.byte $07, $00, $06, $05	; $8d87: 07 00 06 05	 Data
			.byte $10, $00	; $8d8b: 10 00		 Data
PRG04_8d8d:
			.byte $07, $00, $06, $05	; $8d8d: 07 00 06 05	 Data
			.byte $88, $01, $00, $81	; $8d91: 88 01 00 81	 Data
			.byte $00	; $8d95: 00			Data
PRG04_8d96:
			.byte $89, $00, $80, $00	; $8d96: 89 00 80 00	 Data
			.byte $8a, $00, $82, $00	; $8d9a: 8a 00 82 00	 Data
PRG04_8d9e:
			.byte $16, $10	; $8d9e: 16 10		 Data
PRG04_8da0:
			lda $0418,x		; $8da0: bd 18 04
			and #$80				; $8da3: 29 80
			bne PRG04_8db2			; $8da5: d0 0b
			LoadAddress PRG04_902d
			jsr PRG04_aa4b			; $8daf: 20 4b aa
PRG04_8db2:
			lda #$2d				; $8db2: a9 2d
			jsr PRG04_ab4e			; $8db4: 20 4e ab
			jsr PRG04_aca0			; $8db7: 20 a0 ac
			lda $0640,x		; $8dba: bd 40 06
			cmp #$ff				; $8dbd: c9 ff
			bne PRG04_8dc4			; $8dbf: d0 03
			jmp PRG04_abc0			; $8dc1: 4c c0 ab

;-------------------------------------------------------------------------------
PRG04_8dc4:
			lda $68			; $8dc4: a5 68
			beq PRG04_8dd6			; $8dc6: f0 0e
			and #$01				; $8dc8: 29 01
			tay				; $8dca: a8
			lda PRG04_90b6,y			; $8dcb: b9 b6 90
			sta @w $0087	; $8dce: 8d 87 00
			sta @w $008b	; $8dd1: 8d 8b 00
			dec $68			; $8dd4: c6 68
PRG04_8dd6:
			jsr PRG04_841d			; $8dd6: 20 1d 84
			jsr PRG04_aaa5			; $8dd9: 20 a5 aa
			lda $05f8			; $8ddc: ad f8 05
			bmi PRG04_8de7			; $8ddf: 30 06
			jsr PRG04_9ebd			; $8de1: 20 bd 9e
			jsr PRG04_8453			; $8de4: 20 53 84
PRG04_8de7:
			ldy $03			; $8de7: a4 03
			jsr PRG04_Obj_MoveSpeed			; $8de9: 20 b8 aa
			jsr PRG04_8fba			; $8dec: 20 ba 8f
			lda #$0a				; $8def: a9 0a
			ldy #$a0				; $8df1: a0 a0
			jsr PRG04_80e6			; $8df3: 20 e6 80
			lda #$0b				; $8df6: a9 0b
			ldy #$a0				; $8df8: a0 a0
			jsr PRG04_80e6			; $8dfa: 20 e6 80
			lda $0610,x		; $8dfd: bd 10 06
			cmp #$11				; $8e00: c9 11
			bne PRG04_8e12			; $8e02: d0 0e
			LoadAddress PRG04_903b
			jsr PRG04_a973			; $8e0c: 20 73 a9
			jmp PRG04_8e1d			; $8e0f: 4c 1d 8e

;-------------------------------------------------------------------------------
PRG04_8e12:
			LoadAddress PRG04_9033
			jsr PRG04_a973			; $8e1a: 20 73 a9
PRG04_8e1d:
			lda $0610,x		; $8e1d: bd 10 06
			cmp #$11				; $8e20: c9 11
			bne PRG04_8e2a			; $8e22: d0 06
			lda $33			; $8e24: a5 33
			and #$01				; $8e26: 29 01
			bne PRG04_8e2f			; $8e28: d0 05
PRG04_8e2a:
			jsr PRG04_a998			; $8e2a: 20 98 a9
			bcc PRG04_8e32			; $8e2d: 90 03
PRG04_8e2f:
			jsr PRG04_8e38			; $8e2f: 20 38 8e
PRG04_8e32:
			jsr PRG04_a9c8			; $8e32: 20 c8 a9
			jmp PRG04_80a8			; $8e35: 4c a8 80

;-------------------------------------------------------------------------------
PRG04_8e38:
			lda $0640,x		; $8e38: bd 40 06
			and #$0f				; $8e3b: 29 0f
			bne PRG04_8e42			; $8e3d: d0 03
			jmp PRG04_8ef0			; $8e3f: 4c f0 8e

;-------------------------------------------------------------------------------
PRG04_8e42:
			tay				; $8e42: a8
			lda $0640,x		; $8e43: bd 40 06
			and #$f0				; $8e46: 29 f0
			cmp #$40				; $8e48: c9 40
			bcs PRG04_8e7e			; $8e4a: b0 32
			cpy #$04				; $8e4c: c0 04
			bne PRG04_8e55			; $8e4e: d0 05
			lda #$42				; $8e50: a9 42
			jsr Goto_PlaySound			; $8e52: 20 c6 c0
PRG04_8e55:
			lsr				; $8e55: 4a
			lsr				; $8e56: 4a
			pha				; $8e57: 48
			dey				; $8e58: 88
			lda PRG04_90a0,y			; $8e59: b9 a0 90
			jsr PRG04_8713			; $8e5c: 20 13 87
			sty $a0			; $8e5f: 84 a0
			pla				; $8e61: 68
			ora $a0			; $8e62: 05 a0
			tay				; $8e64: a8
			lda PRG04_9090,y			; $8e65: b9 90 90
			jsr Main_c0de			; $8e68: 20 de c0
			jsr PRG04_8373			; $8e6b: 20 73 83
			dec $0640,x		; $8e6e: de 40 06
			lda $0640,x		; $8e71: bd 40 06
			and #$0f				; $8e74: 29 0f
			bne PRG04_8e7d			; $8e76: d0 05
			lda #$aa				; $8e78: a9 aa
			sta $05b0,x		; $8e7a: 9d b0 05
PRG04_8e7d:
			rts				; $8e7d: 60

;-------------------------------------------------------------------------------
PRG04_8e7e:
			cmp #$40				; $8e7e: c9 40
			bne PRG04_8ead			; $8e80: d0 2b
			lda #$00				; $8e82: a9 00
			sta $0628,x		; $8e84: 9d 28 06
			sta $0640,x		; $8e87: 9d 40 06
			lda #$30				; $8e8a: a9 30
			sta $0508,x		; $8e8c: 9d 08 05
			lda #$60				; $8e8f: a9 60
			sta $014b			; $8e91: 8d 4b 01
			lda #$40				; $8e94: a9 40
			sta $05b0,x		; $8e96: 9d b0 05
			lda #$11				; $8e99: a9 11
			sta $0610,x		; $8e9b: 9d 10 06
			lda #$3f				; $8e9e: a9 3f
			jsr PRG04_8713			; $8ea0: 20 13 87
			lda #$3c				; $8ea3: a9 3c
			jsr Main_c0de			; $8ea5: 20 de c0
			lda #$34				; $8ea8: a9 34
			jmp Main_c0de			; $8eaa: 4c de c0

;-------------------------------------------------------------------------------
PRG04_8ead:
			cmp #$50				; $8ead: c9 50
			bne PRG04_8ec0			; $8eaf: d0 0f
			dec $0640,x		; $8eb1: de 40 06
			lda PRG04_908c,y			; $8eb4: b9 8c 90
			jsr PRG04_8713			; $8eb7: 20 13 87
			lda PRG04_9089,y			; $8eba: b9 89 90
			jmp Main_c0de			; $8ebd: 4c de c0

;-------------------------------------------------------------------------------
PRG04_8ec0:
			cpy #$06				; $8ec0: c0 06
			bne PRG04_8ec9			; $8ec2: d0 05
			lda #$42				; $8ec4: a9 42
			jsr Goto_PlaySound			; $8ec6: 20 c6 c0
PRG04_8ec9:
			jsr PRG04_8373			; $8ec9: 20 73 83
			lda PRG04_90af,y			; $8ecc: b9 af 90
			jsr PRG04_8713			; $8ecf: 20 13 87
			lda PRG04_90a9,y			; $8ed2: b9 a9 90
			beq PRG04_8eda			; $8ed5: f0 03
			jsr Main_c0de			; $8ed7: 20 de c0
PRG04_8eda:
			lda PRG04_90a3,y			; $8eda: b9 a3 90
			jsr Main_c0de			; $8edd: 20 de c0
			dec $0640,x		; $8ee0: de 40 06
			lda $0640,x		; $8ee3: bd 40 06
			and #$0f				; $8ee6: 29 0f
			bne PRG04_8ef0			; $8ee8: d0 06
			lda #$02				; $8eea: a9 02
			sta $0538,x		; $8eec: 9d 38 05
			rts				; $8eef: 60

;-------------------------------------------------------------------------------
PRG04_8ef0:
			lda $0628,x		; $8ef0: bd 28 06
			and #$0f				; $8ef3: 29 0f
			beq PRG04_8f3a			; $8ef5: f0 43
			tay				; $8ef7: a8
			lda PRG04_907c,y			; $8ef8: b9 7c 90
			jsr PRG04_8713			; $8efb: 20 13 87
			lda $0628,x		; $8efe: bd 28 06
			and #$f0				; $8f01: 29 f0
			beq PRG04_8f0a			; $8f03: f0 05
			tya				; $8f05: 98
			clc				; $8f06: 18
			adc #$0a				; $8f07: 69 0a
			tay				; $8f09: a8
PRG04_8f0a:
			lda PRG04_9068,y			; $8f0a: b9 68 90
			jsr Main_c0de			; $8f0d: 20 de c0
			lda PRG04_906d,y			; $8f10: b9 6d 90
			jsr Main_c0de			; $8f13: 20 de c0
			cpy #$03				; $8f16: c0 03
			bne PRG04_8f21			; $8f18: d0 07
			lda #$0e				; $8f1a: a9 0e
			ldy #$c0				; $8f1c: a0 c0
			jsr PRG04_80e6			; $8f1e: 20 e6 80
PRG04_8f21:
			dec $0628,x		; $8f21: de 28 06
			lda $0628,x		; $8f24: bd 28 06
			and #$0f				; $8f27: 29 0f
			bne PRG04_8f39			; $8f29: d0 0e
			lda $0610,x		; $8f2b: bd 10 06
			bne PRG04_8f34			; $8f2e: d0 04
			lda #$aa				; $8f30: a9 aa
			bne PRG04_8f36			; $8f32: d0 02
PRG04_8f34:
			lda #$77				; $8f34: a9 77
PRG04_8f36:
			sta $05b0,x		; $8f36: 9d b0 05
PRG04_8f39:
			rts				; $8f39: 60

;-------------------------------------------------------------------------------
PRG04_8f3a:
			lda $0610,x		; $8f3a: bd 10 06
			and #$0f				; $8f3d: 29 0f
			bne PRG04_8f42			; $8f3f: d0 01
			rts				; $8f41: 60

;-------------------------------------------------------------------------------
PRG04_8f42:
			tay				; $8f42: a8
			lda $0610,x		; $8f43: bd 10 06
			and #$f0				; $8f46: 29 f0
			bne PRG04_8f77			; $8f48: d0 2d
			lda PRG04_9061,y			; $8f4a: b9 61 90
			jsr PRG04_8713			; $8f4d: 20 13 87
			lda PRG04_905a,y			; $8f50: b9 5a 90
			pha				; $8f53: 48
			jsr Main_c0de			; $8f54: 20 de c0
			pla				; $8f57: 68
			cmp #$0d				; $8f58: c9 0d
			beq PRG04_8f60			; $8f5a: f0 04
			cmp #$07				; $8f5c: c9 07
			bne PRG04_8f67			; $8f5e: d0 07
PRG04_8f60:
			lda #$0d				; $8f60: a9 0d
			ldy #$c0				; $8f62: a0 c0
			jsr PRG04_80e6			; $8f64: 20 e6 80
PRG04_8f67:
			dec $0610,x		; $8f67: de 10 06
			lda $0610,x		; $8f6a: bd 10 06
			and #$0f				; $8f6d: 29 0f
			bne PRG04_8f76			; $8f6f: d0 05
			lda #$aa				; $8f71: a9 aa
			sta $05b0,x		; $8f73: 9d b0 05
PRG04_8f76:
			rts				; $8f76: 60

;-------------------------------------------------------------------------------
PRG04_8f77:
			lda $014b			; $8f77: ad 4b 01
			beq PRG04_8f9b			; $8f7a: f0 1f
			dec $014b			; $8f7c: ce 4b 01
			lda #$3c				; $8f7f: a9 3c
			jsr PRG04_8713			; $8f81: 20 13 87
			lda $0508,x		; $8f84: bd 08 05
			and #$0f				; $8f87: 29 0f
			asl				; $8f89: 0a
			sta $a0			; $8f8a: 85 a0
			lda $014b			; $8f8c: ad 4b 01
			and #$01				; $8f8f: 29 01
			clc				; $8f91: 18
			adc $a0			; $8f92: 65 a0
			tay				; $8f94: a8
			lda PRG04_9082,y			; $8f95: b9 82 90
			jmp Main_c0de			; $8f98: 4c de c0

;-------------------------------------------------------------------------------
PRG04_8f9b:
			lda #$30				; $8f9b: a9 30
			jsr PRG04_8713			; $8f9d: 20 13 87
			lda #$37				; $8fa0: a9 37
			jsr Main_c0de			; $8fa2: 20 de c0
			lda #$3d				; $8fa5: a9 3d
			jsr Main_c0de			; $8fa7: 20 de c0
			lda #$53				; $8faa: a9 53
			sta $0640,x		; $8fac: 9d 40 06
			lda #$00				; $8faf: a9 00
			sta $0610,x		; $8fb1: 9d 10 06
			lda #$aa				; $8fb4: a9 aa
			sta $05b0,x		; $8fb6: 9d b0 05
			rts				; $8fb9: 60

;-------------------------------------------------------------------------------
PRG04_8fba:
			lda $0640,x		; $8fba: bd 40 06
			and #$0f				; $8fbd: 29 0f
			beq PRG04_8fc2			; $8fbf: f0 01
			rts				; $8fc1: 60

;-------------------------------------------------------------------------------
PRG04_8fc2:
			lda $0610,x		; $8fc2: bd 10 06
			cmp #$11				; $8fc5: c9 11
PRG04_8fc7:
			beq PRG04_8fdd			; $8fc7: f0 14
			and #$0f				; $8fc9: 29 0f
			bne PRG04_8fde			; $8fcb: d0 11
			lda $01			; $8fcd: a5 01
			and #$01				; $8fcf: 29 01
			beq PRG04_8fde			; $8fd1: f0 0b
			lda #$07				; $8fd3: a9 07
			sta $0610,x		; $8fd5: 9d 10 06
			lda #$77				; $8fd8: a9 77
			sta $05b0,x		; $8fda: 9d b0 05
PRG04_8fdd:
			rts				; $8fdd: 60

;-------------------------------------------------------------------------------
PRG04_8fde:
			lda $0628,x		; $8fde: bd 28 06
			and #$0f				; $8fe1: 29 0f
			bne PRG04_9003			; $8fe3: d0 1e
			lda $01			; $8fe5: a5 01
			and #$02				; $8fe7: 29 02
			beq PRG04_9003			; $8fe9: f0 18
			lda $0508,x		; $8feb: bd 08 05
			and #$0f				; $8fee: 29 0f
			cmp #$02				; $8ff0: c9 02
			bcs PRG04_8ff8			; $8ff2: b0 04
			lda #$15				; $8ff4: a9 15
			bne PRG04_8ffa			; $8ff6: d0 02
PRG04_8ff8:
			lda #$05				; $8ff8: a9 05
PRG04_8ffa:
			sta $0628,x		; $8ffa: 9d 28 06
			lda #$99				; $8ffd: a9 99
			sta $05b0,x		; $8fff: 9d b0 05
			rts				; $9002: 60

;-------------------------------------------------------------------------------
PRG04_9003:
			lda $0628,x		; $9003: bd 28 06
			ora $0610,x		; $9006: 1d 10 06
			and #$0f				; $9009: 29 0f
			bne PRG04_902c			; $900b: d0 1f
			lda $01			; $900d: a5 01
			and #$20				; $900f: 29 20
			beq PRG04_902c			; $9011: f0 19
			lda #$41				; $9013: a9 41
			sta $0640,x		; $9015: 9d 40 06
			lda #$aa				; $9018: a9 aa
			sta $05b0,x		; $901a: 9d b0 05
			lda #$3e				; $901d: a9 3e
			jsr PRG04_8713			; $901f: 20 13 87
			lda #$0c				; $9022: a9 0c
			jsr Main_c0de			; $9024: 20 de c0
			lda #$0f				; $9027: a9 0f
			jsr Main_c0de			; $9029: 20 de c0
PRG04_902c:
			rts				; $902c: 60

;-------------------------------------------------------------------------------
PRG04_902d:
			.byte $a0, $30
			.byte $02	; $902f: 02
			.byte $07, $b0	; $9030: 07 b0
			.byte $97
PRG04_9033:
			.byte $43
			.byte $90, $49 ; $9034
			.byte $90, $43 ; $9036
			.byte $90, $4d ; $9038
			.byte $90
PRG04_903b:
			.byte $51
			.byte $90, $55 ; $903c
			.byte $90, $51 ; $903e
			.byte $90, $58 ; $9040
			.byte $90, $83 ; $9042
			.byte $30, $00 ; $9044
			.byte $80, $31 ; $9046
			.byte $00 ; $9048
			.byte $84, $00 ; $9049
			.byte $81, $00 ; $904b
			.byte $85, $00 ; $904d
			.byte $82, $00 ; $904f
			.byte $bd, $30, $00 ; $9051
			.byte $00 ; $9054
			.byte $c1, $00 ; $9055
			.byte $00 ; $9057
			.byte $c3, $00 ; $9058

PRG04_905a:
			.byte $00, $00, $0d, $06	; $905a: 00 00 0d 06	 Data
			.byte $08, $07, $06	; $905e: 08 07 06		Data
PRG04_9061:
			.byte $0c, $36, $00, $35	; $9061: 0c 36 00 35	 Data
			.byte $34, $37, $33	; $9065: 34 37 33		Data
PRG04_9068:
			.byte $32, $00, $12, $13	; $9068: 32 00 12 13	 Data
			.byte $12	; $906c: 12			Data
PRG04_906d:
			.byte $00, $03, $15, $16	; $906d: 00 03 15 16	 Data
			.byte $15, $03, $00, $18	; $9071: 15 03 00 18	 Data
			.byte $19, $18, $00, $03	; $9075: 19 18 00 03	 Data
			.byte $1b, $1c	; $9079: 1b 1c		 Data
			.byte $1b	; $907b: 1b

PRG04_907c:
			.byte $03, $3b, $3a	; $907c: 03 3b 3a		Data
			.byte $39, $00, $38
PRG04_9082:
			.byte $36, $37, $38, $39	; $9082: 36 37 38 39	 Data
			.byte $36	; $9086: 36			Data
			.byte $37, $3a	; $9087: 37 3a
PRG04_9089:
			.byte $3b, $00, $35	; $9089: 3b 00 35		Data
PRG04_908c:
			.byte $34	; $908c: 34			Data
			.byte $37, $3d	; $908d: 37 3d
			.byte $3d	; $908f: 3d
PRG04_9090:
			.byte $22	; $9090: 22			Data
			.byte $23, $24 ; $9091
			.byte $23, $28 ; $9093
			.byte $29, $2a ; $9095
			.byte $29, $22 ; $9097
			.byte $23 ; $9099
			.byte $24, $23 ; $909a
			.byte $2e, $2f, $30 ; $909c
			.byte $2f ; $909f
PRG04_90a0:
			.byte $00, $43, $42	; $90a0: 00 43 42		Data
PRG04_90a3:
			.byte $42, $28, $29, $2a	; $90a3: 42 28 29 2a	 Data
			.byte $29, $1a	; $90a7: 29 1a		 Data
PRG04_90a9:
			.byte $14, $00, $00, $00	; $90a9: 14 00 00 00	 Data
			.byte $04, $1d	; $90ad: 04 1d		 Data
PRG04_90af:
			.byte $17, $00, $43, $42	; $90af: 17 00 43 42	 Data
			.byte $46, $45, $44	; $90b3: 46 45 44		Data
PRG04_90b6:
			.byte $16, $1a	; $90b6: 16 1a		 Data

;-------------------------------------------------------------------------------
; PRG04_90b8:
Obj_Godzilla:
			jsr PRG04_Char_Init			; $90b8: 20 7a 85
			jsr PRG04_911b			; $90bb: 20 1b 91
			lda #$00				; $90be: a9 00
			sta $33			; $90c0: 85 33
			jsr PRG04_aca0			; $90c2: 20 a0 ac
			lda $0640,x		; $90c5: bd 40 06
			cmp #$ff				; $90c8: c9 ff
			bne PRG04_90cf			; $90ca: d0 03
			jmp PRG04_abc0			; $90cc: 4c c0 ab

;-------------------------------------------------------------------------------
PRG04_90cf:
			lda #$03				; $90cf: a9 03
			ldy #$20				; $90d1: a0 20
			jsr PRG04_80e6			; $90d3: 20 e6 80
			lda #$10				; $90d6: a9 10
			ldy #$20				; $90d8: a0 20
			jsr PRG04_80e6			; $90da: 20 e6 80
			jsr PRG04_Char_Walk			; $90dd: 20 70 86	; walk
			jsr PRG04_86e4			; $90e0: 20 e4 86
			jsr PRG04_91d7			; $90e3: 20 d7 91	; abilities
			lda $0640,x		; $90e6: bd 40 06
			and #$0f				; $90e9: 29 0f
			beq PRG04_9102			; $90eb: f0 15
			lda $0640,x		; $90ed: bd 40 06
			and #$f0				; $90f0: 29 f0
			cmp #$10				; $90f2: c9 10
			beq PRG04_90fa			; $90f4: f0 04
			cmp #$20				; $90f6: c9 20
			bne PRG04_9102			; $90f8: d0 08
PRG04_90fa:
			lda $0550			; $90fa: ad 50 05
			ora #$20				; $90fd: 09 20
			sta $0550			; $90ff: 8d 50 05
PRG04_9102:
			LoadAddress Godzilla_WalkAnim
			jsr PRG04_a962			; $910a: 20 62 a9
			jsr PRG04_a998			; $910d: 20 98 a9	; also abilities
			bcc PRG04_9115			; $9110: 90 03
			jsr PRG04_930c			; $9112: 20 0c 93
PRG04_9115:
			jsr PRG04_aa24			; $9115: 20 24 aa
			jmp PRG04_80a8			; $9118: 4c a8 80	; gravity

;-------------------------------------------------------------------------------
PRG04_911b:
			lda $0640			; $911b: ad 40 06
			cmp #$10				; $911e: c9 10
			bne PRG04_9141			; $9120: d0 1f
			clc				; $9122: 18
			lda $0430			; $9123: ad 30 04
			adc #$f0				; $9126: 69 f0
			sta $0430			; $9128: 8d 30 04
			lda #$00				; $912b: a9 00
			sta $0640			; $912d: 8d 40 06
			sta $04f0			; $9130: 8d f0 04
			lda #$05				; $9133: a9 05
			sta $04f1			; $9135: 8d f1 04
			lda #$70				; $9138: a9 70
			sta $0508			; $913a: 8d 08 05
			lda #$08				; $913d: a9 08
			sta WriteToCHR1_RAM			; $913f: 85 e8
PRG04_9141:
			lda $0640			; $9141: ad 40 06
			and #$f0				; $9144: 29 f0
			bne PRG04_918e			; $9146: d0 46
			lda $0640			; $9148: ad 40 06
			and #$0f				; $914b: 29 0f
			beq PRG04_918e			; $914d: f0 3f
			jsr Main_c08a			; $914f: 20 8a c0
			and #$01				; $9152: 29 01
			tay				; $9154: a8
			lda PRG04_94d4,y			; $9155: b9 d4 94
			jsr Goto_LoadPalette			; $9158: 20 d2 c0
			lda $05f8			; $915b: ad f8 05
			cmp #$02				; $915e: c9 02
			bcc PRG04_918e			; $9160: 90 2c
			lda $0640			; $9162: ad 40 06
			cmp #$01				; $9165: c9 01
			bne PRG04_918e			; $9167: d0 25
			lda #$02				; $9169: a9 02
			ldy #$00				; $916b: a0 00
			jsr PRG04_ab90			; $916d: 20 90 ab
			bcc PRG04_918e			; $9170: 90 1c
			jsr PRG04_8084			; $9172: 20 84 80
			bcc PRG04_918e			; $9175: 90 17
			lda #$13				; $9177: a9 13
			jsr PRG04_8098			; $9179: 20 98 80
			clc				; $917c: 18
			lda $0430,y		; $917d: b9 30 04
			adc #$10				; $9180: 69 10
			sta $0430,y		; $9182: 99 30 04
			clc				; $9185: 18
			lda $0460,y		; $9186: b9 60 04
			adc #$10				; $9189: 69 10
			sta $0460,y		; $918b: 99 60 04
PRG04_918e:
			lda $0640			; $918e: ad 40 06
			and #$0f				; $9191: 29 0f
			beq PRG04_91b2			; $9193: f0 1d
			lda $0640			; $9195: ad 40 06
			and #$f0				; $9198: 29 f0
			cmp #$30				; $919a: c9 30
			beq PRG04_91a2			; $919c: f0 04
			cmp #$40				; $919e: c9 40
			bne PRG04_91b2			; $91a0: d0 10
PRG04_91a2:
			lda $33			; $91a2: a5 33
			ora #$04				; $91a4: 09 04
			sta $33			; $91a6: 85 33
			lda #$01				; $91a8: a9 01
			sta $02			; $91aa: 85 02
			lda Input_RAM			; $91ac: a5 00
			and #$0c				; $91ae: 29 0c
			sta Input_RAM			; $91b0: 85 00
PRG04_91b2:
			lda $012b			; $91b2: ad 2b 01
			beq PRG04_91d6			; $91b5: f0 1f
			lda $041a			; $91b7: ad 1a 04
			and #$80				; $91ba: 29 80
			beq PRG04_91d6			; $91bc: f0 18
			lda $0642			; $91be: ad 42 06
			cmp #$ff				; $91c1: c9 ff
			beq PRG04_91d6			; $91c3: f0 11
			sec				; $91c5: 38
			lda $0462			; $91c6: ad 62 04
			sbc $0460			; $91c9: ed 60 04
			cmp #$0c				; $91cc: c9 0c
			bcs PRG04_91d6			; $91ce: b0 06
			jsr PRG04_92f4			; $91d0: 20 f4 92
			jsr PRG04_ad04			; $91d3: 20 04 ad
PRG04_91d6:
			rts				; $91d6: 60

;-------------------------------------------------------------------------------
PRG04_91d7:
			lda #$01				; $91d7: a9 01
			bit $00			; $91d9: 24 00
			beq PRG04_91e0			; $91db: f0 03
			jmp PRG04_9260			; $91dd: 4c 60 92

;-------------------------------------------------------------------------------
PRG04_91e0:
			lda #$02				; $91e0: a9 02
			bit $00			; $91e2: 24 00
			beq PRG04_91f2			; $91e4: f0 0c
			lda #$20				; $91e6: a9 20
			bit $00			; $91e8: 24 00
			bne PRG04_91ef			; $91ea: d0 03
			jmp PRG04_92aa			; $91ec: 4c aa 92

;-------------------------------------------------------------------------------
PRG04_91ef:
			jmp PRG04_9210			; $91ef: 4c 10 92

;-------------------------------------------------------------------------------
PRG04_91f2:
			lda #$08				; $91f2: a9 08
			bit $00			; $91f4: 24 00
			beq PRG04_9206			; $91f6: f0 0e
			ldy $0180			; $91f8: ac 80 01
			lda PRG04_952d,y			; $91fb: b9 2d 95
			cmp $0178			; $91fe: cd 78 01
			bcs PRG04_9206			; $9201: b0 03
			jmp PRG04_928a			; $9203: 4c 8a 92

;-------------------------------------------------------------------------------
PRG04_9206:
			lda #$20				; $9206: a9 20
			bit $00			; $9208: 24 00
			beq PRG04_920f			; $920a: f0 03
			jmp PRG04_923f			; $920c: 4c 3f 92

;-------------------------------------------------------------------------------
PRG04_920f:
			rts				; $920f: 60

;-------------------------------------------------------------------------------
PRG04_9210:
			lda $0628			; $9210: ad 28 06
			ora $0610			; $9213: 0d 10 06
			ora $0640			; $9216: 0d 40 06
			and #$0f				; $9219: 29 0f
			bne PRG04_923e			; $921b: d0 21
			clc				; $921d: 18
			lda $0430			; $921e: ad 30 04
			adc #$10				; $9221: 69 10
			sta $0430			; $9223: 8d 30 04
			lda #$27				; $9226: a9 27
			sta $04f0			; $9228: 8d f0 04
			lda #$ff				; $922b: a9 ff
			sta $04f1			; $922d: 8d f1 04
			lda #$09				; $9230: a9 09
			sta WriteToCHR1_RAM			; $9232: 85 e8
			lda #$44				; $9234: a9 44
			sta $05b0			; $9236: 8d b0 05
			lda #$27				; $9239: a9 27
			sta $0640			; $923b: 8d 40 06
PRG04_923e:
			rts				; $923e: 60

;-------------------------------------------------------------------------------
PRG04_923f:
			lda $0628			; $923f: ad 28 06
			ora $0640			; $9242: 0d 40 06
			ora $0610			; $9245: 0d 10 06
			and #$0f				; $9248: 29 0f
			bne PRG04_925f			; $924a: d0 13
			clc				; $924c: 18
			lda $0430			; $924d: ad 30 04
			adc #$10				; $9250: 69 10
			sta $0430			; $9252: 8d 30 04
			lda #$00				; $9255: a9 00
			sta $05b0			; $9257: 8d b0 05
PRG04_925a:
			lda #$11				; $925a: a9 11
			sta $0640			; $925c: 8d 40 06
PRG04_925f:
			rts				; $925f: 60

;-------------------------------------------------------------------------------
PRG04_9260:
			lda $0628			; $9260: ad 28 06
			ora $0640			; $9263: 0d 40 06
			ora $0610			; $9266: 0d 10 06
			and #$0f				; $9269: 29 0f
			bne PRG04_9289			; $926b: d0 1c
			lda $0610			; $926d: ad 10 06
			eor #$10				; $9270: 49 10
			ora #$05				; $9272: 09 05
			sta $0610			; $9274: 8d 10 06
			lda #$11				; $9277: a9 11
			sta $05b0			; $9279: 8d b0 05
			lda $0147			; $927c: ad 47 01
			ora #$02				; $927f: 09 02
			sta $0147			; $9281: 8d 47 01
			lda #$32				; $9284: a9 32
			jsr Goto_PlaySound			; $9286: 20 c6 c0
PRG04_9289:
			rts				; $9289: 60

;-------------------------------------------------------------------------------
PRG04_928a:
			lda $0628			; $928a: ad 28 06
			ora $0610			; $928d: 0d 10 06
			ora $0640			; $9290: 0d 40 06
			and #$0f				; $9293: 29 0f
			bne PRG04_92a9			; $9295: d0 12
			lda #$05
			sta $0640
			lda #$00
			sta $05f8
			lda $0147
			ora #$02
			sta $0147
PRG04_92a9:
			rts				; $92a9: 60

;-------------------------------------------------------------------------------
PRG04_92aa:
			lda $0610			; $92aa: ad 10 06
			ora $0640			; $92ad: 0d 40 06
			ora $0628			; $92b0: 0d 28 06
			and #$0f				; $92b3: 29 0f
			bne PRG04_92db			; $92b5: d0 24
			lda #$44				; $92b7: a9 44
			sta $05b0			; $92b9: 8d b0 05
			lda $0508			; $92bc: ad 08 05
			and #$0f				; $92bf: 29 0f
			cmp #$04				; $92c1: c9 04
			bcs PRG04_92c9			; $92c3: b0 04
			lda #$04				; $92c5: a9 04
			bne PRG04_92cb			; $92c7: d0 02
PRG04_92c9:
			lda #$14				; $92c9: a9 14
PRG04_92cb:
			sta $0628			; $92cb: 8d 28 06
			lda $0147			; $92ce: ad 47 01
			ora #$02				; $92d1: 09 02
			sta $0147			; $92d3: 8d 47 01
			lda #$32				; $92d6: a9 32
			jsr Goto_PlaySound			; $92d8: 20 c6 c0
PRG04_92db:
			rts				; $92db: 60

;-------------------------------------------------------------------------------
PRG04_92dc:
			lda $0640			; $92dc: ad 40 06
			ora $0628			; $92df: 0d 28 06
			ora $0610			; $92e2: 0d 10 06
			and #$0f				; $92e5: 29 0f
			bne PRG04_92f3			; $92e7: d0 0a
			lda #$35				; $92e9: a9 35
			sta $0640			; $92eb: 8d 40 06
			lda #$3b				; $92ee: a9 3b
			jsr Goto_PlaySound			; $92f0: 20 c6 c0
PRG04_92f3:
			rts				; $92f3: 60

;-------------------------------------------------------------------------------
PRG04_92f4:
			lda $0640			; $92f4: ad 40 06
			ora $0628			; $92f7: 0d 28 06
			ora $0610			; $92fa: 0d 10 06
			and #$0f				; $92fd: 29 0f
			bne +			; $92ff: d0 0a
			lda #$42				; $9301: a9 42
			sta $0640			; $9303: 8d 40 06
			lda #$3b				; $9306: a9 3b
			jsr Goto_PlaySound			; $9308: 20 c6 c0
+			rts				; $930b: 60

;-------------------------------------------------------------------------------
PRG04_930c:
			lda $0640			; $930c: ad 40 06
			and #$0f				; $930f: 29 0f
			bne PRG04_9316			; $9311: d0 03
			jmp PRG04_93f4			; $9313: 4c f4 93

;-------------------------------------------------------------------------------
PRG04_9316:
			tay				; $9316: a8
			dey				; $9317: 88
			lda $0640			; $9318: ad 40 06
			and #$f0				; $931b: 29 f0
			bne PRG04_9357			; $931d: d0 38
			lda $05f8			; $931f: ad f8 05
			beq PRG04_9328			; $9322: f0 04
			dec $05f8			; $9324: ce f8 05
			rts				; $9327: 60

;-------------------------------------------------------------------------------
PRG04_9328:
			lda PRG04_94cf,y			; $9328: b9 cf 94
			sta $05f8			; $932b: 8d f8 05
			lda PRG04_94c5,y			; $932e: b9 c5 94
			sta $04f0			; $9331: 8d f0 04
			lda #$05				; $9334: a9 05
			sta $04f1			; $9336: 8d f1 04
			lda PRG04_94ca,y			; $9339: b9 ca 94
			sta WriteToCHR1_RAM			; $933c: 85 e8
			cpy #$01				; $933e: c0 01
			bne PRG04_9347			; $9340: d0 05
			lda #$3f				; $9342: a9 3f
			jsr Goto_PlaySound			; $9344: 20 c6 c0
PRG04_9347:
			dec $0640			; $9347: ce 40 06
			bne PRG04_9356			; $934a: d0 0a
			lda #$70				; $934c: a9 70
			sta $0508			; $934e: 8d 08 05
			lda #$09				; $9351: a9 09
			jmp Goto_LoadPalette			; $9353: 4c d2 c0

;-------------------------------------------------------------------------------
PRG04_9356:
			rts				; $9356: 60

;-------------------------------------------------------------------------------
PRG04_9357:
			cmp #$10				; $9357: c9 10
			bne PRG04_9374			; $9359: d0 19
			lda #$10				; $935b: a9 10
			sta $0640			; $935d: 8d 40 06
			lda #$27				; $9360: a9 27
			sta $04f0			; $9362: 8d f0 04
			lda #$ff				; $9365: a9 ff
			sta $04f1			; $9367: 8d f1 04
			lda #$77				; $936a: a9 77
			sta $05b0			; $936c: 8d b0 05
			lda #$09				; $936f: a9 09
			sta WriteToCHR1_RAM			; $9371: 85 e8
			rts				; $9373: 60

;-------------------------------------------------------------------------------
PRG04_9374:
			cmp #$20				; $9374: c9 20
			bne PRG04_93ae			; $9376: d0 36
			lda PRG04_94fd,y			; $9378: b9 fd 94
			sta $04f0			; $937b: 8d f0 04
			lda PRG04_9504,y			; $937e: b9 04 95
			sta $04f1			; $9381: 8d f1 04
			lda $0418			; $9384: ad 18 04
			and #$ef				; $9387: 29 ef
			ora PRG04_950b,y			; $9389: 19 0b 95
			sta $0418			; $938c: 8d 18 04
			lda #$09				; $938f: a9 09
			sta WriteToCHR1_RAM			; $9391: 85 e8
			cpy #$03				; $9393: c0 03
			bne PRG04_939e			; $9395: d0 07
			lda #$15				; $9397: a9 15
			ldy #$40				; $9399: a0 40
			jsr PRG04_80e6			; $939b: 20 e6 80
PRG04_939e:
			dec $0640			; $939e: ce 40 06
			lda $0640			; $93a1: ad 40 06
			and #$0f				; $93a4: 29 0f
			bne PRG04_93ad			; $93a6: d0 05
			lda #$11				; $93a8: a9 11
			sta $0640			; $93aa: 8d 40 06
PRG04_93ad:
			rts				; $93ad: 60

;-------------------------------------------------------------------------------
PRG04_93ae:
			cmp #$30				; $93ae: c9 30
			bne PRG04_93d3			; $93b0: d0 21
			lda PRG04_9512,y			; $93b2: b9 12 95
			sta $04f0			; $93b5: 8d f0 04
			lda PRG04_9517,y			; $93b8: b9 17 95
			sta $04f1			; $93bb: 8d f1 04
			lda PRG04_951c,y			; $93be: b9 1c 95
			sta WriteToCHR1_RAM			; $93c1: 85 e8
			dec $0640			; $93c3: ce 40 06
			lda $0640			; $93c6: ad 40 06
			and #$0f				; $93c9: 29 0f
			bne PRG04_93d2			; $93cb: d0 05
			lda #$70				; $93cd: a9 70
			sta $0508			; $93cf: 8d 08 05
PRG04_93d2:
			rts				; $93d2: 60

;-------------------------------------------------------------------------------
PRG04_93d3:
			lda PRG04_9521,y			; $93d3: b9 21 95
			sta $04f0			; $93d6: 8d f0 04
			lda PRG04_9525,y			; $93d9: b9 25 95
			sta $04f1			; $93dc: 8d f1 04
			lda PRG04_9529,y			; $93df: b9 29 95
			sta WriteToCHR1_RAM			; $93e2: 85 e8
			dec $0640			; $93e4: ce 40 06
			lda $0640			; $93e7: ad 40 06
			and #$0f				; $93ea: 29 0f
			bne PRG04_93f3			; $93ec: d0 05
			lda #$70				; $93ee: a9 70
			sta $0508			; $93f0: 8d 08 05
PRG04_93f3:
			rts				; $93f3: 60

;-------------------------------------------------------------------------------
PRG04_93f4:
			lda $0628			; $93f4: ad 28 06
			and #$0f				; $93f7: 29 0f
			beq PRG04_9462			; $93f9: f0 67
			tay				; $93fb: a8
			lda $0628			; $93fc: ad 28 06
			and #$f0				; $93ff: 29 f0
			bne PRG04_9431			; $9401: d0 2e
			lda PRG04_94d5,y			; $9403: b9 d5 94
			sta $04f0			; $9406: 8d f0 04
			lda PRG04_94d9,y			; $9409: b9 d9 94
			sta $04f1			; $940c: 8d f1 04
			lda PRG04_94e5,y			; $940f: b9 e5 94
			sta WriteToCHR1_RAM			; $9412: 85 e8
			lda PRG04_94e9,y			; $9414: b9 e9 94
			sta $04c0			; $9417: 8d c0 04
			dec $0628			; $941a: ce 28 06
			cpy #$03				; $941d: c0 03
			bne PRG04_9428			; $941f: d0 07
			lda #$02				; $9421: a9 02
			ldy #$40				; $9423: a0 40
			jsr PRG04_80e6			; $9425: 20 e6 80
PRG04_9428:
			lda $0628			; $9428: ad 28 06
			bne PRG04_9462			; $942b: d0 35
			lda #$70				; $942d: a9 70
			bne PRG04_945f			; $942f: d0 2e
PRG04_9431:
			lda PRG04_94dd,y			; $9431: b9 dd 94
			sta $04f0			; $9434: 8d f0 04
			lda PRG04_94e1,y			; $9437: b9 e1 94
			sta $04f1			; $943a: 8d f1 04
			lda PRG04_94e5,y			; $943d: b9 e5 94
			sta WriteToCHR1_RAM			; $9440: 85 e8
			lda PRG04_94e9,y			; $9442: b9 e9 94
			sta $04c0			; $9445: 8d c0 04
			dec $0628			; $9448: ce 28 06
			cpy #$03				; $944b: c0 03
			bne PRG04_9456			; $944d: d0 07
			lda #$02				; $944f: a9 02
			ldy #$40				; $9451: a0 40
			jsr PRG04_80e6			; $9453: 20 e6 80
PRG04_9456:
			lda $0628			; $9456: ad 28 06
			and #$0f				; $9459: 29 0f
			bne PRG04_9462			; $945b: d0 05
			lda #$74				; $945d: a9 74
PRG04_945f:
			sta $0508			; $945f: 8d 08 05
PRG04_9462:
			lda $0610			; $9462: ad 10 06
			and #$0f				; $9465: 29 0f
			beq PRG04_949c			; $9467: f0 33
			tay				; $9469: a8
			lda $0610			; $946a: ad 10 06
			and #$10				; $946d: 29 10
			bne PRG04_9477			; $946f: d0 06
			lda PRG04_94ed,y			; $9471: b9 ed 94
			jmp PRG04_947a			; $9474: 4c 7a 94

;-------------------------------------------------------------------------------
PRG04_9477:
			lda PRG04_94f2,y			; $9477: b9 f2 94
PRG04_947a:
			sta $04f0			; $947a: 8d f0 04
			lda PRG04_94f7,y			; $947d: b9 f7 94
			sta WriteToCHR1_RAM			; $9480: 85 e8
			cpy #$03				; $9482: c0 03
			bne PRG04_948d			; $9484: d0 07
			lda #$01				; $9486: a9 01
			ldy #$40				; $9488: a0 40
			jsr PRG04_80e6			; $948a: 20 e6 80
PRG04_948d:
			dec $0610			; $948d: ce 10 06
			lda $0610			; $9490: ad 10 06

			and #$0f
			bne PRG04_949c
			lda #$77				; $9497: a9 77
			sta $05b0			; $947a: 8d f0 04
PRG04_949c:
			rts				; $949c: 60

;-------------------------------------------------------------------------------
Godzilla_WalkAnim:
			.addr PRG04_94ad, PRG04_94b0
			.addr PRG04_94b3, PRG04_94b6
			.addr PRG04_94b9, PRG04_94bc
			.addr PRG04_94bf, PRG04_94c2
Godzilla_WalkAnimEnd

PRG04_94ad:
			.byte $00, $05, $08
PRG04_94b0:
			.byte $01, $06, $08
PRG04_94b3:
			.byte $02, $07, $08
PRG04_94b6:
			.byte $01, $08, $08
PRG04_94b9:
			.byte $00, $09, $08	; $94b9: 00 09 08 03	 Data
PRG04_94bc:
			.byte $03, $0a, $08	; $94bd: 0a 08 04 0b	 Data
PRG04_94bf:
			.byte $04, $0b, $08	; $94c1: 08 03 0c 08	 Data
PRG04_94c2:
			.byte $03, $0c, $08

PRG04_94c5:
			.byte $00, $1a, $13, $11	; $94c5: 00 1a 13 11	 Data
			.byte $13	; $94c9: 13			Data

PRG04_94ca:
			.byte $08, $09, $09, $09	; $94ca: 08 09 09 09	 Data
			.byte $09	; $94ce: 09			Data

PRG04_94cf:
			.byte $00, $07, $00, $05	; $94cf: 00 07 00 05	 Data
			.byte $00	; $94d3: 00			Data
PRG04_94d4:
			.byte $09	; $94d4: 09			Data
PRG04_94d5:
			.byte $06, $00, $04, $12	; $94d5: 06 00 04 12	 Data
PRG04_94d9:
			.byte $04, $05, $15, $16	; $94d9: 04 05 15 16	 Data
PRG04_94dd:
			.byte $15, $00, $02, $14	; $94dd: 15 00 02 14	 Data
PRG04_94e1:
			.byte $02, $09, $17, $18	; $94e1: 02 09 17 18	 Data
PRG04_94e5:
			.byte $17, $08, $0a, $0a	; $94e5: 17 08 0a 0a	 Data
PRG04_94e9:
			.byte $0a, $fe, $fc, $04	; $94e9: 0a fe fc 04	 Data
PRG04_94ed:
			.byte $02, $00, $10, $0f	; $94ed: 02 00 10 0f	 Data
			.byte $10	; $94f1: 10			Data
PRG04_94f2:
			.byte $00, $00, $0e, $0d	; $94f2: 00 00 0e 0d	 Data
			.byte $0e	; $94f6: 0e			Data
PRG04_94f7:
			.byte $00, $08, $08, $08	; $94f7: 00 08 08 08	 Data
			.byte $08, $08	; $94fb: 08 08		 Data
PRG04_94fd:
			.byte $27, $28, $28, $2a	; $94fd: 27 28 28 2a	 Data
			.byte $28, $28, $27	; $9501: 28 28 27		Data
PRG04_9504:
			.byte $ff, $ff, $ff, $29	; $9504: ff ff ff 29	 Data
			.byte $ff, $ff, $ff	; $9508: ff ff ff		Data
PRG04_950b:
			.byte $00, $00, $10, $10	; $950b: 00 00 10 10	 Data
			.byte $10, $00, $00	; $950f: 10 00 00		Data
PRG04_9512:
			.byte $00, $14, $2d, $2b	; $9512: 00 14 2d 2b	 Data
			.byte $2c	; $9516: 2c			Data
PRG04_9517:
			.byte $05, $2e, $05, $2f	; $9517: 05 2e 05 2f	 Data
			.byte $05	; $951b: 05			Data
PRG04_951c:
			.byte $08, $0a, $0a, $0a	; $951c: 08 0a 0a 0a	 Data
			.byte $0a	; $9520: 0a			Data
PRG04_9521:
			.byte $00, $2d, $2d, $2d	; $9521: 00 2d 2d 2d	 Data
PRG04_9525:
			.byte $05, $2e, $05, $2f	; $9525: 05 2e 05 2f	 Data
PRG04_9529:
			.byte $08, $0a, $0a, $0a	; $9529: 08 0a 0a 0a	 Data
PRG04_952d:
			.byte $0c, $10, $18, $20	; $952d: 0c 10 18 20	 Data
			.byte $28, $2c, $30, $34	; $9531: 28 2c 30 34	 Data
			.byte $38, $3c, $40, $48	; $9535: 38 3c 40 48	 Data
			.byte $50, $54, $58, $5c	; $9539: 50 54 58 5c	 Data

;-------------------------------------------------------------------------------
Obj_Mothra:
			lda $0418,x		; $953d: bd 18 04
			and #$80				; $9540: 29 80
			bne +			; $9542: d0 05
			lda #$05				; $9544: a9 05
			sta $04f0,x		; $9546: 9d f0 04

+			jsr PRG04_86a7			; $9549: 20 a7 86
			lda $0418,x		; $954c: bd 18 04
			pha				; $954f: 48
			lda $04f0,x		; $9550: bd f0 04
			cmp #$ff				; $9553: c9 ff
			beq +			; $9555: f0 05
			pla				; $9557: 68
			and #$df				; $9558: 29 df
			bne ++			; $955a: d0 03
+			pla				; $955c: 68
			ora #$20				; $955d: 09 20
+			sta $0418,x		; $955f: 9d 18 04
			rts				; $9562: 60

;-------------------------------------------------------------------------------
Obj_Mothra_2:
			jsr PRG04_Char_Init			; $9563: 20 7a 85
			jsr PRG04_aca0			; $9566: 20 a0 ac
			lda $0640,x		; $9569: bd 40 06
			cmp #$ff				; $956c: c9 ff
			bne +			; $956e: d0 03
			jmp PRG04_abc0			; $9570: 4c c0 ab

+			lda $0640,x		; $9573: bd 40 06
			and #$0f				; $9576: 29 0f
			beq PRG04_958b			; $9578: f0 11
			lda $0640,x		; $957a: bd 40 06
			and #$f0				; $957d: 29 f0
			bne PRG04_958b			; $957f: d0 0a
			lda #$00				; $9581: a9 00
			sta $02			; $9583: 85 02
			lda Input_RAM			; $9585: a5 00
			and #$0c				; $9587: 29 0c
			sta Input_RAM			; $9589: 85 00
PRG04_958b:
			jsr PRG04_Char_Walk			; $958b: 20 70 86
			jsr PRG04_86e4			; $958e: 20 e4 86
			lda $0490,x		; $9591: bd 90 04
			bpl PRG04_95ae			; $9594: 10 18
			lda $012b			; $9596: ad 2b 01
			beq PRG04_95a4			; $9599: f0 09
			lda $0430,x		; $959b: bd 30 04
			cmp #$90				; $959e: c9 90
			bcc PRG04_95ab			; $95a0: 90 09
			bcs PRG04_95ae			; $95a2: b0 0a
PRG04_95a4:
			lda $0430,x		; $95a4: bd 30 04
			cmp #$78				; $95a7: c9 78
			bcs PRG04_95ae			; $95a9: b0 03
PRG04_95ab:
			jsr PRG04_80d4			; $95ab: 20 d4 80
PRG04_95ae:
			jsr PRG04_965c			; $95ae: 20 5c 96
			lda #$14				; $95b1: a9 14
			ldy #$20				; $95b3: a0 20
			jsr PRG04_80e6			; $95b5: 20 e6 80
			lda $0640,x		; $95b8: bd 40 06
			and #$0f				; $95bb: 29 0f
			tay				; $95bd: a8
			bne PRG04_95d3			; $95be: d0 13
			jsr PRG04_95f5			; $95c0: 20 f5 95
			jsr PRG04_8120			; $95c3: 20 20 81
			lda PRG04_96ab,y			; $95c6: b9 ab 96
			sta $04f0,x		; $95c9: 9d f0 04
			lda PRG04_96ae,y			; $95cc: b9 ae 96
			sta $04f1,x		; $95cf: 9d f1 04
			rts				; $95d2: 60

;-------------------------------------------------------------------------------
PRG04_95d3:
			sty $a8			; $95d3: 84 a8
			jsr PRG04_818d			; $95d5: 20 8d 81
			bcc PRG04_95f4			; $95d8: 90 1a
			ldy $a8			; $95da: a4 a8
			cpy #$07				; $95dc: c0 07
			bne PRG04_95e5			; $95de: d0 05
			lda #$3d				; $95e0: a9 3d
			jsr Goto_PlaySound			; $95e2: 20 c6 c0
PRG04_95e5:
			lda PRG04_96b0,y			; $95e5: b9 b0 96
			sta $04f0			; $95e8: 8d f0 04
			lda PRG04_96b7,y			; $95eb: b9 b7 96
			sta $04f1			; $95ee: 8d f1 04
			dec $0640,x		; $95f1: de 40 06
PRG04_95f4:
			rts				; $95f4: 60

;-------------------------------------------------------------------------------
PRG04_95f5:
			lda $0610,x		; $95f5: bd 10 06
			beq PRG04_9600			; $95f8: f0 06
			dec $0610,x		; $95fa: de 10 06
			jmp PRG04_962b			; $95fd: 4c 2b 96

;-------------------------------------------------------------------------------
PRG04_9600:
			lda Input_RAM			; $9600: a5 00
			and #Btn_A|Btn_B				; $9602: 29 03
			beq PRG04_962b			; $9604: f0 25
			lda #SFXID_MothraStep				; $9606: a9 34
			jsr Goto_PlaySound			; $9608: 20 c6 c0
			jsr PRG04_8084			; $960b: 20 84 80
			bcc PRG04_962b			; $960e: 90 1b
			lda #$1c				; $9610: a9 1c
			jsr PRG04_8098			; $9612: 20 98 80
			lda $0460,y		; $9615: b9 60 04
			clc				; $9618: 18
			adc #$10				; $9619: 69 10
			sta $0460,y		; $961b: 99 60 04
			lda #$10				; $961e: a9 10
			sta $0610,x		; $9620: 9d 10 06
			lda $0147			; $9623: ad 47 01
			ora #$02				; $9626: 09 02
			sta $0147			; $9628: 8d 47 01
			
PRG04_962b:
			lda $0628,x		; $962b: bd 28 06
			beq PRG04_965b			; $962e: f0 2b
			dec $0628,x		; $9630: de 28 06
			and #$07				; $9633: 29 07
			bne PRG04_965b			; $9635: d0 24
			sty $a8			; $9637: 84 a8
			lda #$03				; $9639: a9 03
			ldy #$00				; $963b: a0 00
			jsr PRG04_ab90			; $963d: 20 90 ab
			bcc PRG04_965b			; $9640: 90 19
			lda #SFXID_MothraStep				; $9642: a9 34
			jsr Goto_PlaySound			; $9644: 20 c6 c0
			ldy $a8			; $9647: a4 a8
			jsr PRG04_8084			; $9649: 20 84 80
			bcc PRG04_965b			; $964c: 90 0d
			lda #$1d				; $964e: a9 1d
			sta $0400,y		; $9650: 99 00 04
			lda $0147			; $9653: ad 47 01
			ora #$02				; $9656: 09 02
			sta $0147			; $9658: 8d 47 01
PRG04_965b:
			rts				; $965b: 60

;-------------------------------------------------------------------------------
PRG04_965c:
			lda Input_RAM			; $965c: a5 00
			and #Btn_Start				; $965e: 29 08
			beq PRG04_966e			; $9660: f0 0c
			lda $0628,x		; $9662: bd 28 06
			and #$0f				; $9665: 29 0f
			bne PRG04_966e			; $9667: d0 05
			lda #$28				; $9669: a9 28
			sta $0628,x		; $966b: 9d 28 06
PRG04_966e:
			lda $012b			; $966e: ad 2b 01
			beq PRG04_9692			; $9671: f0 1f
			lda $041a			; $9673: ad 1a 04
			and #$80				; $9676: 29 80
			beq PRG04_9692			; $9678: f0 18
			lda $0642			; $967a: ad 42 06
			; TODO: decompile
PRG04_967d:
			.byte $c9, $ff, $f0, $11	; $967d: c9 ff f0 11	 Data
			.byte $38, $ad, $62, $04	; $9681: 38 ad 62 04	 Data
			.byte $ed, $60, $04, $c9	; $9685: ed 60 04 c9	 Data
			.byte $0c, $b0, $06, $20	; $9689: 0c b0 06 20	 Data
			.byte $93, $96, $20, $04	; $968d: 93 96 20 04	 Data
			.byte $ad	; $9691: ad			Data
PRG04_9692:
			rts				; $9692: 60

;-------------------------------------------------------------------------------
PRG04_9693:
			lda $0640			; $9693: ad 40 06
			bne PRG04_96aa			; $9696: d0 12
			lda #$00				; $9698: a9 00
			sta $0628			; $969a: 8d 28 06
			sta $0610			; $969d: 8d 10 06
			lda #$07				; $96a0: a9 07
			sta $0640			; $96a2: 8d 40 06
			lda #$40				; $96a5: a9 40
			sta $05b0			; $96a7: 8d b0 05
PRG04_96aa:
			rts				; $96aa: 60

;-------------------------------------------------------------------------------
PRG04_96ab:
			.byte $5f, $60, $61	; $96ab: 5f 60 61		Data
PRG04_96ae:
			.byte $53, $54	; $96ae: 53 54		 Data
PRG04_96b0:
			.byte $55, $5f, $61, $60	; $96b0: 55 5f 61 60	 Data
			.byte $5f, $61, $60	; $96b4: 5f 61 60		Data
PRG04_96b7:
			.byte $5f, $59, $5b, $57	; $96b7: 5f 59 5b 57	 Data
			.byte $59, $58, $5a, $56	; $96bb: 59 58 5a 56	 Data

;-------------------------------------------------------------------------------
PRG04_96bf:
			lda $0418,x		; $96bf: bd 18 04
			and #$80				; $96c2: 29 80
			bne PRG04_96c6			; $96c4: d0 00
PRG04_96c6:
			jmp PRG04_86a7			; $96c6: 4c a7 86

;-------------------------------------------------------------------------------
PRG04_96c9:
			lda $0418,x		; $96c9: bd 18 04
			and #$80				; $96cc: 29 80
			bne PRG04_96db			; $96ce: d0 0b
			LoadAddress PRG04_984a
			jsr PRG04_aa4b			; $96d8: 20 4b aa
PRG04_96db:
			lda #$2d				; $96db: a9 2d
			jsr PRG04_ab4e			; $96dd: 20 4e ab
			jsr PRG04_aca0			; $96e0: 20 a0 ac
			lda $0640,x		; $96e3: bd 40 06
			cmp #$ff				; $96e6: c9 ff
			bne PRG04_96ed			; $96e8: d0 03
			jmp PRG04_abc0			; $96ea: 4c c0 ab

;-------------------------------------------------------------------------------
PRG04_96ed:
			lda $68			; $96ed: a5 68
			beq PRG04_96ff			; $96ef: f0 0e
			and #$01				; $96f1: 29 01
			tay				; $96f3: a8
			lda PRG04_9888,y			; $96f4: b9 88 98
			sta @w $0085	; $96f7: 8d 85 00
			sta @w $0089	; $96fa: 8d 89 00
			dec $68			; $96fd: c6 68
PRG04_96ff:
			jsr PRG04_841d			; $96ff: 20 1d 84
			jsr PRG04_aaa5			; $9702: 20 a5 aa
			lda $05f8			; $9705: ad f8 05
			bmi PRG04_9710			; $9708: 30 06
			jsr PRG04_a04a			; $970a: 20 4a a0
			jsr PRG04_981b			; $970d: 20 1b 98
PRG04_9710:
			ldy $03			; $9710: a4 03
			jsr PRG04_Obj_MoveSpeed			; $9712: 20 b8 aa
			jsr PRG04_97ed			; $9715: 20 ed 97
			lda #$11				; $9718: a9 11
PRG04_971a:
			.byte $a0, $a0, $20, $e6	; $971a: a0 a0 20 e6	 Data
			.byte $80, $a9, $12, $a0	; $971e: 80 a9 12 a0	 Data
			.byte $a0, $20, $e6, $80	; $9722: a0 20 e6 80	 Data
			.byte $a9, $50, $85, $a5	; $9726: a9 50 85 a5	 Data
			.byte $a9, $98, $85, $a6	; $972a: a9 98 85 a6	 Data
			.byte $20, $73, $a9, $20	; $972e: 20 73 a9 20	 Data
			.byte $98, $a9, $90, $03	; $9732: 98 a9 90 03	 Data
			.byte $20, $3f, $97, $20	; $9736: 20 3f 97 20	 Data
			.byte $c8, $a9, $4c, $a8	; $973a: c8 a9 4c a8	 Data
			.byte $80, $bd, $40, $06	; $973e: 80 bd 40 06	 Data
			.byte $29, $0f, $d0, $01	; $9742: 29 0f d0 01	 Data
			.byte $60	; $9746: 60			Data
PRG04_9747:
			.byte $a8, $bd, $40, $06	; $9747: a8 bd 40 06	 Data
			.byte $29, $f0, $d0, $1d	; $974b: 29 f0 d0 1d	 Data
			.byte $c0, $05, $d0, $0a	; $974f: c0 05 d0 0a	 Data
			.byte $a9, $aa, $9d, $b0	; $9753: a9 aa 9d b0	 Data
			.byte $05, $a9, $44, $20	; $9757: 05 a9 44 20	 Data
			.byte $c6, $c0	; $975b: c6 c0		 Data
PRG04_975d:
			.byte $b9	; $975d: b9			Data
PRG04_975e:
			.byte $70, $98, $20, $13	; $975e: 70 98 20 13	 Data
			.byte $87, $b9, $6b, $98	; $9762: 87 b9 6b 98	 Data
			.byte $20, $de, $c0, $4c	; $9766: 20 de c0 4c	 Data
			.byte $0c, $98	; $976a: 0c 98		 Data
PRG04_976c:
			.byte $c9, $10, $d0, $1e	; $976c: c9 10 d0 1e	 Data
			.byte $c0, $09, $d0, $0a	; $9770: c0 09 d0 0a	 Data
			.byte $a9, $aa, $9d, $b0	; $9774: a9 aa 9d b0	 Data
PRG04_9778:
			.byte $05	; $9778: 05			Data
PRG04_9779:
			.byte $a9, $44	; $9779: a9 44		 Data
PRG04_977b:
			.byte $20, $c6	; $977b: 20 c6		 Data
PRG04_977d:
			.byte $c0	; $977d: c0			Data
PRG04_977e:
			lda PRG04_987e,y			; $977e: b9 7e 98
			jsr PRG04_8713			; $9781: 20 13 87
			lda PRG04_9875,y			; $9784: b9 75 98
			jsr Main_c0de			; $9787: 20 de c0
			jsr PRG04_980c			; $978a: 20 0c 98
			rts				; $978d: 60

;-------------------------------------------------------------------------------
PRG04_978e:
			cmp #$20				; $978e: c9 20
			bne PRG04_97ec			; $9790: d0 5a
PRG04_9792:
			.byte $c0, $05	; $9792: c0 05		 Data
PRG04_9794:
			.byte $d0, $23	; $9794: d0 23		 Data
PRG04_9796:
			.byte $a9, $88, $9d, $b0	; $9796: a9 88 9d b0	 Data
			.byte $05, $a9, $04, $20	; $979a: 05 a9 04 20	 Data
			.byte $de, $c0, $a9, $05	; $979e: de c0 a9 05	 Data
			.byte $20, $de, $c0, $a9	; $97a2: 20 de c0 a9	 Data
			.byte $06, $20, $de, $c0	; $97a6: 06 20 de c0	 Data
			.byte $a9, $07, $20, $de	; $97aa: a9 07 20 de	 Data
			.byte $c0, $a9, $08, $20	; $97ae: c0 a9 08 20	 Data
			.byte $de, $c0, $a9, $09	; $97b2: de c0 a9 09	 Data
			.byte $20, $de, $c0, $bd	; $97b6: 20 de c0 bd	 Data
			.byte $f8, $05, $f0, $0b	; $97ba: f8 05 f0 0b	 Data
			.byte $a9, $13, $a0, $c0	; $97be: a9 13 a0 c0	 Data
			.byte $20, $e6, $80, $de	; $97c2: 20 e6 80 de	 Data
			.byte $f8, $05, $60	; $97c6: f8 05 60		Data
PRG04_97c9:
			.byte $b9, $66, $98, $20	; $97c9: b9 66 98 20	 Data
			.byte $13, $87, $b9, $61	; $97cd: 13 87 b9 61	 Data
			.byte $98, $20, $ba, $ab	; $97d1: 98 20 ba ab	 Data
			.byte $c0, $03, $d0, $05	; $97d5: c0 03 d0 05	 Data
			.byte $a9, $03, $9d, $f8	; $97d9: a9 03 9d f8	 Data
			.byte $05	; $97dd: 05			Data
PRG04_97de:
			.byte $de, $40, $06, $bd	; $97de: de 40 06 bd	 Data
			.byte $40, $06, $29, $0f	; $97e2: 40 06 29 0f	 Data
			.byte $d0, $03, $4c, $00	; $97e6: d0 03 4c 00	 Data
			.byte $98	; $97ea: 98			Data
PRG04_97eb:
			rts				; $97eb: 60

;-------------------------------------------------------------------------------
PRG04_97ec:
			rts				; $97ec: 60

;-------------------------------------------------------------------------------
PRG04_97ed:
			lda $01			; $97ed: a5 01
			and #$01				; $97ef: 29 01
			beq PRG04_97ff			; $97f1: f0 0c
			lda $0640,x		; $97f3: bd 40 06
			and #$0f				; $97f6: 29 0f
			bne PRG04_97ff			; $97f8: d0 05
			lda #$25				; $97fa: a9 25
			sta $0640,x		; $97fc: 9d 40 06
PRG04_97ff:
			rts				; $97ff: 60

;-------------------------------------------------------------------------------
PRG04_9800:
			lda #$10				; $9800: a9 10
			sta $0508,x		; $9802: 9d 08 05
			lda #$c0				; $9805: a9 c0
			sta $0520,x		; $9807: 9d 20 05
			sec				; $980a: 38
			rts				; $980b: 60

;-------------------------------------------------------------------------------
PRG04_980c:
			dec $0640,x		; $980c: de 40 06
			lda $0640,x		; $980f: bd 40 06
			and #$0f				; $9812: 29 0f
			bne PRG04_9819			; $9814: d0 03
			jmp PRG04_9800			; $9816: 4c 00 98

;-------------------------------------------------------------------------------
PRG04_9819:
			clc				; $9819: 18
			rts				; $981a: 60

;-------------------------------------------------------------------------------
PRG04_981b:
			lda $014d			; $981b: ad 4d 01
			bne PRG04_982b			; $981e: d0 0b
			lda #$00				; $9820: a9 00
			sta $0152			; $9822: 8d 52 01
PRG04_9825:
			sta $014d			; $9825: 8d 4d 01
			ldx $a7			; $9828: a6 a7
			rts				; $982a: 60

;-------------------------------------------------------------------------------
PRG04_982b:
			lda $014c			; $982b: ad 4c 01
			beq PRG04_9825			; $982e: f0 f5
			dec $014c			; $9830: ce 4c 01
			lda #$01				; $9833: a9 01
			ldy #$01				; $9835: a0 01
			jsr PRG04_ab90			; $9837: 20 90 ab
			bcc PRG04_9846			; $983a: 90 0a
			jsr PRG04_8084			; $983c: 20 84 80
			bcc PRG04_9846			; $983f: 90 05
			lda #$1e				; $9841: a9 1e
			sta $0400,y		; $9843: 99 00 04
PRG04_9846:
			lda #$00				; $9846: a9 00
			beq PRG04_9825			; $9848: f0 db
		; It's safer to have "rts" here
		; TODO: decompile?
PRG04_984a:
			.byte $c0, $10 ; $984a
			.byte $02 ; $984c
			.byte $06, $b8 ; $984d
			.byte $97, $54 ; $984f
			.byte $98 ; $9851
			.byte $5a ; $9852
			.byte $98 ; $9853
			.byte $80, $81 ; $9854
			.byte $82, $83 ; $9856
			.byte $00 ; $9858
			.byte $00 ; $9859
			.byte $84, $85 ; $985a
			.byte $86, $87 ; $985c
			.byte $88 ; $985e
			.byte $89, $00 ; $985f
PRG04_9861:
			.byte $00, $05, $14, $13	; $9861: 00 05 14 13	 Data
			.byte $14	; $9865: 14			Data
PRG04_9866:
			.byte $05, $57, $56, $00	; $9866: 05 57 56 00	 Data
			.byte $00, $00, $00, $0e	; $986a: 00 00 00 0e	 Data
			.byte $0f, $0e, $04, $59	; $986e: 0f 0e 04 59	 Data
			.byte $59, $00, $58	; $9872: 59 00 58		Data
PRG04_9875:
			.byte $00, $00, $10, $11	; $9875: 00 00 10 11	 Data
			.byte $10, $04, $0e, $0f	; $9879: 10 04 0e 0f	 Data
			.byte $0e	; $987d: 0e			Data
PRG04_987e:
			.byte $04, $5d, $5c, $5b	; $987e: 04 5d 5c 5b	 Data
			.byte $5a, $59, $59, $00	; $9882: 5a 59 59 00	 Data
			.byte $58, $00	; $9886: 58 00		 Data
PRG04_9888:
			.byte $16, $10	; $9888: 16 10		 Data

PRG04_988a:
			lda $0418,x		; $988a: bd 18 04
			and #$80				; $988d: 29 80
			bne PRG04_989c			; $988f: d0 0b
			LoadAddress PRG04_9b78
			jsr PRG04_aa4b			; $9899: 20 4b aa
PRG04_989c:
			lda #$2d				; $989c: a9 2d
			jsr PRG04_ab4e			; $989e: 20 4e ab
			jsr PRG04_aca0			; $98a1: 20 a0 ac
			lda $0640,x		; $98a4: bd 40 06
			cmp #$ff				; $98a7: c9 ff
			bne PRG04_98ae			; $98a9: d0 03
			jmp PRG04_abc0			; $98ab: 4c c0 ab

;-------------------------------------------------------------------------------
PRG04_98ae:
			lda $68			; $98ae: a5 68
			beq PRG04_98bd			; $98b0: f0 0b
			and #$01				; $98b2: 29 01
			tay				; $98b4: a8
			lda PRG04_9c1d,y			; $98b5: b9 1d 9c
			sta @w $0087	; $98b8: 8d 87 00
			dec $68			; $98bb: c6 68
PRG04_98bd:
			lda $0640,x		; $98bd: bd 40 06
			and #$f0				; $98c0: 29 f0
			bne PRG04_98d1			; $98c2: d0 0d
			lda $0640,x		; $98c4: bd 40 06
			and #$0f				; $98c7: 29 0f
			beq PRG04_9907			; $98c9: f0 3c
			jsr PRG04_80dd			; $98cb: 20 dd 80
			jmp PRG04_992d			; $98ce: 4c 2d 99

;-------------------------------------------------------------------------------
PRG04_98d1:
			cmp #$10				; $98d1: c9 10
			bne PRG04_98f9			; $98d3: d0 24
			jsr PRG04_80dd			; $98d5: 20 dd 80
			lda $0640,x		; $98d8: bd 40 06
			and #$0f				; $98db: 29 0f
			bne PRG04_992d			; $98dd: d0 4e
			lda $0628,x		; $98df: bd 28 06
			beq PRG04_98f1			; $98e2: f0 0d
			dec $0628,x		; $98e4: de 28 06
			cmp #$0a				; $98e7: c9 0a
			bne PRG04_98ee			; $98e9: d0 03
			jsr PRG04_849e			; $98eb: 20 9e 84
PRG04_98ee:
			jmp PRG04_80a8			; $98ee: 4c a8 80

;-------------------------------------------------------------------------------
PRG04_98f1:
			lda #$22				; $98f1: a9 22
			sta $0640,x		; $98f3: 9d 40 06
			jmp PRG04_9907			; $98f6: 4c 07 99

;-------------------------------------------------------------------------------
PRG04_98f9:
			cmp #$30				; $98f9: c9 30
			bne PRG04_9907			; $98fb: d0 0a
			lda $0640,x		; $98fd: bd 40 06
			and #$0f				; $9900: 29 0f
			beq PRG04_98f9			; $9902: f0 f5
			jsr PRG04_838c			; $9904: 20 8c 83
PRG04_9907:
			jsr PRG04_841d			; $9907: 20 1d 84
			jsr PRG04_aaa5			; $990a: 20 a5 aa
			jsr PRG04_9fbb			; $990d: 20 bb 9f
			jsr PRG04_8453			; $9910: 20 53 84
			ldy $03			; $9913: a4 03
			jsr PRG04_Obj_MoveSpeed			; $9915: 20 b8 aa
			jsr PRG04_9afb			; $9918: 20 fb 9a
			lda #$0f				; $991b: a9 0f
			ldy #$a0				; $991d: a0 a0
			jsr PRG04_80e6			; $991f: 20 e6 80
			LoadAddress PRG04_9b7e
			jsr PRG04_a973			; $992a: 20 73 a9
PRG04_992d:
			jsr PRG04_a998			; $992d: 20 98 a9
			bcc PRG04_9935			; $9930: 90 03
			jsr PRG04_993b			; $9932: 20 3b 99
PRG04_9935:
			jsr PRG04_a9c8			; $9935: 20 c8 a9
			jmp PRG04_80a8			; $9938: 4c a8 80

;-------------------------------------------------------------------------------
PRG04_993b:
			lda $0640,x		; $993b: bd 40 06
			and #$0f				; $993e: 29 0f
			tay				; $9940: a8
			bne PRG04_9944			; $9941: d0 01
			rts				; $9943: 60

;-------------------------------------------------------------------------------
PRG04_9944:
			lda $0640,x		; $9944: bd 40 06
			and #$f0				; $9947: 29 f0
			bne PRG04_9990			; $9949: d0 45
			cpy #$0c				; $994b: c0 0c
			bne PRG04_996d			; $994d: d0 1e
			lda #$88				; $994f: a9 88
			sta $05b0,x		; $9951: 9d b0 05
			lda $0508,x		; $9954: bd 08 05
			and #$0f				; $9957: 29 0f
			bne PRG04_995f			; $9959: d0 04
			lda #$01				; $995b: a9 01
			bne PRG04_9965			; $995d: d0 06
PRG04_995f:
			cmp #$02				; $995f: c9 02
			bne PRG04_996d			; $9961: d0 0a
			lda #$21				; $9963: a9 21
PRG04_9965:
			jsr Main_c0de			; $9965: 20 de c0
			lda #$03				; $9968: a9 03
			jsr Main_c0de			; $996a: 20 de c0
PRG04_996d:
			lda $05f8,x		; $996d: bd f8 05
			and #$0f				; $9970: 29 0f
			beq PRG04_997a			; $9972: f0 06
			dec $05f8,x		; $9974: de f8 05
			jmp PRG04_998f			; $9977: 4c 8f 99

;-------------------------------------------------------------------------------
PRG04_997a:
			lda PRG04_9bb9,y			; $997a: b9 b9 9b
			jsr PRG04_8713			; $997d: 20 13 87
			lda PRG04_9ba1,y			; $9980: b9 a1 9b
			jsr Main_c0de			; $9983: 20 de c0
			lda PRG04_9bad,y			; $9986: b9 ad 9b
			sta $05f8,x		; $9989: 9d f8 05
			dec $0640,x		; $998c: de 40 06
PRG04_998f:
			rts				; $998f: 60

;-------------------------------------------------------------------------------
PRG04_9990:
			cmp #$10				; $9990: c9 10
			bne PRG04_99c4			; $9992: d0 30
			cpy #$03				; $9994: c0 03
			bne PRG04_99a2			; $9996: d0 0a
			lda #$dd				; $9998: a9 dd
			sta $05b0,x		; $999a: 9d b0 05
			lda #$22				; $999d: a9 22
			jsr PRG04_8713			; $999f: 20 13 87
PRG04_99a2:
			lda PRG04_9bcb,y			; $99a2: b9 cb 9b
			jsr PRG04_8713			; $99a5: 20 13 87
			lda PRG04_9bce,y			; $99a8: b9 ce 9b
			jsr PRG04_8713			; $99ab: 20 13 87
			lda PRG04_9bd1,y			; $99ae: b9 d1 9b
			jsr PRG04_8713			; $99b1: 20 13 87
			lda PRG04_9bc5,y			; $99b4: b9 c5 9b
			jsr Main_c0de			; $99b7: 20 de c0
			lda PRG04_9bc8,y			; $99ba: b9 c8 9b
			jsr Main_c0de			; $99bd: 20 de c0
			dec $0640,x		; $99c0: de 40 06
			rts				; $99c3: 60

;-------------------------------------------------------------------------------
PRG04_99c4:
			cmp #$20				; $99c4: c9 20
			bne PRG04_99f2			; $99c6: d0 2a
			cpy #$02				; $99c8: c0 02
			bne PRG04_99d1			; $99ca: d0 05
			lda #$dd				; $99cc: a9 dd
			sta $05b0,x		; $99ce: 9d b0 05
PRG04_99d1:
			lda PRG04_9bd4,y			; $99d1: b9 d4 9b
			jsr Main_c0de			; $99d4: 20 de c0
			lda PRG04_9bd6,y			; $99d7: b9 d6 9b
			jsr Main_c0de			; $99da: 20 de c0
			jsr PRG04_9b4c			; $99dd: 20 4c 9b
			bcc PRG04_99f1			; $99e0: 90 0f
			lda #$04				; $99e2: a9 04
			jsr Main_c0de			; $99e4: 20 de c0
			lda #$4a				; $99e7: a9 4a
			jsr PRG04_8713			; $99e9: 20 13 87
			lda #$4d				; $99ec: a9 4d
			jsr PRG04_8713			; $99ee: 20 13 87
PRG04_99f1:
			rts				; $99f1: 60

;-------------------------------------------------------------------------------
PRG04_99f2:
			cmp #$30				; $99f2: c9 30
			bne PRG04_9a27			; $99f4: d0 31
			cpy #$08				; $99f6: c0 08
			bne PRG04_9a04			; $99f8: d0 0a
			lda #$cc				; $99fa: a9 cc
			sta $05b0,x		; $99fc: 9d b0 05
			lda #$4e				; $99ff: a9 4e
			jsr PRG04_8713			; $9a01: 20 13 87
PRG04_9a04:
			lda PRG04_9be8,y			; $9a04: b9 e8 9b
			jsr PRG04_8713			; $9a07: 20 13 87
			lda PRG04_9bf0,y			; $9a0a: b9 f0 9b
			jsr PRG04_8713			; $9a0d: 20 13 87
			lda PRG04_9bd8,y			; $9a10: b9 d8 9b
			jsr Main_c0de			; $9a13: 20 de c0
			lda PRG04_9be0,y			; $9a16: b9 e0 9b
			jsr Main_c0de			; $9a19: 20 de c0
			jsr PRG04_9b4c			; $9a1c: 20 4c 9b
			bcc PRG04_9a26			; $9a1f: 90 05
			lda #$04				; $9a21: a9 04
			jsr Main_c0de			; $9a23: 20 de c0
PRG04_9a26:
			rts				; $9a26: 60

;-------------------------------------------------------------------------------
PRG04_9a27:
			cmp #$40				; $9a27: c9 40
			bne PRG04_9a4f			; $9a29: d0 24
			cpy #$02				; $9a2b: c0 02
PRG04_9a2d:
			.byte $d0, $0a, $a9, $dd	; $9a2d: d0 0a a9 dd	 Data
			.byte $9d, $b0, $05, $a9	; $9a31: 9d b0 05 a9	 Data
			.byte $3c, $20, $c6, $c0	; $9a35: 3c 20 c6 c0	 Data
PRG04_9a39:
			.byte $b9, $fc, $9b, $20	; $9a39: b9 fc 9b 20	 Data
			.byte $13, $87, $b9, $f8	; $9a3d: 13 87 b9 f8	 Data
			.byte $9b, $20, $de, $c0	; $9a41: 9b 20 de c0	 Data
			.byte $b9, $fa, $9b, $20	; $9a45: b9 fa 9b 20	 Data
			.byte $de, $c0, $20, $4c	; $9a49: de c0 20 4c	 Data
			.byte $9b, $60	; $9a4d: 9b 60		 Data
PRG04_9a4f:
			cmp #$50				; $9a4f: c9 50
			bne PRG04_9a75			; $9a51: d0 22
			bne PRG04_9a5f			; $9a53: d0 0a
			lda #$aa				; $9a55: a9 aa
			sta $05b0,x		; $9a57: 9d b0 05
			lda #$3c				; $9a5a: a9 3c
			jsr Goto_PlaySound			; $9a5c: 20 c6 c0
PRG04_9a5f:
			lda PRG04_9c06,y			; $9a5f: b9 06 9c
			jsr PRG04_8713			; $9a62: 20 13 87
			lda PRG04_9bfe,y			; $9a65: b9 fe 9b
			jsr Main_c0de			; $9a68: 20 de c0
			lda PRG04_9c02,y			; $9a6b: b9 02 9c
			jsr Main_c0de			; $9a6e: 20 de c0
			jsr PRG04_9b4c			; $9a71: 20 4c 9b
			rts				; $9a74: 60

;-------------------------------------------------------------------------------
PRG04_9a75:
			cmp #$60				; $9a75: c9 60
			beq PRG04_9a7c			; $9a77: f0 03
			jmp PRG04_9afb			; $9a79: 4c fb 9a

;-------------------------------------------------------------------------------
PRG04_9a7c:
			cpy #$06				; $9a7c: c0 06
			bne PRG04_9a94			; $9a7e: d0 14
			lda #$88				; $9a80: a9 88
			sta $05b0,x		; $9a82: 9d b0 05
			lda #$49				; $9a85: a9 49
			jsr PRG04_8713			; $9a87: 20 13 87
			lda #$4a				; $9a8a: a9 4a
			jsr PRG04_8713			; $9a8c: 20 13 87
			lda #$24				; $9a8f: a9 24
			jsr PRG04_8713			; $9a91: 20 13 87
PRG04_9a94:
			cpy #$01				; $9a94: c0 01
			bne PRG04_9aa4			; $9a96: d0 0c
			lda $0550,x		; $9a98: bd 50 05
			and #$04				; $9a9b: 29 04
			beq PRG04_9afa			; $9a9d: f0 5b
			lda #$02				; $9a9f: a9 02
			sta $0538,x		; $9aa1: 9d 38 05
PRG04_9aa4:
			lda PRG04_9c16,y			; $9aa4: b9 16 9c
			jsr PRG04_8713			; $9aa7: 20 13 87
			lda PRG04_9c0a,y			; $9aaa: b9 0a 9c
			jsr Main_c0de			; $9aad: 20 de c0
			lda PRG04_9c10,y			; $9ab0: b9 10 9c
			jsr Main_c0de			; $9ab3: 20 de c0
			cpy #$02				; $9ab6: c0 02
			bne PRG04_9ae6			; $9ab8: d0 2c
			lda #$10				; $9aba: a9 10
			sta $0148			; $9abc: 8d 48 01
			lda #$00				; $9abf: a9 00
			sta $04d8,x		; $9ac1: 9d d8 04
			lda #$fd				; $9ac4: a9 fd
			sta $04c0,x		; $9ac6: 9d c0 04
			lda $0550,x		; $9ac9: bd 50 05
			and #$fb				; $9acc: 29 fb
			sta $0550,x		; $9ace: 9d 50 05
			lda #$fe				; $9ad1: a9 fe
			sta $0490,x		; $9ad3: 9d 90 04
			lda #$80				; $9ad6: a9 80
			sta $04a8,x		; $9ad8: 9d a8 04
			lda #$00				; $9adb: a9 00
			sta $0538,x		; $9add: 9d 38 05
			dec $0640,x		; $9ae0: de 40 06
			jmp PRG04_9afa			; $9ae3: 4c fa 9a

;-------------------------------------------------------------------------------
PRG04_9ae6:
			jsr PRG04_9b4c			; $9ae6: 20 4c 9b
			bcc PRG04_9afa			; $9ae9: 90 0f
			lda #$08				; $9aeb: a9 08
			jsr Main_c0de			; $9aed: 20 de c0
			lda #$4c				; $9af0: a9 4c
			jsr PRG04_8713			; $9af2: 20 13 87
			lda #$55				; $9af5: a9 55
			jsr PRG04_8713			; $9af7: 20 13 87
PRG04_9afa:
			rts				; $9afa: 60

;-------------------------------------------------------------------------------
PRG04_9afb:
			lda $0640,x		; $9afb: bd 40 06
			and #$0f				; $9afe: 29 0f
			beq PRG04_9b03			; $9b00: f0 01
			rts				; $9b02: 60

;-------------------------------------------------------------------------------
PRG04_9b03:
			lda $0550,x		; $9b03: bd 50 05
			and #$04				; $9b06: 29 04
			beq PRG04_9b1b			; $9b08: f0 11
			lda $0610,x		; $9b0a: bd 10 06
PRG04_9b0d:
			cmp #$01				; $9b0d: c9 01
			bne PRG04_9b21			; $9b0f: d0 10
			lda #$13				; $9b11: a9 13
			sta $0640,x		; $9b13: 9d 40 06
			lda #$18				; $9b16: a9 18
			sta $0628,x		; $9b18: 9d 28 06
PRG04_9b1b:
			lda #$00				; $9b1b: a9 00
			sta $0610,x		; $9b1d: 9d 10 06
			rts				; $9b20: 60

;-------------------------------------------------------------------------------
PRG04_9b21:
			lda $0628,x		; $9b21: bd 28 06
			ora $0610,x		; $9b24: 1d 10 06
			and #$0f				; $9b27: 29 0f
			bne PRG04_9b37			; $9b29: d0 0c
			lda $01			; $9b2b: a5 01
			and #$02				; $9b2d: 29 02
			beq PRG04_9b37			; $9b2f: f0 06
			lda #$66				; $9b31: a9 66
PRG04_9b33:
			.byte $9d, $40, $06, $60	; $9b33: 9d 40 06 60	 Data
PRG04_9b37:
			lda $01			; $9b37: a5 01
			.byte $29	; $9b39: 29		Suspected data
PRG04_9b3a:
			.byte $01, $f0, $04, $a9	; $9b3a: 01 f0 04 a9	 Data
			.byte $0c, $d0, $f2, $a5	; $9b3e: 0c d0 f2 a5	 Data
			.byte $01, $29, $20, $f0	; $9b42: 01 29 20 f0	 Data
			.byte $04, $a9, $38, $d0	; $9b46: 04 a9 38 d0	 Data
			.byte $e8	; $9b4a: e8			Data
PRG04_9b4b:
			.byte $60	; $9b4b: 60			Data
PRG04_9b4c:
			dec $0640,x		; $9b4c: de 40 06
			lda $0640,x		; $9b4f: bd 40 06
			and #$0f				; $9b52: 29 0f
			bne PRG04_9b76			; $9b54: d0 20
			lda #$30				; $9b56: a9 30
			sta $0508,x		; $9b58: 9d 08 05
			lda #$23				; $9b5b: a9 23
			jsr PRG04_8713			; $9b5d: 20 13 87
			lda #$24				; $9b60: a9 24
			jsr PRG04_8713			; $9b62: 20 13 87
			lda #$4a				; $9b65: a9 4a
			jsr PRG04_8713			; $9b67: 20 13 87
			lda #$08				; $9b6a: a9 08
			jsr Main_c0de			; $9b6c: 20 de c0
			lda #$02				; $9b6f: a9 02
			jsr Main_c0de			; $9b71: 20 de c0
			sec				; $9b74: 38
			rts				; $9b75: 60

;-------------------------------------------------------------------------------
PRG04_9b76:
			clc				; $9b76: 18
			rts				; $9b77: 60

;-------------------------------------------------------------------------------
PRG04_9b78:
			.byte $a0, $30 ; $9b78
			.byte $02 ; $9b7a
			.byte $08 ; $9b7b
			.byte $a8 ; $9b7c
			.byte $b7
PRG04_9b7e:
			.byte $86
			.byte $9b ; $9b7f
			.byte $8e, $9b, $94 ; $9b80
			.byte $9b ; $9b83
			.byte $9c, $9b, $88 ; $9b84
			.byte $24, $00 ; $9b87
			.byte $84, $80 ; $9b89
			.byte $82, $22 ; $9b8b
			.byte $00 ; $9b8d
			.byte $8b, $00 ; $9b8e
			.byte $85, $81 ; $9b90
			.byte $83, $00 ; $9b92
			.byte $89, $23 ; $9b94
			.byte $00 ; $9b96
			.byte $84, $a0 ; $9b97
			.byte $82 ; $9b99
PRG04_9b9a:
			.byte $22, $00, $8c, $00	; $9b9a: 22 00 8c 00	 Data
			.byte $85, $a1, $83	; $9b9e: 85 a1 83		Data
PRG04_9ba1:
			.byte $00, $05, $07, $12	; $9ba1: 00 05 07 12	 Data
			.byte $11, $22, $11, $12	; $9ba5: 11 22 11 12	 Data
			.byte $07, $13, $14, $13	; $9ba9: 07 13 14 13	 Data
PRG04_9bad:
			.byte $07, $00, $00, $00	; $9bad: 07 00 00 00	 Data
			.byte $01, $03, $01, $00	; $9bb1: 01 03 01 00	 Data
			.byte $00, $00, $03, $00	; $9bb5: 00 00 03 00	 Data
PRG04_9bb9:
			.byte $00, $4c, $00, $4c	; $9bb9: 00 4c 00 4c	 Data
			.byte $48, $47, $00, $4c	; $9bbd: 48 47 00 4c	 Data
			.byte $00, $4c, $00, $4c	; $9bc1: 00 4c 00 4c	 Data
PRG04_9bc5:
			.byte $00, $1f, $1e	; $9bc5: 00 1f 1e		Data
PRG04_9bc8:
			.byte $1a, $08, $0c	; $9bc8: 1a 08 0c		Data
PRG04_9bcb:
			.byte $0a, $24, $4b	; $9bcb: 0a 24 4b		Data
PRG04_9bce:
			.byte $49, $00, $4a	; $9bce: 49 00 4a		Data
PRG04_9bd1:
			.byte $23, $00, $00	; $9bd1: 23 00 00		Data
PRG04_9bd4:
			.byte $24, $00	; $9bd4: 24 00		 Data
PRG04_9bd6:
			.byte $1e, $0b	; $9bd6: 1e 0b		 Data
PRG04_9bd8:
			.byte $08, $00, $15, $16	; $9bd8: 08 00 15 16	 Data
			.byte $15, $16, $15, $16	; $9bdc: 15 16 15 16	 Data
PRG04_9be0:
			.byte $15, $08, $17, $18	; $9be0: 15 08 17 18	 Data
			.byte $17, $18, $17, $18	; $9be4: 17 18 17 18	 Data
PRG04_9be8:
			.byte $17, $4a, $24, $4a	; $9be8: 17 4a 24 4a	 Data
			.byte $24, $4a, $24, $4a	; $9bec: 24 4a 24 4a	 Data
PRG04_9bf0:
			.byte $23, $4f, $50, $4f	; $9bf0: 23 4f 50 4f	 Data
			.byte $50, $4f, $50, $4f	; $9bf4: 50 4f 50 4f	 Data
PRG04_9bf8:
			.byte $24, $04	; $9bf8: 24 04		 Data
PRG04_9bfa:
			.byte $0e, $00	; $9bfa: 0e 00		 Data
PRG04_9bfc:
			.byte $10, $22	; $9bfc: 10 22		 Data
PRG04_9bfe:
			.byte $51, $04, $0e, $0f	; $9bfe: 51 04 0e 0f	 Data
PRG04_9c02:
			.byte $0e, $00, $10, $0f	; $9c02: 0e 00 10 0f	 Data
PRG04_9c06:
			.byte $10, $22, $53, $52	; $9c06: 10 22 53 52	 Data
PRG04_9c0a:
			.byte $51, $04, $1c, $1d	; $9c0a: 51 04 1c 1d	 Data
			.byte $1a, $1a	; $9c0e: 1a 1a		 Data
PRG04_9c10:
			.byte $1a, $00, $1b, $1b	; $9c10: 1a 00 1b 1b	 Data
			.byte $0a, $09	; $9c14: 0a 09		 Data
PRG04_9c16:
			.byte $08, $4a, $00, $54	; $9c16: 08 4a 00 54	 Data
			.byte $24, $23, $22	; $9c1a: 24 23 22		Data
PRG04_9c1d:
			.byte $16, $07	; $9c1d: 16 07		 Data

PRG04_9c1f:
			lda $0418,x		; $9c1f: bd 18 04
			and #$80				; $9c22: 29 80
			bne PRG04_9c36			; $9c24: d0 10
			lda #$00				; $9c26: a9 00
			sta $014b			; $9c28: 8d 4b 01
			LoadAddress PRG04_9dac
			jsr PRG04_aa4b			; $9c33: 20 4b aa
PRG04_9c36:
			lda #$2d				; $9c36: a9 2d
			jsr PRG04_ab4e			; $9c38: 20 4e ab
			lda $0197			; $9c3b: ad 97 01
			bne PRG04_9c4a			; $9c3e: d0 0a
			lda $0640,x		; $9c40: bd 40 06
			cmp #$ff				; $9c43: c9 ff
			beq PRG04_9c4a			; $9c45: f0 03
			jsr PRG04_9d5e			; $9c47: 20 5e 9d
PRG04_9c4a:
			jsr PRG04_aca0			; $9c4a: 20 a0 ac
			lda $0640,x		; $9c4d: bd 40 06
			cmp #$ff				; $9c50: c9 ff
			bne PRG04_9c57			; $9c52: d0 03
			jmp PRG04_abc0			; $9c54: 4c c0 ab

;-------------------------------------------------------------------------------
PRG04_9c57:
			jsr PRG04_841d			; $9c57: 20 1d 84
			jsr PRG04_aaa5			; $9c5a: 20 a5 aa
			lda $05f8			; $9c5d: ad f8 05
			bmi PRG04_9c68			; $9c60: 30 06
			jsr PRG04_9f4e			; $9c62: 20 4e 9f
			jsr PRG04_8453			; $9c65: 20 53 84
PRG04_9c68:
			lda $0550,x		; $9c68: bd 50 05
			and #$04				; $9c6b: 29 04
			beq PRG04_9c7d			; $9c6d: f0 0e
			lda $01			; $9c6f: a5 01
			and #$c0				; $9c71: 29 c0
			beq PRG04_9c7d			; $9c73: f0 08
			lda #$1f				; $9c75: a9 1f
			sta $0148			; $9c77: 8d 48 01
			jsr PRG04_83a5			; $9c7a: 20 a5 83
PRG04_9c7d:
			ldy $03			; $9c7d: a4 03
			jsr PRG04_Obj_MoveSpeed			; $9c7f: 20 b8 aa
			jsr PRG04_9d43			; $9c82: 20 43 9d
			lda #$14				; $9c85: a9 14
			ldy #$a0				; $9c87: a0 a0
			jsr PRG04_80e6			; $9c89: 20 e6 80
			jsr PRG04_8120			; $9c8c: 20 20 81
			bcc PRG04_9c97			; $9c8f: 90 06
			lda PRG04_9db2,y			; $9c91: b9 b2 9d
			jsr Main_c0de			; $9c94: 20 de c0
PRG04_9c97:
			lda $0490,x		; $9c97: bd 90 04
			bpl PRG04_9cb1			; $9c9a: 10 15
			lda $014b			; $9c9c: ad 4b 01
			bne PRG04_9ccc			; $9c9f: d0 2b
			inc $014b			; $9ca1: ee 4b 01
			lda #$40				; $9ca4: a9 40
			jsr PRG04_8713			; $9ca6: 20 13 87
			lda #$03				; $9ca9: a9 03
			jsr Main_c0de			; $9cab: 20 de c0
			jmp PRG04_9ccc			; $9cae: 4c cc 9c

;-------------------------------------------------------------------------------
PRG04_9cb1:
			lda $0430,x		; $9cb1: bd 30 04
			cmp #$20				; $9cb4: c9 20
			bcc PRG04_9ccc			; $9cb6: 90 14
			lda $014b			; $9cb8: ad 4b 01
			beq PRG04_9ccc			; $9cbb: f0 0f
			lda #$00				; $9cbd: a9 00
			sta $014b			; $9cbf: 8d 4b 01
			lda #$41				; $9cc2: a9 41
			jsr PRG04_8713			; $9cc4: 20 13 87
			lda #$04				; $9cc7: a9 04
			jsr Main_c0de			; $9cc9: 20 de c0
PRG04_9ccc:
			lda $68			; $9ccc: a5 68
			beq PRG04_9cde			; $9cce: f0 0e
			and #$01				; $9cd0: 29 01
			tay				; $9cd2: a8
			lda PRG04_9dc8,y			; $9cd3: b9 c8 9d
			sta @w $0087	; $9cd6: 8d 87 00
			sta @w $008b	; $9cd9: 8d 8b 00
			dec $68			; $9cdc: c6 68
PRG04_9cde:
			jsr PRG04_a998			; $9cde: 20 98 a9
			bcc PRG04_9ce6			; $9ce1: 90 03
			jsr PRG04_9ce9			; $9ce3: 20 e9 9c
PRG04_9ce6:
			jmp PRG04_80a8			; $9ce6: 4c a8 80

;-------------------------------------------------------------------------------
PRG04_9ce9:
			lda $0628,x		; $9ce9: bd 28 06
			beq PRG04_9cfa			; $9cec: f0 0c
			dec $0628,x		; $9cee: de 28 06
			cmp #$10				; $9cf1: c9 10
			bne PRG04_9cfa			; $9cf3: d0 05
			lda #$45				; $9cf5: a9 45
			jsr Goto_PlaySound			; $9cf7: 20 c6 c0
PRG04_9cfa:
			lda $0610,x		; $9cfa: bd 10 06
			and #$0f				; $9cfd: 29 0f
			beq PRG04_9d2e			; $9cff: f0 2d
			tay				; $9d01: a8
			lda PRG04_9db9,y			; $9d02: b9 b9 9d
			jsr PRG04_8713			; $9d05: 20 13 87
			lda PRG04_9db3,y			; $9d08: b9 b3 9d
			jsr Main_c0de			; $9d0b: 20 de c0
			cpy #$03				; $9d0e: c0 03
			bne PRG04_9d19			; $9d10: d0 07
			lda #$15				; $9d12: a9 15
			ldy #$c0				; $9d14: a0 c0
			jsr PRG04_80e6			; $9d16: 20 e6 80
PRG04_9d19:
			dec $0610,x		; $9d19: de 10 06
			lda $0610,x		; $9d1c: bd 10 06
			and #$0f				; $9d1f: 29 0f
			bne PRG04_9d2d			; $9d21: d0 0a
			lda #$aa				; $9d23: a9 aa
			sta $05b0,x		; $9d25: 9d b0 05
			lda #$00				; $9d28: a9 00
			sta $014a			; $9d2a: 8d 4a 01
PRG04_9d2d:
			rts				; $9d2d: 60

;-------------------------------------------------------------------------------
PRG04_9d2e:
			lda $014a			; $9d2e: ad 4a 01
			and #$03				; $9d31: 29 03
			inc $014a			; $9d33: ee 4a 01
			tay				; $9d36: a8
			lda PRG04_9dc4,y			; $9d37: b9 c4 9d
			jsr PRG04_8713			; $9d3a: 20 13 87
			lda PRG04_9dc0,y			; $9d3d: b9 c0 9d
			jmp Main_c0de			; $9d40: 4c de c0

;-------------------------------------------------------------------------------
PRG04_9d43:
			lda $0640,x		; $9d43: bd 40 06
			and #$0f				; $9d46: 29 0f
			beq PRG04_9d4b			; $9d48: f0 01
			rts				; $9d4a: 60

;-------------------------------------------------------------------------------
PRG04_9d4b:
			lda $0610,x		; $9d4b: bd 10 06
			and #$0f				; $9d4e: 29 0f
			bne PRG04_9d5d			; $9d50: d0 0b
			lda $01			; $9d52: a5 01
			and #$01				; $9d54: 29 01
			beq PRG04_9d5d			; $9d56: f0 05
			lda #$06				; $9d58: a9 06
			sta $0610,x		; $9d5a: 9d 10 06
PRG04_9d5d:
			rts				; $9d5d: 60

;-------------------------------------------------------------------------------
PRG04_9d5e:
			lda #$2b				; $9d5e: a9 2b
			jsr PRG04_8713			; $9d60: 20 13 87
			lda #$06				; $9d63: a9 06
			jsr Main_c0de			; $9d65: 20 de c0
			ldx #$a0				; $9d68: a2 a0
			ldy #$14				; $9d6a: a0 14
			lda #$11				; $9d6c: a9 11
			sta $a3			; $9d6e: 85 a3
			lda #$01				; $9d70: a9 01
			jsr Main_c01e			; $9d72: 20 1e c0
			ldx #$a0				; $9d75: a2 a0
			ldy #$15				; $9d77: a0 15
			lda #$11				; $9d79: a9 11
			sta $a3			; $9d7b: 85 a3
			lda #$01				; $9d7d: a9 01
			jsr Main_c01e			; $9d7f: 20 1e c0
			ldx #$a0				; $9d82: a2 a0
			ldy #$16				; $9d84: a0 16
			lda #$11				; $9d86: a9 11
			sta $a3			; $9d88: 85 a3
			lda #$01				; $9d8a: a9 01
			jsr Main_c01e			; $9d8c: 20 1e c0
			ldx #$a0				; $9d8f: a2 a0
			ldy #$17				; $9d91: a0 17
			lda #$11				; $9d93: a9 11
			sta $a3			; $9d95: 85 a3
			lda #$01				; $9d97: a9 01
			jsr Main_c01e			; $9d99: 20 1e c0
			ldx #$23				; $9d9c: a2 23
			ldy #$dd				; $9d9e: a0 dd
			lda #$01				; $9da0: a9 01
			sta $a3			; $9da2: 85 a3
			lda #$ff				; $9da4: a9 ff
			jsr Main_c01e			; $9da6: 20 1e c0
			ldx $a7			; $9da9: a6 a7
			rts				; $9dab: 60

;-------------------------------------------------------------------------------
PRG04_9dac:
			.byte $a0, $10 ; $9dac
			.byte $03, $0b ; $9dae
			.byte $c8 ; $9db0
			.byte $77 ; $9db1
PRG04_9db2:
			.byte $01	; $9db2: 01			Data
PRG04_9db3:
			.byte $02, $05, $06, $07	; $9db3: 02 05 06 07	 Data
			.byte $08, $07	; $9db7: 08 07		 Data
PRG04_9db9:
			.byte $06, $2f, $00, $2e	; $9db9: 06 2f 00 2e	 Data
			.byte $2d, $2c, $2b	; $9dbd: 2d 2c 2b		Data
PRG04_9dc0:
			.byte $05, $06, $07, $06	; $9dc0: 05 06 07 06	 Data
PRG04_9dc4:
			.byte $2f, $2b, $2c, $00	; $9dc4: 2f 2b 2c 00	 Data
PRG04_9dc8:
			.byte $16, $1c, $20, $db	; $9dc8: 16 1c 20 db	 Data
			.byte $82, $b0, $03, $20	; $9dcc: 82 b0 03 20	 Data
			.byte $1a, $83	; $9dd0: 1a 83		 Data
PRG04_9dd2:
			.byte $bd, $60, $04, $c9	; $9dd2: bd 60 04 c9	 Data
			.byte $78, $90, $14, $ad	; $9dd6: 78 90 14 ad	 Data
			.byte $47, $01, $29, $03	; $9dda: 47 01 29 03	 Data
			.byte $f0, $0d, $20, $8a	; $9dde: f0 0d 20 8a	 Data
			.byte $c0, $29, $3f, $d0	; $9de2: c0 29 3f d0	 Data
			.byte $06, $20, $9e, $84	; $9de6: 06 20 9e 84	 Data
			.byte $20, $8c, $83	; $9dea: 20 8c 83		Data
PRG04_9ded:
			.byte $20, $ae, $84, $20	; $9ded: 20 ae 84 20	 Data
			.byte $e6, $84, $a9, $16	; $9df1: e6 84 a9 16	 Data
			.byte $85, $a2, $a9, $60	; $9df5: 85 a2 a9 60	 Data
			.byte $85, $a1, $20, $2f	; $9df9: 85 a1 20 2f	 Data
			.byte $85, $f0, $29, $b0	; $9dfd: 85 f0 29 b0	 Data
			.byte $24, $a5, $01, $29	; $9e01: 24 a5 01 29	 Data
			.byte $40, $d0, $03, $20	; $9e05: 40 d0 03 20	 Data
			.byte $73, $83	; $9e09: 73 83		 Data

PRG04_9e0b:
			lda $0147			; $9e0b: ad 47 01
			and #$03				; $9e0e: 29 03
			beq PRG04_9e19			; $9e10: f0 07
			lda #$00				; $9e12: a9 00
			sta $a0			; $9e14: 85 a0
			jsr PRG04_82af			; $9e16: 20 af 82
PRG04_9e19:
			lda $01			; $9e19: a5 01
			and #$02				; $9e1b: 29 02
			bne PRG04_9e25			; $9e1d: d0 06
			lda $01			; $9e1f: a5 01
			ora #$01				; $9e21: 09 01
			sta $01			; $9e23: 85 01
PRG04_9e25:
			rts				; $9e25: 60

;-------------------------------------------------------------------------------
PRG04_9e26:
			jmp PRG04_838c			; $9e26: 4c 8c 83

;-------------------------------------------------------------------------------
PRG04_9e29:
			jsr Main_c08a			; $9e29: 20 8a c0
			and #$3f				; $9e2c: 29 3f
			beq PRG04_9e37			; $9e2e: f0 07
			lda #$01				; $9e30: a9 01
			sta $a0			; $9e32: 85 a0
			jmp PRG04_82af			; $9e34: 4c af 82

;-------------------------------------------------------------------------------
PRG04_9e37:
			jsr PRG04_83a5			; $9e37: 20 a5 83
			lda #$10				; $9e3a: a9 10
			sta $0148			; $9e3c: 8d 48 01
			jsr PRG04_838c			; $9e3f: 20 8c 83
			jmp PRG04_83e3			; $9e42: 4c e3 83

;-------------------------------------------------------------------------------
PRG04_9e45:
			jsr PRG04_82db			; $9e45: 20 db 82
			bcs PRG04_9e4d			; $9e48: b0 03
			jsr PRG04_831a			; $9e4a: 20 1a 83
PRG04_9e4d:
			lda $0460,x		; $9e4d: bd 60 04
			cmp #$a8				; $9e50: c9 a8
			bcc PRG04_9e65			; $9e52: 90 11
			lda $0147			; $9e54: ad 47 01
			and #$03				; $9e57: 29 03
			beq PRG04_9e65			; $9e59: f0 0a
			jsr Main_c08a			; $9e5b: 20 8a c0
			and #$3f				; $9e5e: 29 3f
			bne PRG04_9e65			; $9e60: d0 03
			jsr PRG04_849e			; $9e62: 20 9e 84
PRG04_9e65:
			jsr PRG04_84ae			; $9e65: 20 ae 84
			jsr PRG04_84e6			; $9e68: 20 e6 84
			lda #$16				; $9e6b: a9 16
			sta $a2			; $9e6d: 85 a2
			lda #$60				; $9e6f: a9 60
			sta $a1			; $9e71: 85 a1
			jsr PRG04_852f			; $9e73: 20 2f 85
			beq PRG04_9ea1			; $9e76: f0 29
			bcs PRG04_9e9e			; $9e78: b0 24
			lda $01			; $9e7a: a5 01
			and #$40				; $9e7c: 29 40
			bne PRG04_9e83			; $9e7e: d0 03
			jsr PRG04_8373			; $9e80: 20 73 83
PRG04_9e83:
			lda $0147			; $9e83: ad 47 01
			and #$03				; $9e86: 29 03
			beq PRG04_9e91			; $9e88: f0 07
			lda #$00				; $9e8a: a9 00
			sta $a0			; $9e8c: 85 a0
			jsr PRG04_82af			; $9e8e: 20 af 82
PRG04_9e91:
			lda $01			; $9e91: a5 01
			and #$02				; $9e93: 29 02
			bne PRG04_9e9d			; $9e95: d0 06
			lda $01			; $9e97: a5 01
			ora #$01				; $9e99: 09 01
			sta $01			; $9e9b: 85 01
PRG04_9e9d:
			rts				; $9e9d: 60

;-------------------------------------------------------------------------------
PRG04_9e9e:
			jmp PRG04_838c			; $9e9e: 4c 8c 83

;-------------------------------------------------------------------------------
PRG04_9ea1:
			jsr Main_c08a			; $9ea1: 20 8a c0
			and #$3f				; $9ea4: 29 3f
			beq PRG04_9eaf			; $9ea6: f0 07
			lda #$01				; $9ea8: a9 01
			sta $a0			; $9eaa: 85 a0
			jmp PRG04_82af			; $9eac: 4c af 82

;-------------------------------------------------------------------------------
PRG04_9eaf:
			jsr PRG04_83a5			; $9eaf: 20 a5 83
			lda #$10				; $9eb2: a9 10
			sta $0148			; $9eb4: 8d 48 01
			jsr PRG04_838c			; $9eb7: 20 8c 83
			jmp PRG04_83e3			; $9eba: 4c e3 83

;-------------------------------------------------------------------------------
PRG04_9ebd:
			lda $014b			; $9ebd: ad 4b 01
			beq PRG04_9ec5			; $9ec0: f0 03
			jsr PRG04_838c			; $9ec2: 20 8c 83
PRG04_9ec5:
			lda $0460,x		; $9ec5: bd 60 04
			cmp #$a8				; $9ec8: c9 a8
			bcc PRG04_9edd			; $9eca: 90 11
			lda $0147			; $9ecc: ad 47 01
			and #$03				; $9ecf: 29 03
			beq PRG04_9edd			; $9ed1: f0 0a
			jsr Main_c08a			; $9ed3: 20 8a c0
			and #$0f				; $9ed6: 29 0f
			bne PRG04_9edd			; $9ed8: d0 03
			jsr PRG04_8404			; $9eda: 20 04 84
PRG04_9edd:
			jsr PRG04_82db			; $9edd: 20 db 82
			bcs PRG04_9ee5			; $9ee0: b0 03
			jsr PRG04_831a			; $9ee2: 20 1a 83
PRG04_9ee5:
			lda $03			; $9ee5: a5 03
			cmp #$04				; $9ee7: c9 04
			beq PRG04_9eec			; $9ee9: f0 01
			rts				; $9eeb: 60

;-------------------------------------------------------------------------------
PRG04_9eec:
			jsr PRG04_84ae			; $9eec: 20 ae 84
			jsr PRG04_84e6			; $9eef: 20 e6 84
			lda #$16				; $9ef2: a9 16
			sta $a2			; $9ef4: 85 a2
			lda #$60				; $9ef6: a9 60
			sta $a1			; $9ef8: 85 a1
			jsr PRG04_852f			; $9efa: 20 2f 85
			beq PRG04_9f28			; $9efd: f0 29
			bcs PRG04_9f25			; $9eff: b0 24
			lda $01			; $9f01: a5 01
			and #$40				; $9f03: 29 40
			bne PRG04_9f0a			; $9f05: d0 03
			jsr PRG04_8373			; $9f07: 20 73 83
PRG04_9f0a:
			lda $0147			; $9f0a: ad 47 01
			and #$03				; $9f0d: 29 03
			beq PRG04_9f18			; $9f0f: f0 07
			lda #$00				; $9f11: a9 00
			sta $a0			; $9f13: 85 a0
			jsr PRG04_82af			; $9f15: 20 af 82
PRG04_9f18:
			lda $01			; $9f18: a5 01
			and #$02				; $9f1a: 29 02
			bne PRG04_9f24			; $9f1c: d0 06
			lda $01			; $9f1e: a5 01
			ora #$01				; $9f20: 09 01
			sta $01			; $9f22: 85 01
PRG04_9f24:
			rts				; $9f24: 60

;-------------------------------------------------------------------------------
PRG04_9f25:
			jmp PRG04_838c			; $9f25: 4c 8c 83

;-------------------------------------------------------------------------------
PRG04_9f28:
			jsr Main_c08a			; $9f28: 20 8a c0
			and #$3f				; $9f2b: 29 3f
			beq PRG04_9f36			; $9f2d: f0 07
			lda #$01				; $9f2f: a9 01
			sta $a0			; $9f31: 85 a0
			jmp PRG04_82af			; $9f33: 4c af 82

;-------------------------------------------------------------------------------
PRG04_9f36:
			jsr PRG04_83a5			; $9f36: 20 a5 83
			lda #$10				; $9f39: a9 10
			sta $0148			; $9f3b: 8d 48 01
			jsr PRG04_838c			; $9f3e: 20 8c 83
			jsr Main_c08a			; $9f41: 20 8a c0
			and #$01				; $9f44: 29 01
			beq PRG04_9f4b			; $9f46: f0 03
			jmp PRG04_83e3			; $9f48: 4c e3 83

;-------------------------------------------------------------------------------
PRG04_9f4b:
			jmp PRG04_8404			; $9f4b: 4c 04 84

;-------------------------------------------------------------------------------
PRG04_9f4e:
			jsr PRG04_82db			; $9f4e: 20 db 82
			bcs PRG04_9f56			; $9f51: b0 03
			jsr PRG04_831a			; $9f53: 20 1a 83
PRG04_9f56:
			lda $0460,x		; $9f56: bd 60 04
			cmp #$a8				; $9f59: c9 a8
			bcc PRG04_9f6c			; $9f5b: 90 0f
			lda $0147			; $9f5d: ad 47 01
			and #$03				; $9f60: 29 03
			beq PRG04_9f6c			; $9f62: f0 08
			jsr Main_c08a			; $9f64: 20 8a c0
			and #$0f				; $9f67: 29 0f
			jsr PRG04_838c			; $9f69: 20 8c 83
PRG04_9f6c:
			jsr PRG04_84e6			; $9f6c: 20 e6 84
			lda #$16				; $9f6f: a9 16
			sta $a2			; $9f71: 85 a2
			lda #$60				; $9f73: a9 60
			sta $a1			; $9f75: 85 a1
			jsr PRG04_852f			; $9f77: 20 2f 85
			beq PRG04_9f9f			; $9f7a: f0 23
			bcs PRG04_9f9c			; $9f7c: b0 1e
			lda $01			; $9f7e: a5 01
			and #$40				; $9f80: 29 40
			bne PRG04_9f87			; $9f82: d0 03
			jsr PRG04_8373			; $9f84: 20 73 83
PRG04_9f87:
			lda $0147			; $9f87: ad 47 01
			and #$03				; $9f8a: 29 03
			beq PRG04_9f95			; $9f8c: f0 07
			lda #$00				; $9f8e: a9 00
			sta $a0			; $9f90: 85 a0
			jsr PRG04_82af			; $9f92: 20 af 82
PRG04_9f95:
			lda $01			; $9f95: a5 01
			ora #$01				; $9f97: 09 01
			sta $01			; $9f99: 85 01
			rts				; $9f9b: 60

;-------------------------------------------------------------------------------
PRG04_9f9c:
			.byte $4c, $8c	; $9f9c: 4c 8c	 Suspected data
PRG04_9f9e:
			.byte $83	; $9f9e: 83			Data
PRG04_9f9f:
			jsr Main_c08a			; $9f9f: 20 8a c0
			and #$3f				; $9fa2: 29 3f
			beq PRG04_9fad			; $9fa4: f0 07
			lda #$01				; $9fa6: a9 01
			sta $a0			; $9fa8: 85 a0
			jmp PRG04_82af			; $9faa: 4c af 82

;-------------------------------------------------------------------------------
PRG04_9fad:
			jsr PRG04_83a5			; $9fad: 20 a5 83
			lda #$10				; $9fb0: a9 10
			sta $0148			; $9fb2: 8d 48 01
			jsr PRG04_838c			; $9fb5: 20 8c 83
			jmp PRG04_83c2			; $9fb8: 4c c2 83

;-------------------------------------------------------------------------------
PRG04_9fbb:
			lda $0460,x		; $9fbb: bd 60 04
			cmp #$a8				; $9fbe: c9 a8
			bcc PRG04_9fdf			; $9fc0: 90 1d
			lda $0147			; $9fc2: ad 47 01
			and #$03				; $9fc5: 29 03
			beq PRG04_9fdf			; $9fc7: f0 16
			jsr Main_c08a			; $9fc9: 20 8a c0
			and #$0f				; $9fcc: 29 0f
			bne PRG04_9fdf			; $9fce: d0 0f
			lda $20			; $9fd0: a5 20
			and #$70				; $9fd2: 29 70
			bne PRG04_9fd9			; $9fd4: d0 03
			lda #$02				; $9fd6: a9 02
			rts				; $9fd8: 60

;-------------------------------------------------------------------------------
PRG04_9fd9:
			lda #$01				; $9fd9: a9 01
			sta $0610,x		; $9fdb: 9d 10 06
			rts				; $9fde: 60

;-------------------------------------------------------------------------------
PRG04_9fdf:
			jsr PRG04_82db			; $9fdf: 20 db 82
			bcs PRG04_9fe7			; $9fe2: b0 03
			jsr PRG04_831a			; $9fe4: 20 1a 83
PRG04_9fe7:
			lda $03			; $9fe7: a5 03
			cmp #$04				; $9fe9: c9 04
			beq PRG04_9fee			; $9feb: f0 01
			rts				; $9fed: 60

;-------------------------------------------------------------------------------
PRG04_9fee:
			jsr PRG04_84e6			; $9fee: 20 e6 84
			lda #$16				; $9ff1: a9 16
			sta $a2			; $9ff3: 85 a2
			lda #$60				; $9ff5: a9 60
			sta $a1			; $9ff7: 85 a1
			jsr PRG04_852f			; $9ff9: 20 2f 85
			beq PRG04_a02f			; $9ffc: f0 31
			bcs PRG04_a024			; $9ffe: b0 24
			lda $01			; $a000: a5 01
			and #$40				; $a002: 29 40
			bne PRG04_a009			; $a004: d0 03
			jsr PRG04_8373			; $a006: 20 73 83
PRG04_a009:
			lda $0147			; $a009: ad 47 01
			and #$03				; $a00c: 29 03
			beq PRG04_a017			; $a00e: f0 07
			lda #$00				; $a010: a9 00
			sta $a0			; $a012: 85 a0
			jsr PRG04_82af			; $a014: 20 af 82
PRG04_a017:
			jsr Main_c08a			; $a017: 20 8a c0
			and #$3f				; $a01a: 29 3f
			bne PRG04_a023			; $a01c: d0 05
			lda #$01				; $a01e: a9 01
			sta $0610,x		; $a020: 9d 10 06
PRG04_a023:
			rts				; $a023: 60

;-------------------------------------------------------------------------------
PRG04_a024:
			lda $0640,x		; $a024: bd 40 06
			and #$0f				; $a027: 29 0f
			beq PRG04_a02c			; $a029: f0 01
			rts				; $a02b: 60

;-------------------------------------------------------------------------------
PRG04_a02c:
			jmp PRG04_838c			; $a02c: 4c 8c 83

;-------------------------------------------------------------------------------
PRG04_a02f:
			jsr Main_c08a			; $a02f: 20 8a c0
			and #$3f				; $a032: 29 3f
			beq PRG04_a03d			; $a034: f0 07
			lda #$01				; $a036: a9 01
			sta $a0			; $a038: 85 a0
			jmp PRG04_82af			; $a03a: 4c af 82

;-------------------------------------------------------------------------------
PRG04_a03d:
			jsr Main_c08a			; $a03d: 20 8a c0
			and #$0f				; $a040: 29 0f
			beq PRG04_a047			; $a042: f0 03
			jmp PRG04_83e3			; $a044: 4c e3 83

;-------------------------------------------------------------------------------
PRG04_a047:
			jmp PRG04_83c2			; $a047: 4c c2 83

;-------------------------------------------------------------------------------
PRG04_a04a:
			jsr PRG04_82db			; $a04a: 20 db 82
			bcs PRG04_a052			; $a04d: b0 03
			jsr PRG04_831a			; $a04f: 20 1a 83
PRG04_a052:
			lda $03			; $a052: a5 03
			cmp #$04				; $a054: c9 04
			beq PRG04_a059			; $a056: f0 01
			rts				; $a058: 60

;-------------------------------------------------------------------------------
PRG04_a059:
			jsr PRG04_84ae			; $a059: 20 ae 84
			jsr PRG04_84e6			; $a05c: 20 e6 84
			lda #$16				; $a05f: a9 16
			sta $a2			; $a061: 85 a2
			lda #$60				; $a063: a9 60
			sta $a1			; $a065: 85 a1
			jsr PRG04_852f			; $a067: 20 2f 85
			beq PRG04_a094			; $a06a: f0 28
			bcs PRG04_a089			; $a06c: b0 1b
			lda $01			; $a06e: a5 01
			and #$40				; $a070: 29 40
			bne PRG04_a077			; $a072: d0 03
			jsr PRG04_8373			; $a074: 20 73 83
PRG04_a077:
			lda $0147			; $a077: ad 47 01
			and #$03				; $a07a: 29 03
			beq PRG04_a085			; $a07c: f0 07
			lda #$00				; $a07e: a9 00
			sta $a0			; $a080: 85 a0
			jsr PRG04_82af			; $a082: 20 af 82
PRG04_a085:
			jsr PRG04_83c2			; $a085: 20 c2 83
			rts				; $a088: 60

;-------------------------------------------------------------------------------
PRG04_a089:
			lda $0640,x		; $a089: bd 40 06
			and #$0f				; $a08c: 29 0f
			beq PRG04_a091			; $a08e: f0 01
			rts				; $a090: 60

;-------------------------------------------------------------------------------
PRG04_a091:
			jmp PRG04_838c			; $a091: 4c 8c 83

;-------------------------------------------------------------------------------
PRG04_a094:
			jsr Main_c08a			; $a094: 20 8a c0
			and #$3f				; $a097: 29 3f
			beq PRG04_a0a2			; $a099: f0 07
			lda #$01				; $a09b: a9 01
			sta $a0			; $a09d: 85 a0
			jmp PRG04_82af			; $a09f: 4c af 82

;-------------------------------------------------------------------------------
PRG04_a0a2:
			jmp PRG04_83c2			; $a0a2: 4c c2 83

;-------------------------------------------------------------------------------
PRG04_a0a5:
			jsr PRG04_82db			; $a0a5: 20 db 82
			bcs PRG04_a0ad			; $a0a8: b0 03
			jsr PRG04_831a			; $a0aa: 20 1a 83
PRG04_a0ad:
			lda $0460,x		; $a0ad: bd 60 04
			cmp #$b0				; $a0b0: c9 b0
			bcc PRG04_a0c3			; $a0b2: 90 0f
			lda $0147			; $a0b4: ad 47 01
			and #$03				; $a0b7: 29 03
			beq PRG04_a0c3			; $a0b9: f0 08
			jsr Main_c08a			; $a0bb: 20 8a c0
			and #$1f				; $a0be: 29 1f
			jsr PRG04_8404			; $a0c0: 20 04 84
PRG04_a0c3:
			lda $03			; $a0c3: a5 03
			cmp #$04				; $a0c5: c9 04
			beq PRG04_a0ca			; $a0c7: f0 01
			rts				; $a0c9: 60

;-------------------------------------------------------------------------------
PRG04_a0ca:
			jsr PRG04_84e6			; $a0ca: 20 e6 84
			lda #$16				; $a0cd: a9 16
			sta $a2			; $a0cf: 85 a2
			lda #$60				; $a0d1: a9 60
			sta $a1			; $a0d3: 85 a1
			jsr PRG04_852f			; $a0d5: 20 2f 85
			beq PRG04_a10b			; $a0d8: f0 31
			bcs PRG04_a100			; $a0da: b0 24
			lda $01			; $a0dc: a5 01
			and #$40				; $a0de: 29 40
			bne PRG04_a0e5			; $a0e0: d0 03
			jsr PRG04_8373			; $a0e2: 20 73 83
PRG04_a0e5:
			lda $0147			; $a0e5: ad 47 01
			and #$03				; $a0e8: 29 03
			beq PRG04_a0f3			; $a0ea: f0 07
			lda #$00				; $a0ec: a9 00
			sta $a0			; $a0ee: 85 a0
			jsr PRG04_82af			; $a0f0: 20 af 82
PRG04_a0f3:
			lda $01			; $a0f3: a5 01
			and #$02				; $a0f5: 29 02
			bne PRG04_a0ff			; $a0f7: d0 06
			lda $01			; $a0f9: a5 01
			ora #$01				; $a0fb: 09 01
			sta $01			; $a0fd: 85 01
PRG04_a0ff:
			rts				; $a0ff: 60

;-------------------------------------------------------------------------------
PRG04_a100:
			.byte $bd, $40	; $a100: bd 40	 Suspected data
PRG04_a102:
			.byte $06, $29, $0f, $f0	; $a102: 06 29 0f f0	 Data
			.byte $01, $60, $4c, $8c	; $a106: 01 60 4c 8c	 Data
			.byte $83	; $a10a: 83			Data
PRG04_a10b:
			jsr Main_c08a			; $a10b: 20 8a c0
			and #$3f				; $a10e: 29 3f
			beq PRG04_a119			; $a110: f0 07
			lda #$01				; $a112: a9 01
			sta $a0			; $a114: 85 a0
			jmp PRG04_82af			; $a116: 4c af 82

;-------------------------------------------------------------------------------
PRG04_a119:
			jsr Main_c08a			; $a119: 20 8a c0
			and #$03				; $a11c: 29 03
			bne PRG04_a123			; $a11e: d0 03
			jmp PRG04_83e3			; $a120: 4c e3 83

;-------------------------------------------------------------------------------
PRG04_a123:
			cmp #$02				; $a123: c9 02
			bne PRG04_a12a			; $a125: d0 03
			jmp PRG04_840f			; $a127: 4c 0f 84

;-------------------------------------------------------------------------------
PRG04_a12a:
			jmp PRG04_83c2			; $a12a: 4c c2 83

;-------------------------------------------------------------------------------
PRG04_a12d:
			jsr PRG04_82db			; $a12d: 20 db 82
			bcs PRG04_a135			; $a130: b0 03
			jsr PRG04_831a			; $a132: 20 1a 83
PRG04_a135:
			lda $0460,x		; $a135: bd 60 04
			cmp #$a8				; $a138: c9 a8
			bcc PRG04_a14d			; $a13a: 90 11
			lda $0147			; $a13c: ad 47 01
			and #$03				; $a13f: 29 03
			beq PRG04_a14d			; $a141: f0 0a
			jsr Main_c08a			; $a143: 20 8a c0
			and #$3f				; $a146: 29 3f
			bne PRG04_a14d			; $a148: d0 03
			jsr PRG04_849e			; $a14a: 20 9e 84
PRG04_a14d:
			jsr PRG04_84ae			; $a14d: 20 ae 84
			jsr PRG04_84e6			; $a150: 20 e6 84
			lda #$16				; $a153: a9 16
			sta $a2			; $a155: 85 a2
			lda #$60				; $a157: a9 60
			sta $a1			; $a159: 85 a1
			jsr PRG04_852f			; $a15b: 20 2f 85
			beq PRG04_a17d			; $a15e: f0 1d
			bcs PRG04_a17a			; $a160: b0 18
			lda $01			; $a162: a5 01
			and #$40				; $a164: 29 40
			bne PRG04_a16b			; $a166: d0 03
			jsr PRG04_8373			; $a168: 20 73 83
PRG04_a16b:
			lda $0147			; $a16b: ad 47 01
			and #$03				; $a16e: 29 03
			beq PRG04_a179			; $a170: f0 07
			lda #$00				; $a172: a9 00
			sta $a0			; $a174: 85 a0
			jsr PRG04_82af			; $a176: 20 af 82
PRG04_a179:
			rts				; $a179: 60

;-------------------------------------------------------------------------------
PRG04_a17a:
			jmp PRG04_838c			; $a17a: 4c 8c 83

;-------------------------------------------------------------------------------
PRG04_a17d:
			lda #$01				; $a17d: a9 01
			sta $a0			; $a17f: 85 a0
			jmp PRG04_82af			; $a181: 4c af 82

;-------------------------------------------------------------------------------
PRG04_a184:
			lda $0418,x		; $a184: bd 18 04
			and #$80				; $a187: 29 80
			bne PRG04_a196			; $a189: d0 0b
			LoadAddress PRG04_a44e
			jsr PRG04_aa4b			; $a193: 20 4b aa
PRG04_a196:
			lda #$2d				; $a196: a9 2d
			jsr PRG04_ab4e			; $a198: 20 4e ab
			jsr PRG04_aca0			; $a19b: 20 a0 ac
			lda $0640,x		; $a19e: bd 40 06
			cmp #$ff				; $a1a1: c9 ff
			bne PRG04_a1a8			; $a1a3: d0 03
			jmp PRG04_abc0			; $a1a5: 4c c0 ab

;-------------------------------------------------------------------------------
PRG04_a1a8:
			lda $68			; $a1a8: a5 68
			beq PRG04_a1b7			; $a1aa: f0 0b
			and #$01				; $a1ac: 29 01
			tay				; $a1ae: a8
			lda PRG04_a532,y			; $a1af: b9 32 a5
			sta @w $0087	; $a1b2: 8d 87 00
			dec $68			; $a1b5: c6 68
PRG04_a1b7:
			jsr PRG04_841d			; $a1b7: 20 1d 84
			jsr PRG04_aaa5			; $a1ba: 20 a5 aa
			lda $0610,x		; $a1bd: bd 10 06
			and #$f0				; $a1c0: 29 f0
			cmp #$20				; $a1c2: c9 20
			bne PRG04_a1d0			; $a1c4: d0 0a
			lda $0610,x		; $a1c6: bd 10 06
			and #$0f				; $a1c9: 29 0f
			beq PRG04_a1d0			; $a1cb: f0 03
			jsr PRG04_838c			; $a1cd: 20 8c 83
PRG04_a1d0:
			jsr PRG04_a0a5			; $a1d0: 20 a5 a0
			ldy $03			; $a1d3: a4 03
			jsr PRG04_Obj_MoveSpeed			; $a1d5: 20 b8 aa
			jsr PRG04_a3c1			; $a1d8: 20 c1 a3
			lda #$17				; $a1db: a9 17
			ldy #$a0				; $a1dd: a0 a0
			jsr PRG04_80e6			; $a1df: 20 e6 80
			lda #$16				; $a1e2: a9 16
			ldy #$a0				; $a1e4: a0 a0
			jsr PRG04_80e6			; $a1e6: 20 e6 80
			LoadAddress PRG04_a454
			jsr PRG04_a973			; $a1f1: 20 73 a9
			jsr PRG04_a998			; $a1f4: 20 98 a9
			bcc PRG04_a1fc			; $a1f7: 90 03
			jsr PRG04_a202			; $a1f9: 20 02 a2
PRG04_a1fc:
			jsr PRG04_a9c8			; $a1fc: 20 c8 a9
			jmp PRG04_80a8			; $a1ff: 4c a8 80

;-------------------------------------------------------------------------------
PRG04_a202:
			.byte $bd	; $a202: bd		Suspected data
PRG04_a203:
			.byte $40, $06, $29, $0f	; $a203: 40 06 29 0f	 Data
			.byte $d0, $03, $4c, $9d	; $a207: d0 03 4c 9d	 Data
			.byte $a2, $a8, $bd, $40	; $a20b: a2 a8 bd 40	 Data
			.byte $06, $29, $f0, $d0	; $a20f: 06 29 f0 d0	 Data
			.byte $3f, $c0, $08, $d0	; $a213: 3f c0 08 d0	 Data
			.byte $19, $a9, $55, $9d	; $a217: 19 a9 55 9d	 Data
			.byte $b0, $05, $a9, $6f	; $a21b: b0 05 a9 6f	 Data
			.byte $20, $13, $87, $a9	; $a21f: 20 13 87 a9	 Data
			.byte $0f, $20, $de, $c0	; $a223: 0f 20 de c0	 Data
			.byte $a9, $28, $20, $de	; $a227: a9 28 20 de	 Data
			.byte $c0, $a9, $3c, $20	; $a22b: c0 a9 3c 20	 Data
			.byte $c6, $c0	; $a22f: c6 c0		 Data
PRG04_a231:
			.byte $b9, $e1, $a4, $20	; $a231: b9 e1 a4 20	 Data
			.byte $13, $87, $b9, $d9	; $a235: 13 87 b9 d9	 Data
			.byte $a4, $20, $ba, $ab	; $a239: a4 20 ba ab	 Data
			.byte $b9, $d1, $a4, $20	; $a23d: b9 d1 a4 20	 Data
			.byte $ba, $ab, $20, $3f	; $a241: ba ab 20 3f	 Data
			.byte $a4, $90, $0a, $a9	; $a245: a4 90 0a a9	 Data
			.byte $05, $20, $de, $c0	; $a249: 05 20 de c0	 Data
			.byte $a9, $13, $20, $de	; $a24d: a9 13 20 de	 Data
			.byte $c0	; $a251: c0			Data
PRG04_a252:
			.byte $60	; $a252: 60			Data
PRG04_a253:
			.byte $c9, $10, $d0, $46	; $a253: c9 10 d0 46	 Data
			.byte $c0, $09, $d0, $0f	; $a257: c0 09 d0 0f	 Data
			.byte $a9, $77, $9d, $b0	; $a25b: a9 77 9d b0	 Data
			.byte $05, $a9, $6f, $20	; $a25f: 05 a9 6f 20	 Data
			.byte $13, $87, $a9, $3c	; $a263: 13 87 a9 3c	 Data
			.byte $20, $c6, $c0	; $a267: 20 c6 c0		Data
PRG04_a26a:
			.byte $bd, $f8, $05, $f0	; $a26a: bd f8 05 f0	 Data
			.byte $04, $de, $f8, $05	; $a26e: 04 de f8 05	 Data
			.byte $60	; $a272: 60			Data
PRG04_a273:
			cpy #$05				; $a273: c0 05
			bne PRG04_a27c			; $a275: d0 05
			lda #$04				; $a277: a9 04
			sta $05f8,x		; $a279: 9d f8 05
PRG04_a27c:
			lda PRG04_a50d,y			; $a27c: b9 0d a5
			jsr PRG04_8713			; $a27f: 20 13 87
			lda PRG04_a504,y			; $a282: b9 04 a5
			jsr PRG04_abba			; $a285: 20 ba ab
			lda PRG04_a4fb,y			; $a288: b9 fb a4
			jsr PRG04_abba			; $a28b: 20 ba ab
			lda PRG04_a4f2,y			; $a28e: b9 f2 a4
			jsr PRG04_abba			; $a291: 20 ba ab
			lda PRG04_a4e9,y			; $a294: b9 e9 a4
			jsr PRG04_abba			; $a297: 20 ba ab
			jmp PRG04_a43f			; $a29a: 4c 3f a4

;-------------------------------------------------------------------------------
PRG04_a29d:
			.byte $bd, $28, $06, $29	; $a29d: bd 28 06 29	 Data
			.byte $0f, $d0, $03, $4c	; $a2a1: 0f d0 03 4c	 Data
			.byte $f8, $a2	; $a2a5: f8 a2		 Data
PRG04_a2a7:
			tay				; $a2a7: a8
			lda $0628,x		; $a2a8: bd 28 06
			and #$f0				; $a2ab: 29 f0
			bne PRG04_a2f8			; $a2ad: d0 49
			cpy #$01				; $a2af: c0 01
			beq PRG04_a2c1			; $a2b1: f0 0e
			cpy #$05				; $a2b3: c0 05
			bne PRG04_a2c6			; $a2b5: d0 0f
			lda #$77				; $a2b7: a9 77
			sta $05b0,x		; $a2b9: 9d b0 05
			lda #$6f				; $a2bc: a9 6f
			jsr PRG04_8713			; $a2be: 20 13 87
PRG04_a2c1:
			lda #$04				; $a2c1: a9 04
			jsr Main_c0de			; $a2c3: 20 de c0
PRG04_a2c6:
			lda PRG04_a4cc,y			; $a2c6: b9 cc a4
			jsr PRG04_8713			; $a2c9: 20 13 87
			lda PRG04_a4c7,y			; $a2cc: b9 c7 a4
			jsr PRG04_abba			; $a2cf: 20 ba ab
			lda PRG04_a4c2,y			; $a2d2: b9 c2 a4
			jsr PRG04_abba			; $a2d5: 20 ba ab
			lda PRG04_a4bd,y			; $a2d8: b9 bd a4
			jsr PRG04_abba			; $a2db: 20 ba ab
			lda PRG04_a4b8,y			; $a2de: b9 b8 a4
			jsr PRG04_abba			; $a2e1: 20 ba ab
			lda PRG04_a4b3,y			; $a2e4: b9 b3 a4
			jsr PRG04_abba			; $a2e7: 20 ba ab
			cpy #$03				; $a2ea: c0 03
			bne PRG04_a2f5			; $a2ec: d0 07
			lda #$19				; $a2ee: a9 19
			ldy #$c0				; $a2f0: a0 c0
			jsr PRG04_80e6			; $a2f2: 20 e6 80
PRG04_a2f5:
			jmp PRG04_a430			; $a2f5: 4c 30 a4

;-------------------------------------------------------------------------------
PRG04_a2f8:
			lda $0610,x		; $a2f8: bd 10 06
			and #$0f				; $a2fb: 29 0f
			bne PRG04_a302			; $a2fd: d0 03
			jmp PRG04_a3c0			; $a2ff: 4c c0 a3

;-------------------------------------------------------------------------------
PRG04_a302:
			tay				; $a302: a8
			lda $0610,x		; $a303: bd 10 06
			and #$f0				; $a306: 29 f0
			bne PRG04_a343			; $a308: d0 39
			cpy #$09				; $a30a: c0 09
			bne PRG04_a322			; $a30c: d0 14
			lda #$55				; $a30e: a9 55
			sta $05b0,x		; $a310: 9d b0 05
			lda #$6f				; $a313: a9 6f
			jsr PRG04_8713			; $a315: 20 13 87
			lda #$2b				; $a318: a9 2b
			jsr Main_c0de			; $a31a: 20 de c0
			lda #$0f				; $a31d: a9 0f
			jsr Main_c0de			; $a31f: 20 de c0
PRG04_a322:
			lda PRG04_a487,y			; $a322: b9 87 a4
			jsr PRG04_8713			; $a325: 20 13 87
			lda PRG04_a47e,y			; $a328: b9 7e a4
			jsr Main_c0de			; $a32b: 20 de c0
			lda PRG04_a475,y			; $a32e: b9 75 a4
			jsr Main_c0de			; $a331: 20 de c0
			jsr PRG04_a421			; $a334: 20 21 a4
			bcc PRG04_a343			; $a337: 90 0a
			lda #$13				; $a339: a9 13
			jsr Main_c0de			; $a33b: 20 de c0
			lda #$05				; $a33e: a9 05
			jsr Main_c0de			; $a340: 20 de c0
PRG04_a343:
			cmp #$10				; $a343: c9 10
			bne PRG04_a385			; $a345: d0 3e
			cpy #$07				; $a347: c0 07
			bne PRG04_a355			; $a349: d0 0a
			lda #$77				; $a34b: a9 77
			sta $05b0,x		; $a34d: 9d b0 05
			lda #$6f				; $a350: a9 6f
			jsr PRG04_8713			; $a352: 20 13 87
PRG04_a355:
			lda PRG04_a4ac,y			; $a355: b9 ac a4
			jsr PRG04_8713			; $a358: 20 13 87
			lda PRG04_a4a5,y			; $a35b: b9 a5 a4
			jsr PRG04_abba			; $a35e: 20 ba ab
			lda PRG04_a49e,y			; $a361: b9 9e a4
			jsr PRG04_abba			; $a364: 20 ba ab
			lda PRG04_a497,y			; $a367: b9 97 a4
			jsr PRG04_abba			; $a36a: 20 ba ab
			lda PRG04_a490,y			; $a36d: b9 90 a4
			jsr PRG04_abba			; $a370: 20 ba ab
			cpy #$05				; $a373: c0 05
			beq PRG04_a37b			; $a375: f0 04
			cpy #$02				; $a377: c0 02
			bne PRG04_a382			; $a379: d0 07
PRG04_a37b:
			lda #$18				; $a37b: a9 18
			ldy #$c0				; $a37d: a0 c0
			jsr PRG04_80e6			; $a37f: 20 e6 80
PRG04_a382:
			jmp PRG04_a421			; $a382: 4c 21 a4

;-------------------------------------------------------------------------------
PRG04_a385:
			cmp #$20				; $a385: c9 20
			bne PRG04_a3c0			; $a387: d0 37
			cpy #$09				; $a389: c0 09
			bne PRG04_a397			; $a38b: d0 0a
			lda #$77				; $a38d: a9 77
			sta $05b0,x		; $a38f: 9d b0 05
			lda #$6f				; $a392: a9 6f
			jsr PRG04_8713			; $a394: 20 13 87
PRG04_a397:
			lda PRG04_a528,y			; $a397: b9 28 a5
			jsr PRG04_8713			; $a39a: 20 13 87
			lda PRG04_a51f,y			; $a39d: b9 1f a5
			jsr PRG04_abba			; $a3a0: 20 ba ab
			lda PRG04_a516,y			; $a3a3: b9 16 a5
			jsr PRG04_abba			; $a3a6: 20 ba ab
			lda #$19				; $a3a9: a9 19
			ldy #$c0				; $a3ab: a0 c0
			jsr PRG04_80e6			; $a3ad: 20 e6 80
			jsr PRG04_a421			; $a3b0: 20 21 a4
			bcc PRG04_a3bf			; $a3b3: 90 0a
			lda #$05				; $a3b5: a9 05
			jsr Main_c0de			; $a3b7: 20 de c0
			lda #$13				; $a3ba: a9 13
			jsr Main_c0de			; $a3bc: 20 de c0
PRG04_a3bf:
			rts				; $a3bf: 60

;-------------------------------------------------------------------------------
PRG04_a3c0:
			rts				; $a3c0: 60

;-------------------------------------------------------------------------------
PRG04_a3c1:
			lda $0640,x		; $a3c1: bd 40 06
			and #$0f				; $a3c4: 29 0f
			beq PRG04_a3c9			; $a3c6: f0 01
			rts				; $a3c8: 60

;-------------------------------------------------------------------------------
PRG04_a3c9:
			lda $0628,x		; $a3c9: bd 28 06
			ora $0610,x		; $a3cc: 1d 10 06
			and #$0f				; $a3cf: 29 0f
			bne PRG04_a3e9			; $a3d1: d0 16
			lda $01			; $a3d3: a5 01
			and #$01				; $a3d5: 29 01
			beq PRG04_a3de			; $a3d7: f0 05
			lda #$17				; $a3d9: a9 17
			sta $0610,x		; $a3db: 9d 10 06
PRG04_a3de:
			lda $01			; $a3de: a5 01
			and #$20				; $a3e0: 29 20
			beq PRG04_a3e9			; $a3e2: f0 05
			lda #$29				; $a3e4: a9 29
			sta $0610,x		; $a3e6: 9d 10 06
PRG04_a3e9:
			lda $01			; $a3e9: a5 01
			and #$04				; $a3eb: 29 04
			beq PRG04_a3f4			; $a3ed: f0 05
			lda #$09				; $a3ef: a9 09
			sta $0610,x		; $a3f1: 9d 10 06
PRG04_a3f4:
			lda $0628,x		; $a3f4: bd 28 06
			ora $0610,x		; $a3f7: 1d 10 06
			and #$0f				; $a3fa: 29 0f
			bne PRG04_a409			; $a3fc: d0 0b
			lda $01			; $a3fe: a5 01
			and #$02				; $a400: 29 02
			beq PRG04_a409			; $a402: f0 05
			lda #$05				; $a404: a9 05
			sta $0628,x		; $a406: 9d 28 06
PRG04_a409:
			lda $0628,x		; $a409: bd 28 06
			ora $0610,x		; $a40c: 1d 10 06
			and #$0f				; $a40f: 29 0f
			bne PRG04_a414			; $a411: d0 01
			rts				; $a413: 60

;-------------------------------------------------------------------------------
PRG04_a414:
			rts				; $a414: 60

;-------------------------------------------------------------------------------
PRG04_a415:
			lda #$30				; $a415: a9 30
			sta $0508,x		; $a417: 9d 08 05
			lda #$c0				; $a41a: a9 c0
			sta $0520,x		; $a41c: 9d 20 05
			sec				; $a41f: 38
			rts				; $a420: 60

;-------------------------------------------------------------------------------
PRG04_a421:
			dec $0610,x		; $a421: de 10 06
			lda $0610,x		; $a424: bd 10 06
			and #$0f				; $a427: 29 0f
			bne PRG04_a42e			; $a429: d0 03
			jmp PRG04_a415			; $a42b: 4c 15 a4

;-------------------------------------------------------------------------------
PRG04_a42e:
			clc				; $a42e: 18
			rts				; $a42f: 60

;-------------------------------------------------------------------------------
PRG04_a430:
			dec $0628,x		; $a430: de 28 06
			lda $0628,x		; $a433: bd 28 06
			and #$0f				; $a436: 29 0f
			bne PRG04_a43d			; $a438: d0 03
			jmp PRG04_a415			; $a43a: 4c 15 a4

;-------------------------------------------------------------------------------
PRG04_a43d:
			clc				; $a43d: 18
			rts				; $a43e: 60

;-------------------------------------------------------------------------------
PRG04_a43f:
			dec $0640,x		; $a43f: de 40 06
			lda $0640,x		; $a442: bd 40 06
			and #$0f				; $a445: 29 0f
			bne PRG04_a44c			; $a447: d0 03
			jmp PRG04_a415			; $a449: 4c 15 a4

;-------------------------------------------------------------------------------
PRG04_a44c:
			clc				; $a44c: 18
			rts				; $a44d: 60

;-------------------------------------------------------------------------------
PRG04_a44e:
			.byte $c0, $30 ; $a44e
			.byte $02 ; $a450
			.byte $0a ; $a451
			.byte $c8, $97 ; $a452
PRG04_a454:
			.byte $5c
			.byte $a4, $66 ; $a455
			.byte $a4, $5c ; $a457
			.byte $a4, $6e ; $a459
			.byte $a4, $81 ; $a45b
			.byte $84, $26 ; $a45d
			.byte $00 ; $a45f
			.byte $80, $86 ; $a460
			.byte $85, $93 ; $a462
			.byte $27, $00 ; $a464
			.byte $82, $84 ; $a466
			.byte $00 ; $a468
			.byte $80, $87 ; $a469
			.byte $85, $a9 ; $a46b
			.byte $00 ; $a46d
			.byte $83, $84 ; $a46e
			.byte $00 ; $a470
			.byte $80, $88 ; $a471
			.byte $85, $a9 ; $a473
PRG04_a475:
			.byte $00, $06, $09, $0a	; $a475: 00 06 09 0a	 Data
			.byte $09, $0b, $09, $0a	; $a479: 09 0b 09 0a	 Data
			.byte $09	; $a47d: 09			Data
PRG04_a47e:
			.byte $0b, $00, $28, $26	; $a47e: 0b 00 28 26	 Data
			.byte $28, $26, $28, $26	; $a482: 28 26 28 26	 Data
			.byte $28	; $a486: 28			Data
PRG04_a487:
			.byte $26, $5f, $62, $62	; $a487: 26 5f 62 62	 Data
			.byte $62, $62, $62, $62	; $a48b: 62 62 62 62	 Data
			.byte $62	; $a48f: 62			Data
PRG04_a490:
			.byte $5e, $80, $00, $2b	; $a490: 5e 80 00 2b	 Data
			.byte $80, $00, $2b	; $a494: 80 00 2b		Data
PRG04_a497:
			.byte $00, $06, $11, $0a	; $a497: 00 06 11 0a	 Data
			.byte $06, $12, $0b	; $a49b: 06 12 0b		Data
PRG04_a49e:
			.byte $06, $80, $05, $0f	; $a49e: 06 80 05 0f	 Data
			.byte $80, $05, $0f	; $a4a2: 80 05 0f		Data
PRG04_a4a5:
			.byte $05, $80, $13, $26	; $a4a5: 05 80 13 26	 Data
			.byte $80, $13, $26	; $a4a9: 80 13 26		Data
PRG04_a4ac:
			.byte $13, $60, $5f, $5e	; $a4ac: 13 60 5f 5e	 Data
			.byte $60, $5f, $5e	; $a4b0: 60 5f 5e		Data
PRG04_a4b3:
			.byte $61, $01, $15, $0c	; $a4b3: 61 01 15 0c	 Data
			.byte $15	; $a4b7: 15			Data
PRG04_a4b8:
			.byte $01, $00, $80, $80	; $a4b8: 01 00 80 80	 Data
			.byte $2b	; $a4bc: 2b			Data
PRG04_a4bd:
			.byte $00, $06, $0a, $80	; $a4bd: 00 06 0a 80	 Data
			.byte $0a	; $a4c1: 0a			Data
PRG04_a4c2:
			.byte $06, $05, $80, $1f	; $a4c2: 06 05 80 1f	 Data
			.byte $0f	; $a4c6: 0f			Data
PRG04_a4c7:
			.byte $05, $13, $80, $10	; $a4c7: 05 13 80 10	 Data
			.byte $26	; $a4cb: 26			Data
PRG04_a4cc:
			.byte $13, $65, $64, $63	; $a4cc: 13 65 64 63	 Data
			.byte $5e	; $a4d0: 5e			Data
PRG04_a4d1:
			.byte $26, $00, $2b, $1c	; $a4d1: 26 00 2b 1c	 Data
			.byte $21, $22, $21, $1c	; $a4d5: 21 22 21 1c	 Data
PRG04_a4d9:
			.byte $2b, $06, $09, $80	; $a4d9: 2b 06 09 80	 Data
			.byte $80, $80, $80, $19	; $a4dd: 80 80 80 19	 Data
PRG04_a4e1:
			.byte $09, $5f, $69, $00	; $a4e1: 09 5f 69 00	 Data
			.byte $67, $68, $00, $66	; $a4e5: 67 68 00 66	 Data
PRG04_a4e9:
			.byte $5e, $00, $2b, $1c	; $a4e9: 5e 00 2b 1c	 Data
			.byte $21, $0e, $21, $1c	; $a4ed: 21 0e 21 1c	 Data
			.byte $2b	; $a4f1: 2b			Data
PRG04_a4f2:
			.byte $16, $06, $09, $80	; $a4f2: 16 06 09 80	 Data
			.byte $0f, $0d, $80, $19	; $a4f6: 0f 0d 80 19	 Data
			.byte $09	; $a4fa: 09			Data
PRG04_a4fb:
			.byte $14, $05, $80, $80	; $a4fb: 14 05 80 80	 Data
			.byte $01, $0c, $80, $80	; $a4ff: 01 0c 80 80	 Data
			.byte $0f	; $a503: 0f			Data
PRG04_a504:
			.byte $80, $13, $80, $80	; $a504: 80 13 80 80	 Data
			.byte $19, $0c, $80, $80	; $a508: 19 0c 80 80	 Data
			.byte $28	; $a50c: 28			Data
PRG04_a50d:
			.byte $80, $5f, $69, $00	; $a50d: 80 5f 69 00	 Data
			.byte $6d, $6c, $00, $66	; $a511: 6d 6c 00 66	 Data
			.byte $6b	; $a515: 6b			Data
PRG04_a516:
			.byte $6a, $00, $18, $16	; $a516: 6a 00 18 16	 Data
			.byte $17, $16, $18, $16	; $a51a: 17 16 18 16	 Data
			.byte $17	; $a51e: 17			Data
PRG04_a51f:
			.byte $16, $06, $80, $80	; $a51f: 16 06 80 80	 Data
			.byte $80, $80, $80, $80	; $a523: 80 80 80 80	 Data
			.byte $80	; $a527: 80			Data
PRG04_a528:
			.byte $14, $61, $00, $6e	; $a528: 14 61 00 6e	 Data
			.byte $00, $6e, $00, $6e	; $a52c: 00 6e 00 6e	 Data
			.byte $00, $6a	; $a530: 00 6a		 Data
PRG04_a532:
			.byte $16, $04, $01, $22	; $a532: 16 04 01 22	 Data
			.byte $58, $00, $03, $a1	; $a536: 58 00 03 a1	 Data
			.byte $f7, $02, $a1, $f8	; $a53a: f7 02 a1 f8	 Data
			.byte $01, $21, $98, $01	; $a53e: 01 21 98 01	 Data
			.byte $21, $9c, $00, $01	; $a542: 21 9c 00 01	 Data
			.byte $22, $58, $01, $21	; $a546: 22 58 01 21	 Data
			.byte $5a, $00, $02, $a2	; $a54a: 5a 00 02 a2	 Data
			.byte $38, $00, $01, $21	; $a54e: 38 00 01 21	 Data
			.byte $78, $01, $21, $7b	; $a552: 78 01 21 7b	 Data
			.byte $81, $23, $d6, $a5	; $a556: 81 23 d6 a5	 Data
			.byte $00, $02, $a1, $59	; $a55a: 00 02 a1 59	 Data
			.byte $00, $01, $21, $5b	; $a55e: 00 01 21 5b	 Data
			.byte $00, $02, $21, $d7	; $a562: 00 02 21 d7	 Data
			.byte $01, $21, $5a, $00	; $a566: 01 21 5a 00	 Data
			.byte $02, $21, $97, $00	; $a56a: 02 21 97 00	 Data
			.byte $02, $a1, $b7, $00	; $a56e: 02 a1 b7 00	 Data
			.byte $01, $21, $9c, $01	; $a572: 01 21 9c 01	 Data
			.byte $21, $98, $01, $21	; $a576: 21 98 01 21	 Data
			.byte $78, $03, $a1, $97	; $a57a: 78 03 a1 97	 Data
			.byte $04, $a1, $f8, $03	; $a57e: 04 a1 f8 03	 Data
			.byte $a1, $f7, $81	; $a582: a1 f7 81		Data
PRG04_a585:
			.byte $23, $d6, $a5, $00	; $a585: 23 d6 a5 00	 Data
			.byte $01, $21, $5a, $01	; $a589: 01 21 5a 01	 Data
			.byte $21, $7b, $01, $21	; $a58d: 21 7b 01 21	 Data
			.byte $b8, $00, $01, $21	; $a591: b8 00 01 21	 Data
			.byte $59, $00, $01, $21	; $a595: 59 00 01 21	 Data
			.byte $98, $01, $21, $9c	; $a599: 98 01 21 9c	 Data
			.byte $00, $81, $23, $d6	; $a59d: 00 81 23 d6	 Data
			.byte $a6, $00, $81, $23	; $a5a1: a6 00 81 23	 Data
			.byte $d6, $65, $00, $01	; $a5a5: d6 65 00 01	 Data
			.byte $21, $7b, $00, $01	; $a5a9: 21 7b 00 01	 Data
			.byte $21, $5a, $03, $a1	; $a5ad: 21 5a 03 a1	 Data
			.byte $97, $00, $02, $21	; $a5b1: 97 00 02 21	 Data
			.byte $76, $03, $21, $96	; $a5b5: 76 03 21 96	 Data
			.byte $05, $21, $b6, $06	; $a5b9: 05 21 b6 06	 Data
			.byte $21, $d6, $02, $21	; $a5bd: 21 d6 02 21	 Data
			.byte $fb, $00, $02, $22	; $a5c1: fb 00 02 22	 Data
			.byte $1b, $00, $01, $21	; $a5c5: 1b 00 01 21	 Data
			.byte $b6, $01, $21, $d6	; $a5c9: b6 01 21 d6	 Data
			.byte $01, $21, $fc, $00	; $a5cd: 01 21 fc 00	 Data
			.byte $01, $20, $d7, $02	; $a5d1: 01 20 d7 02	 Data
			.byte $20, $f6, $03, $21	; $a5d5: 20 f6 03 21	 Data
			.byte $16, $04, $21, $36	; $a5d9: 16 04 21 36	 Data
			.byte $05, $21, $56, $04	; $a5dd: 05 21 56 04	 Data
			.byte $21, $78, $03, $21	; $a5e1: 21 78 03 21	 Data
			.byte $99, $01, $21, $bb	; $a5e5: 99 01 21 bb	 Data
			.byte $01, $21, $dc, $00	; $a5e9: 01 21 dc 00	 Data
			.byte $01, $22, $30, $01	; $a5ed: 01 22 30 01	 Data
			.byte $22, $71, $00, $05	; $a5f1: 22 71 00 05	 Data
			.byte $21, $d1, $01, $21	; $a5f5: 21 d1 01 21	 Data
			.byte $f0, $01, $22, $34	; $a5f9: f0 01 22 34	 Data
			.byte $01, $22, $50, $03	; $a5fd: 01 22 50 03	 Data
			.byte $22, $71, $00	; $a601: 22 71 00		Data
PRG04_a604:
			.byte $01, $22, $30, $01	; $a604: 01 22 30 01	 Data
			.byte $22	; $a608: 22			Data
PRG04_a609:
			.byte $53, $02, $22, $71	; $a609: 53 02 22 71	 Data
			.byte $00, $01, $21, $f0	; $a60d: 00 01 21 f0	 Data
			.byte $01, $22	; $a611: 01 22		 Data
			.byte $50, $00 ; $a613
			.byte $01, $22 ; $a615
			.byte $12 ; $a617
			.byte $03, $22 ; $a618
			.byte $30, $01 ; $a61a
			.byte $22 ; $a61c
			.byte $51, $01 ; $a61d
			.byte $22 ; $a61f
			.byte $71, $00 ; $a620
			.byte $03, $21 ; $a622
			.byte $93, $01 ; $a624
			.byte $21, $b5 ; $a626
			.byte $01, $21 ; $a628
			.byte $f0, $01 ; $a62a
			.byte $22 ; $a62c
			.byte $34, $01 ; $a62d
			.byte $22 ; $a62f
			.byte $54, $01 ; $a630
			.byte $22 ; $a632
			.byte $73, $00 ; $a633
			.byte $03, $21 ; $a635
			.byte $b2 ; $a637
			.byte $01, $22 ; $a638
			.byte $30, $01 ; $a63a
			.byte $22 ; $a63c
			.byte $53, $02 ; $a63d
			.byte $22 ; $a63f
			.byte $71, $00 ; $a640
			.byte $05, $21 ; $a642
			.byte $d1, $01 ; $a644
			.byte $21, $f0 ; $a646
			.byte $01, $22 ; $a648
			.byte $50, $00 ; $a64a
			.byte $01, $22 ; $a64c
			.byte $36, $00 ; $a64e
			.byte $02 ; $a650
			.byte $22 ; $a651
			.byte $1b, $00, $02 ; $a652
			.byte $21, $94 ; $a655
			.byte $01, $21 ; $a657
			.byte $b4, $00 ; $a659
			.byte $01, $22 ; $a65b
			.byte $5a ; $a65d
			.byte $01, $22 ; $a65e
			.byte $79, $00, $03 ; $a660
			.byte $21, $b6 ; $a663
			.byte $04, $21 ; $a665
			.byte $d6, $00 ; $a667
			.byte $01, $21 ; $a669
			.byte $b8 ; $a66b
			.byte $01, $22 ; $a66c
			.byte $18 ; $a66e
			.byte $00 ; $a66f
			.byte $01, $21 ; $a670
			.byte $d8 ; $a672
			.byte $00 ; $a673
			.byte $04, $21 ; $a674
			.byte $f5, $00 ; $a676
			.byte $02 ; $a678
			.byte $a1, $f8 ; $a679
			.byte $00 ; $a67b
			.byte $01, $22 ; $a67c
			.byte $56, $00 ; $a67e
			.byte $01, $21 ; $a680
			.byte $96, $00 ; $a682
			.byte $02 ; $a684
			.byte $a1, $96 ; $a685
			.byte $81, $23 ; $a687
			.byte $de, $ed, $00 ; $a689
			.byte $01, $21 ; $a68c
			.byte $76, $01 ; $a68e
			.byte $21, $97 ; $a690
			.byte $81, $23 ; $a692
			.byte $de, $ed, $00 ; $a694
			.byte $01, $21 ; $a697
			.byte $95, $81 ; $a699
			.byte $23, $de ; $a69b
			.byte $ed, $00, $03 ; $a69d
			.byte $a1, $76 ; $a6a0
			.byte $01, $21 ; $a6a2
			.byte $97, $81 ; $a6a4
			.byte $23, $de ; $a6a6
			.byte $ed, $00, $02 ; $a6a8
			.byte $21, $95 ; $a6ab
			.byte $81, $23 ; $a6ad
			.byte $de, $ee, $00 ; $a6af
			.byte $81, $23 ; $a6b2
			.byte $de, $ee, $00 ; $a6b4
			.byte $02 ; $a6b7
			.byte $21, $95 ; $a6b8
			.byte $81, $23 ; $a6ba
			.byte $de, $ee, $01 ; $a6bc
			.byte $22 ; $a6bf
			.byte $56, $00 ; $a6c0
			.byte $02 ; $a6c2
			.byte $22 ; $a6c3
			.byte $35, $01 ; $a6c4
			.byte $22 ; $a6c6
			.byte $56, $01 ; $a6c7
			.byte $21, $76 ; $a6c9
			.byte $01, $21 ; $a6cb
			.byte $97, $01 ; $a6cd
			.byte $21, $b6 ; $a6cf
			.byte $81, $23 ; $a6d1
			.byte $de, $ed, $00 ; $a6d3
			.byte $02 ; $a6d6
			.byte $21, $f5 ; $a6d7
			.byte $02 ; $a6d9
			.byte $22 ; $a6da
			.byte $15, $81 ; $a6db
			.byte $23, $de ; $a6dd
			.byte $ee, $00, $02 ; $a6df
			.byte $22 ; $a6e2
			.byte $35, $01 ; $a6e3
			.byte $22 ; $a6e5
			.byte $56, $00 ; $a6e6
			.byte $01, $22 ; $a6e8
			.byte $36, $00 ; $a6ea
			.byte $04, $a1 ; $a6ec
			.byte $b6, $00 ; $a6ee
			.byte $02 ; $a6f0
			.byte $21, $95 ; $a6f1
			.byte $01, $21 ; $a6f3
			.byte $b6, $01 ; $a6f5
			.byte $22 ; $a6f7
			.byte $56, $81 ; $a6f8
			.byte $23, $de ; $a6fa
			.byte $ed, $00, $01 ; $a6fc
			.byte $21, $97 ; $a6ff
			.byte $01, $21 ; $a701
			.byte $76, $00 ; $a703
			.byte $02 ; $a705
			.byte $a2, $39 ; $a706
			.byte $01, $22 ; $a708
			.byte $5e, $00, $04 ; $a70a
			.byte $22 ; $a70d
			.byte $7a ; $a70e
			.byte $02 ; $a70f
			.byte $22 ; $a710
			.byte $9b ; $a711
			.byte $00 ; $a712
			.byte $02 ; $a713
			.byte $21, $95 ; $a714
			.byte $02 ; $a716
			.byte $21, $76 ; $a717
			.byte $01, $21 ; $a719
			.byte $97, $81 ; $a71b
			.byte $23, $de ; $a71d
			.byte $ee, $00, $01 ; $a71f
			.byte $21, $59 ; $a722
			.byte $00 ; $a724
			.byte $02 ; $a725
			.byte $21, $57 ; $a726
			.byte $01, $21 ; $a728
			.byte $b6, $01 ; $a72a
			.byte $22 ; $a72c
			.byte $56, $01 ; $a72d
			.byte $22 ; $a72f
			.byte $5d, $02, $a1 ; $a730
			.byte $f7, $07 ; $a733
			.byte $a1, $95 ; $a735
			.byte $04, $a1 ; $a737
			.byte $f6, $81 ; $a739
			.byte $23, $d6 ; $a73b
			.byte $f5, $81 ; $a73d
			.byte $23, $dd ; $a73f
			.byte $51, $81 ; $a741
			.byte $23, $de ; $a743
			.byte $9e, $00, $02 ; $a745
			.byte $22 ; $a748
			.byte $36, $00 ; $a749
			.byte $01, $21 ; $a74b
			.byte $d6, $01 ; $a74d
			.byte $21, $59 ; $a74f
			.byte $02 ; $a751
			.byte $a1, $fb ; $a752
			.byte $01, $21 ; $a754
			.byte $9b ; $a756
			.byte $01, $21 ; $a757
			.byte $76, $02 ; $a759
			.byte $a2, $1e ; $a75b
			.byte $81, $23 ; $a75d
			.byte $d6, $c5 ; $a75f
			.byte $81, $23 ; $a761
			.byte $dd, $55, $81 ; $a763
			.byte $23, $de ; $a766
			.byte $ee, $00, $03 ; $a768
			.byte $21, $f4 ; $a76b
			.byte $01, $22 ; $a76d
			.byte $3a ; $a76f
			.byte $01, $22 ; $a770
			.byte $19, $00, $03 ; $a772
			.byte $a2, $1d ; $a775
			.byte $01, $22 ; $a777
			.byte $3c, $00, $02 ; $a779
			.byte $a2, $3e ; $a77c
			.byte $02 ; $a77e
			.byte $a2, $3d ; $a77f
			.byte $00 ; $a781
			.byte $03, $22 ; $a782
			.byte $7d, $00, $01 ; $a784
			.byte $21, $f6 ; $a787
			.byte $00 ; $a789
			.byte $02 ; $a78a
			.byte $a2, $13 ; $a78b
			.byte $00 ; $a78d
			.byte $02 ; $a78e
			.byte $22 ; $a78f
			.byte $14, $00 ; $a790
			.byte $03, $22 ; $a792
			.byte $34, $04 ; $a794
			.byte $22 ; $a796
			.byte $54, $03 ; $a797
			.byte $22 ; $a799
			.byte $75, $00 ; $a79a
			.byte $03, $21 ; $a79c
			.byte $f4, $00 ; $a79e
			.byte $04, $21 ; $a7a0
			.byte $b5, $04 ; $a7a2
			.byte $21, $d5 ; $a7a4
			.byte $04, $21 ; $a7a6
			.byte $f6, $02 ; $a7a8
			.byte $22 ; $a7aa
			.byte $19, $01, $22 ; $a7ab
			.byte $3a ; $a7ae
			.byte $00 ; $a7af
			.byte $03, $21 ; $a7b0
			.byte $f4, $06 ; $a7b2
			.byte $22 ; $a7b4
			.byte $14, $02 ; $a7b5
			.byte $22 ; $a7b7
			.byte $34, $01 ; $a7b8
			.byte $22 ; $a7ba
			.byte $3a ; $a7bb
			.byte $00 ; $a7bc
			.byte $01, $22 ; $a7bd
			.byte $37, $02 ; $a7bf
			.byte $a2, $54 ; $a7c1
			.byte $00 ; $a7c3
			.byte $02 ; $a7c4
			.byte $22 ; $a7c5
			.byte $34, $00 ; $a7c6
			.byte $03, $a1 ; $a7c8
			.byte $f4, $00 ; $a7ca
			.byte $03, $a1 ; $a7cc
			.byte $f5, $00 ; $a7ce
			.byte $01, $21 ; $a7d0
			.byte $f7, $00 ; $a7d2
			.byte $01, $22 ; $a7d4
			.byte $54, $00 ; $a7d6
			.byte $01, $22 ; $a7d8
			.byte $74, $00 ; $a7da
			.byte $01, $21 ; $a7dc
			.byte $b5, $03 ; $a7de
			.byte $21, $95 ; $a7e0
			.byte $02 ; $a7e2
			.byte $a1, $b4 ; $a7e3
			.byte $00 ; $a7e5
			.byte $01, $21 ; $a7e6
			.byte $b6, $02 ; $a7e8
			.byte $21, $d5 ; $a7ea
			.byte $00 ; $a7ec
			.byte $01, $21 ; $a7ed
			.byte $39, $00, $02 ; $a7ef
			.byte $a1, $3c ; $a7f2
			.byte $00 ; $a7f4
			.byte $01, $21 ; $a7f5
			.byte $3b, $81, $23 ; $a7f7
			.byte $d6, $55 ; $a7fa
			.byte $00 ; $a7fc
			.byte $02 ; $a7fd
			.byte $21, $39 ; $a7fe
			.byte $00 ; $a800
			.byte $02 ; $a801
			.byte $a1, $57 ; $a802
			.byte $81, $23 ; $a804
			.byte $d6, $65 ; $a806
			.byte $00 ; $a808
			.byte $03, $a1 ; $a809
			.byte $58 ; $a80b
			.byte $00 ; $a80c
			.byte $02 ; $a80d
			.byte $a2, $58 ; $a80e
			.byte $00 ; $a810
			.byte $03, $a1 ; $a811
			.byte $b6, $00 ; $a813
			.byte $02 ; $a815
			.byte $21, $d6 ; $a816
			.byte $03, $21 ; $a818
			.byte $f6, $00 ; $a81a
			.byte $02 ; $a81c
			.byte $21, $d5 ; $a81d
			.byte $00 ; $a81f
			.byte $01, $21 ; $a820
			.byte $77, $00 ; $a822
			.byte $03, $a1 ; $a824
			.byte $b6, $03 ; $a826
			.byte $a1, $b7 ; $a828
			.byte $01, $21 ; $a82a
			.byte $97, $01 ; $a82c
			.byte $21, $78 ; $a82e
			.byte $00 ; $a830
			.byte $02 ; $a831
			.byte $21, $79 ; $a832
			.byte $01, $21 ; $a834
			.byte $9b ; $a836
			.byte $01, $21 ; $a837
			.byte $bc, $00, $02 ; $a839
			.byte $21, $b4 ; $a83c
			.byte $02 ; $a83e
			.byte $21, $d4 ; $a83f
			.byte $01, $21 ; $a841
			.byte $f6, $00 ; $a843
			.byte $03, $a1 ; $a845
			.byte $b6, $00 ; $a847
			.byte $03, $a1 ; $a849
			.byte $b7, $00 ; $a84b
			.byte $02 ; $a84d
			.byte $a2, $38 ; $a84e
			.byte $00 ; $a850
			.byte $01, $21 ; $a851
			.byte $f6, $02 ; $a853
			.byte $22 ; $a855
			.byte $16, $00 ; $a856
			.byte $01, $22 ; $a858
			.byte $19, $03, $a2 ; $a85a
			.byte $18 ; $a85d
			.byte $01, $21 ; $a85e
			.byte $79, $01, $21 ; $a860
			.byte $9b ; $a863
			.byte $01, $21 ; $a864
			.byte $bc, $00, $01 ; $a866
			.byte $21, $79 ; $a869
			.byte $03, $a1 ; $a86b
			.byte $98 ; $a86d
			.byte $00 ; $a86e
			.byte $02 ; $a86f
			.byte $21, $7c ; $a870
			.byte $02 ; $a872
			.byte $21, $9c ; $a873
			.byte $00 ; $a875
			.byte $01, $21 ; $a876
			.byte $7a ; $a878
			.byte $02 ; $a879
			.byte $21, $99 ; $a87a
			.byte $01, $21 ; $a87c
			.byte $b9, $00, $01 ; $a87e
			.byte $21, $7b ; $a881
			.byte $00 ; $a883
			.byte $01, $21 ; $a884
			.byte $f6, $01 ; $a886
			.byte $21, $78 ; $a888
			.byte $04, $21 ; $a88a
			.byte $97, $00 ; $a88c
			.byte $02 ; $a88e
			.byte $21, $b6 ; $a88f
			.byte $01, $21 ; $a891
			.byte $d6, $00 ; $a893
			.byte $01, $a1 ; $a895
			.byte $7a ; $a897
			.byte $02 ; $a898
			.byte $a1, $79 ; $a899
			.byte $02 ; $a89b
			.byte $a2, $58 ; $a89c
			.byte $00 ; $a89e
			.byte $01, $21 ; $a89f
			.byte $7c, $02, $21 ; $a8a1
			.byte $9c, $02, $21 ; $a8a4
			.byte $b7, $03 ; $a8a7
			.byte $21, $f6 ; $a8a9
			.byte $04, $22 ; $a8ab
			.byte $16, $00 ; $a8ad
			.byte $01, $21 ; $a8af
			.byte $f6, $00 ; $a8b1
			.byte $02 ; $a8b3
			.byte $21, $b4 ; $a8b4
			.byte $02 ; $a8b6
			.byte $21, $d4 ; $a8b7
			.byte $00 ; $a8b9
			.byte $00 ; $a8ba


PRG04_a8bb:
			lda $0418,x		; $a8bb: bd 18 04
			and #$80				; $a8be: 29 80
			bne PRG04_a8cd			; $a8c0: d0 0b
			LoadAddress PRG04_a943
			jsr PRG04_aa4b			; $a8ca: 20 4b aa
PRG04_a8cd:
			lda #$2d				; $a8cd: a9 2d
			jsr PRG04_ab4e			; $a8cf: 20 4e ab
			jsr PRG04_aca0			; $a8d2: 20 a0 ac
			lda $0640,x		; $a8d5: bd 40 06
			cmp #$ff				; $a8d8: c9 ff
			bne PRG04_a8df			; $a8da: d0 03
			jmp PRG04_abc0			; $a8dc: 4c c0 ab

;-------------------------------------------------------------------------------
PRG04_a8df:
			jsr PRG04_841d			; $a8df: 20 1d 84
			jsr PRG04_aaa5			; $a8e2: 20 a5 aa
			lda $05f8			; $a8e5: ad f8 05
			bmi PRG04_a8f0			; $a8e8: 30 06
			jsr PRG04_a12d			; $a8ea: 20 2d a1
			jsr PRG04_8453			; $a8ed: 20 53 84
PRG04_a8f0:
			ldy $03			; $a8f0: a4 03
			jsr PRG04_Obj_MoveSpeed			; $a8f2: 20 b8 aa
			lda #$07				; $a8f5: a9 07
			ldy #$a0				; $a8f7: a0 a0
			jsr PRG04_80e6			; $a8f9: 20 e6 80
			lda #$08				; $a8fc: a9 08
			ldy #$a0				; $a8fe: a0 a0
			jsr PRG04_80e6			; $a900: 20 e6 80
			lda $68			; $a903: a5 68
			beq PRG04_a918			; $a905: f0 11
			and #$01				; $a907: 29 01
			tay				; $a909: a8
			lda PRG04_a95e,y			; $a90a: b9 5e a9
			sta @w $0086	; $a90d: 8d 86 00
			lda PRG04_a960,y			; $a910: b9 60 a9
			sta @w $008b	; $a913: 8d 8b 00
			dec $68			; $a916: c6 68
PRG04_a918:
			LoadAddress PRG04_a949
			jsr PRG04_a973			; $a920: 20 73 a9
			jsr PRG04_a998			; $a923: 20 98 a9
			bcc PRG04_a92b			; $a926: 90 03
			jsr PRG04_a931			; $a928: 20 31 a9
PRG04_a92b:
			jsr PRG04_a9c8			; $a92b: 20 c8 a9
			jmp PRG04_80a8			; $a92e: 4c a8 80

;-------------------------------------------------------------------------------
PRG04_a931:
			lda $0628,x		; $a931: bd 28 06
			beq PRG04_a942			; $a934: f0 0c
			dec $0628,x		; $a936: de 28 06
			cmp #$10				; $a939: c9 10
			bne PRG04_a942			; $a93b: d0 05
			lda #$44				; $a93d: a9 44
			jsr Goto_PlaySound			; $a93f: 20 c6 c0
PRG04_a942:
			rts				; $a942: 60

;-------------------------------------------------------------------------------
PRG04_a943:
			.byte $a0, $30 ; $a943
			.byte $02 ; $a945
			.byte $09, $c8 ; $a946
			.byte $97
PRG04_a949:
			.byte $51
			.byte $a9, $56 ; $a94a
			.byte $a9, $51 ; $a94c
			.byte $a9, $5a ; $a94e
			.byte $a9, $82 ; $a950
			.byte $25, $00 ; $a952
			.byte $80, $00 ; $a954
			.byte $83, $00 ; $a956
			.byte $81, $00 ; $a958
			.byte $84, $00 ; $a95a
			.byte $81, $00 ; $a95c
PRG04_a95e:
			.byte $16, $1c	; $a95e: 16 1c		 Data
PRG04_a960:
			.byte $16, $18	; $a960: 16 18		 Data

;-------------------------------------------------------------------------------
PRG04_a962:
			jsr PRG04_8704			; $a962: 20 04 87
			bcs PRG04_a96f			; $a965: b0 08
			lda $04c0,x		; $a967: bd c0 04
			ora $04d8,x		; $a96a: 1d d8 04
			beq PRG04_a977			; $a96d: f0 08
PRG04_a96f:
			lda #$01				; $a96f: a9 01
			bne PRG04_a977			; $a971: d0 04
PRG04_a973:
			lda $01			; $a973: a5 01
			and #$c0				; $a975: 29 c0
PRG04_a977:
			beq PRG04_a97e			; $a977: f0 05
			jsr PRG04_8120			; $a979: 20 20 81
			bcs PRG04_a985			; $a97c: b0 07
PRG04_a97e:
			lda $33			; $a97e: a5 33
			and #$fc				; $a980: 29 fc
			sta $33			; $a982: 85 33
			rts				; $a984: 60

;-------------------------------------------------------------------------------
PRG04_a985:
			tya				; $a985: 98
			asl				; $a986: 0a
			tay				; $a987: a8
			lda (LoadedAddress),y		; $a988: b1 a5
			iny				; $a98a: c8
			sta $31			; $a98b: 85 31
			lda (LoadedAddress),y		; $a98d: b1 a5
			sta $32			; $a98f: 85 32
			lda $33			; $a991: a5 33
			ora #$13				; $a993: 09 13
			sta $33			; $a995: 85 33
			rts				; $a997: 60

;-------------------------------------------------------------------------------
PRG04_a998:
			lda $0610,x		; $a998: bd 10 06
			and #$0f				; $a99b: 29 0f
			beq PRG04_a9a5			; $a99d: f0 06
			lda $33			; $a99f: a5 33
			and #$fd				; $a9a1: 29 fd
			sta $33			; $a9a3: 85 33
PRG04_a9a5:
			lda $0640,x		; $a9a5: bd 40 06
			ora $0628,x		; $a9a8: 1d 28 06
			and #$0f				; $a9ab: 29 0f
			beq PRG04_a9b5			; $a9ad: f0 06
			lda $33			; $a9af: a5 33
			and #$fc				; $a9b1: 29 fc
			sta $33			; $a9b3: 85 33
PRG04_a9b5:
			lda $33			; $a9b5: a5 33
			and #$10				; $a9b7: 29 10
			beq PRG04_a9c5			; $a9b9: f0 0a
			lda $33			; $a9bb: a5 33
			lsr				; $a9bd: 4a
			lsr				; $a9be: 4a
			and #$03				; $a9bf: 29 03
			ora $33			; $a9c1: 05 33
			sta $33			; $a9c3: 85 33
PRG04_a9c5:
			jmp PRG04_818d			; $a9c5: 4c 8d 81

;-------------------------------------------------------------------------------
PRG04_a9c8:
			lda $33			; $a9c8: a5 33
			and #$01				; $a9ca: 29 01
			beq PRG04_a9ef			; $a9cc: f0 21
			ldy #$ff				; $a9ce: a0 ff
PRG04_a9d0:
			iny				; $a9d0: c8
			lda ($31),y		; $a9d1: b1 31
			bmi PRG04_a9d0			; $a9d3: 30 fb
PRG04_a9d5:
			lda ($31),y		; $a9d5: b1 31
			beq PRG04_a9e0			; $a9d7: f0 07
			jsr PRG04_8713			; $a9d9: 20 13 87
			iny				; $a9dc: c8
			jmp PRG04_a9d5			; $a9dd: 4c d5 a9

;-------------------------------------------------------------------------------
PRG04_a9e0:
			ldy #$00				; $a9e0: a0 00
PRG04_a9e2:
			lda ($31),y		; $a9e2: b1 31
			bpl PRG04_a9ef			; $a9e4: 10 09
			iny				; $a9e6: c8
			and #$7f				; $a9e7: 29 7f
			jsr Main_c0de			; $a9e9: 20 de c0
			jmp PRG04_a9e2			; $a9ec: 4c e2 a9

;-------------------------------------------------------------------------------
PRG04_a9ef:
			lda $33			; $a9ef: a5 33
			and #$02				; $a9f1: 29 02
			beq PRG04_aa21			; $a9f3: f0 2c
			ldy #$ff				; $a9f5: a0 ff
PRG04_a9f7:
			iny				; $a9f7: c8
			lda ($31),y		; $a9f8: b1 31
			bne PRG04_a9f7			; $a9fa: d0 fb
			iny				; $a9fc: c8
			tya				; $a9fd: 98
			pha				; $a9fe: 48
PRG04_a9ff:
			lda ($31),y		; $a9ff: b1 31
			bpl PRG04_aa07			; $aa01: 10 04
			iny				; $aa03: c8
			jmp PRG04_a9ff			; $aa04: 4c ff a9

;-------------------------------------------------------------------------------
PRG04_aa07:
			lda ($31),y		; $aa07: b1 31
			beq PRG04_aa12			; $aa09: f0 07
			jsr PRG04_8713			; $aa0b: 20 13 87
			iny				; $aa0e: c8
			jmp PRG04_aa07			; $aa0f: 4c 07 aa

;-------------------------------------------------------------------------------
PRG04_aa12:
			pla				; $aa12: 68
			tay				; $aa13: a8
PRG04_aa14:
			lda ($31),y		; $aa14: b1 31
			bpl PRG04_aa21			; $aa16: 10 09
			iny				; $aa18: c8
			and #$7f				; $aa19: 29 7f
			jsr Main_c0de			; $aa1b: 20 de c0
			jmp PRG04_aa14			; $aa1e: 4c 14 aa

;-------------------------------------------------------------------------------
PRG04_aa21:
			ldx $a7			; $aa21: a6 a7
			rts				; $aa23: 60

;-------------------------------------------------------------------------------
PRG04_aa24:
			lda $33			; $aa24: a5 33
			and #$02				; $aa26: 29 02
			beq PRG04_aa31			; $aa28: f0 07
			ldy #$00				; $aa2a: a0 00
			lda ($31),y		; $aa2c: b1 31
			sta $04f0,x		; $aa2e: 9d f0 04
PRG04_aa31:
			lda $33			; $aa31: a5 33
			and #$01				; $aa33: 29 01
			beq PRG04_aa3e			; $aa35: f0 07
			ldy #$01				; $aa37: a0 01
			lda ($31),y		; $aa39: b1 31
			sta $04f1,x		; $aa3b: 9d f1 04
PRG04_aa3e:
			lda $33			; $aa3e: a5 33
			and #$03				; $aa40: 29 03
			beq PRG04_aa4a			; $aa42: f0 06
			ldy #$02				; $aa44: a0 02
			lda ($31),y		; $aa46: b1 31
			sta WriteToCHR1_RAM			; $aa48: 85 e8
PRG04_aa4a:
			rts				; $aa4a: 60

;-------------------------------------------------------------------------------
PRG04_aa4b:
			lda $0400,x		; $aa4b: bd 00 04
			pha				; $aa4e: 48
			jsr PRG04_8248			; $aa4f: 20 48 82
			pla				; $aa52: 68
			sta $0400,x		; $aa53: 9d 00 04
			lda #$a0				; $aa56: a9 a0
			sta $0418,x		; $aa58: 9d 18 04
			lda #$f0				; $aa5b: a9 f0
			sta $05f8,x		; $aa5d: 9d f8 05
			lda #$ff				; $aa60: a9 ff
			sta $05c8,x		; $aa62: 9d c8 05
			lda #$80				; $aa65: a9 80
			sta $0550,x		; $aa67: 9d 50 05
			ldy #$00				; $aa6a: a0 00
			lda (LoadedAddress),y		; $aa6c: b1 a5
			iny				; $aa6e: c8
			sta $0520,x		; $aa6f: 9d 20 05
			sta $05b0,x		; $aa72: 9d b0 05
			lda (LoadedAddress),y		; $aa75: b1 a5
			iny				; $aa77: c8
			sta $0508,x		; $aa78: 9d 08 05
			lda (LoadedAddress),y		; $aa7b: b1 a5
			iny				; $aa7d: c8
			sta $0538,x		; $aa7e: 9d 38 05
			lda (LoadedAddress),y		; $aa81: b1 a5
			iny				; $aa83: c8
			sta $0580,x		; $aa84: 9d 80 05
			lda (LoadedAddress),y		; $aa87: b1 a5
			iny				; $aa89: c8
			sta $0460,x		; $aa8a: 9d 60 04
			.byte $8d, $45	; $aa8d: 8d 45	 Suspected data
PRG04_aa8f:
			ora ($b1,x)		; $aa8f: 01 b1
			lda $c8			; $aa91: a5 c8
			sta $0430,x		; $aa93: 9d 30 04
			sta $0146			; $aa96: 8d 46 01
			rts				; $aa99: 60

;-------------------------------------------------------------------------------
			sta $0520,x		; $aa9a: 9d 20 05
			sta $05b0,x		; $aa9d: 9d b0 05
			tya				; $aaa0: 98
			sta $0508,x		; $aaa1: 9d 08 05
			rts				; $aaa4: 60

;-------------------------------------------------------------------------------
PRG04_aaa5:
			sec				; $aaa5: 38
			lda $0145			; $aaa6: ad 45 01
			sbc $0460,x		; $aaa9: fd 60 04
			sta $d9			; $aaac: 85 d9
			sec				; $aaae: 38
			lda $0146			; $aaaf: ad 46 01
			sbc $0430,x		; $aab2: fd 30 04
			sta $db			; $aab5: 85 db
			rts				; $aab7: 60

;-------------------------------------------------------------------------------
PRG04_Obj_MoveSpeed:
			lda PRG04_ab25,y			; $aab8: b9 25 ab
			sta $0144			; $aabb: 8d 44 01
			lda $0144			; $aabe: ad 44 01
			bpl PRG04_aae9			; $aac1: 10 26
			lda $0550,x		; $aac3: bd 50 05
			and #$04				; $aac6: 29 04
			beq PRG04_aaf1			; $aac8: f0 27
			lda $0550,x		; $aaca: bd 50 05
			and #$fb				; $aacd: 29 fb
			sta $0550,x		; $aacf: 9d 50 05
			lda #$fd				; $aad2: a9 fd
			sta $0490,x		; $aad4: 9d 90 04
			lda #$a0				; $aad7: a9 a0
			sta $04a8,x		; $aad9: 9d a8 04
			txa				; $aadc: 8a
			bne PRG04_aaf1			; $aadd: d0 12
			lda $0147			; $aadf: ad 47 01
			ora #$01				; $aae2: 09 01
			sta $0147			; $aae4: 8d 47 01
			bne PRG04_aaf1			; $aae7: d0 08
PRG04_aae9:
			lda $0490,x		; $aae9: bd 90 04
			bpl PRG04_aaf1			; $aaec: 10 03
			jsr PRG04_80d4			; $aaee: 20 d4 80
PRG04_aaf1:
			lda $0538,x		; $aaf1: bd 38 05
			asl				; $aaf4: 0a
			asl				; $aaf5: 0a
			tay				; $aaf6: a8

			lda $0144			; $aaf7: ad 44 01
			and #$0f				; $aafa: 29 0f
			cmp #$01	; Are we walking in the left direction?
			beq PRG04_Obj_MoveSpeedLeft
			cmp #$02	; Are we walking in the right direction?
			beq PRG04_Obj_MoveSpeedRight

			jsr PRG04_80dd			; $ab04: 20 dd 80
			beq PRG04_ab24			; $ab07: f0 1b
			
PRG04_Obj_MoveSpeedRight:
			lda PRG04_Obj_MoveSpeedArray+1,y			; $ab09: b9 2f ab
			sta $04c0,x		; $ab0c: 9d c0 04
			lda PRG04_Obj_MoveSpeedArray,y			; $ab0f: b9 2e ab
			sta $04d8,x		; $ab12: 9d d8 04
			jmp PRG04_ab24			; $ab15: 4c 24 ab

;-------------------------------------------------------------------------------
PRG04_Obj_MoveSpeedLeft:
			lda PRG04_Obj_MoveSpeedArray+3,y			; $ab18: b9 31 ab
			sta $04c0,x		; $ab1b: 9d c0 04
			lda PRG04_Obj_MoveSpeedArray+2,y			; $ab1e: b9 30 ab
			sta $04d8,x		; $ab21: 9d d8 04
PRG04_ab24:
			rts				; $ab24: 60

;-------------------------------------------------------------------------------
PRG04_ab25:
			.byte $11, $11, $81, $00	; $ab25: 11 11 81 00	 Data
			.byte $00, $80, $12, $12	; $ab29: 00 80 12 12	 Data
			.byte $82	; $ab2d: 82			Data
			
PRG04_Obj_MoveSpeedArray:	; PRG04_ab2e:
			.word $200, -$200
			.word $100, -$100
			.word $c0, -$c0
			.word $80, -$80
			.word $40, -$40
			.word $20, -$20
			.word $10, -$10
			.word $8, -$8

;-------------------------------------------------------------------------------
PRG04_ab4e:
			sta $a0			; $ab4e: 85 a0
			lda $05f8,x		; $ab50: bd f8 05
			cmp #$f0				; $ab53: c9 f0
			bne PRG04_ab68			; $ab55: d0 11
			lda $d9			; $ab57: a5 d9
			cmp $a0			; $ab59: c5 a0
			bcs PRG04_ab63			; $ab5b: b0 06
			jsr PRG04_838c			; $ab5d: 20 8c 83
			jmp PRG04_ab68			; $ab60: 4c 68 ab

;-------------------------------------------------------------------------------
PRG04_ab63:
			lda #$00				; $ab63: a9 00
			sta $05f8,x		; $ab65: 9d f8 05
PRG04_ab68:
			rts				; $ab68: 60

;-------------------------------------------------------------------------------
PRG04_ab69:
			sty $a0			; $ab69: 84 a0
			ldy $0127			; $ab6b: ac 27 01
			LoadAddressFromTable PRG04_ab84, PRG04_ab86, y
			lda $a0			; $ab78: a5 a0
			asl				; $ab7a: 0a
			tay				; $ab7b: a8
			lda (LoadedAddress),y		; $ab7c: b1 a5
			iny				; $ab7e: c8
			pha				; $ab7f: 48
			lda (LoadedAddress),y		; $ab80: b1 a5
			pha				; $ab82: 48
			rts				; $ab83: 60

;-------------------------------------------------------------------------------
UnkTableEntry .macro label
			.byte >(\label-1)
			.byte <(\label-1)
	.endm

	TableStart
	TableInsert PRG04_ab88
	TableInsert PRG04_ab8c

PRG04_ab84:	.byte <CurrentTable
PRG04_ab86:	.byte >CurrentTable
PRG04_ab88:
			UnkTableEntry PRG04_92dc
			UnkTableEntry PRG04_92f4
PRG04_ab8c:
			UnkTableEntry PRG04_9693
			UnkTableEntry PRG04_9693

;-------------------------------------------------------------------------------
PRG04_ab90:
			sta $a0			; $ab90: 85 a0
			lda $0178,y		; $ab92: b9 78 01
			cmp $a0			; $ab95: c5 a0
			bcc PRG04_abb9			; $ab97: 90 20
			lda $a0			; $ab99: a5 a0
			jsr Main_c078			; $ab9b: 20 78 c0
			clc				; $ab9e: 18
			lda $0035,y		; $ab9f: b9 35 00
			sta $a0			; $aba2: 85 a0
			adc $21			; $aba4: 65 21
			sta $0035,y		; $aba6: 99 35 00
			lda $a0			; $aba9: a5 a0
			bpl PRG04_abb7			; $abab: 10 0a
			lda $0035,y		; $abad: b9 35 00
			bmi PRG04_abb7			; $abb0: 30 05
			lda #$80				; $abb2: a9 80
			sta $0035,y		; $abb4: 99 35 00
PRG04_abb7:
			sec				; $abb7: 38
			rts				; $abb8: 60

;-------------------------------------------------------------------------------
PRG04_abb9:
			rts				; $abb9: 60

;-------------------------------------------------------------------------------
PRG04_abba:
			bpl PRG04_abbd			; $abba: 10 01
			rts				; $abbc: 60

;-------------------------------------------------------------------------------
PRG04_abbd:
			jmp Main_c0de			; $abbd: 4c de c0

;-------------------------------------------------------------------------------
PRG04_abc0:
			jsr PRG04_80ce			; $abc0: 20 ce 80
			lda $c6			; $abc3: a5 c6
			and #$03				; $abc5: 29 03
			beq PRG04_abca			; $abc7: f0 01
			rts				; $abc9: 60

;-------------------------------------------------------------------------------
PRG04_abca:
			lda $0580,x		; $abca: bd 80 05
			cmp #$04				; $abcd: c9 04
			bcs PRG04_ac0c			; $abcf: b0 3b
			inc $0430,x		; $abd1: fe 30 04
			lda $0430,x		; $abd4: bd 30 04
			ldy $0127			; $abd7: ac 27 01
			cmp PRG04_ac9c,y			; $abda: d9 9c ac
			bcs PRG04_abe2			; $abdd: b0 03
			jmp PRG04_ac27			; $abdf: 4c 27 ac

;-------------------------------------------------------------------------------
PRG04_abe2:
			lda $018c			; $abe2: ad 8c 01
			beq PRG04_abf0			; $abe5: f0 09
			lda $0198			; $abe7: ad 98 01
			and #$f0				; $abea: 29 f0
			cmp #$f0				; $abec: c9 f0
			bne PRG04_ac05			; $abee: d0 15
PRG04_abf0:
			lda $018d			; $abf0: ad 8d 01
			beq PRG04_abfe			; $abf3: f0 09
			lda $0199			; $abf5: ad 99 01
			and #$f0				; $abf8: 29 f0
			cmp #$f0				; $abfa: c9 f0
			bne PRG04_ac05			; $abfc: d0 07
PRG04_abfe:
			lda #$01				; $abfe: a9 01
			ora $3b			; $ac00: 05 3b
			sta $3b			; $ac02: 85 3b
			rts				; $ac04: 60

;-------------------------------------------------------------------------------
PRG04_ac05:
			lda $05			; $ac05: a5 05
			ora #$02				; $ac07: 09 02
			sta $05			; $ac09: 85 05
			rts				; $ac0b: 60

;-------------------------------------------------------------------------------
PRG04_ac0c:
			lda $db			; $ac0c: a5 db
			beq PRG04_ac15			; $ac0e: f0 05
			dec $db			; $ac10: c6 db
			jmp PRG04_ac17			; $ac12: 4c 17 ac

;-------------------------------------------------------------------------------
PRG04_ac15:
			dec $34			; $ac15: c6 34
PRG04_ac17:
			inc $05f8,x		; $ac17: fe f8 05
			lda $34			; $ac1a: a5 34
			cmp #$c0				; $ac1c: c9 c0
			bcs PRG04_ac27			; $ac1e: b0 07
			lda $05			; $ac20: a5 05
			ora #$02				; $ac22: 09 02
			sta $05			; $ac24: 85 05
			rts				; $ac26: 60

;-------------------------------------------------------------------------------
PRG04_ac27:
			jsr PRG04_8084			; $ac27: 20 84 80
			bcc PRG04_ac9b			; $ac2a: 90 6f
			lda #$12				; $ac2c: a9 12
			jsr PRG04_8098			; $ac2e: 20 98 80
			lda $0580,x		; $ac31: bd 80 05
			cmp #$01				; $ac34: c9 01
			bne PRG04_ac41			; $ac36: d0 09
			clc				; $ac38: 18
			lda $0430,y		; $ac39: b9 30 04
			adc #$f0				; $ac3c: 69 f0
			jmp PRG04_ac47			; $ac3e: 4c 47 ac

;-------------------------------------------------------------------------------
PRG04_ac41:
			clc				; $ac41: 18
			lda $0430,y		; $ac42: b9 30 04
			adc #$18				; $ac45: 69 18
PRG04_ac47:
			adc $05f8,x		; $ac47: 7d f8 05
			sta $0430,y		; $ac4a: 99 30 04
			jsr Main_c08a			; $ac4d: 20 8a c0
			and #$1f				; $ac50: 29 1f
			adc $0430,y		; $ac52: 79 30 04
			sta $0430,y		; $ac55: 99 30 04
			jsr Main_c08a			; $ac58: 20 8a c0
			and #$1f				; $ac5b: 29 1f
			jsr Main_c078			; $ac5d: 20 78 c0
			adc $0430,y		; $ac60: 79 30 04
			sta $0430,y		; $ac63: 99 30 04
			lda $0580,x		; $ac66: bd 80 05
			cmp #$04				; $ac69: c9 04
			bcc PRG04_ac79			; $ac6b: 90 0c
			clc				; $ac6d: 18
			lda $0460,y		; $ac6e: b9 60 04
			adc #$14				; $ac71: 69 14
			sta $0460,y		; $ac73: 99 60 04
			jmp PRG04_ac82			; $ac76: 4c 82 ac

;-------------------------------------------------------------------------------
PRG04_ac79:
			clc				; $ac79: 18
			lda $0460,y		; $ac7a: b9 60 04
			adc #$f4				; $ac7d: 69 f4
			sta $0460,y		; $ac7f: 99 60 04
PRG04_ac82:
			jsr Main_c08a			; $ac82: 20 8a c0
			and #$0f				; $ac85: 29 0f
			adc $0460,y		; $ac87: 79 60 04
			sta $0460,y		; $ac8a: 99 60 04
			jsr Main_c08a			; $ac8d: 20 8a c0
			and #$0f				; $ac90: 29 0f
			jsr Main_c078			; $ac92: 20 78 c0
			adc $0460,y		; $ac95: 79 60 04
			sta $0460,y		; $ac98: 99 60 04
PRG04_ac9b:
			rts				; $ac9b: 60

;-------------------------------------------------------------------------------
PRG04_ac9c:
			.byte $df, $ff, $df, $df	; $ac9c: df ff df df	 Data

;-------------------------------------------------------------------------------
PRG04_aca0:
			ldy $0580,x		; $aca0: bc 80 05
			lda $018c,y		; $aca3: b9 8c 01
			bne PRG04_acfb			; $aca6: d0 53

			lda $0640,x		; $aca8: bd 40 06
			cmp #$ff				; $acab: c9 ff
			beq PRG04_acfb			; $acad: f0 4c

			lda #$ff				; $acaf: a9 ff
			sta $0640,x		; $acb1: 9d 40 06
			lda $3b			; $acb4: a5 3b
			ora #$04				; $acb6: 09 04
			sta $3b			; $acb8: 85 3b

			lda $0580,x		; $acba: bd 80 05
			cmp #$04				; $acbd: c9 04
			bcc PRG04_ace6			; $acbf: 90 25
			
			lda $0580,x		; $acc1: bd 80 05
			clc				; $acc4: 18
			adc #$fc				; $acc5: 69 fc
			tay				; $acc7: a8
			txa				; $acc8: 8a
			pha				; $acc9: 48
			lda PRG04_acfc,y			; $acca: b9 fc ac
			sta $cc			; $accd: 85 cc

			CrossBankJump	PRG01_Bank, PRG01_Goto_ba31

			pla				; $acd4: 68
			tax				; $acd5: aa

			lda #$e0				; $acd6: a9 e0
			jsr Main_c0ed			; $acd8: 20 ed c0

			lda #MusID_BossDefeat				; $acdb: a9 15
			jsr Goto_PlaySound			; $acdd: 20 c6 c0

			lda #$20				; $ace0: a9 20
			sta @w $0037	; $ace2: 8d 37 00
			rts				; $ace5: 60

;-------------------------------------------------------------------------------
PRG04_ace6:
			tay				; $ace6: a8
			lda $0180,y		; $ace7: b9 80 01
			beq PRG04_acf5			; $acea: f0 09
			sta $a0			; $acec: 85 a0
			dec $a0			; $acee: c6 a0
			lda $a0			; $acf0: a5 a0
			sta $0180,y		; $acf2: 99 80 01
PRG04_acf5:
			lda #MusID_Death				; $acf5: a9 05
			jsr Goto_PlaySound			; $acf7: 20 c6 c0
			rts				; $acfa: 60

;-------------------------------------------------------------------------------
PRG04_acfb:
			rts				; $acfb: 60

;-------------------------------------------------------------------------------
PRG04_acfc:
			.byte $12, $11, $10, $0f	; $acfc: 12 11 10 0f	 Data
			.byte $0e, $0d, $0c, $0b	; $ad00: 0e 0d 0c 0b	 Data
PRG04_ad04:
			lda $0582			; $ad04: ad 82 05
			cmp #$04				; $ad07: c9 04
			bne PRG04_ad19			; $ad09: d0 0e
			lda $c6			; $ad0b: a5 c6
			and #$03				; $ad0d: 29 03
			bne PRG04_ad4b			; $ad0f: d0 3a
			ldy #$00				; $ad11: a0 00
			jsr PRG04_8296			; $ad13: 20 96 82
			jmp PRG04_ad4b			; $ad16: 4c 4b ad

;-------------------------------------------------------------------------------
;	TODO: fix this
PRG04_ad19:
			cmp #$07				; $ad19: c9 07
			bne PRG04_ad32
			.byte $Ad, $12	; $ad1e: 12		Invalid Opcode - KIL
			asl $c9			; $ad1f: 06 c9
			ora ($d0),y		; $ad21: 11 d0
			.byte $27, $a5	; $ad23: 27 a5	 Invalid Opcode - RLA $a5
			dec $29			; $ad25: c6 29
			ora ($d0,x)		; $ad27: 01 d0
			and ($a0,x)		; $ad29: 21 a0
			brk				; $ad2b: 00
			jsr PRG04_8296			; $ad2c: 20 96 82
			jmp PRG04_ad4b			; $ad2f: 4c 4b ad

;-------------------------------------------------------------------------------
;	TODO: convert to code
PRG04_ad32:
			.byte $ad, $82, $05, $c9	; $ad32: ad 82 05 c9	 Data
			.byte $08, $d0, $12, $ad	; $ad36: 08 d0 12 ad	 Data
			.byte $42, $06, $c9, $61	; $ad3a: 42 06 c9 61	 Data
			.byte $d0, $0b, $a5, $c6	; $ad3e: d0 0b a5 c6	 Data
			.byte $29, $07, $d0, $05	; $ad42: 29 07 d0 05	 Data
			.byte $a0, $00, $20, $96	; $ad46: a0 00 20 96	 Data
			.byte $82	; $ad4a: 82			Data
PRG04_ad4b:
			rts				; $ad4b: 60

;-------------------------------------------------------------------------------
			.byte $06, $00 ; $ad4c
			.byte $00 ; $ad4e
			.byte $19, $9a, $ae ; $ad4f
			.byte $05, $00 ; $ad52
			.byte $00 ; $ad54
			.byte $19, $4f, $ae ; $ad55
			.byte $04, $60 ; $ad58
			.byte $00 ; $ad5a
			.byte $00 ; $ad5b
			.byte $1a ; $ad5c
			.byte $cd, $ae, $6b ; $ad5d
			.byte $00 ; $ad60
			.byte $00 ; $ad61
			.byte $1a ; $ad62
			.byte $de, $ab, $6a ; $ad63
			.byte $03, $00 ; $ad66
			.byte $1a ; $ad68
			.byte $e7, $ae ; $ad69
			.byte $69 ; $ad6b
			.byte $00 ; $ad6c
			.byte $00 ; $ad6d
			.byte $1a ; $ad6e
			.byte $b3, $ae ; $ad6f
			.byte $68 ; $ad71
			.byte $10, $00 ; $ad72
			.byte $00 ; $ad74
			.byte $67, $67 ; $ad75
			.byte $77, $77 ; $ad77
			.byte $77, $77 ; $ad79
			.byte $77 ; $ad7b
			.byte $77, $77 ; $ad7c
			.byte $77, $87 ; $ad7e
			.byte $87, $87 ; $ad80
			.byte $87, $87 ; $ad82
			.byte $87, $87 ; $ad84
			.byte $87, $97 ; $ad86
			.byte $90, $92 ; $ad88
			.byte $94, $96 ; $ad8a
			.byte $98 ; $ad8c
			.byte $9a ; $ad8d
			.byte $9c, $9e, $a0 ; $ad8e
			.byte $a2, $a4 ; $ad91
			.byte $a6, $a8 ; $ad93
			.byte $aa ; $ad95
			.byte $ac, $ae, $b0 ; $ad96
			.byte $b2 ; $ad99
			.byte $b4, $28 ; $ad9a
			.byte $40 ; $ad9c
			.byte $20, $28, $30 ; $ad9d
			.byte $38 ; $ada0
			.byte $40 ; $ada1
			.byte $48 ; $ada2
			.byte $50, $58 ; $ada3
			.byte $20, $28, $30 ; $ada5
			.byte $38 ; $ada8
			.byte $40 ; $ada9
			.byte $48 ; $adaa
			.byte $50, $58 ; $adab
			.byte $58 ; $adad
			.byte $55, $56 ; $adae
			.byte $62 ; $adb0
			.byte $62 ; $adb1
			.byte $6d, $6d, $75 ; $adb2
			.byte $80, $91 ; $adb5
			.byte $8a ; $adb7
			.byte $30, $b2 ; $adb8
			.byte $ba ; $adba
			.byte $6a ; $adbb
			.byte $72 ; $adbc
			.byte $52 ; $adbd
			.byte $20, $a8, $00 ; $adbe
			.byte $01, $02 ; $adc1
			.byte $02 ; $adc3
			.byte $02 ; $adc4
			.byte $02 ; $adc5
			.byte $03, $00 ; $adc6
			.byte $01, $a6 ; $adc8
			.byte $a8 ; $adca
			.byte $9e, $a0, $90 ; $adcb
			.byte $92 ; $adce
			.byte $aa ; $adcf
			.byte $ac, $ae, $70 ; $add0
			.byte $70, $70 ; $add3
			.byte $70, $70 ; $add5
			.byte $80, $80 ; $add7
			.byte $80 ; $add9
			.byte $80, $80 ; $adda
			.byte $98 ; $addc
			.byte $98 ; $addd
			.byte $98 ; $adde
			.byte $98 ; $addf
			.byte $98 ; $ade0
			.byte $58 ; $ade1
			.byte $58 ; $ade2
			.byte $58 ; $ade3
			.byte $60 ; $ade4
			.byte $60 ; $ade5
			.byte $60 ; $ade6
			.byte $68 ; $ade7
			.byte $68 ; $ade8
			.byte $68 ; $ade9
			.byte $90, $90 ; $adea
			.byte $90, $38 ; $adec
			.byte $38 ; $adee
			.byte $40 ; $adef
			.byte $40 ; $adf0
			.byte $48 ; $adf1
			.byte $48 ; $adf2
			.byte $50, $50 ; $adf3
			.byte $50, $50 ; $adf5
			.byte $58 ; $adf7
			.byte $78 ; $adf8
			.byte $78 ; $adf9
			.byte $78 ; $adfa
			.byte $88 ; $adfb
			.byte $60 ; $adfc
			.byte $b8 ; $adfd
			.byte $c0, $c8 ; $adfe
			.byte $d0, $d8 ; $ae00
			.byte $58 ; $ae02
			.byte $60 ; $ae03
			.byte $68 ; $ae04
			.byte $70, $78 ; $ae05
			.byte $c8 ; $ae07
			.byte $d0, $d8 ; $ae08
			.byte $e0, $e8 ; $ae0a
			.byte $58 ; $ae0c
			.byte $60 ; $ae0d
			.byte $68 ; $ae0e
			.byte $88 ; $ae0f
			.byte $90, $98 ; $ae10
			.byte $20, $28, $30 ; $ae12
			.byte $a8 ; $ae15
			.byte $b0, $b8 ; $ae16
			.byte $40 ; $ae18
			.byte $70, $28 ; $ae19
			.byte $50, $20 ; $ae1b
			.byte $60 ; $ae1d
			.byte $10, $28 ; $ae1e
			.byte $40 ; $ae20
			.byte $e8 ; $ae21
			.byte $e0, $28 ; $ae22
			.byte $90, $a8 ; $ae24
			.byte $38 ; $ae26
			.byte $e8 ; $ae27
			.byte $d3, $d5 ; $ae28
			.byte $d7, $d9 ; $ae2a
			.byte $db, $d3, $d5 ; $ae2c
			.byte $d7, $d9 ; $ae2f
			.byte $db, $d3, $d5 ; $ae31
			.byte $d7, $d9 ; $ae34
			.byte $db, $c1, $c3 ; $ae36
			.byte $c5, $c1 ; $ae39
			.byte $c3, $c5 ; $ae3b
			.byte $c1, $c3 ; $ae3d
			.byte $c5, $c1 ; $ae3f
			.byte $c3, $c5 ; $ae41
			.byte $00 ; $ae43
			.byte $08 ; $ae44
			.byte $10, $18 ; $ae45
			.byte $20 ; $ae47
			.byte $28 ; $ae48
			.byte $e6, $e4 ; $ae49
			.byte $e2, $e0 ; $ae4b
			.byte $de, $dc ; $ae4d
			.byte $10, $20, $30, $08 ; $ae4f
			.byte $18, $20, $30, $00 ; $ae53
			.byte $10, $18, $28, $38 ; $ae57
			.byte $00, $10 ; $ae5b
			.byte $28 ; $ae5d
			.byte $20 ; $ae5e
			.byte $38 ; $ae5f
			.byte $10, $28 ; $ae60
			.byte $20 ; $ae62
			.byte $38 ; $ae63
			.byte $10, $18 ; $ae64
			.byte $28 ; $ae66
			.byte $38 ; $ae67
			.byte $00 ; $ae68
			.byte $00 ; $ae69
			.byte $00 ; $ae6a
			.byte $08 ; $ae6b
			.byte $08 ; $ae6c
			.byte $08 ; $ae6d
			.byte $08 ; $ae6e
			.byte $10, $10 ; $ae6f
			.byte $10, $10 ; $ae71
			.byte $10, $18 ; $ae73
			.byte $18 ; $ae75
			.byte $18 ; $ae76
			.byte $18 ; $ae77
			.byte $18 ; $ae78
			.byte $20, $20, $20 ; $ae79
			.byte $20, $28 ; $ae7c
			.byte $28 ; $ae7e
			.byte $28 ; $ae7f
			.byte $28 ; $ae80
			.byte $00 ; $ae81
			.byte $00 ; $ae82
			.byte $03, $00 ; $ae83
			.byte $00 ; $ae85
			.byte $02 ; $ae86
			.byte $03, $00 ; $ae87
			.byte $00 ; $ae89
			.byte $01, $03 ; $ae8a
			.byte $03 ; $ae8c
			.byte $00 ; $ae8d
			.byte $00 ; $ae8e
			.byte $03, $02 ; $ae8f
			.byte $03, $00 ; $ae91
			.byte $03, $02 ; $ae93
			.byte $03, $00 ; $ae95
			.byte $01, $03 ; $ae97
			.byte $03 ; $ae99
			.byte $cf, $d1, $d3, $d5 ; $ae9a
			.byte $d7, $d9, $db, $dd ; $ae9e
			.byte $df, $e1, $e3, $e5 ; $aea2
			.byte $e7, $e9, $ed, $eb ; $aea6
			.byte $ef, $f1, $f5, $f3 ; $aeaa
			.byte $f7, $f9, $fb, $fd ; $aeae
			.byte $ff, $00, $00, $00 ; $aeb2
			.byte $08, $08, $08, $08 ; $aeb6
			.byte $10, $10, $10, $10 ; $aeba
			.byte $18, $18, $18, $18 ; $aebe
			.byte $20 ; $aec2
			.byte $20, $28, $28 ; $aec3
			.byte $30, $30 ; $aec6
			.byte $30, $30 ; $aec8
			.byte $38 ; $aeca
			.byte $38 ; $aecb
			.byte $38 ; $aecc
			.byte $60 ; $aecd
			.byte $a0, $d0 ; $aece
			.byte $18 ; $aed0
			.byte $20, $38, $b0 ; $aed1
			.byte $08 ; $aed4
			.byte $90, $98 ; $aed5
			.byte $e0, $28 ; $aed7
			.byte $70, $88 ; $aed9
			.byte $f0, $80 ; $aedb
			.byte $c8 ; $aedd
			.byte $28 ; $aede
			.byte $b0, $10 ; $aedf
			.byte $d0, $e0 ; $aee1
			.byte $e8 ; $aee3
			.byte $20 ; $aee4
			.byte $50 ; $aee5
			.byte $f0 ; $aee6
			.byte $05, $07 ; $aee7
			.byte $07, $09 ; $aee9
			.byte $07, $05 ; $aeeb
			.byte $0b, $0b ; $aeed
			.byte $01, $03 ; $aeef
			.byte $05, $03 ; $aef1
			.byte $05, $03 ; $aef3
			.byte $07, $09 ; $aef5
			.byte $05 ; $aef7
			.byte $0b, $07 ; $aef8
			.byte $05, $07 ; $aefa
			.byte $09, $03 ; $aefc
			.byte $07, $0b ; $aefe
			.byte $09, $85 ; $af00
			.byte $21, $0a ; $af02
			.byte $0a ; $af04
			.byte $aa ; $af05
			.byte $bd, $21, $af ; $af06
			.byte $29, $bf ; $af09
			.byte $a8 ; $af0b
			.byte $e8 ; $af0c
			.byte $bd, $21, $af ; $af0d
			.byte $29, $40 ; $af10
			.byte $d0, $0c ; $af12
			.byte $bd, $21, $af ; $af14
			.byte $29, $3f ; $af17
			.byte $99, $80, $00 ; $af19
			.byte $c8 ; $af1c
			.byte $4c, $0c, $af ; $af1d

;-------------------------------------------------------------------------------
PRG04_af20:
			.byte $e6	; $af20: e6		Suspected data
PRG04_af21:
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
			.byte $1a, $9c, $00, $04	; $af99: 1a 9c 00 04	 Data
			.byte $1b, $1c, $1d, $1e	; $af9d: 1b 1c 1d 1e	 Data
			.byte $9c, $00, $04, $1f	; $afa1: 9c 00 04 1f	 Data
			.byte $20, $21, $22, $9a	; $afa5: 20 21 22 9a	 Data
			.byte $00, $06, $23, $24	; $afa9: 00 06 23 24	 Data
			.byte $25	; $afad: 25			Data
PRG04_afae:
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
			.byte $00, $91	; $b026: 00 91		 Data
			.byte $92 ; $b028
			.byte $93, $94 ; $b029
			.byte $95, $96 ; $b02b
			.byte $97 ; $b02d
			.byte $98 ; $b02e
			.byte $99, $9a, $9b ; $b02f
			.byte $9c, $9d, $9e ; $b032
			.byte $9f, $a0, $a1 ; $b035
			.byte $a2, $8f ; $b038
			.byte $00 ; $b03a
			.byte $04, $a3 ; $b03b
			.byte $a4, $a5 ; $b03d
			.byte $a6, $88 ; $b03f
			.byte $00 ; $b041
			.byte $03, $a7 ; $b042
			.byte $a8 ; $b044
			.byte $a9, $ff ; $b045
			.byte $00 ; $b047
			.byte $ad, $00, $10 ; $b048
			.byte $af, $20, $8c ; $b04b
			.byte $55, $5d ; $b04e
			.byte $ff, $55, $af ; $b050
			.byte $0a ; $b053
			.byte $00 ; $b054
			.byte $00 ; $b055
			.byte $0a ; $b056
			.byte $06, $05 ; $b057
			.byte $0a ; $b059
			.byte $02 ; $b05a
			.byte $ff, $00, $ff ; $b05b
			.byte $00 ; $b05e
			.byte $ff, $00, $ff ; $b05f
			.byte $00 ; $b062
			.byte $ff, $00, $cd ; $b063
			.byte $00 ; $b066
			.byte $53, $48 ; $b067
			.byte $49, $4a ; $b069
			.byte $4b, $4c ; $b06b
			.byte $ab, $49 ; $b06d
			.byte $ac, $67, $48 ; $b06f
			.byte $ad, $ae, $af ; $b072
			.byte $b0, $b1 ; $b075
			.byte $b2 ; $b077
			.byte $ad, $ae, $af ; $b078
			.byte $b0, $b1 ; $b07b
			.byte $b2 ; $b07d
			.byte $48 ; $b07e
			.byte $ad, $67, $49 ; $b07f
			.byte $4a ; $b082
			.byte $4b, $4c ; $b083
			.byte $ac, $b3, $67 ; $b085
			.byte $b4, $00 ; $b088
			.byte $b5, $6b ; $b08a
			.byte $b6, $b7 ; $b08c
			.byte $b8 ; $b08e
			.byte $b9, $ba, $00 ; $b08f
			.byte $bb, $bc, $00 ; $b092
			.byte $bd, $be, $bf ; $b095
			.byte $97, $00 ; $b098
			.byte $c1, $c2 ; $b09a
			.byte $c3, $c4 ; $b09c
			.byte $c5, $c6 ; $b09e
			.byte $c7, $c8 ; $b0a0
			.byte $c9, $ca ; $b0a2
			.byte $cb, $85 ; $b0a4
			.byte $86, $87 ; $b0a6
			.byte $cc, $00, $89 ; $b0a8
			.byte $8a ; $b0ab
			.byte $9c, $9d ; $b0ac
			.byte $9e ; $b0ae
			.byte $00, $00, $a1, $89 ; $b0af
			.byte $8a, $91, $92, $93 ; $b0b3
			.byte $94, $95, $96, $97 ; $b0b7
			.byte $83, $00, $03, $9c ; $b0bb
			.byte $9d, $9e, $83, $00 ; $b0bf
			.byte $02, $a1, $a2, $88 ; $b0c3
			.byte $00, $03, $a7, $a8 ; $b0c7
			.byte $a9, $84, $00, $04 ; $b0cb
			.byte $a3, $a4, $a5, $a6 ; $b0cf
			.byte $ff, $00, $b8, $00 ; $b0d3
			.byte $88, $a0, $85, $0a ; $b0d7
			.byte $03, $08, $0a, $02 ; $b0db
			.byte $88, $00, $00, $56 ; $b0df
			.byte $5a, $7b, $97, $72 ; $b0e3
			.byte $7c, $97, $78, $7f ; $b0e7
			.byte $5e, $7b, $94, $00 ; $b0eb
			.byte $36, $78, $5d, $93 ; $b0ef
			.byte $72, $75, $75, $5a ; $b0f3
			.byte $97, $5c, $7b, $7e ; $b0f7
			.byte $7c, $71, $5e, $5d ; $b0fb
			.byte $97, $7d, $71, $5e ; $b0ff
			.byte $00, $72, $77, $7f ; $b103
			.byte $5a, $5d, $5e, $7b ; $b107
			.byte $7c, $97, $5f, $7b ; $b10b
			.byte $78, $76, $97, $3f ; $b10f
			.byte $75, $5a, $77, $5e ; $b113
			.byte $7d, $97, $57, $94 ; $b117
			.byte $00, $3f, $5e, $5a ; $b11b
			.byte $5c, $5e, $97, $71 ; $b11f
			.byte $5a ; $b123
			.byte $7c, $97, $7b ; $b124
			.byte $5e, $7d, $7e ; $b127
			.byte $7b, $77, $5e ; $b12a
			.byte $5d, $97, $7d ; $b12d
			.byte $78 ; $b130
			.byte $00 ; $b131
			.byte $7d, $71, $5e ; $b132
			.byte $97, $5e ; $b135
			.byte $5a ; $b137
			.byte $7b, $7d, $71 ; $b138
			.byte $94, $00 ; $b13b
			.byte $30, $5f ; $b13d
			.byte $7d, $5e, $7b ; $b13f
			.byte $97, $7d ; $b142
			.byte $71, $5e ; $b144
			.byte $97, $5f ; $b146
			.byte $72 ; $b148
			.byte $5e, $7b, $5c ; $b149
			.byte $5e, $97, $5b ; $b14c
			.byte $5a ; $b14f
			.byte $7d, $7d, $75 ; $b150
			.byte $5e, $96, $00 ; $b153
			.byte $7d, $71, $5e ; $b156
			.byte $97, $90 ; $b159
			.byte $78 ; $b15b
			.byte $7e, $77, $5d ; $b15c
			.byte $5e, $5d, $97 ; $b15f
			.byte $76, $78 ; $b162
			.byte $77, $7c ; $b164
			.byte $7d, $5e, $7b ; $b166
			.byte $7c, $96, $00 ; $b169
			.byte $36, $78 ; $b16c
			.byte $5d, $93, $72 ; $b16e
			.byte $75, $75 ; $b171
			.byte $5a ; $b173
			.byte $97, $5a ; $b174
			.byte $77, $5d ; $b176
			.byte $97, $3c ; $b178
			.byte $78 ; $b17a
			.byte $7d, $71, $7b ; $b17b
			.byte $5a ; $b17e
			.byte $96, $97 ; $b17f
			.byte $5a ; $b181
			.byte $7b, $5e, $00 ; $b182
			.byte $7b, $5e, $7c ; $b185
			.byte $7d, $72, $77 ; $b188
			.byte $70, $97 ; $b18b
			.byte $7e, $77, $7d ; $b18d
			.byte $72 ; $b190
			.byte $75, $97 ; $b191
			.byte $7d, $71, $5e ; $b193
			.byte $97, $5d ; $b196
			.byte $5a ; $b198
			.byte $92 ; $b199
			.byte $97, $7d ; $b19a
			.byte $71, $5e ; $b19c
			.byte $92 ; $b19e
			.byte $00 ; $b19f
			.byte $7b, $72, $7c ; $b1a0
			.byte $5e, $97, $5a ; $b1a3
			.byte $70, $5a ; $b1a6
			.byte $72 ; $b1a8
			.byte $77, $97 ; $b1a9
			.byte $5f, $78, $7b ; $b1ab
			.byte $97, $7d ; $b1ae
			.byte $71, $5e ; $b1b0
			.byte $97, $7c ; $b1b2
			.byte $5a ; $b1b4
			.byte $74, $5e ; $b1b5
			.byte $00 ; $b1b7
			.byte $78 ; $b1b8
			.byte $5f, $97, $76 ; $b1b9
			.byte $5a ; $b1bc
			.byte $77, $74 ; $b1bd
			.byte $72 ; $b1bf
			.byte $77, $5d ; $b1c0
			.byte $94, $00 ; $b1c2
			.byte $30, $77 ; $b1c4
			.byte $5d, $97, $78 ; $b1c6
			.byte $77, $97 ; $b1c9
			.byte $5d, $5e, $7f ; $b1cb
			.byte $5a ; $b1ce
			.byte $7c, $7d, $5a ; $b1cf
			.byte $7d, $5e, $5d ; $b1d2
			.byte $97, $3f ; $b1d5
			.byte $75, $5a ; $b1d7
			.byte $77, $5e ; $b1d9
			.byte $7d, $97, $57 ; $b1db
			.byte $96, $00 ; $b1de
			.byte $5a ; $b1e0
			.byte $97, $76 ; $b1e1
			.byte $5e, $7c, $7c ; $b1e3
			.byte $5a ; $b1e6
			.byte $70, $5e ; $b1e7
			.byte $97, $72 ; $b1e9
			.byte $7c, $97, $75 ; $b1eb
			.byte $5e, $5f, $7d ; $b1ee
			.byte $97, $5f ; $b1f1
			.byte $78 ; $b1f3
			.byte $7b, $00, $5e ; $b1f4
			.byte $5a ; $b1f7
			.byte $7b, $7d, $71 ; $b1f8
			.byte $75, $72 ; $b1fb
			.byte $77, $70 ; $b1fd
			.byte $7c, $99, $97 ; $b1ff
			.byte $9a ; $b202
			.byte $53, $78 ; $b203
			.byte $97, $78 ; $b205
			.byte $7e, $7b, $97 ; $b207
			.byte $5d, $5e, $5e ; $b20a
			.byte $79, $5e, $7c ; $b20d
			.byte $7d, $00, $7b ; $b210
			.byte $5e, $70, $7b ; $b213
			.byte $5e, $7d, $96 ; $b216
			.byte $97, $90 ; $b219
			.byte $5e, $97, $76 ; $b21b
			.byte $7e, $7c, $7d ; $b21e
			.byte $97, $5a ; $b221
			.byte $5d, $76, $72 ; $b223
			.byte $7d, $00, $5d ; $b226
			.byte $5e, $5f, $5e ; $b229
			.byte $5a ; $b22c
			.byte $7d, $94, $94 ; $b22d
			.byte $94, $94 ; $b230
			.byte $7d, $71, $72 ; $b232
			.byte $7c, $97, $7d ; $b235
			.byte $72 ; $b238
			.byte $76, $5e ; $b239
			.byte $94, $00 ; $b23b
			.byte $56, $5e ; $b23d
			.byte $97, $5a ; $b23f
			.byte $75, $76 ; $b241
			.byte $78 ; $b243
			.byte $7c, $7d, $97 ; $b244
			.byte $90, $78 ; $b247
			.byte $77, $96 ; $b249
			.byte $97, $5b ; $b24b
			.byte $7e, $7d, $97 ; $b24d
			.byte $90, $5e ; $b250
			.byte $97, $5d ; $b252
			.byte $72 ; $b254
			.byte $5d, $00, $77 ; $b255
			.byte $78 ; $b258
			.byte $7d, $97, $74 ; $b259
			.byte $77, $78 ; $b25c
			.byte $90, $97 ; $b25e
			.byte $36, $78 ; $b260
			.byte $5d, $93, $72 ; $b262
			.byte $75, $75 ; $b265
			.byte $5a ; $b267
			.byte $97, $90 ; $b268
			.byte $5a ; $b26a
			.byte $7c, $97, $7c ; $b26b
			.byte $7e, $5c, $71 ; $b26e
			.byte $00 ; $b271
			.byte $5a ; $b272
			.byte $97, $79 ; $b273
			.byte $78 ; $b275
			.byte $90, $5e ; $b276
			.byte $7b, $5f, $7e ; $b278
			.byte $75, $97 ; $b27b
			.byte $5f, $78, $5e ; $b27d
			.byte $94, $97 ; $b280
			.byte $97, $36 ; $b282
			.byte $78 ; $b284
			.byte $77, $5e ; $b285
			.byte $97, $72 ; $b287
			.byte $7c, $00, $78 ; $b289
			.byte $7e, $7b, $97 ; $b28c
			.byte $75, $5e ; $b28f
			.byte $70, $72 ; $b291
			.byte $78 ; $b293
			.byte $77, $97 ; $b294
			.byte $78 ; $b296
			.byte $5f, $97, $76 ; $b297
			.byte $78 ; $b29a
			.byte $77, $7c ; $b29b
			.byte $7d, $5e, $7b ; $b29d
			.byte $7c, $96, $00 ; $b2a0
			.byte $7d, $71, $5e ; $b2a3
			.byte $97 ; $b2a6
			.byte $7c, $7d, $7b ; $b2a7
			.byte $78 ; $b2aa
			.byte $77, $70 ; $b2ab
			.byte $5e, $7c, $7d ; $b2ad
			.byte $97, $5f ; $b2b0
			.byte $78 ; $b2b2
			.byte $7b, $5c, $5e ; $b2b3
			.byte $97, $72 ; $b2b6
			.byte $77, $97 ; $b2b8
			.byte $7d, $71, $5e ; $b2ba
			.byte $00 ; $b2bd
			.byte $7e, $77, $72 ; $b2be
			.byte $7f, $5e, $7b ; $b2c1
			.byte $7c, $5e, $94 ; $b2c4
			.byte $97, $3d ; $b2c7
			.byte $5e, $7f, $5e ; $b2c9
			.byte $7b, $97, $5a ; $b2cc
			.byte $70, $5a ; $b2cf
			.byte $72 ; $b2d1
			.byte $77, $97 ; $b2d2
			.byte $7c, $71 ; $b2d4
			.byte $5a ; $b2d6
			.byte $75, $75 ; $b2d7
			.byte $00 ; $b2d9
			.byte $90, $5e ; $b2da
			.byte $97, $7c ; $b2dc
			.byte $5e, $5e, $97 ; $b2de
			.byte $36, $71 ; $b2e1
			.byte $72 ; $b2e3
			.byte $5d, $78, $7b ; $b2e4
			.byte $5a ; $b2e7
			.byte $97, $78 ; $b2e8
			.byte $7b, $97, $36 ; $b2ea
			.byte $72 ; $b2ed
			.byte $70, $5a ; $b2ee
			.byte $77, $94 ; $b2f0
			.byte $00 ; $b2f2
			.byte $37, $5a ; $b2f3
			.byte $7f, $72, $77 ; $b2f5
			.byte $70, $97 ; $b2f8
			.byte $75, $78 ; $b2fa
			.byte $7c, $7d, $97 ; $b2fc
			.byte $78 ; $b2ff
			.byte $7e, $7b, $97 ; $b300
			.byte $5b, $5a ; $b303
			.byte $7c, $5e, $96 ; $b305
			.byte $97, $56 ; $b308
			.byte $5e, $00, $77 ; $b30a
			.byte $78 ; $b30d
			.byte $90, $97 ; $b30e
			.byte $5e, $76, $5b ; $b310
			.byte $5a ; $b313
			.byte $7b, $74, $97 ; $b314
			.byte $78 ; $b317
			.byte $77, $97 ; $b318
			.byte $5a ; $b31a
			.byte $97, $73 ; $b31b
			.byte $78 ; $b31d
			.byte $7e, $7b, $77 ; $b31e
			.byte $5e, $92, $97 ; $b321
			.byte $7d, $78, $00 ; $b324
			.byte $77, $78 ; $b327
			.byte $90, $71 ; $b329
			.byte $5e, $7b, $5e ; $b32b
			.byte $97, $72 ; $b32e
			.byte $77, $97 ; $b330
			.byte $7d, $71, $5e ; $b332
			.byte $97, $7e ; $b335
			.byte $77, $72 ; $b337
			.byte $7f ; $b339
			.byte $5e, $7b, $7c ; $b33a
			.byte $5e, $94, $00 ; $b33d
			.byte $31, $7e ; $b340
			.byte $7d, $96, $97 ; $b342
			.byte $5e, $5a, $7b ; $b345
			.byte $7d, $71 ; $b348
			.byte $75, $72 ; $b34a
			.byte $77, $70 ; $b34c
			.byte $7c, $96, $97 ; $b34e
			.byte $7c, $5a, $7f ; $b351
			.byte $5e, $97, $92 ; $b354
			.byte $78 ; $b357
			.byte $7e, $7b, $00 ; $b358
			.byte $7b, $5e, $73 ; $b35b
			.byte $78 ; $b35e
			.byte $72 ; $b35f
			.byte $5c, $72, $77 ; $b360
			.byte $70, $97 ; $b363
			.byte $78 ; $b365
			.byte $7f, $5e, $7b ; $b366
			.byte $97, $7d ; $b369
			.byte $71, $5e ; $b36b
			.byte $97, $7f ; $b36d
			.byte $72 ; $b36f
			.byte $5c, $7d, $78 ; $b370
			.byte $7b, $92, $00 ; $b373
			.byte $90, $71 ; $b376
			.byte $72 ; $b378
			.byte $5c, $71, $97 ; $b379
			.byte $36, $78 ; $b37c
			.byte $5d, $93, $72 ; $b37e
			.byte $75, $75 ; $b381
			.byte $5a ; $b383
			.byte $97, $5b ; $b384
			.byte $7b, $78, $7e ; $b386
			.byte $70, $71 ; $b389
			.byte $7d, $97, $7d ; $b38b
			.byte $78 ; $b38e
			.byte $00 ; $b38f
			.byte $92 ; $b390
			.byte $78 ; $b391
			.byte $7e, $94, $97 ; $b392
			.byte $97, $3e ; $b395
			.byte $7e, $7b, $97 ; $b397
			.byte $73, $78 ; $b39a
			.byte $7e, $7b, $77 ; $b39c
			.byte $5e, $92, $97 ; $b39f
			.byte $90, $72 ; $b3a2
			.byte $75, $75 ; $b3a4
			.byte $97, $77 ; $b3a6
			.byte $78 ; $b3a8
			.byte $7d, $00, $75 ; $b3a9
			.byte $5a ; $b3ac
			.byte $7c, $7d, $97 ; $b3ad
			.byte $5f, $78, $7b ; $b3b0
			.byte $5e, $7f, $5e ; $b3b3
			.byte $7b, $94, $97 ; $b3b6
			.byte $56, $5e ; $b3b9
			.byte $96, $97 ; $b3bb
			.byte $7d, $71, $5e ; $b3bd
			.byte $97, $79 ; $b3c0
			.byte $5e, $78, $79 ; $b3c2
			.byte $75, $5e ; $b3c5
			.byte $00 ; $b3c7
			.byte $78 ; $b3c8
			.byte $5f, $97, $3f ; $b3c9
			.byte $75, $5a ; $b3cc
			.byte $77, $5e ; $b3ce
			.byte $7d, $97, $57 ; $b3d0
			.byte $96, $97 ; $b3d3
			.byte $90, $72 ; $b3d5
			.byte $75, $75 ; $b3d7
			.byte $97, $77 ; $b3d9
			.byte $5e, $7f, $5e ; $b3db
			.byte $7b, $00, $70 ; $b3de
			.byte $72 ; $b3e1
			.byte $7f, $5e, $97 ; $b3e2
			.byte $7e, $79, $97 ; $b3e5
			.byte $78 ; $b3e8
			.byte $7e, $7b, $97 ; $b3e9
			.byte $79, $75, $5a ; $b3ec
			.byte $77, $97 ; $b3ef
			.byte $7d, $78, $97 ; $b3f1
			.byte $72 ; $b3f4
			.byte $77, $7f ; $b3f5
			.byte $5a ; $b3f7
			.byte $5d, $5e, $00 ; $b3f8
			.byte $7d ; $b3fb
			.byte $71, $5e ; $b3fc
			.byte $97, $5e ; $b3fe
			.byte $5a ; $b400
			.byte $7b, $7d, $71 ; $b401
			.byte $94, $97 ; $b404
			.byte $56, $5e ; $b406
			.byte $97, $79 ; $b408
			.byte $7b, $78, $76 ; $b40a
			.byte $72 ; $b40d
			.byte $7c, $5e, $97 ; $b40e
			.byte $7d, $71, $5a ; $b411
			.byte $7d, $00 ; $b414
			.byte $90, $5e ; $b416
			.byte $97, $90 ; $b418
			.byte $72 ; $b41a
			.byte $75, $75 ; $b41b
			.byte $97, $78 ; $b41d
			.byte $7b, $70, $5a ; $b41f
			.byte $77, $72 ; $b422
			.byte $93, $5e ; $b424
			.byte $97, $5a ; $b426
			.byte $97, $7c ; $b428
			.byte $5e, $5c, $78 ; $b42a
			.byte $77, $5d ; $b42d
			.byte $96, $00 ; $b42f
			.byte $5e, $7f, $5e ; $b431
			.byte $77, $97 ; $b434
			.byte $5a ; $b436
			.byte $97, $7d ; $b437
			.byte $71, $72 ; $b439
			.byte $7b, $5d, $97 ; $b43b
			.byte $75, $5e ; $b43e
			.byte $70, $72 ; $b440
			.byte $78 ; $b442
			.byte $77, $97 ; $b443
			.byte $78 ; $b445
			.byte $5f, $00, $7c ; $b446
			.byte $79, $5a, $5c ; $b449
			.byte $5e, $97, $76 ; $b44c
			.byte $78 ; $b44f
			.byte $77, $7c ; $b450
			.byte $7d, $5e, $7b ; $b452
			.byte $7c, $97, $5a ; $b455
			.byte $77, $5d ; $b458
			.byte $97, $5d ; $b45a
			.byte $5e, $7c, $7d ; $b45c
			.byte $7b, $78, $92 ; $b45f
			.byte $00 ; $b462
			.byte $92 ; $b463
			.byte $78 ; $b464
			.byte $7e, $97, $72 ; $b465
			.byte $77, $97 ; $b468
			.byte $5f, $7e, $7d ; $b46a
			.byte $7e, $7b, $5e ; $b46d
			.byte $98 ; $b470
			.byte $97, $97 ; $b471
			.byte $56, $5e ; $b473
			.byte $97 ; $b475
			.byte $7c, $71, $5a ; $b476
			.byte $75, $75 ; $b479
			.byte $00 ; $b47b
			.byte $77, $78 ; $b47c
			.byte $7d, $97, $5f ; $b47e
			.byte $5a ; $b481
			.byte $72 ; $b482
			.byte $75, $98 ; $b483
			.byte $97, $97 ; $b485
			.byte $7d, $71, $72 ; $b487
			.byte $7c, $97, $72 ; $b48a
			.byte $7c, $97, $78 ; $b48d
			.byte $7e, $7b, $00 ; $b490
			.byte $5c, $71, $5a ; $b493
			.byte $75, $75 ; $b496
			.byte $5e, $77, $70 ; $b498
			.byte $5e, $97, $7d ; $b49b
			.byte $78 ; $b49e
			.byte $97, $92 ; $b49f
			.byte $78 ; $b4a1
			.byte $7e, $94, $97 ; $b4a2
			.byte $53, $71 ; $b4a5
			.byte $5e, $97, $75 ; $b4a7
			.byte $5a ; $b4aa
			.byte $7c, $7d, $00 ; $b4ab
			.byte $5d, $5a, $92 ; $b4ae
			.byte $7c, $97, $78 ; $b4b1
			.byte $5f, $97, $7d ; $b4b4
			.byte $71, $5e ; $b4b7
			.byte $97, $5e ; $b4b9
			.byte $5a ; $b4bb
			.byte $7b, $7d, $71 ; $b4bc
			.byte $97, $5a ; $b4bf
			.byte $7b, $5e, $00 ; $b4c1
			.byte $5c, $78, $76 ; $b4c4
			.byte $72 ; $b4c7
			.byte $77, $70 ; $b4c8
			.byte $97, $7c ; $b4ca
			.byte $78 ; $b4cc
			.byte $78 ; $b4cd
			.byte $77, $98 ; $b4ce
			.byte $00 ; $b4d0
			.byte $34, $5a ; $b4d1
			.byte $7b, $7d, $71 ; $b4d3
			.byte $75, $72 ; $b4d6
			.byte $77, $70 ; $b4d8
			.byte $7c, $96, $79 ; $b4da
			.byte $7b, $5e, $79 ; $b4dd
			.byte $5a ; $b4e0
			.byte $7b, $5e, $97 ; $b4e1
			.byte $7d, $78, $97 ; $b4e4
			.byte $5d, $72, $5e ; $b4e7
			.byte $98 ; $b4ea
			.byte $9a ; $b4eb
			.byte $00 ; $b4ec
			.byte $97, $00 ; $b4ed
			.byte $97, $00 ; $b4ef
			.byte $97, $00 ; $b4f1
			.byte $97, $00 ; $b4f3
			.byte $97, $00 ; $b4f5
			.byte $97, $00 ; $b4f7
			.byte $97, $00 ; $b4f9
			.byte $97, $00 ; $b4fb
			.byte $97, $00 ; $b4fd
			.byte $97, $00 ; $b4ff
			.byte $97, $00 ; $b501
			.byte $00 ; $b503
			.byte $00 ; $b504
			.byte $00 ; $b505
PRG04_b506:
			.byte $ff, $00, $ff ; $b506
			.byte $00 ; $b509
			.byte $ff, $00, $ff ; $b50a
			.byte $00 ; $b50d
			.byte $90, $00 ; $b50e
			.byte $07, $15 ; $b510
			.byte $00 ; $b512
			.byte $13, $00 ; $b513
			.byte $25, $00 ; $b515
			.byte $26, $ff ; $b517
			.byte $00 ; $b519
			.byte $ff, $00, $ff ; $b51a
			.byte $00 ; $b51d
			.byte $b0, $00 ; $b51e
			.byte $c0, $aa ; $b520
			.byte $00 ; $b522
			.byte $ff, $00, $ff ; $b523
			.byte $00 ; $b526
			.byte $ae, $00, $07 ; $b527
			.byte $19, $17, $2c ; $b52a
			.byte $21, $24 ; $b52d
			.byte $13, $1a ; $b52f
			.byte $8d, $00, $01 ; $b531
			.byte $01, $9f ; $b534
			.byte $00 ; $b536
			.byte $01, $01 ; $b537
			.byte $8f, $00, $02 ; $b539
			.byte $02 ; $b53c
			.byte $03, $9d ; $b53d
			.byte $00 ; $b53f
			.byte $03, $06 ; $b540
			.byte $07, $08 ; $b542
			.byte $9d, $00, $03 ; $b544
			.byte $0b, $0c ; $b547
			.byte $0d, $9c, $00 ; $b549
			.byte $04, $10 ; $b54c
			.byte $11, $12 ; $b54e
			.byte $13, $9c ; $b550
			.byte $00 ; $b552
			.byte $04, $16 ; $b553
			.byte $17, $18 ; $b555
			.byte $19, $9c, $00 ; $b557
			.byte $04, $1c ; $b55a
			.byte $1d, $1e, $1f ; $b55c
			.byte $99 ; $b55f
			.byte $00, $08, $5d, $5e ; $b560
			.byte $00, $22, $23, $24 ; $b564
			.byte $25, $26, $98, $00 ; $b568
			.byte $08, $5f, $60, $61 ; $b56c
			.byte $29, $2a, $2b ; $b570
			.byte $2c, $2d, $9a ; $b573
			.byte $00 ; $b576
			.byte $06, $63 ; $b577
			.byte $30, $31 ; $b579
			.byte $56, $33 ; $b57b
			.byte $34, $9a ; $b57d
			.byte $00 ; $b57f
			.byte $05, $47 ; $b580
			.byte $37, $38 ; $b582
			.byte $39, $3a, $9b ; $b584
			.byte $00 ; $b587
			.byte $06, $3b ; $b588
			.byte $3c, $3d, $3e ; $b58a
			.byte $3f, $40, $9a ; $b58d
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
			.byte $28 ; $b61d
			.byte $13, $24 ; $b61e
			.byte $13, $19 ; $b620
			.byte $21, $20 ; $b622
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
			.byte $8c, $00, $98 ; $b6d2
			.byte $aa ; $b6d5
			.byte $a8 ; $b6d6
			.byte $00 ; $b6d7
			.byte $00 ; $b6d8
			.byte $ff, $00, $ff ; $b6d9
			.byte $00 ; $b6dc
			.byte $af, $00, $06 ; $b6dd
			.byte $1a ; $b6e0
			.byte $17, $16 ; $b6e1
			.byte $24, $13 ; $b6e3
			.byte $1a ; $b6e5
			.byte $8d, $00, $01 ; $b6e6
			.byte $01, $9f ; $b6e9
			.byte $00 ; $b6eb
			.byte $01, $01 ; $b6ec
			.byte $d4, $00 ; $b6ee
			.byte $03, $02 ; $b6f0
			.byte $03, $04 ; $b6f2
			.byte $9d, $00, $03 ; $b6f4
			.byte $08 ; $b6f7
			.byte $09, $0a ; $b6f8
			.byte $9d, $00, $04 ; $b6fa
			.byte $0f, $10, $11 ; $b6fd
			.byte $12 ; $b700
			.byte $8d, $00, $04 ; $b701
			.byte $c4, $c5 ; $b704
			.byte $c6, $c7 ; $b706
			.byte $87, $00 ; $b708
			.byte $08 ; $b70a
			.byte $b2 ; $b70b
			.byte $b3, $b4 ; $b70c
			.byte $00 ; $b70e
			.byte $17, $18 ; $b70f
			.byte $19, $1a, $8c ; $b711
			.byte $00 ; $b714
			.byte $14, $c8 ; $b715
			.byte $c9, $ca ; $b717
			.byte $cb, $cc ; $b719
			.byte $cd, $ce, $cf ; $b71b
			.byte $d0, $b2 ; $b71e
			.byte $00 ; $b720
			.byte $5e, $60, $b5 ; $b721
			.byte $b6, $b7 ; $b724
			.byte $b8 ; $b726
			.byte $b9, $19, $71 ; $b727
			.byte $8c, $00, $14 ; $b72a
			.byte $d1, $d2 ; $b72d
			.byte $d3, $d4 ; $b72f
			.byte $d5, $d6 ; $b731
			.byte $d7, $d8 ; $b733
			.byte $d9, $da, $00 ; $b735
			.byte $5b, $57, $ba ; $b738
			.byte $bb, $bc, $bd ; $b73b
			.byte $be, $24, $76 ; $b73e
			.byte $8c, $00, $05 ; $b741
			.byte $db, $dc, $dd ; $b744
			.byte $de, $df, $89 ; $b747
			.byte $00 ; $b74a
			.byte $06, $77 ; $b74b
			.byte $78 ; $b74d
			.byte $79, $7a, $7b ; $b74e
			.byte $7c, $9c, $00 ; $b751
			.byte $04, $43 ; $b754
			.byte $44, $45 ; $b756
			.byte $46, $9c ; $b758
			.byte $00 ; $b75a
			.byte $06, $4c ; $b75b
			.byte $4d, $4e, $4f ; $b75d
			.byte $4a ; $b760
			.byte $4b, $99 ; $b761
			.byte $00 ; $b763
			.byte $08 ; $b764
			.byte $53, $54 ; $b765
			.byte $55, $54 ; $b767
			.byte $5c, $58, $59 ; $b769
			.byte $5a ; $b76c
			.byte $ff, $00, $e5 ; $b76d
			.byte $00 ; $b770
			.byte $98 ; $b771
			.byte $aa ; $b772
			.byte $85, $00 ; $b773
			.byte $01, $10 ; $b775
			.byte $83, $00 ; $b777
			.byte $01, $01 ; $b779
			.byte $9e, $00, $00 ; $b77b
			.byte $ff, $00, $ff ; $b77e
			.byte $00 ; $b781
			.byte $af, $00, $05 ; $b782
			.byte $19, $1b, $19 ; $b785
			.byte $13, $20 ; $b788
			.byte $8e, $00, $01 ; $b78a
			.byte $01, $9f ; $b78d
			.byte $00 ; $b78f
			.byte $01, $01 ; $b790
			.byte $ec, $00, $02 ; $b792
			.byte $49, $4a ; $b795
			.byte $9d, $00, $05 ; $b797
			.byte $58 ; $b79a
			.byte $56, $92 ; $b79b
			.byte $00 ; $b79d
			.byte $c4, $9a ; $b79e
			.byte $00 ; $b7a0
			.byte $06, $69 ; $b7a1
			.byte $6a ; $b7a3
			.byte $cf, $99, $9a ; $b7a4
			.byte $ce, $9b, $00 ; $b7a7
			.byte $06, $d9 ; $b7aa
			.byte $da ; $b7ac
			.byte $a7, $a8 ; $b7ad
			.byte $d7, $d8 ; $b7af
			.byte $9b ; $b7b1
			.byte $00 ; $b7b2
			.byte $05, $e4 ; $b7b3
			.byte $e5, $b7 ; $b7b5
			.byte $e2, $e3 ; $b7b7
			.byte $9b ; $b7b9
			.byte $00 ; $b7ba
			.byte $04, $37 ; $b7bb
			.byte $38 ; $b7bd
			.byte $39, $e9, $9c ; $b7be
			.byte $00 ; $b7c1
			.byte $04, $15 ; $b7c2
			.byte $97, $47 ; $b7c4
			.byte $48 ; $b7c6
			.byte $9c, $00, $07 ; $b7c7
			.byte $0e, $a3, $54 ; $b7ca
			.byte $55, $c8 ; $b7cd
			.byte $c9, $ca ; $b7cf
			.byte $98 ; $b7d1
			.byte $00 ; $b7d2
			.byte $08 ; $b7d3
			.byte $af, $b0, $b1 ; $b7d4
			.byte $b4, $b5 ; $b7d7
			.byte $d2 ; $b7d9
			.byte $d3, $d4 ; $b7da
			.byte $ff, $00, $ed ; $b7dc
			.byte $00 ; $b7df
			.byte $98 ; $b7e0
			.byte $ff, $84, $00 ; $b7e1
			.byte $01, $30 ; $b7e4
			.byte $85, $00 ; $b7e6
			.byte $03, $04 ; $b7e8
			.byte $95, $33 ; $b7ea
			.byte $86, $00 ; $b7ec
			.byte $02 ; $b7ee
			.byte $59, $5a, $86 ; $b7ef
			.byte $00 ; $b7f2
			.byte $02 ; $b7f3
			.byte $05, $05 ; $b7f4
			.byte $8b, $00 ; $b7f6
			.byte $00 ; $b7f8
			.byte $ff, $00, $ff ; $b7f9
			.byte $00 ; $b7fc
			.byte $ab, $00 ; $b7fd
			.byte $0d, $1f, $17 ; $b7ff
			.byte $15, $1a ; $b802
			.byte $13, $19 ; $b804
			.byte $21, $16 ; $b806
			.byte $2c, $1b, $1e ; $b808
			.byte $1e, $13, $8a ; $b80b
			.byte $00 ; $b80e
			.byte $01, $01 ; $b80f
			.byte $9f, $00, $01 ; $b811
			.byte $01, $ed ; $b814
			.byte $00 ; $b816
			.byte $01, $38 ; $b817
			.byte $9e, $00, $04 ; $b819
			.byte $3d, $3e, $3f ; $b81c
			.byte $0a ; $b81f
			.byte $9b ; $b820
			.byte $00 ; $b821
			.byte $05, $4a ; $b822
			.byte $15, $4b ; $b824
			.byte $4c, $0d, $9b ; $b826
			.byte $00 ; $b829
			.byte $06, $52 ; $b82a
			.byte $53, $54 ; $b82c
			.byte $55, $56 ; $b82e
			.byte $14, $9c ; $b830
			.byte $00 ; $b832
			.byte $04, $5c ; $b833
			.byte $5d, $30, $28 ; $b835
			.byte $9c, $00, $04 ; $b838
			.byte $89 ; $b83b
			.byte $8d, $8e, $8c ; $b83c
			.byte $9c, $00, $05 ; $b83f
			.byte $9d, $9e, $9f ; $b842
			.byte $a0, $9c ; $b845
			.byte $9b ; $b847
			.byte $00 ; $b848
			.byte $07, $b3 ; $b849
			.byte $b4, $b5 ; $b84b
			.byte $b6, $b0 ; $b84d
			.byte $b1, $b2 ; $b84f
			.byte $98 ; $b851
			.byte $00 ; $b852
			.byte $08 ; $b853
			.byte $c9, $ca ; $b854
			.byte $00 ; $b856
			.byte $cb, $cc ; $b857
			.byte $c7, $c8 ; $b859
			.byte $00 ; $b85b
			.byte $ff, $00, $ec ; $b85c
			.byte $00 ; $b85f
			.byte $98 ; $b860
			.byte $aa ; $b861
			.byte $83, $00 ; $b862
			.byte $01, $50 ; $b864
			.byte $a4, $00 ; $b866
			.byte $00 ; $b868
			.byte $ff, $00, $ff ; $b869
			.byte $00 ; $b86c
			.byte $ad, $00, $0a ; $b86d
			.byte $00 ; $b870
			.byte $19, $1a, $1b ; $b871
			.byte $16, $21 ; $b874
			.byte $24, $13 ; $b876
			.byte $00 ; $b878
			.byte $00 ; $b879
			.byte $8b, $00 ; $b87a
			.byte $01, $01 ; $b87c
			.byte $9f, $00, $01 ; $b87e
			.byte $01, $8f ; $b881
			.byte $00 ; $b883
			.byte $01, $02 ; $b884
			.byte $9e, $00, $02 ; $b886
			.byte $03, $04 ; $b889
			.byte $9e, $00, $03 ; $b88b
			.byte $05, $06 ; $b88e
			.byte $07, $9d ; $b890
			.byte $00 ; $b892
			.byte $04, $08 ; $b893
			.byte $09, $0a ; $b895
			.byte $0b, $9c ; $b897
			.byte $00 ; $b899
			.byte $05, $0c ; $b89a
			.byte $0d, $0e, $0f ; $b89c
			.byte $10, $9b ; $b89f
			.byte $00 ; $b8a1
			.byte $06, $11 ; $b8a2
			.byte $12 ; $b8a4
			.byte $13, $14 ; $b8a5
			.byte $15, $16 ; $b8a7
			.byte $9a ; $b8a9
			.byte $00 ; $b8aa
			.byte $06, $19 ; $b8ab
			.byte $1a ; $b8ad
			.byte $1b, $1c, $1d ; $b8ae
			.byte $1e, $96, $00 ; $b8b1
			.byte $0a ; $b8b4
			.byte $68 ; $b8b5
			.byte $69, $6a ; $b8b6
			.byte $00 ; $b8b8
			.byte $00 ; $b8b9
			.byte $22 ; $b8ba
			.byte $23, $24 ; $b8bb
			.byte $25, $26 ; $b8bd
			.byte $95, $00 ; $b8bf
			.byte $0c, $78, $79 ; $b8c1
			.byte $7a ; $b8c4
			.byte $7b, $7c, $00 ; $b8c5
			.byte $2c, $2d, $2e ; $b8c8
			.byte $2f, $30, $31 ; $b8cb
			.byte $94, $00 ; $b8ce
			.byte $0b, $92 ; $b8d0
			.byte $93, $94 ; $b8d2
			.byte $95, $96 ; $b8d4
			.byte $4f ; $b8d6
			.byte $38 ; $b8d7
			.byte $39, $3a, $3b ; $b8d8
			.byte $3c, $94, $00 ; $b8db
			.byte $0f, $ac, $ad ; $b8de
			.byte $ae, $af, $b0 ; $b8e1
			.byte $b1, $5b ; $b8e4
			.byte $5c, $5d, $5e ; $b8e6
			.byte $5f, $00, $00 ; $b8e9
			.byte $60 ; $b8ec
			.byte $61, $91 ; $b8ed
			.byte $00 ; $b8ef
			.byte $04, $c1 ; $b8f0
			.byte $c2, $c3 ; $b8f2
			.byte $c4, $83 ; $b8f4
			.byte $00 ; $b8f6
			.byte $08 ; $b8f7
			.byte $52 ; $b8f8
			.byte $53, $54 ; $b8f9
			.byte $55, $56 ; $b8fb
			.byte $57, $58 ; $b8fd
			.byte $59, $92, $00 ; $b8ff
			.byte $03, $cf ; $b902
			.byte $d0, $d1 ; $b904
			.byte $85, $00 ; $b906
			.byte $03, $62 ; $b908
			.byte $63, $64 ; $b90a
			.byte $95, $00 ; $b90c
			.byte $02 ; $b90e
			.byte $d7, $d9 ; $b90f
			.byte $88 ; $b911
			.byte $00 ; $b912
			.byte $01, $5a ; $b913
			.byte $ff, $00, $ac ; $b915
			.byte $00 ; $b918
			.byte $93, $aa ; $b919
			.byte $02 ; $b91b
			.byte $2a ; $b91c
			.byte $8a ; $b91d
			.byte $83, $aa ; $b91e
			.byte $a8 ; $b920
			.byte $00 ; $b921
			.byte $00 ; $b922
			.byte $ff, $00, $ff ; $b923
			.byte $00 ; $b926
			.byte $af, $00, $06 ; $b927
			.byte $1f, $21, $26 ; $b92a
			.byte $1a ; $b92d
			.byte $24, $13 ; $b92e
			.byte $8d, $00, $01 ; $b930
			.byte $01, $9f ; $b933
			.byte $00 ; $b935
			.byte $01, $01 ; $b936
			.byte $ff, $00, $ff ; $b938
			.byte $00 ; $b93b
			.byte $ff, $00, $ff ; $b93c
			.byte $00 ; $b93f
			.byte $e3, $00 ; $b940
			.byte $98 ; $b942
			.byte $aa ; $b943
			.byte $a8 ; $b944
			.byte $00 ; $b945
			.byte $00 ; $b946
			.byte $ff, $00, $ff ; $b947
			.byte $00 ; $b94a
			.byte $ae, $00, $08 ; $b94b
			.byte $19, $21, $16 ; $b94e
			.byte $2c, $1b, $1e ; $b951
			.byte $1e, $13, $8c ; $b954
			.byte $00 ; $b957
			.byte $01, $01 ; $b958
			.byte $9f, $00, $01 ; $b95a
			.byte $01, $ff ; $b95d
			.byte $00 ; $b95f
			.byte $ff, $00, $ff ; $b960
			.byte $00 ; $b963
			.byte $ff, $00, $e3 ; $b964
			.byte $00 ; $b967
			.byte $98 ; $b968
			.byte $aa ; $b969
			.byte $a8 ; $b96a
			.byte $00 ; $b96b
			.byte $00 ; $b96c
			

			lda #MusID_Credits				; $b96d: a9 17
			jsr Goto_PlaySound			; $b96f: 20 c6 c0
			lda #$00				; $b972: a9 00
			sta $04c0			; $b974: 8d c0 04
PRG04_b977:
			jsr Goto_WaitFrame			; $b977: 20 ba c0
			jsr PRG04_ba78			; $b97a: 20 78 ba
			lda $04c0			; $b97d: ad c0 04
			bpl PRG04_b977			; $b980: 10 f5
			lda #$00				; $b982: a9 00
			sta $04c0			; $b984: 8d c0 04
PRG04_b987:
			jsr Goto_WaitFrame			; $b987: 20 ba c0
			jsr PRG04_bb41			; $b98a: 20 41 bb
			lda $04c0			; $b98d: ad c0 04
			bpl PRG04_b987			; $b990: 10 f5
			lda #$00				; $b992: a9 00
			sta $04c0			; $b994: 8d c0 04
PRG04_b997:
			jsr Goto_WaitFrame			; $b997: 20 ba c0
			jsr PRG04_bca8			; $b99a: 20 a8 bc
			lda $04c0			; $b99d: ad c0 04
			bpl PRG04_b997			; $b9a0: 10 f5
			
			jsr PRG04_b9a8			; $b9a2: 20 a8 b9
PRG04_b9a5:
			jmp PRG04_b9a5			; $b9a5: 4c a5 b9

;-------------------------------------------------------------------------------
PRG04_b9a8:
			ldx #$32				; $b9a8: a2 32
			jsr Goto_GameWait			; $b9aa: 20 c3 c0
			lda #$20				; $b9ad: a9 20
			sta @w $0089
			ldx #$01				; $b9b2: a2 01
			jsr Goto_GameWait			; $b9b4: 20 c3 c0
			lda #$10				; $b9b7: a9 10
			sta @w $0089	; $b9b9: 8d 89 00
			ldx #$01				; $b9bc: a2 01
			jsr Goto_GameWait			; $b9be: 20 c3 c0
			lda #$00				; $b9c1: a9 00
			sta @w $0089	; $b9c3: 8d 89 00
			ldx #$01				; $b9c6: a2 01
			jsr Goto_GameWait			; $b9c8: 20 c3 c0
			lda #$0f				; $b9cb: a9 0f
			sta @w $0089	; $b9cd: 8d 89 00
			ldx #$0a				; $b9d0: a2 0a
			jsr Goto_GameWait			; $b9d2: 20 c3 c0
			LoadAddress PRG04_ba4f
			lda #$23				; $b9dd: a9 23
			sta $a3			; $b9df: 85 a3
			lda #$21				; $b9e1: a9 21
			sta $a4			; $b9e3: 85 a4
			lda #$1a				; $b9e5: a9 1a
			sta $a1			; $b9e7: 85 a1
			lda #$00				; $b9e9: a9 00
			sta $a2			; $b9eb: 85 a2
			jsr Main_c027			; $b9ed: 20 27 c0
			LoadAddress PRG04_ba69
			lda #$6c				; $b9f8: a9 6c
			sta $a3			; $b9fa: 85 a3
			lda #$21				; $b9fc: a9 21
			sta $a4			; $b9fe: 85 a4
			lda #$08				; $ba00: a9 08
			sta $a1			; $ba02: 85 a1
			lda #$00				; $ba04: a9 00
			sta $a2			; $ba06: 85 a2
			jsr Main_c027			; $ba08: 20 27 c0
			lda #$00				; $ba0b: a9 00
			sta @w $0089	; $ba0d: 8d 89 00
			ldx #$01				; $ba10: a2 01
			jsr Goto_GameWait			; $ba12: 20 c3 c0
			lda #$10				; $ba15: a9 10
			sta @w $0089	; $ba17: 8d 89 00
			ldx #$01				; $ba1a: a2 01
			jsr Goto_GameWait			; $ba1c: 20 c3 c0
			lda #$20				; $ba1f: a9 20
			sta @w $0089	; $ba21: 8d 89 00
			ldx #$01				; $ba24: a2 01
			jsr Goto_GameWait			; $ba26: 20 c3 c0
			lda #$30				; $ba29: a9 30
			sta @w $0089	; $ba2b: 8d 89 00
			ldx #$0a				; $ba2e: a2 0a
			jsr Goto_GameWait			; $ba30: 20 c3 c0
			LoadAddress PRG04_ba71
			lda #$d5				; $ba3b: a9 d5
			sta $a3			; $ba3d: 85 a3
			lda #$22				; $ba3f: a9 22
			sta $a4			; $ba41: 85 a4
			lda #$07				; $ba43: a9 07
			sta $a1			; $ba45: 85 a1
			lda #$00				; $ba47: a9 00
			sta $a2			; $ba49: 85 a2
			jsr Main_c027			; $ba4b: 20 27 c0
			rts				; $ba4e: 60

;-------------------------------------------------------------------------------
PRG04_ba4f:
			.byte $26, $21 ; $ba4f
			.byte $1a ; $ba51
			.byte $21, $00 ; $ba52
			.byte $15, $1b ; $ba54
			.byte $20, $17, $18 ; $ba56
			.byte $1b, $1e, $17 ; $ba59
			.byte $2e, $25, $21 ; $ba5c
			.byte $18 ; $ba5f
			.byte $26, $00 ; $ba60
			.byte $1e, $1b, $14 ; $ba62
			.byte $24, $13 ; $ba65
			.byte $24, $2b ; $ba67
PRG04_ba69:
			.byte $22 ; $ba69
			.byte $24, $17 ; $ba6a
			.byte $25, $17 ; $ba6c
			.byte $20, $26, $25 ; $ba6e
PRG04_ba71:
			.byte $26, $1a ; $ba71
			.byte $17, $00 ; $ba73
			.byte $17, $20 ; $ba75
			.byte $16 ; $ba77

PRG04_ba78:
			ldy $04c0			; $ba78: ac c0 04
			bpl PRG04_ba7e			; $ba7b: 10 01
			rts				; $ba7d: 60

;-------------------------------------------------------------------------------
PRG04_ba7e:
			LoadAddressFromTable PRG04_ba8b, PRG04_ba90, y
			jmp (LoadedAddress)		; $ba88: 6c a5 00

;-------------------------------------------------------------------------------
			TableStart
			TableInsert PRG04_ba95
			TableInsert PRG04_baec
			TableInsert PRG04_baf6
			TableInsert PRG04_bb13
			TableInsert PRG04_bb35

PRG04_ba8b:	.byte <CurrentTable
PRG04_ba90:	.byte >CurrentTable

;	TODO: code
PRG04_ba95:
			.byte $a9, $08, $8d	; $ba95: a9 08 8d	 Data
			.byte $20, $01, $20, $ae	; $ba98: 20 01 20 ae	 Data
			.byte $c0, $20, $3c, $c0	; $ba9c: c0 20 3c c0	 Data
			.byte $a9, $02, $8d, $2b	; $baa0: a9 02 8d 2b	 Data
			.byte $01, $a5, $ec, $29	; $baa4: 01 a5 ec 29	 Data
			.byte $fe, $09, $02, $20	; $baa8: fe 09 02 20	 Data
			.byte $5a, $c0, $20, $2d	; $baac: 5a c0 20 2d	 Data
			.byte $c0, $a9, $17, $85	; $bab0: c0 a9 17 85	 Data
			.byte $e9, $a9, $0f, $85	; $bab4: e9 a9 0f 85	 Data
			.byte $e8, $a9, $7a, $85	; $bab8: e8 a9 7a 85	 Data
			.byte $a5, $a9, $af, $85	; $babc: a5 a9 af 85	 Data
			.byte $a6, $a2, $20, $a0	; $bac0: a6 a2 20 a0	 Data
			.byte $00, $20, $c0, $c0	; $bac4: 00 20 c0 c0	 Data
			.byte $20, $84, $c0, $a0	; $bac8: 20 84 c0 a0	 Data
			.byte $0b, $20, $8f, $aa	; $bacc: 0b 20 8f aa	 Data
			.byte $a9, $0f, $8d, $00	; $bad0: a9 0f 8d 00	 Data
			.byte $01, $a9, $0e, $20	; $bad4: 01 a9 0e 20	 Data
			.byte $01, $af, $20, $ba	; $bad8: 01 af 20 ba	 Data
			.byte $c0, $20, $ba, $c0	; $badc: c0 20 ba c0	 Data
			.byte $20, $b1, $c0, $a9	; $bae0: 20 b1 c0 a9	 Data
			.byte $fa, $8d, $c1, $04	; $bae4: fa 8d c1 04	 Data
			.byte $ee, $c0, $04, $60	; $bae8: ee c0 04 60	 Data
PRG04_baec:
			.byte $ce, $c1, $04, $f0	; $baec: ce c1 04 f0	 Data
			.byte $01, $60, $ee, $c0	; $baf0: 01 60 ee c0	 Data
			.byte $04, $60
PRG04_baf6:
			.byte $ce, $c1
			.byte $04, $ad, $c1, $04	; $baf8: 04 ad c1 04	 Data
			.byte $29, $01, $f0, $01	; $bafc: 29 01 f0 01	 Data
			.byte $60	; $bb00: 60			Data
PRG04_bb01:
			.byte $e6, $d9, $a5, $d9	; $bb01: e6 d9 a5 d9	 Data
			.byte $c9, $20, $b0, $01	; $bb05: c9 20 b0 01	 Data
			.byte $60	; $bb09: 60			Data
PRG04_bb0a:
			.byte $a0, $05, $20, $8f	; $bb0a: a0 05 20 8f	 Data
			.byte $aa, $ee, $c0, $04	; $bb0e: aa ee c0 04	 Data
			.byte $60
PRG04_bb13:
			.byte $a0, $ff, $20	; $bb12: 60 a0 ff 20	 Data
			.byte $8f, $aa, $ce, $c1	; $bb16: 8f aa ce c1	 Data
			.byte $04, $ad, $c1, $04	; $bb1a: 04 ad c1 04	 Data
			.byte $29, $01, $f0, $01	; $bb1e: 29 01 f0 01	 Data
			.byte $60	; $bb22: 60			Data
PRG04_bb23:
			lda $d9			; $bb23: a5 d9
			cmp #$ff				; $bb25: c9 ff
			beq PRG04_bb2c			; $bb27: f0 03
			inc $d9			; $bb29: e6 d9
			rts				; $bb2b: 60

;-------------------------------------------------------------------------------
PRG04_bb2c:
			lda #$fa				; $bb2c: a9 fa
			sta $04c1			; $bb2e: 8d c1 04
			inc $04c0			; $bb31: ee c0 04
			rts				; $bb34: 60

;-------------------------------------------------------------------------------
PRG04_bb35:
			dec $04c1			; $bb35: ce c1 04
			beq PRG04_bb3b			; $bb38: f0 01
			rts				; $bb3a: 60

;-------------------------------------------------------------------------------
PRG04_bb3b:
			lda #$ff				; $bb3b: a9 ff
			sta $04c0			; $bb3d: 8d c0 04
			rts				; $bb40: 60

;-------------------------------------------------------------------------------
PRG04_bb41:
			ldy $04c0			; $bb41: ac c0 04
			bpl PRG04_bb47			; $bb44: 10 01
			rts				; $bb46: 60

;-------------------------------------------------------------------------------
PRG04_bb47:
			LoadAddressFromTable PRG04_bb54, PRG04_bb56, y
			jmp (LoadedAddress)		; $bb51: 6c a5 00

;-------------------------------------------------------------------------------
PRG04_bb54:
			.byte <PRG04_bb58
			.byte <PRG04_bbae
PRG04_bb56:
			.byte >PRG04_bb58
			.byte >PRG04_bbae
	; TODO: code
PRG04_bb58:
			.byte $a9, $00	; $bb58: a9 00	 Data
			.byte $85, $34, $8d, $c4	; $bb5a: 85 34 8d c4	 Data
			.byte $04, $a9, $e2, $8d	; $bb5e: 04 a9 e2 8d	 Data
			.byte $c2, $04, $a9, $b0	; $bb62: c2 04 a9 b0	 Data
			.byte $8d, $c3, $04, $20	; $bb66: 8d c3 04 20	 Data
			.byte $84, $c0, $a9, $08	; $bb6a: 84 c0 a9 08	 Data
			.byte $8d, $20, $01, $20	; $bb6e: 8d 20 01 20	 Data
			.byte $ae, $c0, $20, $3c	; $bb72: ae c0 20 3c	 Data
			.byte $c0, $a9, $02, $8d	; $bb76: c0 a9 02 8d	 Data
			.byte $2b, $01, $20, $2d	; $bb7a: 2b 01 20 2d	 Data
			.byte $c0, $a9, $04, $85	; $bb7e: c0 a9 04 85	 Data
			.byte $d9, $a9, $00, $85	; $bb82: d9 a9 00 85	 Data
			.byte $e9, $a0, $1f, $a9	; $bb86: e9 a0 1f a9	 Data
			.byte $0f	; $bb8a: 0f			Data
PRG04_bb8b:
			sta $0100,y		; $bb8b: 99 00 01
			dey				; $bb8e: 88
			bpl PRG04_bb8b			; $bb8f: 10 fa
			lda #$30				; $bb91: a9 30
			sta $0101			; $bb93: 8d 01 01
			sta $0105			; $bb96: 8d 05 01
			sta $0109			; $bb99: 8d 09 01
			sta $010d			; $bb9c: 8d 0d 01
			jsr Goto_ClearScreen			; $bb9f: 20 7e c0
			jsr Main_c075			; $bba2: 20 75 c0
			inc $04c0			; $bba5: ee c0 04
			jsr Goto_ClearScreen			; $bba8: 20 7e c0
			jmp Main_c0b1			; $bbab: 4c b1 c0

;-------------------------------------------------------------------------------
PRG04_bbae:
			lda #$01				; $bbae: a9 01
			jsr PRG04_bbd2			; $bbb0: 20 d2 bb
			lda #$02				; $bbb3: a9 02
			jsr PRG04_bbd2			; $bbb5: 20 d2 bb
			lda #$00				; $bbb8: a9 00
			jsr PRG04_bbd2			; $bbba: 20 d2 bb
			lda $04c0			; $bbbd: ad c0 04
			bpl PRG04_bbae			; $bbc0: 10 ec
			jsr Goto_FadeInOut			; $bbc2: 20 ae c0
			lda #$00				; $bbc5: a9 00
			sta $d9			; $bbc7: 85 d9
			sta $da			; $bbc9: 85 da
			sta $db			; $bbcb: 85 db
			sta $dc			; $bbcd: 85 dc
			jmp Main_c072			; $bbcf: 4c 72 c0

;-------------------------------------------------------------------------------
PRG04_bbd2:
			sta $a1			; $bbd2: 85 a1
			lda $04c4			; $bbd4: ad c4 04
			sta $a3			; $bbd7: 85 a3
			lda #$00				; $bbd9: a9 00
			sta $a4			; $bbdb: 85 a4
			ldx #$05				; $bbdd: a2 05
PRG04_bbdf:
			asl $a3			; $bbdf: 06 a3
			rol $a4			; $bbe1: 26 a4
			dex				; $bbe3: ca
			bne PRG04_bbdf			; $bbe4: d0 f9
			lda $dc			; $bbe6: a5 dc
			and #$01				; $bbe8: 29 01
			beq PRG04_bbf0			; $bbea: f0 04
			lda #$20				; $bbec: a9 20
			bne PRG04_bbf3			; $bbee: d0 03
PRG04_bbf0:
			clc				; $bbf0: 18
			lda #$24				; $bbf1: a9 24
PRG04_bbf3:
			adc $a4			; $bbf3: 65 a4
			sta $a4			; $bbf5: 85 a4
			inc $04c4			; $bbf7: ee c4 04
			lda $04c4			; $bbfa: ad c4 04
			cmp #$1e				; $bbfd: c9 1e
			bcc PRG04_bc06			; $bbff: 90 05
			lda #$00				; $bc01: a9 00
			sta $04c4			; $bc03: 8d c4 04
PRG04_bc06:
			ldx $a4			; $bc06: a6 a4
			ldy $a3			; $bc08: a4 a3
			jsr Main_c00f			; $bc0a: 20 0f c0
			LoadAddressTransfer $04c2
			ldy #$00				; $bc17: a0 00
			lda #$20				; $bc19: a9 20
			ldy $cb			; $bc1b: a4 cb
			jsr Main_c0e4			; $bc1d: 20 e4 c0
			tya				; $bc20: 98
			tax				; $bc21: aa
			lda #$00				; $bc22: a9 00
			sta $a0			; $bc24: 85 a0
			ldy #$03				; $bc26: a0 03
PRG04_bc28:
			sta $0700,x		; $bc28: 9d 00 07
			inx				; $bc2b: e8
			dey				; $bc2c: 88
			bne PRG04_bc28			; $bc2d: d0 f9
PRG04_bc2f:
			lda $a1			; $bc2f: a5 a1
			beq PRG04_bc51			; $bc31: f0 1e
			lda (LoadedAddress),y		; $bc33: b1 a5
			beq PRG04_bc51			; $bc35: f0 1a
			sta $a2			; $bc37: 85 a2
			lda $a1			; $bc39: a5 a1
			cmp #$01				; $bc3b: c9 01
			beq PRG04_bc46			; $bc3d: f0 07
			clc				; $bc3f: 18
			lda $a2			; $bc40: a5 a2
			adc #$10				; $bc42: 69 10
			sta $a2			; $bc44: 85 a2
PRG04_bc46:
			lda $a2			; $bc46: a5 a2
			sta $0700,x		; $bc48: 9d 00 07
			inc $a0			; $bc4b: e6 a0
			inx				; $bc4d: e8
			iny				; $bc4e: c8
			bne PRG04_bc2f			; $bc4f: d0 de
PRG04_bc51:
			cpy #$1d				; $bc51: c0 1d
			bcs PRG04_bc5c			; $bc53: b0 07
			sta $0700,x		; $bc55: 9d 00 07
			inx				; $bc58: e8
			iny				; $bc59: c8
			bne PRG04_bc51			; $bc5a: d0 f5
PRG04_bc5c:
			lda #$20				; $bc5c: a9 20
			jsr Main_c0ea			; $bc5e: 20 ea c0
			lda $a1			; $bc61: a5 a1
			cmp #$02				; $bc63: c9 02
			bne PRG04_bc88			; $bc65: d0 21
			inc $a0			; $bc67: e6 a0
			clc				; $bc69: 18
			lda $a5			; $bc6a: a5 a5
			adc $a0			; $bc6c: 65 a0
			sta LoadAddress_Low			; $bc6e: 85 a5
			sta $04c2			; $bc70: 8d c2 04
			lda LoadAddress_High			; $bc73: a5 a6
			adc #$00				; $bc75: 69 00
			sta LoadAddress_High			; $bc77: 85 a6
			sta $04c3			; $bc79: 8d c3 04
			ldy #$00				; $bc7c: a0 00
			lda (LoadedAddress),y		; $bc7e: b1 a5
			bne PRG04_bc88			; $bc80: d0 06
			lda #$ff				; $bc82: a9 ff
			sta $04c0			; $bc84: 8d c0 04
			rts				; $bc87: 60

;-------------------------------------------------------------------------------
PRG04_bc88:
			ldx #$08				; $bc88: a2 08
PRG04_bc8a:
			ldy #$06				; $bc8a: a0 06
PRG04_bc8c:
			jsr Goto_WaitFrame			; $bc8c: 20 ba c0
			dey				; $bc8f: 88
			bne PRG04_bc8c			; $bc90: d0 fa
			inc $db			; $bc92: e6 db
			lda $db			; $bc94: a5 db
			cmp #$ef				; $bc96: c9 ef
			bcc PRG04_bca4			; $bc98: 90 0a
			lda #$00				; $bc9a: a9 00
			sta $db			; $bc9c: 85 db
			lda $dc			; $bc9e: a5 dc
			eor #$01				; $bca0: 49 01
			sta $dc			; $bca2: 85 dc
PRG04_bca4:
			dex				; $bca4: ca
			bne PRG04_bc8a			; $bca5: d0 e3
			rts				; $bca7: 60

;-------------------------------------------------------------------------------
PRG04_bca8:
			ldy $04c0			; $bca8: ac c0 04
			bpl PRG04_bcae			; $bcab: 10 01
			rts				; $bcad: 60

;-------------------------------------------------------------------------------
PRG04_bcae:
			LoadAddressFromTable PRG04_bcbb, PRG04_bcc1, y
			jmp (LoadedAddress)		; $bcb8: 6c a5 00

;-------------------------------------------------------------------------------
			TableStart
			TableInsert PRG04_bcc7
			TableInsert PRG04_bd25
			TableInsert PRG04_bd4b
			TableInsert PRG04_bdc5
			TableInsert PRG04_bdf9
			TableInsert PRG04_be79

PRG04_bcbb:	.byte <CurrentTable
PRG04_bcc1:	.byte >CurrentTable
;	TODO: code
PRG04_bcc7:
			.byte $58, $a9	; $bcc5: bd be 58 a9	 Data
			.byte $00, $85, $34, $8d	; $bcc9: 00 85 34 8d	 Data
			.byte $c2, $04, $a2, $ff	; $bccd: c2 04 a2 ff	 Data
PRG04_bcd1:
			sta $0400,x		; $bcd1: 9d 00 04
			sta $0500,x		; $bcd4: 9d 00 05
			dex				; $bcd7: ca
			bpl PRG04_bcd1			; $bcd8: 10 f7
			jsr Main_c084			; $bcda: 20 84 c0
			lda #$08				; $bcdd: a9 08
			sta $0120			; $bcdf: 8d 20 01
			jsr Goto_FadeInOut			; $bce2: 20 ae c0
			jsr Main_c03c			; $bce5: 20 3c c0
			lda #$02				; $bce8: a9 02
			sta $012b			; $bcea: 8d 2b 01
			jsr Main_c02d			; $bced: 20 2d c0
			lda #$1e				; $bcf0: a9 1e
			sta $c5			; $bcf2: 85 c5
			lda #$19				; $bcf4: a9 19
			sta WriteToCHR2_RAM			; $bcf6: 85 e9
			sta WriteToCHR1_RAM			; $bcf8: 85 e8
			LoadAddress PRG04_b506
			ldx #$20				; $bd02: a2 20
			ldy #$00				; $bd04: a0 00
			jsr Main_c0c0			; $bd06: 20 c0 c0
			lda #$20				; $bd09: a9 20
			jsr Goto_LoadPalette			; $bd0b: 20 d2 c0
			lda #$30				; $bd0e: a9 30
			sta $0109			; $bd10: 8d 09 01
			jsr Goto_WaitFrame			; $bd13: 20 ba c0
			jsr Goto_WaitFrame			; $bd16: 20 ba c0
			jsr Main_c0b1			; $bd19: 20 b1 c0
			lda #$b4				; $bd1c: a9 b4
			sta $04c1			; $bd1e: 8d c1 04
			inc $04c0			; $bd21: ee c0 04
			rts				; $bd24: 60

;-------------------------------------------------------------------------------
PRG04_bd25:
			dec $04c1			; $bd25: ce c1 04
			beq PRG04_bd2b			; $bd28: f0 01
			rts				; $bd2a: 60

;-------------------------------------------------------------------------------
PRG04_bd2b:
			jsr Goto_FadeInOut			; $bd2b: 20 ae c0
			lda #$01				; $bd2e: a9 01
			sta $04c2			; $bd30: 8d c2 04
			lda #$48				; $bd33: a9 48
			sta $0200			; $bd35: 8d 00 02
			lda #$01				; $bd38: a9 01
			sta $0201			; $bd3a: 8d 01 02
			lda #$20				; $bd3d: a9 20
			sta $0202			; $bd3f: 8d 02 02
			lda #$00				; $bd42: a9 00
			sta $0203			; $bd44: 8d 03 02
			inc $04c0			; $bd47: ee c0 04
			rts				; $bd4a: 60

;-------------------------------------------------------------------------------
PRG04_bd4b:
			lda #$02				; $bd4b: a9 02
			sta $012b			; $bd4d: 8d 2b 01
			lda #$19				; $bd50: a9 19
			sta WriteToCHR2_RAM			; $bd52: 85 e9
			ldy $04c2			; $bd54: ac c2 04
			lda PRG04_bda5-1,y			; $bd57: b9 a4 bd
			sta $eb			; $bd5a: 85 eb
			lda PRG04_bdac,y			; $bd5c: b9 ac bd
			cpy #$06				; $bd5f: c0 06
			php				; $bd61: 08
			jsr Goto_LoadPalette			; $bd62: 20 d2 c0
			plp				; $bd65: 28
			beq PRG04_bd7a			; $bd66: f0 12
			ldy #$00				; $bd68: a0 00
PRG04_bd6a:
			lda $0104,y		; $bd6a: b9 04 01
			sta $0100,y		; $bd6d: 99 00 01
			iny				; $bd70: c8
			cpy #$0c				; $bd71: c0 0c
			bne PRG04_bd6a			; $bd73: d0 f5
			lda #$30				; $bd75: a9 30
			sta $0109			; $bd77: 8d 09 01
PRG04_bd7a:
			lda #$30				; $bd7a: a9 30
			sta $010d			; $bd7c: 8d 0d 01
			ldy $04c2			; $bd7f: ac c2 04
			LoadAddressFromTable PRG04_bdb4, PRG04_bdbc, y
			ldx #$20				; $bd8c: a2 20
			ldy #$00				; $bd8e: a0 00
			jsr Main_c0c0			; $bd90: 20 c0 c0
			jsr Goto_WaitFrame			; $bd93: 20 ba c0
			jsr Main_c03f			; $bd96: 20 3f c0
			jsr Main_c0b1			; $bd99: 20 b1 c0
			lda #$b4				; $bd9c: a9 b4
			sta $04c1			; $bd9e: 8d c1 04
			inc $04c0			; $bda1: ee c0 04
			rts
PRG04_bda5:
			.byte $13, $13, $15	; $bda5: 13 13 15	 Data
			.byte $14, $11, $16, $10	; $bda8: 14 11 16 10	 Data
PRG04_bdac:
			.byte $12, $0e, $0a, $08	; $bdac: 12 0e 0a 08	 Data
			.byte $0b, $05, $07, $04	; $bdb0: 0b 05 07 04	 Data
			;TODO: table
PRG04_bdb4:
			.byte $02, $23, $ab, $16	; $bdb4: 02 23 ab 16	 Data
			.byte $70, $d9, $7e, $f9	; $bdb8: 70 d9 7e f9	 Data
PRG04_bdbc:
			.byte $69, $b5, $b5, $b6	; $bdbc: 69 b5 b5 b6	 Data
			.byte $b6, $b6, $b7, $b7	; $bdc0: b6 b6 b7 b7	 Data
			.byte $b8
			;	TODO: code
PRG04_bdc5:
			.byte $20, $87, $c0	; $bdc4: b8 20 87 c0	 Data
			.byte $20, $87, $c0, $ad	; $bdc8: 20 87 c0 ad	 Data
			.byte $02, $20, $ad, $02	; $bdcc: 02 20 ad 02	 Data
			.byte $20	; $bdd0: 20			Data
PRG04_bdd1:
			bit $2002			; $bdd1: 2c 02 20
			bvc PRG04_bdd1			; $bdd4: 50 fb
			lda $eb			; $bdd6: a5 eb
			jsr Goto_Sub_CHRBankSwitch2			; $bdd8: 20 60 c0
			dec $04c1			; $bddb: ce c1 04
			beq PRG04_bde1			; $bdde: f0 01
			rts				; $bde0: 60

;-------------------------------------------------------------------------------
PRG04_bde1:
			jsr Goto_FadeInOut			; $bde1: 20 ae c0
			jsr Main_c03c			; $bde4: 20 3c c0
			inc $04c2			; $bde7: ee c2 04
			lda $04c2			; $bdea: ad c2 04
			cmp #$09				; $bded: c9 09
			beq PRG04_bdf5			; $bdef: f0 04
			dec $04c0			; $bdf1: ce c0 04
			rts				; $bdf4: 60

;-------------------------------------------------------------------------------
PRG04_bdf5:
			inc $04c0			; $bdf5: ee c0 04
			rts				; $bdf8: 60

;-------------------------------------------------------------------------------
PRG04_bdf9:
			jsr Goto_WaitFrame			; $bdf9: 20 ba c0
			ldy $04c2			; $bdfc: ac c2 04
			lda PRG04_be5e,y			; $bdff: b9 5e be
			sta $ea			; $be02: 85 ea
			sta WriteToCHR1_RAM			; $be04: 85 e8
			lda PRG04_be62,y			; $be06: b9 62 be
			sta $0418			; $be09: 8d 18 04
			sta $0419			; $be0c: 8d 19 04
			sta $0400			; $be0f: 8d 00 04
			sta $0401			; $be12: 8d 01 04
			lda PRG04_be64,y			; $be15: b9 64 be
			sta $0430			; $be18: 8d 30 04
			sta $0431			; $be1b: 8d 31 04
			lda PRG04_be66,y			; $be1e: b9 66 be
			sta $0460			; $be21: 8d 60 04
			sta $0461			; $be24: 8d 61 04
			lda PRG04_be68,y			; $be27: b9 68 be
			sta $04f0			; $be2a: 8d f0 04
			lda PRG04_be6a,y			; $be2d: b9 6a be
			sta $04f1			; $be30: 8d f1 04
			lda #$03				; $be33: a9 03
			jsr Goto_CrossBankJump			; $be35: 20 cf c0
			ldy $04c2			; $be38: ac c2 04
			LoadAddressFromTable PRG04_be6c, PRG04_be6e, y
			ldx #$20				; $be45: a2 20
			ldy #$00				; $be47: a0 00
			jsr Main_c0c0			; $be49: 20 c0 c0
			ldy $04c2			; $be4c: ac c2 04
			lda PRG04_be60,y			; $be4f: b9 60 be
			jsr Goto_LoadPalette			; $be52: 20 d2 c0
			lda #$30				; $be55: a9 30
			sta $0109			; $be57: 8d 09 01
			jsr Goto_WaitFrame			; $be5a: 20 ba c0
			.byte $20	; $be5d: 20		Suspected data
PRG04_be5e:
			.byte $ba, $c0	; $be5e: ba c0		 Data
PRG04_be60:
			.byte $20, $b1	; $be60: 20 b1		 Data
PRG04_be62:
			.byte $c0, $ee	; $be62: c0 ee		 Data
PRG04_be64:
			.byte $c0, $04	; $be64: c0 04		 Data
PRG04_be66:
			.byte $60, $0d	; $be66: 60 0d		 Data
PRG04_be68:
			.byte $0a, $0f	; $be68: 0a 0f		 Data
PRG04_be6a:
			.byte $01, $98	; $be6a: 01 98		 Data
PRG04_be6c:
			.byte $80, $a8	; $be6c: 80 a8		 Data
PRG04_be6e:
			.byte $78, $88, $84, $5f	; $be6e: 78 88 84 5f	 Data
			.byte $00, $53, $07, $23	; $be72: 00 53 07 23	 Data
			.byte $47, $b9, $b9
			; TODO: code
PRG04_be79:
			.byte $ce
			.byte $c1, $04, $f0, $01	; $be7a: c1 04 f0 01	 Data
			.byte $60, $ee, $c2, $04	; $be7e: 60 ee c2 04	 Data
			.byte $ad, $c2, $04, $c9	; $be82: ad c2 04 c9	 Data
			.byte $0b, $f0, $07, $20	; $be86: 0b f0 07 20	 Data
			.byte $ae, $c0, $ce, $c0	; $be8a: ae c0 ce c0	 Data
			.byte $04, $60	; $be8e: 04 60		 Data
PRG04_be90:
			.byte $a9, $ff, $8d, $c0	; $be90: a9 ff 8d c0	 Data
			.byte $04, $60, $ad, $c0	; $be94: 04 60 ad c0	 Data
			.byte $04, $c9, $ff, $d0	; $be98: 04 c9 ff d0	 Data
			.byte $01, $60	; $be9c: 01 60		 Data
PRG04_be9e:
			.byte $a8, $29, $7f, $aa	; $be9e: a8 29 7f aa	 Data
			.byte $98, $30, $16, $ad	; $bea2: 98 30 16 ad	 Data
			.byte $c0, $04, $09, $80	; $bea6: c0 04 09 80	 Data
			.byte $8d, $c0, $04, $a9	; $beaa: 8d c0 04 a9	 Data
			.byte $ff, $8d, $c3, $04	; $beae: ff 8d c3 04	 Data
			.byte $bd, $a7, $bf, $8d	; $beb2: bd a7 bf 8d	 Data
			.byte $c1, $04, $8d, $c2	; $beb6: c1 04 8d c2	 Data
			.byte $04	; $beba: 04			Data
PRG04_bebb:
			lda Input_RAM			; $bebb: a5 00
			and #$0f				; $bebd: 29 0f
			beq PRG04_bed2			; $bebf: f0 11
			lda $04c0			; $bec1: ad c0 04
			and #$7f				; $bec4: 29 7f
			cmp #$02				; $bec6: c9 02
			bcs PRG04_bed2			; $bec8: b0 08
			lda #$01				; $beca: a9 01
			sta $04c0			; $becc: 8d c0 04
			jmp PRG04_bef5			; $becf: 4c f5 be

;-------------------------------------------------------------------------------
PRG04_bed2:
			dec $04c2			; $bed2: ce c2 04
			bne PRG04_bef4			; $bed5: d0 1d
			lda PRG04_bfac,x			; $bed7: bd ac bf
			ldy PRG04_bfb0,x			; $beda: bc b0 bf
PRG04_bedd:
			.byte $85, $a5, $84, $a6	; $bedd: 85 a5 84 a6	 Data
			.byte $ad, $c1, $04, $8d	; $bee1: ad c1 04 8d	 Data
			.byte $c2, $04, $ee, $c3	; $bee5: c2 04 ee c3	 Data
			.byte $04, $ac, $c3, $04	; $bee9: 04 ac c3 04	 Data
			.byte $b1, $a5, $f0, $04	; $beed: b1 a5 f0 04	 Data
			.byte $20, $d2, $c0	; $bef1: 20 d2 c0		Data
PRG04_bef4:
			rts				; $bef4: 60

;-------------------------------------------------------------------------------
PRG04_bef5:
			lda $04c0			; $bef5: ad c0 04
			and #$7f				; $bef8: 29 7f
			sta $04c0			; $befa: 8d c0 04
			inc $04c0			; $befd: ee c0 04
			lda $04c0			; $bf00: ad c0 04
			cmp #$03				; $bf03: c9 03
			bne PRG04_bf0a			; $bf05: d0 03
			jsr PRG04_bf18			; $bf07: 20 18 bf
PRG04_bf0a:
			ldx $04c0			; $bf0a: ae c0 04
			lda PRG04_bfa7,x			; $bf0d: bd a7 bf
			bne PRG04_bf17			; $bf10: d0 05
			lda #$ff				; $bf12: a9 ff
			sta $04c0			; $bf14: 8d c0 04
PRG04_bf17:
			rts				; $bf17: 60

;-------------------------------------------------------------------------------
PRG04_bf18:
			lda #$1e				; $bf18: a9 1e
			sta WriteToCHR2_RAM			; $bf1a: 85 e9
			.byte $a9	; $bf1c: a9		Suspected data
PRG04_bf1d:
			.byte $1c, $85, $eb, $a0	; $bf1d: 1c 85 eb a0	 Data
			.byte $78, $a2, $00	; $bf21: 78 a2 00		Data
PRG04_bf24:
			lda PRG04_bf2f,x			; $bf24: bd 2f bf
			sta $0204,x		; $bf27: 9d 04 02
			inx				; $bf2a: e8
			dey				; $bf2b: 88
			bne PRG04_bf24			; $bf2c: d0 f6
			rts				; $bf2e: 60

;-------------------------------------------------------------------------------
PRG04_bf2f:
			.byte $51, $c2, $02, $90	; $bf2f: 51 c2 02 90	 Data
			.byte $51, $c4, $02, $98	; $bf33: 51 c4 02 98	 Data
			.byte $61, $c6, $02, $90	; $bf37: 61 c6 02 90	 Data
			.byte $61, $c8, $02, $98	; $bf3b: 61 c8 02 98	 Data
			.byte $71, $ca, $02, $80	; $bf3f: 71 ca 02 80	 Data
			.byte $71, $cc, $02, $88	; $bf43: 71 cc 02 88	 Data
			.byte $71, $ce, $02, $90	; $bf47: 71 ce 02 90	 Data
			.byte $71, $d0, $02, $98	; $bf4b: 71 d0 02 98	 Data
			.byte $81, $d2, $02, $80	; $bf4f: 81 d2 02 80	 Data
			.byte $81, $d4, $02, $88	; $bf53: 81 d4 02 88	 Data
			.byte $81, $d6, $02, $90	; $bf57: 81 d6 02 90	 Data
			.byte $81, $d8, $02, $98	; $bf5b: 81 d8 02 98	 Data
			.byte $41, $e8, $01, $c8	; $bf5f: 41 e8 01 c8	 Data
			.byte $41, $ea, $01, $d0	; $bf63: 41 ea 01 d0	 Data
			.byte $51, $ec, $01, $c8	; $bf67: 51 ec 01 c8	 Data
			.byte $51, $ee, $01, $d0	; $bf6b: 51 ee 01 d0	 Data
			.byte $51, $f0, $01, $d8	; $bf6f: 51 f0 01 d8	 Data
			.byte $61, $e2, $01, $a0	; $bf73: 61 e2 01 a0	 Data
			.byte $61, $e4, $01, $a8	; $bf77: 61 e4 01 a8	 Data
			.byte $61, $f2, $01, $d0	; $bf7b: 61 f2 01 d0	 Data
			.byte $61, $f4, $01, $d8	; $bf7f: 61 f4 01 d8	 Data
			.byte $61, $f6, $01, $e0	; $bf83: 61 f6 01 e0	 Data
			.byte $71, $e6, $01, $a0	; $bf87: 71 e6 01 a0	 Data
			.byte $71, $f8, $01, $d0	; $bf8b: 71 f8 01 d0	 Data
			.byte $71, $fa, $01, $d8	; $bf8f: 71 fa 01 d8	 Data
			.byte $71, $fc, $01, $e0	; $bf93: 71 fc 01 e0	 Data
			.byte $81, $de, $00, $90	; $bf97: 81 de 00 90	 Data
			.byte $81, $e0, $00, $98	; $bf9b: 81 e0 00 98	 Data
			.byte $91, $da, $00, $40	; $bf9f: 91 da 00 40	 Data
			.byte $91, $dc, $00, $48	; $bfa3: 91 dc 00 48	 Data
PRG04_bfa7:
			.byte $08, $88, $04, $04	; $bfa7: 08 88 04 04	 Data
			.byte $00	; $bfab: 00			Data
PRG04_bfac:
			.byte $b4, $b6, $b8, $bd	; $bfac: b4 b6 b8 bd	 Data
PRG04_bfb0:
			.byte $bf, $bf, $bf, $bf	; $bfb0: bf bf bf bf	 Data
			.byte $3e, $00, $3e, $00	; $bfb4: 3e 00 3e 00	 Data
			.byte $3e, $3f, $40, $41	; $bfb8: 3e 3f 40 41	 Data
			.byte $00, $41	; $bfbc: 00 41		 Data
PRG04_bfbe:
			.byte $42, $43, $44, $00	; $bfbe: 42 43 44 00	 Data
			.byte $bd, $e0, $32, $30	; $bfc2: bd e0 32 30	 Data
			.byte $2a, $09, $ac, $9d	; $bfc6: 2a 09 ac 9d	 Data
			.byte $e0, $32, $9e, $b0	; $bfca: e0 32 9e b0	 Data
			.byte $32, $9e, $50, $35	; $bfce: 32 9e 50 35	 Data
			.byte $20, $a5, $be, $9e	; $bfd2: 20 a5 be 9e	 Data
			.byte $70, $33, $78, $d8	; $bfd6: 70 33 78 d8	 Data
			.byte $ee, $df, $ff, $4c	; $bfda: ee df ff 4c	 Data
			.byte $00, $c0
			
			BankEnd
			.endlogical