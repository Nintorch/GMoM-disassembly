;-------------------------------------------------------------------------------
;	Banks
;-------------------------------------------------------------------------------

;	PRG Bankswitching

; A function to be used with BankSwitch subroutine
CBJ_Helper .function bank, label
	.cerror label&$3E=0, "Illegal label (Label & $3E == 0)"
	.cerror ((label&$FF00)>>8)!=$80, "Illegal label (higher byte is not $80)"
	.endf ((((label&$FF)-4)/1.5)<<2)+bank

CrossBankJump .macro bank, label, jump=false
		lda #CBJ_Helper(\bank,\label)
	.if !\jump
		.if *<$C000
			jsr Goto_CrossBankJump
		.else
			jsr Sub_CrossBankJump
		.endif
	.else
		.if *<$C000
			jmp Goto_CrossBankJump
		.else
			jmp Sub_CrossBankJump
		.endif
	.endif
	.endm

BankStartAddress .var 0
BankEndAddress .var 0
LastBank .var 0

BankHeader .segment id
	BankStartAddress .var * & $F000
	.if \id!=(PRGBankCount-1) ; last PRG bank
		.byte \id
	.endif
	.byte $62, $6b, $30+\id
	LastBank .var \id
	.endsegment

BankEnd .segment
	BankEndAddress .var (BankStartAddress + PRGBankSize) & $FFFF
	.if (BankStartAddress < BankEndAddress && * > BankEndAddress) || (BankStartAddress > BankEndAddress && * > BankEndAddress && * < BankStartAddress)
		.error "Bank ", repr(LastBank), " is too big (", *, ")"
	.endif

	.if Debug && ( (BankStartAddress < BankEndAddress && * < BankEndAddress) || (BankStartAddress > BankEndAddress && * > BankStartAddress) )
		.warn "Bank ", repr(LastBank), " is small (", *, ")"
	.endif

	.align PRGBankSize
	.endsegment

BankEnding .macro
			.text "GODZILLA        "

			.byte $00, $00, $00, $00	; $bff0: 00 00 00 00	 Data
			.byte $33, $04, $01, $10	; $bff4: 33 04 01 10	 Data
			.byte $00, $00
			.addr L_ffd8
			.addr L_ffd8
			.addr L_ffd8
	.endm

;	CHR Bankswitching
;	(Note that Sub_CHRBankSwitch1 and Sub_CHRBankSwitch2 (mainbank.asm)
;	limit the bank ID to available number of banks)

CHR_BankSwitch1 .macro
		;	A = requested bank ID
			sta $bfff
			lsr
			sta $bFFF
			lsr
			sta $bfff
			lsr
			sta $bfff
			lsr
			sta $bfff
	.endm

CHR_BankSwitch2 .macro
		;	A = requested bank ID
			sta $dfff
			lsr
			sta $dfff
			lsr
			sta $dfff
			lsr
			sta $dfff
			lsr
			sta $dfff
	.endm

;-------------------------------------------------------------------------------
;	Text
;-------------------------------------------------------------------------------

GameText .macro x, y, txt
_pos	= $2020 + \y*$20 + \x

		; Position in Big Endian
		.byte >_pos, <_pos

		.byte len(_text)
		
		.encode Enc_Default
_text:	.text \txt
		.endencode
	.endm

GameTextEnd .macro
		.byte 0
	.endm

;-------------------------------------------------------------------------------
;	Sound
;-------------------------------------------------------------------------------

MusicFadeOut .macro
		CrossBankJump 0, a_Goto_MusicFadeOut
	.endm

;-------------------------------------------------------------------------------
;	Tables
;-------------------------------------------------------------------------------

;	I use segment because I need to create a global variable
;	or to use a global variable

TableOffset .var 0

;	Start a new table
TableStart .segment offset=0, label_offset=0
CurrentTable .var []
TableOffset .var \offset
TableLabelOffset .var \label_offset
	.endsegment

;	Insert a label into the table and return its id
TableInsert .segment
_CurrentID .var len(CurrentTable)+TableOffset
CurrentTable ..= [\@]+TableLabelOffset
	.endsegment _CurrentID

;-------------------------------------------------------------------------------
;	Other
;-------------------------------------------------------------------------------

;	Check if the size of data matches the planet count
PlanetCheck .macro start, size
		.cwarn (*-\start)!=(PlanetCount*\size), "Size of the planet data does not match the needed size: expected " .. repr(PlanetCount) .. " elements, got " .. repr((*-\start)/\size)
	.endm

;	Load an address into $a5, $a6
LoadAddress .macro address, swap=false
	.if \swap
		lda #>\address
		sta LoadAddress_High
		lda #<\address
		sta LoadAddress_Low
	.else
		lda #<\address
		sta LoadAddress_Low
		lda #>\address
		sta LoadAddress_High
	.endif
	.endm

;	Load address from table '(higher, lower)' by index 'register' (either X or Y)
LoadAddressFromTable .macro lower, higher, register
			lda \lower,\register
			sta LoadAddress_Low
			lda \higher,\register
			sta LoadAddress_High
	.endm

;	A lot of types because I want the disassembly to be
;	both readable and bit-perfect
LoadAddressOffset .macro offlow, offhigh, type=0
	.switch \type
		.case 0
			lda #\offlow
			adc LoadAddress_Low
			sta LoadAddress_Low
			lda #\offhigh
			adc LoadAddress_High
			sta LoadAddress_High
		.case 1
			lda LoadAddress_Low
			adc #\offlow
			sta LoadAddress_Low
			lda LoadAddress_High
			adc #\offhigh
			sta LoadAddress_High
		.case 2
			lda #\offlow
			adc $a3
			sta LoadAddress_Low
			lda #\offhigh
			adc $a4
			sta LoadAddress_High
		.default
			.error "Unknown LoadAddressOffset type: " .. repr(type)
	.endswitch
	.endm

LoadAddressTransfer .macro address
			lda \address
			sta LoadAddress_Low
			lda \address+1
			sta LoadAddress_High
	.endm

;	Check if a values is a power of two
CheckPowerOfTwo .macro value
;	len(bits) is number of bits
	.cerror \value!=(1<<len(bits(\value-1))), "The value above must be a power of two"
	.endm
