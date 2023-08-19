;-------------------------------------------------------------------------------
;	Board Data
;
;	Each .byte line represents a vertical line of hexagons on a board.
;	(hexes from top to bottom map to from left to right in the data)
;	Board data for the planet ends with empty line due to how the game
;	loads a board
;	(it starts from an address and goes on until the plane space finishes)
;-------------------------------------------------------------------------------

			TableStart
			TableInsert BD_TheEarth
			TableInsert BD_Mars
			TableInsert BD_Jupiter
			TableInsert BD_Saturn
			TableInsert BD_Uranus
			TableInsert BD_Pluto
			TableInsert BD_Neptune
			TableInsert BD_PlanetX

			.cwarn len(CurrentTable)!=PlanetCount, "Number of board data pointers is different from planet count"

BoardDataTable_L:	.byte <CurrentTable
BoardDataTable_H:	.byte >CurrentTable

BD_TheEarth:
			.byte $01, $01, $09, $00, $00, $00
			.byte $01, $09, $11, $19, $00
			.byte $09, $09, $10, $09, $09, $00
			.byte $11, $11, $00, $0a, $0a
			.byte $00, $19, $0c, $21, $05, $21
			.byte $00, $0c, $19, $05, $06
			.byte $00, $00, $00, $11, $06, $17
			.byte $00, $00, $00, $00, $00

BD_Mars:
			.byte $00, $02, $0d, $0d, $02, $00
			.byte $02, $00, $00, $00, $02
			.byte $0a, $00, $00, $00, $00, $0d
			.byte $18, $00, $00, $00, $18
			.byte $0a, $0a, $0d, $08, $0a, $0a
			.byte $12, $12, $12, $12, $12
			.byte $00, $1a, $1a, $1a, $1a, $00
			.byte $00, $22, $22, $22, $00
			.byte $00, $00, $0e, $0e, $00, $00
			.byte $00, $00, $17, $00, $00
			.byte $00, $00, $00, $00, $00, $00

BD_Jupiter:
			.byte $00, $00, $04, $04, $00, $00
			.byte $00, $04, $04, $04, $00
			.byte $00, $0c, $0c, $0c, $0c, $00
			.byte $00, $04, $04, $14, $14
			.byte $00, $00, $00, $00, $18, $20
			.byte $00, $00, $0c, $14, $14
			.byte $00, $00, $24, $21, $21, $04
			.byte $00, $04, $24, $24, $21
			.byte $00, $04, $13, $13, $04, $04
			.byte $04, $13, $06, $13, $24
			.byte $00, $16, $16, $06, $00, $00
			.byte $00, $1f, $16, $00, $00
			.byte $00, $00, $00, $00, $00, $00

BD_Saturn:
			.byte $00, $03, $01, $01, $03, $00
			.byte $0b, $0b, $03, $0b, $0b
			.byte $03, $01, $00, $00, $00, $01
			.byte $01, $09, $00, $00, $09
			.byte $09, $21, $00, $00, $21, $21
			.byte $21, $09, $10, $09, $09
			.byte $00, $01, $18, $20, $10, $00
			.byte $00, $13, $13, $13, $00
			.byte $00, $00, $1b, $1b, $00, $00
			.byte $00, $00, $23, $23, $00
			.byte $00, $00, $00, $16, $16, $00
			.byte $00, $00, $00, $16, $16
			.byte $00, $00, $00, $00, $1f, $00
			.byte $00, $00, $00, $00, $00
BD_Uranus:
			.byte $00, $00, $00, $00, $00, $00
			.byte $00, $05, $10, $15, $00
			.byte $00, $16, $0d, $15, $0d, $00
			.byte $1f, $16, $00, $08, $20
			.byte $00, $16, $0d, $15, $0d, $00
			.byte $00, $05, $10, $15, $00
			.byte $00, $00, $00, $00, $00, $00
			.byte $00, $00, $00, $00, $00

BD_Pluto:
			.byte $01, $00, $21, $21, $00, $01
			.byte $02, $0a, $00, $0a, $02
			.byte $13, $00, $03, $03, $00, $13
			.byte $24, $04, $00, $04, $24
			.byte $08, $10, $00, $00, $20, $08
			.byte $04, $00, $27, $00, $04
			.byte $04, $00, $26, $06, $00, $0c
			.byte $12, $00, $16, $00, $11
			.byte $1a, $00, $0a, $09, $00, $19
			.byte $22, $22, $13, $21, $21
			.byte $02, $12, $0b, $0b, $11, $01
			.byte $00, $00, $00, $00, $00

BD_Neptune:
			.byte $06, $06, $06, $06, $06, $06
			.byte $1e, $1e, $00, $1e, $1e
			.byte $26, $26, $26, $26, $26, $26
			.byte $16, $16, $00, $16, $16
			.byte $0e, $0e, $0e, $0e, $0e, $0e
			.byte $1e, $1e, $1e, $1e, $1e
			.byte $26, $26, $26, $27, $26, $26
			.byte $00, $00, $00, $00, $00
BD_PlanetX:
			.byte $00, $00, $06, $06, $00, $00
			.byte $00, $00, $21, $00, $00
			.byte $00, $00, $26, $26, $00, $00
			.byte $00, $00, $22, $00, $00
			.byte $00, $00, $1e, $0e, $00, $00
			.byte $00, $00, $23, $00, $00
			.byte $00, $00, $16, $16, $00, $00
			.byte $00, $00, $24, $00, $00
			.byte $00, $00, $1e, $0e, $00, $00
			.byte $00, $00, $08, $00, $00
			.byte $00, $00, $06, $26, $00, $00
			.byte $00, $00, $27, $00, $00
			.byte $00, $00, $00, $00, $00, $00
			.byte $00, $00, $00, $00, $00
			.byte $00, $00, $00, $00, $00, $00
