
_main:

;MyProject.c,87 :: 		void main() {
;MyProject.c,89 :: 		char letter='A';
	MOVLW      65
	MOVWF      main_letter_L0+0
;MyProject.c,91 :: 		NOKIA_Init();// Init function of PCD8544
	CALL       _NOKIA_Init+0
;MyProject.c,93 :: 		NOKIA_Chr(2,5,'7'); // Put '7' letter 2. row, 5. column of LCD. There are 6  rows and 14 columns available.
	MOVLW      2
	MOVWF      FARG_NOKIA_Chr_xNOKIA+0
	MOVLW      5
	MOVWF      FARG_NOKIA_Chr_yNOKIA+0
	MOVLW      55
	MOVWF      FARG_NOKIA_Chr_charsel+0
	CALL       _NOKIA_Chr+0
;MyProject.c,95 :: 		delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;MyProject.c,96 :: 		NOKIA_Clear();      // Clear LCD
	CALL       _NOKIA_Clear+0
;MyProject.c,100 :: 		for(i=1;i<7;i++)
	MOVLW      1
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main1:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      7
	SUBWF      main_i_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;MyProject.c,102 :: 		for(j=1;j<15;j++)
	MOVLW      1
	MOVWF      main_j_L0+0
	MOVLW      0
	MOVWF      main_j_L0+1
L_main4:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      15
	SUBWF      main_j_L0+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;MyProject.c,104 :: 		NOKIA_Chr(i,j,letter++);// Print all available characters
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_NOKIA_Chr_xNOKIA+0
	MOVF       main_j_L0+0, 0
	MOVWF      FARG_NOKIA_Chr_yNOKIA+0
	MOVF       main_letter_L0+0, 0
	MOVWF      FARG_NOKIA_Chr_charsel+0
	CALL       _NOKIA_Chr+0
	INCF       main_letter_L0+0, 1
;MyProject.c,105 :: 		delay_ms(100);            //
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;MyProject.c,102 :: 		for(j=1;j<15;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;MyProject.c,106 :: 		}
	GOTO       L_main4
L_main5:
;MyProject.c,100 :: 		for(i=1;i<7;i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;MyProject.c,107 :: 		}
	GOTO       L_main1
L_main2:
;MyProject.c,108 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;MyProject.c,109 :: 		NOKIA_Clear(); // Clear LCD
	CALL       _NOKIA_Clear+0
;MyProject.c,112 :: 		NOKIA_Out(3,6, "System Embedded"); // Print string 3. row, 6. column
	MOVLW      3
	MOVWF      FARG_NOKIA_Out_xNOKIA+0
	MOVLW      6
	MOVWF      FARG_NOKIA_Out_yNOKIA+0
	MOVLW      ?lstr_1_MyProject+0
	MOVWF      FARG_NOKIA_Out_s+0
	MOVLW      hi_addr(?lstr_1_MyProject+0)
	MOVWF      FARG_NOKIA_Out_s+1
	CALL       _NOKIA_Out+0
;MyProject.c,113 :: 		delay_ms(2000);           // There are 6  rows and 14 columns available.
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;MyProject.c,114 :: 		NOKIA_Clear();
	CALL       _NOKIA_Clear+0
;MyProject.c,116 :: 		NOKIA_Partial_Image(3,38,30,60,asd_bmp);  // Print a partial image on 3rd row, 38th pixel of LCD
	MOVLW      3
	MOVWF      FARG_NOKIA_Partial_Image_xNOKIA+0
	MOVLW      38
	MOVWF      FARG_NOKIA_Partial_Image_yNOKIA+0
	MOVLW      30
	MOVWF      FARG_NOKIA_Partial_Image_xImage+0
	MOVLW      60
	MOVWF      FARG_NOKIA_Partial_Image_array_length+0
	MOVLW      _asd_bmp+0
	MOVWF      FARG_NOKIA_Partial_Image_image+0
	MOVLW      hi_addr(_asd_bmp+0)
	MOVWF      FARG_NOKIA_Partial_Image_image+1
	CALL       _NOKIA_Partial_Image+0
;MyProject.c,117 :: 		NOKIA_Clear();              //Image's x_length is 30 pixels and image array has 60 bytes.
	CALL       _NOKIA_Clear+0
;MyProject.c,120 :: 		NOKIA_Image(iau_bmp); // Print an image whole LCD (image's array length must be 504 bytes)
	MOVLW      _iau_bmp+0
	MOVWF      FARG_NOKIA_Image_image+0
	MOVLW      hi_addr(_iau_bmp+0)
	MOVWF      FARG_NOKIA_Image_image+1
	CALL       _NOKIA_Image+0
;MyProject.c,121 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;MyProject.c,126 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
