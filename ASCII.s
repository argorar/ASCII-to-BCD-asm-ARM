		AREA ASCII,CODE,READONLY
		ARM
ASC		RN	R0
BCD		RN	R1
OPCION	RN 	R2
CONVER	RN	R3
	ENTRY
			MOV		ASC,#0x32			;SOLO LOS MENORES
			MOV		BCD,#0x03
			MOV		R4,#0x30
			MOV		OPCION,#1
			CMP		OPCION,#0
			BEQ		ASCIIBCD
			B		BCDASCII
ASCIIBCD	BIC		CONVER,ASC,R4
			B 		HERE
BCDASCII	ORR		CONVER,BCD,R4	
HERE	B HERE
	END
	