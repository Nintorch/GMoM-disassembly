;-------------------------------------------------------------------------------
;	Palette Table
;-------------------------------------------------------------------------------

						TableStart
						TableInsert Palette_00
PalID_Godzilla:			TableInsert	Palette_Godzilla
PalID_Ghidorah:			TableInsert Palette_Ghidorah
						TableInsert Palette_03
PalID_MechaGodzilla:	TableInsert Palette_MechaGodzilla
PalID_Hedorah:			TableInsert Palette_Hedorah
						TableInsert Palette_06
PalID_Gigan:			TableInsert Palette_Gigan
PalID_Baragon:			TableInsert Palette_Baragon
						TableInsert Palette_09
PalID_Moguera:			TableInsert Palette_Moguera
PalID_Varan:			TableInsert Palette_Varan
						TableInsert Palette_0C
						TableInsert Palette_0D
PalID_Gezora:			TableInsert Palette_Gezora
PalID_Mothra:			TableInsert Palette_Mothra
PalID_Rodan:			TableInsert Palette_Rodan
PalID_Anguirus:			TableInsert	Palette_Anguirus
PalID_BoardTheEarth:	TableInsert Palette_BoardTheEarth
PalID_BoardIcons:		TableInsert Palette_BoardIcons
						TableInsert Palette_14
						TableInsert Palette_15
						TableInsert Palette_16

PalID_SkyFirst:			TableInsert Palette_SkyTheEarth
						TableInsert Palette_SkyMars
						TableInsert Palette_SkyJupiter
						TableInsert Palette_SkySaturn
						TableInsert Palette_SkyUranus
						TableInsert Palette_SkyPluto
						TableInsert Palette_SkyNeptune
						TableInsert Palette_SkyPlanetX

						TableInsert Palette_1F
						TableInsert Palette_20
						TableInsert Palette_21
						TableInsert Palette_22
						TableInsert Palette_23
						TableInsert Palette_24
						TableInsert Palette_25
						TableInsert Palette_26
						TableInsert Palette_27
						TableInsert Palette_28
						TableInsert Palette_29
						TableInsert Palette_2A
						TableInsert Palette_2B
						TableInsert Palette_2C
						TableInsert Palette_2D
						TableInsert Palette_2E
						TableInsert Palette_2F
						TableInsert Palette_30
						TableInsert Palette_31
						TableInsert Palette_32
PalID_Gohten:			TableInsert Palette_Gohten
						TableInsert Palette_34
						TableInsert Palette_35
PalID_TextMenu:			TableInsert Palette_36
PalID_BoardPlanetX:		TableInsert Palette_BoardPlanetX
PalID_BoardMars:		TableInsert Palette_BoardMars
PalID_BoardJupiter:		TableInsert Palette_BoardJupiter
PalID_BoardSaturn:		TableInsert Palette_BoardSaturn
PalID_BoardUranus:		TableInsert Palette_BoardUranus
PalID_BoardPluto:		TableInsert Palette_BoardPluto
PalID_BoardNeptune:		TableInsert Palette_BoardNeptune
						TableInsert Palette_3E
						TableInsert Palette_3F
						TableInsert Palette_40
						TableInsert Palette_41
						TableInsert Palette_42
						TableInsert Palette_43
						TableInsert Palette_44
						TableInsert Palette_1F
						TableInsert Palette_1F
						TableInsert Palette_1F

		.cwarn len(CurrentTable) > $80, "Table overflow, see the notes below to make sure everything will work"
		; 1. Remove "and #$7f" in LoadPalette (mainbank.asm)
		; 2. Comment out the warning above
		; 3. Remove "| $80" in one of the lines in GM_IntroCutscene

; TODO: figure out the format of the palette files

PaletteTable_L:	.byte <CurrentTable
PaletteTable_H:	.byte >CurrentTable

Palette_00:				.binary "palettes/1.bin"
Palette_Godzilla:		.binary "palettes/characters/Godzilla.bin"
Palette_Ghidorah:		.binary "palettes/bosses/Ghidorah.bin"
Palette_03:				.binary "palettes/4.bin"
Palette_MechaGodzilla:	.binary "palettes/bosses/MechaGodzilla.bin"
Palette_Hedorah:		.binary "palettes/bosses/Hedorah.bin"
Palette_06:				.binary "palettes/7.bin"
Palette_Gigan:			.binary "palettes/bosses/Gigan.bin"
Palette_Baragon:		.binary "palettes/bosses/Baragon.bin"
Palette_09:				.binary "palettes/10.bin"
Palette_Moguera:		.binary "palettes/bosses/Moguera.bin"
Palette_Varan:			.binary "palettes/bosses/Varan.bin"
Palette_0C:				.binary "palettes/13.bin"
Palette_0D:				.binary "palettes/14.bin"
Palette_Gezora:			.binary "palettes/bosses/Gezora.bin"
Palette_Mothra:			.binary "palettes/characters/Mothra.bin"
Palette_Rodan:			.binary "palettes/characters/Rodan.bin"
Palette_Anguirus:		.binary "palettes/characters/Anguirus.bin"
Palette_BoardTheEarth:	.binary "palettes/boards/TheEarth.bin"
Palette_BoardIcons:		.binary "palettes/boards/BoardIcons.bin"
Palette_14:				.binary "palettes/21.bin"
Palette_15:				.binary "palettes/22.bin"
Palette_16:				.binary "palettes/23.bin"

;-------------------------------------------------------------------------------
;			Sky palettes for the planets
Palette_SkyTheEarth:	.binary "palettes/skies/TheEarth.bin"
Palette_SkyMars:		.binary "palettes/skies/Mars.bin"
Palette_SkyJupiter:		.binary "palettes/skies/Jupiter.bin"
Palette_SkySaturn:		.binary "palettes/skies/Saturn.bin"
Palette_SkyUranus:		.binary "palettes/skies/Uranus.bin"
Palette_SkyPluto:		.binary "palettes/skies/Pluto.bin"
Palette_SkyNeptune:		.binary "palettes/skies/Neptune.bin"
Palette_SkyPlanetX:		.binary "palettes/skies/PlanetX.bin"
;-------------------------------------------------------------------------------

Palette_30:				.binary "palettes/32.bin"
Palette_31:				.binary "palettes/33.bin"
Palette_32:				.binary "palettes/34.bin"
Palette_Gohten:			.binary "palettes/Gohten.bin"
Palette_34:				.binary "palettes/36.bin"
Palette_35:				.binary "palettes/37.bin"
Palette_36:				.binary "palettes/38.bin"
Palette_BoardPlanetX:	.binary "palettes/boards/PlanetX.bin"
Palette_BoardMars:		.binary "palettes/boards/Mars.bin"
Palette_BoardJupiter:	.binary "palettes/boards/Jupiter.bin"
Palette_BoardSaturn:	.binary "palettes/boards/Saturn.bin"
Palette_BoardUranus:	.binary "palettes/boards/Uranus.bin"
Palette_BoardPluto:		.binary "palettes/boards/Pluto.bin"
Palette_BoardNeptune:	.binary "palettes/boards/Neptune.bin"
Palette_3E:				.binary "palettes/46.bin"
Palette_3F:				.binary "palettes/47.bin"
Palette_40:				.binary "palettes/48.bin"
Palette_41:				.binary "palettes/49.bin"
Palette_42:				.binary "palettes/50.bin"
Palette_43:				.binary "palettes/51.bin"
Palette_44:				.binary "palettes/52.bin"
Palette_1F:				.binary "palettes/53.bin"
Palette_20:				.binary "palettes/54.bin"
Palette_21:				.binary "palettes/55.bin"
Palette_22:				.binary "palettes/56.bin"
Palette_23:				.binary "palettes/57.bin"
Palette_24:				.binary "palettes/58.bin"
Palette_25:				.binary "palettes/59.bin"
Palette_26:				.binary "palettes/60.bin"
Palette_27:				.binary "palettes/61.bin"
Palette_28:				.binary "palettes/62.bin"
Palette_29:				.binary "palettes/63.bin"
Palette_2A:				.binary "palettes/64.bin"
Palette_2B:				.binary "palettes/65.bin"
Palette_2C:				.binary "palettes/66.bin"
Palette_2D:				.binary "palettes/67.bin"
Palette_2E:				.binary "palettes/68.bin"
Palette_2F:				.binary "palettes/69.bin"
