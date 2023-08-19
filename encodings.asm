
Enc_Default	.encode
		.cdef "  ", $00
		.cdef "09", $02
		.cdef "!!", $0D
		.cdef "@@", $12 ; copyright symbol
		.cdef "AZ", $13, "az", $13
		.cdef "--", $2E
		.cdef "..", $2F ; "dot at the middle"
		.endencode

	; The only difference between "Alternative"
	; and "Default" is space being mapped to $01
Enc_Alternative	.encode
		.cdef "  ", $01
		.cdef "09", $02
		.cdef "!!", $0D
		.cdef "@@", $12 ; copyright symbol
		.cdef "AZ", $13, "az", $13
		.cdef "--", $2E
		.cdef "..", $2F ; "dot in the middle"
		.endencode

Enc_Enc3	.encode
		.cdef "  ", $0F
		.cdef "09", $02
		.cdef ",,", $0C
		.cdef "..", $0D
		.cdef "__", $0E
		.cdef "--", $10
		.cdef "??", $11
		.cdef "@@", $12 ; copyright symbol
		.cdef "AZ", $13, "az", $13
		.endencode

Enc_Password .encode
		.cdef "09", $02
		.cdef "AN", $13
		.cdef "PU", $22
		.cdef "WY", $29
		.cdef "  ", $2C
		.endencode