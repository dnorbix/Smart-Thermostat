
_InitMenu:

;ThermoController.mpas,128 :: 		begin
;ThermoController.mpas,130 :: 		maxday[1]:=31;
	MOVLW       31
	MOVWF       _maxday+0 
;ThermoController.mpas,131 :: 		maxday[2]:=28;
	MOVLW       28
	MOVWF       _maxday+1 
;ThermoController.mpas,132 :: 		maxday[3]:=31;
	MOVLW       31
	MOVWF       _maxday+2 
;ThermoController.mpas,133 :: 		maxday[4]:=30;
	MOVLW       30
	MOVWF       _maxday+3 
;ThermoController.mpas,134 :: 		maxday[5]:=31;
	MOVLW       31
	MOVWF       _maxday+4 
;ThermoController.mpas,135 :: 		maxday[6]:=30;
	MOVLW       30
	MOVWF       _maxday+5 
;ThermoController.mpas,136 :: 		maxday[7]:=31;
	MOVLW       31
	MOVWF       _maxday+6 
;ThermoController.mpas,137 :: 		maxday[8]:=31;
	MOVLW       31
	MOVWF       _maxday+7 
;ThermoController.mpas,138 :: 		maxday[9]:=30;
	MOVLW       30
	MOVWF       _maxday+8 
;ThermoController.mpas,139 :: 		maxday[10]:=31;
	MOVLW       31
	MOVWF       _maxday+9 
;ThermoController.mpas,140 :: 		maxday[11]:=30;
	MOVLW       30
	MOVWF       _maxday+10 
;ThermoController.mpas,141 :: 		maxday[12]:=31;
	MOVLW       31
	MOVWF       _maxday+11 
;ThermoController.mpas,147 :: 		root.row1 := 'Welcome, Laci!';
	MOVLW       87
	MOVWF       _root+0 
	MOVLW       101
	MOVWF       _root+1 
	MOVLW       108
	MOVWF       _root+2 
	MOVLW       99
	MOVWF       _root+3 
	MOVLW       111
	MOVWF       _root+4 
	MOVLW       109
	MOVWF       _root+5 
	MOVLW       101
	MOVWF       _root+6 
	MOVLW       44
	MOVWF       _root+7 
	MOVLW       32
	MOVWF       _root+8 
	MOVLW       76
	MOVWF       _root+9 
	MOVLW       97
	MOVWF       _root+10 
	MOVLW       99
	MOVWF       _root+11 
	MOVLW       105
	MOVWF       _root+12 
	MOVLW       33
	MOVWF       _root+13 
	CLRF        _root+14 
;ThermoController.mpas,148 :: 		root.child := @menu[1];
	MOVLW       _menu+0
	MOVWF       _root+40 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _root+41 
;ThermoController.mpas,149 :: 		root.parent := @root;
	MOVLW       _root+0
	MOVWF       _root+34 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+35 
;ThermoController.mpas,150 :: 		root.next := @root;
	MOVLW       _root+0
	MOVWF       _root+36 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+37 
;ThermoController.mpas,151 :: 		root.prev := @root;
	MOVLW       _root+0
	MOVWF       _root+38 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+39 
;ThermoController.mpas,152 :: 		current_node := @root;
	MOVLW       _root+0
	MOVWF       _current_node+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       _current_node+1 
;ThermoController.mpas,154 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu2:
;ThermoController.mpas,155 :: 		menu[i].next := @menu[i+1];
	DECF        _i+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       42
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _menu+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_menu+0)
	ADDWFC      R1, 1 
	MOVLW       36
	ADDWF       R0, 0 
	MOVWF       FLOC__InitMenu+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FLOC__InitMenu+1 
	MOVF        _i+0, 0 
	ADDLW       1
	MOVWF       R0 
	DECF        R0, 1 
	MOVLW       0
	MOVWF       R1 
	MOVLW       42
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _menu+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_menu+0)
	ADDWFC      R1, 1 
	MOVFF       FLOC__InitMenu+0, FSR1L
	MOVFF       FLOC__InitMenu+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu487
	MOVLW       6
	XORWF       _i+0, 0 
L__InitMenu487:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu5
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu2
L__InitMenu5:
;ThermoController.mpas,156 :: 		menu[7].next := @menu[1];
	MOVLW       _menu+0
	MOVWF       _menu+288 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _menu+289 
;ThermoController.mpas,157 :: 		for i:=7 downto 2 do
	MOVLW       7
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu7:
;ThermoController.mpas,158 :: 		menu[i].prev := @menu[i-1];
	DECF        _i+0, 0 
	MOVWF       FLOC__InitMenu+2 
	MOVF        FLOC__InitMenu+2, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       42
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _menu+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_menu+0)
	ADDWFC      R1, 1 
	MOVLW       38
	ADDWF       R0, 0 
	MOVWF       FLOC__InitMenu+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FLOC__InitMenu+1 
	DECF        FLOC__InitMenu+2, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       42
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _menu+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_menu+0)
	ADDWFC      R1, 1 
	MOVFF       FLOC__InitMenu+0, FSR1L
	MOVFF       FLOC__InitMenu+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu488
	MOVLW       2
	XORWF       _i+0, 0 
L__InitMenu488:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu10
	MOVLW       1
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
	GOTO        L__InitMenu7
L__InitMenu10:
;ThermoController.mpas,159 :: 		menu[1].prev := @menu[7];
	MOVLW       _menu+252
	MOVWF       _menu+38 
	MOVLW       hi_addr(_menu+252)
	MOVWF       _menu+39 
;ThermoController.mpas,160 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu12:
;ThermoController.mpas,161 :: 		menu[i].parent := @root;
	DECF        _i+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       42
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _menu+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_menu+0)
	ADDWFC      R1, 1 
	MOVLW       34
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	MOVLW       _root+0
	MOVWF       POSTINC1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       POSTINC1+0 
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu489
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu489:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu15
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu12
L__InitMenu15:
;ThermoController.mpas,164 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu17:
;ThermoController.mpas,165 :: 		menu[i].child := @menu[i];
	DECF        _i+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       42
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _menu+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_menu+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVLW       40
	ADDWF       R2, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      R3, 0 
	MOVWF       FSR1H 
	MOVLW       _menu+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_menu+0)
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu490
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu490:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu20
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu17
L__InitMenu20:
;ThermoController.mpas,167 :: 		menu[1].child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _menu+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _menu+41 
;ThermoController.mpas,168 :: 		menu[2].child := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _menu+82 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _menu+83 
;ThermoController.mpas,169 :: 		menu[3].child := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _menu+124 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _menu+125 
;ThermoController.mpas,170 :: 		menu[4].child := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _menu+166 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _menu+167 
;ThermoController.mpas,171 :: 		menu[5].child := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _menu+208 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _menu+209 
;ThermoController.mpas,173 :: 		submenu1.parent := @menu[1];
	MOVLW       _menu+0
	MOVWF       _submenu1+34 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _submenu1+35 
;ThermoController.mpas,174 :: 		submenu1.next := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+36 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+37 
;ThermoController.mpas,175 :: 		submenu1.prev := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+38 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+39 
;ThermoController.mpas,176 :: 		submenu1.child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+41 
;ThermoController.mpas,178 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu22:
;ThermoController.mpas,180 :: 		submenu2[i].parent := @menu[2];
	DECF        _i+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       42
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _submenu2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_submenu2+0)
	ADDWFC      R1, 1 
	MOVLW       34
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	MOVLW       _menu+42
	MOVWF       POSTINC1+0 
	MOVLW       hi_addr(_menu+42)
	MOVWF       POSTINC1+0 
;ThermoController.mpas,181 :: 		submenu2[i].child := @submenu2[i];
	DECF        _i+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       42
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _submenu2+0
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       hi_addr(_submenu2+0)
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVLW       40
	ADDWF       R2, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      R3, 0 
	MOVWF       FSR1H 
	MOVLW       _submenu2+0
	ADDWF       R0, 1 
	MOVLW       hi_addr(_submenu2+0)
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,182 :: 		end;
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu491
	MOVLW       3
	XORWF       _i+0, 0 
L__InitMenu491:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu25
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu22
L__InitMenu25:
;ThermoController.mpas,184 :: 		submenu2[2].next := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+78 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+79 
;ThermoController.mpas,185 :: 		submenu2[2].prev := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+80 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+81 
;ThermoController.mpas,186 :: 		submenu2[1].prev := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+38 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+39 
;ThermoController.mpas,187 :: 		submenu2[3].next := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+120 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+121 
;ThermoController.mpas,188 :: 		submenu2[1].next := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+36 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+37 
;ThermoController.mpas,189 :: 		submenu2[3].prev := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+122 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+123 
;ThermoController.mpas,191 :: 		submenu3.parent := @menu[3];
	MOVLW       _menu+84
	MOVWF       _submenu3+34 
	MOVLW       hi_addr(_menu+84)
	MOVWF       _submenu3+35 
;ThermoController.mpas,192 :: 		submenu3.next := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+36 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+37 
;ThermoController.mpas,193 :: 		submenu3.prev := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+38 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+39 
;ThermoController.mpas,194 :: 		submenu3.child := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+40 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+41 
;ThermoController.mpas,196 :: 		submenu4.parent := @menu[4];
	MOVLW       _menu+126
	MOVWF       _submenu4+34 
	MOVLW       hi_addr(_menu+126)
	MOVWF       _submenu4+35 
;ThermoController.mpas,197 :: 		submenu4.next := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+36 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+37 
;ThermoController.mpas,198 :: 		submenu4.prev := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+38 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+39 
;ThermoController.mpas,199 :: 		submenu4.child := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+40 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+41 
;ThermoController.mpas,201 :: 		submenu5[1].next := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+36 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+37 
;ThermoController.mpas,202 :: 		submenu5[2].next := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+78 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+79 
;ThermoController.mpas,203 :: 		submenu5[1].prev := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+38 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+39 
;ThermoController.mpas,204 :: 		submenu5[2].prev := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+80 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+81 
;ThermoController.mpas,205 :: 		submenu5[1].child := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+40 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+41 
;ThermoController.mpas,206 :: 		submenu5[2].child := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+82 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+83 
;ThermoController.mpas,207 :: 		submenu5[1].parent := @menu[5];
	MOVLW       _menu+168
	MOVWF       _submenu5+34 
	MOVLW       hi_addr(_menu+168)
	MOVWF       _submenu5+35 
;ThermoController.mpas,208 :: 		submenu5[2].parent := @menu[5];
	MOVLW       _menu+168
	MOVWF       _submenu5+76 
	MOVLW       hi_addr(_menu+168)
	MOVWF       _submenu5+77 
;ThermoController.mpas,211 :: 		root.row1 := 'T1:     T2:    ';
	MOVLW       84
	MOVWF       _root+0 
	MOVLW       49
	MOVWF       _root+1 
	MOVLW       58
	MOVWF       _root+2 
	MOVLW       32
	MOVWF       _root+3 
	MOVLW       32
	MOVWF       _root+4 
	MOVLW       32
	MOVWF       _root+5 
	MOVLW       32
	MOVWF       _root+6 
	MOVLW       32
	MOVWF       _root+7 
	MOVLW       84
	MOVWF       _root+8 
	MOVLW       50
	MOVWF       _root+9 
	MOVLW       58
	MOVWF       _root+10 
	MOVLW       32
	MOVWF       _root+11 
	MOVLW       32
	MOVWF       _root+12 
	MOVLW       32
	MOVWF       _root+13 
	MOVLW       32
	MOVWF       _root+14 
	CLRF        _root+15 
;ThermoController.mpas,212 :: 		root.row2 := 'T3:     T4:    ';
	MOVLW       84
	MOVWF       _root+17 
	MOVLW       51
	MOVWF       _root+18 
	MOVLW       58
	MOVWF       _root+19 
	MOVLW       32
	MOVWF       _root+20 
	MOVLW       32
	MOVWF       _root+21 
	MOVLW       32
	MOVWF       _root+22 
	MOVLW       32
	MOVWF       _root+23 
	MOVLW       32
	MOVWF       _root+24 
	MOVLW       84
	MOVWF       _root+25 
	MOVLW       52
	MOVWF       _root+26 
	MOVLW       58
	MOVWF       _root+27 
	MOVLW       32
	MOVWF       _root+28 
	MOVLW       32
	MOVWF       _root+29 
	MOVLW       32
	MOVWF       _root+30 
	MOVLW       32
	MOVWF       _root+31 
	CLRF        _root+32 
;ThermoController.mpas,213 :: 		menu[1].row1 := '1. Date/Time';
	MOVLW       49
	MOVWF       _menu+0 
	MOVLW       46
	MOVWF       _menu+1 
	MOVLW       32
	MOVWF       _menu+2 
	MOVLW       68
	MOVWF       _menu+3 
	MOVLW       97
	MOVWF       _menu+4 
	MOVLW       116
	MOVWF       _menu+5 
	MOVLW       101
	MOVWF       _menu+6 
	MOVLW       47
	MOVWF       _menu+7 
	MOVLW       84
	MOVWF       _menu+8 
	MOVLW       105
	MOVWF       _menu+9 
	MOVLW       109
	MOVWF       _menu+10 
	MOVLW       101
	MOVWF       _menu+11 
	CLRF        _menu+12 
;ThermoController.mpas,214 :: 		menu[1].row2 := '';
	CLRF        _menu+17 
;ThermoController.mpas,215 :: 		menu[2].row1 := '2. Functioning';
	MOVLW       50
	MOVWF       _menu+42 
	MOVLW       46
	MOVWF       _menu+43 
	MOVLW       32
	MOVWF       _menu+44 
	MOVLW       70
	MOVWF       _menu+45 
	MOVLW       117
	MOVWF       _menu+46 
	MOVLW       110
	MOVWF       _menu+47 
	MOVLW       99
	MOVWF       _menu+48 
	MOVLW       116
	MOVWF       _menu+49 
	MOVLW       105
	MOVWF       _menu+50 
	MOVLW       111
	MOVWF       _menu+51 
	MOVLW       110
	MOVWF       _menu+52 
	MOVLW       105
	MOVWF       _menu+53 
	MOVLW       110
	MOVWF       _menu+54 
	MOVLW       103
	MOVWF       _menu+55 
	CLRF        _menu+56 
;ThermoController.mpas,216 :: 		menu[2].row2 := '     Interval';
	MOVLW       32
	MOVWF       _menu+59 
	MOVLW       32
	MOVWF       _menu+60 
	MOVLW       32
	MOVWF       _menu+61 
	MOVLW       32
	MOVWF       _menu+62 
	MOVLW       32
	MOVWF       _menu+63 
	MOVLW       73
	MOVWF       _menu+64 
	MOVLW       110
	MOVWF       _menu+65 
	MOVLW       116
	MOVWF       _menu+66 
	MOVLW       101
	MOVWF       _menu+67 
	MOVLW       114
	MOVWF       _menu+68 
	MOVLW       118
	MOVWF       _menu+69 
	MOVLW       97
	MOVWF       _menu+70 
	MOVLW       108
	MOVWF       _menu+71 
	CLRF        _menu+72 
;ThermoController.mpas,217 :: 		menu[3].row1 := '3. Lock Settings';
	MOVLW       51
	MOVWF       _menu+84 
	MOVLW       46
	MOVWF       _menu+85 
	MOVLW       32
	MOVWF       _menu+86 
	MOVLW       76
	MOVWF       _menu+87 
	MOVLW       111
	MOVWF       _menu+88 
	MOVLW       99
	MOVWF       _menu+89 
	MOVLW       107
	MOVWF       _menu+90 
	MOVLW       32
	MOVWF       _menu+91 
	MOVLW       83
	MOVWF       _menu+92 
	MOVLW       101
	MOVWF       _menu+93 
	MOVLW       116
	MOVWF       _menu+94 
	MOVLW       116
	MOVWF       _menu+95 
	MOVLW       105
	MOVWF       _menu+96 
	MOVLW       110
	MOVWF       _menu+97 
	MOVLW       103
	MOVWF       _menu+98 
	MOVLW       115
	MOVWF       _menu+99 
	CLRF        _menu+100 
;ThermoController.mpas,218 :: 		menu[3].row2 := '';
	CLRF        _menu+101 
;ThermoController.mpas,219 :: 		menu[4].row1 := '4. Status LED';
	MOVLW       52
	MOVWF       _menu+126 
	MOVLW       46
	MOVWF       _menu+127 
	MOVLW       32
	MOVWF       _menu+128 
	MOVLW       83
	MOVWF       _menu+129 
	MOVLW       116
	MOVWF       _menu+130 
	MOVLW       97
	MOVWF       _menu+131 
	MOVLW       116
	MOVWF       _menu+132 
	MOVLW       117
	MOVWF       _menu+133 
	MOVLW       115
	MOVWF       _menu+134 
	MOVLW       32
	MOVWF       _menu+135 
	MOVLW       76
	MOVWF       _menu+136 
	MOVLW       69
	MOVWF       _menu+137 
	MOVLW       68
	MOVWF       _menu+138 
	CLRF        _menu+139 
;ThermoController.mpas,220 :: 		menu[4].row2 := '';
	CLRF        _menu+143 
;ThermoController.mpas,221 :: 		menu[5].row1 := '5. Standby Disp';
	MOVLW       53
	MOVWF       _menu+168 
	MOVLW       46
	MOVWF       _menu+169 
	MOVLW       32
	MOVWF       _menu+170 
	MOVLW       83
	MOVWF       _menu+171 
	MOVLW       116
	MOVWF       _menu+172 
	MOVLW       97
	MOVWF       _menu+173 
	MOVLW       110
	MOVWF       _menu+174 
	MOVLW       100
	MOVWF       _menu+175 
	MOVLW       98
	MOVWF       _menu+176 
	MOVLW       121
	MOVWF       _menu+177 
	MOVLW       32
	MOVWF       _menu+178 
	MOVLW       68
	MOVWF       _menu+179 
	MOVLW       105
	MOVWF       _menu+180 
	MOVLW       115
	MOVWF       _menu+181 
	MOVLW       112
	MOVWF       _menu+182 
	CLRF        _menu+183 
;ThermoController.mpas,222 :: 		menu[5].row2 := '    Settings';
	MOVLW       32
	MOVWF       _menu+185 
	MOVLW       32
	MOVWF       _menu+186 
	MOVLW       32
	MOVWF       _menu+187 
	MOVLW       32
	MOVWF       _menu+188 
	MOVLW       83
	MOVWF       _menu+189 
	MOVLW       101
	MOVWF       _menu+190 
	MOVLW       116
	MOVWF       _menu+191 
	MOVLW       116
	MOVWF       _menu+192 
	MOVLW       105
	MOVWF       _menu+193 
	MOVLW       110
	MOVWF       _menu+194 
	MOVLW       103
	MOVWF       _menu+195 
	MOVLW       115
	MOVWF       _menu+196 
	CLRF        _menu+197 
;ThermoController.mpas,223 :: 		menu[6].row1 := '6. Log';
	MOVLW       54
	MOVWF       _menu+210 
	MOVLW       46
	MOVWF       _menu+211 
	MOVLW       32
	MOVWF       _menu+212 
	MOVLW       76
	MOVWF       _menu+213 
	MOVLW       111
	MOVWF       _menu+214 
	MOVLW       103
	MOVWF       _menu+215 
	CLRF        _menu+216 
;ThermoController.mpas,224 :: 		menu[6].row2 := '';
	CLRF        _menu+227 
;ThermoController.mpas,225 :: 		menu[7].row1 := '7. Menu';
	MOVLW       55
	MOVWF       _menu+252 
	MOVLW       46
	MOVWF       _menu+253 
	MOVLW       32
	MOVWF       _menu+254 
	MOVLW       77
	MOVWF       _menu+255 
	MOVLW       101
	MOVWF       _menu+256 
	MOVLW       110
	MOVWF       _menu+257 
	MOVLW       117
	MOVWF       _menu+258 
	CLRF        _menu+259 
;ThermoController.mpas,226 :: 		menu[7].row2 := '';
	CLRF        _menu+269 
;ThermoController.mpas,227 :: 		submenu1.row1 := 'date';
	MOVLW       100
	MOVWF       _submenu1+0 
	MOVLW       97
	MOVWF       _submenu1+1 
	MOVLW       116
	MOVWF       _submenu1+2 
	MOVLW       101
	MOVWF       _submenu1+3 
	CLRF        _submenu1+4 
;ThermoController.mpas,228 :: 		submenu1.row2 := 'time';
	MOVLW       116
	MOVWF       _submenu1+17 
	MOVLW       105
	MOVWF       _submenu1+18 
	MOVLW       109
	MOVWF       _submenu1+19 
	MOVLW       101
	MOVWF       _submenu1+20 
	CLRF        _submenu1+21 
;ThermoController.mpas,230 :: 		submenu2[1].row1 := '2.1 Days';
	MOVLW       50
	MOVWF       _submenu2+0 
	MOVLW       46
	MOVWF       _submenu2+1 
	MOVLW       49
	MOVWF       _submenu2+2 
	MOVLW       32
	MOVWF       _submenu2+3 
	MOVLW       68
	MOVWF       _submenu2+4 
	MOVLW       97
	MOVWF       _submenu2+5 
	MOVLW       121
	MOVWF       _submenu2+6 
	MOVLW       115
	MOVWF       _submenu2+7 
	CLRF        _submenu2+8 
;ThermoController.mpas,231 :: 		strcat2(submenu2[1].row2,funcDaysString[1],funcDaysStatus);
	MOVLW       _submenu2+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _funcDaysString+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_funcDaysString+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _funcDaysStatus+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_funcDaysStatus+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,232 :: 		submenu2[2].row1 := '2.2 Hours';
	MOVLW       50
	MOVWF       _submenu2+42 
	MOVLW       46
	MOVWF       _submenu2+43 
	MOVLW       50
	MOVWF       _submenu2+44 
	MOVLW       32
	MOVWF       _submenu2+45 
	MOVLW       72
	MOVWF       _submenu2+46 
	MOVLW       111
	MOVWF       _submenu2+47 
	MOVLW       117
	MOVWF       _submenu2+48 
	MOVLW       114
	MOVWF       _submenu2+49 
	MOVLW       115
	MOVWF       _submenu2+50 
	CLRF        _submenu2+51 
;ThermoController.mpas,233 :: 		submenu2[2].row2 := 'S: 21;     E:  7';
	MOVLW       83
	MOVWF       _submenu2+59 
	MOVLW       58
	MOVWF       _submenu2+60 
	MOVLW       32
	MOVWF       _submenu2+61 
	MOVLW       50
	MOVWF       _submenu2+62 
	MOVLW       49
	MOVWF       _submenu2+63 
	MOVLW       59
	MOVWF       _submenu2+64 
	MOVLW       32
	MOVWF       _submenu2+65 
	MOVLW       32
	MOVWF       _submenu2+66 
	MOVLW       32
	MOVWF       _submenu2+67 
	MOVLW       32
	MOVWF       _submenu2+68 
	MOVLW       32
	MOVWF       _submenu2+69 
	MOVLW       69
	MOVWF       _submenu2+70 
	MOVLW       58
	MOVWF       _submenu2+71 
	MOVLW       32
	MOVWF       _submenu2+72 
	MOVLW       32
	MOVWF       _submenu2+73 
	MOVLW       55
	MOVWF       _submenu2+74 
	CLRF        _submenu2+75 
;ThermoController.mpas,234 :: 		submenu2[3].row1 := '2.3 Temp. Limits';
	MOVLW       50
	MOVWF       _submenu2+84 
	MOVLW       46
	MOVWF       _submenu2+85 
	MOVLW       51
	MOVWF       _submenu2+86 
	MOVLW       32
	MOVWF       _submenu2+87 
	MOVLW       84
	MOVWF       _submenu2+88 
	MOVLW       101
	MOVWF       _submenu2+89 
	MOVLW       109
	MOVWF       _submenu2+90 
	MOVLW       112
	MOVWF       _submenu2+91 
	MOVLW       46
	MOVWF       _submenu2+92 
	MOVLW       32
	MOVWF       _submenu2+93 
	MOVLW       76
	MOVWF       _submenu2+94 
	MOVLW       105
	MOVWF       _submenu2+95 
	MOVLW       109
	MOVWF       _submenu2+96 
	MOVLW       105
	MOVWF       _submenu2+97 
	MOVLW       116
	MOVWF       _submenu2+98 
	MOVLW       115
	MOVWF       _submenu2+99 
	CLRF        _submenu2+100 
;ThermoController.mpas,235 :: 		submenu2[3].row2 := 'Min: 19; Max: 22';
	MOVLW       77
	MOVWF       _submenu2+101 
	MOVLW       105
	MOVWF       _submenu2+102 
	MOVLW       110
	MOVWF       _submenu2+103 
	MOVLW       58
	MOVWF       _submenu2+104 
	MOVLW       32
	MOVWF       _submenu2+105 
	MOVLW       49
	MOVWF       _submenu2+106 
	MOVLW       57
	MOVWF       _submenu2+107 
	MOVLW       59
	MOVWF       _submenu2+108 
	MOVLW       32
	MOVWF       _submenu2+109 
	MOVLW       77
	MOVWF       _submenu2+110 
	MOVLW       97
	MOVWF       _submenu2+111 
	MOVLW       120
	MOVWF       _submenu2+112 
	MOVLW       58
	MOVWF       _submenu2+113 
	MOVLW       32
	MOVWF       _submenu2+114 
	MOVLW       50
	MOVWF       _submenu2+115 
	MOVLW       50
	MOVWF       _submenu2+116 
	CLRF        _submenu2+117 
;ThermoController.mpas,237 :: 		submenu3.row1 := 'Locked:     OFF';
	MOVLW       76
	MOVWF       _submenu3+0 
	MOVLW       111
	MOVWF       _submenu3+1 
	MOVLW       99
	MOVWF       _submenu3+2 
	MOVLW       107
	MOVWF       _submenu3+3 
	MOVLW       101
	MOVWF       _submenu3+4 
	MOVLW       100
	MOVWF       _submenu3+5 
	MOVLW       58
	MOVWF       _submenu3+6 
	MOVLW       32
	MOVWF       _submenu3+7 
	MOVLW       32
	MOVWF       _submenu3+8 
	MOVLW       32
	MOVWF       _submenu3+9 
	MOVLW       32
	MOVWF       _submenu3+10 
	MOVLW       32
	MOVWF       _submenu3+11 
	MOVLW       79
	MOVWF       _submenu3+12 
	MOVLW       70
	MOVWF       _submenu3+13 
	MOVLW       70
	MOVWF       _submenu3+14 
	CLRF        _submenu3+15 
;ThermoController.mpas,238 :: 		submenu3.row2 := '';
	CLRF        _submenu3+17 
;ThermoController.mpas,240 :: 		submenu4.row1 := 'Status LED:';
	MOVLW       83
	MOVWF       _submenu4+0 
	MOVLW       116
	MOVWF       _submenu4+1 
	MOVLW       97
	MOVWF       _submenu4+2 
	MOVLW       116
	MOVWF       _submenu4+3 
	MOVLW       117
	MOVWF       _submenu4+4 
	MOVLW       115
	MOVWF       _submenu4+5 
	MOVLW       32
	MOVWF       _submenu4+6 
	MOVLW       76
	MOVWF       _submenu4+7 
	MOVLW       69
	MOVWF       _submenu4+8 
	MOVLW       68
	MOVWF       _submenu4+9 
	MOVLW       58
	MOVWF       _submenu4+10 
	CLRF        _submenu4+11 
;ThermoController.mpas,241 :: 		submenu4.row2 := '        ON';
	MOVLW       32
	MOVWF       _submenu4+17 
	MOVLW       32
	MOVWF       _submenu4+18 
	MOVLW       32
	MOVWF       _submenu4+19 
	MOVLW       32
	MOVWF       _submenu4+20 
	MOVLW       32
	MOVWF       _submenu4+21 
	MOVLW       32
	MOVWF       _submenu4+22 
	MOVLW       32
	MOVWF       _submenu4+23 
	MOVLW       32
	MOVWF       _submenu4+24 
	MOVLW       79
	MOVWF       _submenu4+25 
	MOVLW       78
	MOVWF       _submenu4+26 
	CLRF        _submenu4+27 
;ThermoController.mpas,243 :: 		submenu5[1].row1 := '6.1 Room Display';
	MOVLW       54
	MOVWF       _submenu5+0 
	MOVLW       46
	MOVWF       _submenu5+1 
	MOVLW       49
	MOVWF       _submenu5+2 
	MOVLW       32
	MOVWF       _submenu5+3 
	MOVLW       82
	MOVWF       _submenu5+4 
	MOVLW       111
	MOVWF       _submenu5+5 
	MOVLW       111
	MOVWF       _submenu5+6 
	MOVLW       109
	MOVWF       _submenu5+7 
	MOVLW       32
	MOVWF       _submenu5+8 
	MOVLW       68
	MOVWF       _submenu5+9 
	MOVLW       105
	MOVWF       _submenu5+10 
	MOVLW       115
	MOVWF       _submenu5+11 
	MOVLW       112
	MOVWF       _submenu5+12 
	MOVLW       108
	MOVWF       _submenu5+13 
	MOVLW       97
	MOVWF       _submenu5+14 
	MOVLW       121
	MOVWF       _submenu5+15 
	CLRF        _submenu5+16 
;ThermoController.mpas,244 :: 		submenu5[1].row2 := 'All four rooms';
	MOVLW       65
	MOVWF       _submenu5+17 
	MOVLW       108
	MOVWF       _submenu5+18 
	MOVLW       108
	MOVWF       _submenu5+19 
	MOVLW       32
	MOVWF       _submenu5+20 
	MOVLW       102
	MOVWF       _submenu5+21 
	MOVLW       111
	MOVWF       _submenu5+22 
	MOVLW       117
	MOVWF       _submenu5+23 
	MOVLW       114
	MOVWF       _submenu5+24 
	MOVLW       32
	MOVWF       _submenu5+25 
	MOVLW       114
	MOVWF       _submenu5+26 
	MOVLW       111
	MOVWF       _submenu5+27 
	MOVLW       111
	MOVWF       _submenu5+28 
	MOVLW       109
	MOVWF       _submenu5+29 
	MOVLW       115
	MOVWF       _submenu5+30 
	CLRF        _submenu5+31 
;ThermoController.mpas,245 :: 		submenu5[2].row1 := '6.2 Display Mode';
	MOVLW       54
	MOVWF       _submenu5+42 
	MOVLW       46
	MOVWF       _submenu5+43 
	MOVLW       50
	MOVWF       _submenu5+44 
	MOVLW       32
	MOVWF       _submenu5+45 
	MOVLW       68
	MOVWF       _submenu5+46 
	MOVLW       105
	MOVWF       _submenu5+47 
	MOVLW       115
	MOVWF       _submenu5+48 
	MOVLW       112
	MOVWF       _submenu5+49 
	MOVLW       108
	MOVWF       _submenu5+50 
	MOVLW       97
	MOVWF       _submenu5+51 
	MOVLW       121
	MOVWF       _submenu5+52 
	MOVLW       32
	MOVWF       _submenu5+53 
	MOVLW       77
	MOVWF       _submenu5+54 
	MOVLW       111
	MOVWF       _submenu5+55 
	MOVLW       100
	MOVWF       _submenu5+56 
	MOVLW       101
	MOVWF       _submenu5+57 
	CLRF        _submenu5+58 
;ThermoController.mpas,246 :: 		submenu5[2].row2 := 'Mode 1';
	MOVLW       77
	MOVWF       _submenu5+59 
	MOVLW       111
	MOVWF       _submenu5+60 
	MOVLW       100
	MOVWF       _submenu5+61 
	MOVLW       101
	MOVWF       _submenu5+62 
	MOVLW       32
	MOVWF       _submenu5+63 
	MOVLW       49
	MOVWF       _submenu5+64 
	CLRF        _submenu5+65 
;ThermoController.mpas,248 :: 		end;
	RETURN      0
; end of _InitMenu

_Interrupt:

;ThermoController.mpas,253 :: 		begin
;ThermoController.mpas,254 :: 		if TMR1IF_bit = 1 then
	BTFSS       TMR1IF_bit+0, 0 
	GOTO        L__Interrupt28
;ThermoController.mpas,256 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,257 :: 		TMR1H         := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,258 :: 		TMR1L         := 0x40;
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,259 :: 		OS_TimerInterrupt; // to be called every x millisecs
	CALL        _OS_TimerInterrupt+0, 0
;ThermoController.mpas,260 :: 		end;
L__Interrupt28:
;ThermoController.mpas,261 :: 		end;
L__Interrupt492:
	RETFIE      1
; end of _Interrupt

_ReadTemp:

;ThermoController.mpas,265 :: 		begin
;ThermoController.mpas,266 :: 		while true do
L__ReadTemp32:
;ThermoController.mpas,268 :: 		OS_Delay(500);
	MOVLW       244
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       1
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,269 :: 		INTCON := 0x00;
	CLRF        INTCON+0 
;ThermoController.mpas,270 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,271 :: 		DS1820_StartTempConversion(PortD,temp_index, true);
	MOVLW       PORTD+0
	MOVWF       FARG_DS1820_StartTempConversion_Port_+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_DS1820_StartTempConversion_Port_+1 
	MOVF        _Temp_index+0, 0 
	MOVWF       FARG_DS1820_StartTempConversion_Bit_+0 
	MOVLW       255
	MOVWF       FARG_DS1820_StartTempConversion_Wait+0 
	CALL        _DS1820_StartTempConversion+0, 0
;ThermoController.mpas,272 :: 		aux_temp := DS1820_ReadTemperature(PortD,temp_index);
	MOVLW       PORTD+0
	MOVWF       FARG_DS1820_ReadTemperature_Port_+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_DS1820_ReadTemperature_Port_+1 
	MOVF        _Temp_index+0, 0 
	MOVWF       FARG_DS1820_ReadTemperature_Bit_+0 
	CALL        _DS1820_ReadTemperature+0, 0
	MOVF        R0, 0 
	MOVWF       _aux_temp+0 
	MOVF        R1, 0 
	MOVWF       _aux_temp+1 
;ThermoController.mpas,273 :: 		if (aux_temp <> Temp[temp_index + 1]) then
	MOVF        _Temp_index+0, 0 
	ADDLW       1
	MOVWF       R2 
	DECF        R2, 0 
	MOVWF       R5 
	MOVF        R5, 0 
	MOVWF       R2 
	MOVLW       0
	MOVWF       R3 
	RLCF        R2, 1 
	BCF         R2, 0 
	RLCF        R3, 1 
	MOVLW       _Temp+0
	ADDWF       R2, 0 
	MOVWF       FSR2L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R3, 0 
	MOVWF       FSR2H 
	MOVF        POSTINC2+0, 0 
	MOVWF       R3 
	MOVF        POSTINC2+0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	XORWF       R4, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__ReadTemp493
	MOVF        R3, 0 
	XORWF       R0, 0 
L__ReadTemp493:
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadTemp37
;ThermoController.mpas,275 :: 		Temp[temp_index + 1] := aux_temp;
	MOVF        _Temp_index+0, 0 
	ADDLW       1
	MOVWF       R0 
	DECF        R0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _Temp+0
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	MOVF        _aux_temp+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        _aux_temp+1, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,277 :: 		CRCOk := DS1820_CheckCRC;
	CALL        _DS1820_CheckCRC+0, 0
	MOVF        R0, 0 
	MOVWF       _CRCOk+0 
;ThermoController.mpas,279 :: 		if CRCOk > 0 then // CRC error
	MOVF        R0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L__ReadTemp40
;ThermoController.mpas,281 :: 		LCD_OUT(2,1,'Temperature CRC error');
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       84
	MOVWF       ?LocalText_ReadTemp+0 
	MOVLW       101
	MOVWF       ?LocalText_ReadTemp+1 
	MOVLW       109
	MOVWF       ?LocalText_ReadTemp+2 
	MOVLW       112
	MOVWF       ?LocalText_ReadTemp+3 
	MOVLW       101
	MOVWF       ?LocalText_ReadTemp+4 
	MOVLW       114
	MOVWF       ?LocalText_ReadTemp+5 
	MOVLW       97
	MOVWF       ?LocalText_ReadTemp+6 
	MOVLW       116
	MOVWF       ?LocalText_ReadTemp+7 
	MOVLW       117
	MOVWF       ?LocalText_ReadTemp+8 
	MOVLW       114
	MOVWF       ?LocalText_ReadTemp+9 
	MOVLW       101
	MOVWF       ?LocalText_ReadTemp+10 
	MOVLW       32
	MOVWF       ?LocalText_ReadTemp+11 
	MOVLW       67
	MOVWF       ?LocalText_ReadTemp+12 
	MOVLW       82
	MOVWF       ?LocalText_ReadTemp+13 
	MOVLW       67
	MOVWF       ?LocalText_ReadTemp+14 
	MOVLW       32
	MOVWF       ?LocalText_ReadTemp+15 
	MOVLW       101
	MOVWF       ?LocalText_ReadTemp+16 
	MOVLW       114
	MOVWF       ?LocalText_ReadTemp+17 
	MOVLW       114
	MOVWF       ?LocalText_ReadTemp+18 
	MOVLW       111
	MOVWF       ?LocalText_ReadTemp+19 
	MOVLW       114
	MOVWF       ?LocalText_ReadTemp+20 
	CLRF        ?LocalText_ReadTemp+21 
	MOVLW       ?LocalText_ReadTemp+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?LocalText_ReadTemp+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ThermoController.mpas,282 :: 		end
	GOTO        L__ReadTemp41
;ThermoController.mpas,283 :: 		else
L__ReadTemp40:
;ThermoController.mpas,285 :: 		DS1820_TempToString(Temp[temp_index + 1], Strng, ',');
	MOVF        _Temp_index+0, 0 
	ADDLW       1
	MOVWF       R0 
	DECF        R0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _Temp+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_DS1820_TempToString_Temp+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_DS1820_TempToString_Temp+1 
	MOVLW       _Strng+0
	MOVWF       FARG_DS1820_TempToString_S+0 
	MOVLW       hi_addr(_Strng+0)
	MOVWF       FARG_DS1820_TempToString_S+1 
	MOVLW       44
	MOVWF       FARG_DS1820_TempToString_Sep+0 
	CALL        _DS1820_TempToString+0, 0
;ThermoController.mpas,286 :: 		if temp_index < 2  then
	MOVLW       2
	SUBWF       _Temp_index+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L__ReadTemp43
;ThermoController.mpas,288 :: 		root.row1[3 + temp_index * 8] := Strng[0];
	MOVF        _Temp_index+0, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVLW       3
	ADDWF       R0, 1 
	MOVLW       _root+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_root+0)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _Strng+0, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,289 :: 		root.row1[4 + temp_index * 8] := Strng[1];
	MOVF        _Temp_index+0, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVLW       4
	ADDWF       R0, 1 
	MOVLW       _root+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_root+0)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _Strng+1, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,290 :: 		root.row1[5 + temp_index * 8] := Strng[2];
	MOVF        _Temp_index+0, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVLW       5
	ADDWF       R0, 1 
	MOVLW       _root+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_root+0)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _Strng+2, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,291 :: 		root.row1[6 + temp_index * 8] := Strng[3];
	MOVF        _Temp_index+0, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVLW       6
	ADDWF       R0, 1 
	MOVLW       _root+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_root+0)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _Strng+3, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,292 :: 		end
	GOTO        L__ReadTemp44
;ThermoController.mpas,293 :: 		else
L__ReadTemp43:
;ThermoController.mpas,295 :: 		root.row2[3 + (temp_index - 2) * 8] := Strng[0];
	MOVLW       2
	SUBWF       _Temp_index+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVLW       3
	ADDWF       R0, 1 
	MOVLW       _root+17
	MOVWF       FSR1L 
	MOVLW       hi_addr(_root+17)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _Strng+0, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,296 :: 		root.row2[4 + (temp_index - 2) * 8] := Strng[1];
	MOVLW       2
	SUBWF       _Temp_index+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVLW       4
	ADDWF       R0, 1 
	MOVLW       _root+17
	MOVWF       FSR1L 
	MOVLW       hi_addr(_root+17)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _Strng+1, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,297 :: 		root.row2[5 + (temp_index - 2) * 8] := Strng[2];
	MOVLW       2
	SUBWF       _Temp_index+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVLW       5
	ADDWF       R0, 1 
	MOVLW       _root+17
	MOVWF       FSR1L 
	MOVLW       hi_addr(_root+17)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _Strng+2, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,298 :: 		root.row2[6 + (temp_index - 2) * 8] := Strng[3];
	MOVLW       2
	SUBWF       _Temp_index+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       R0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R0, 1 
	BCF         R0, 0 
	MOVLW       6
	ADDWF       R0, 1 
	MOVLW       _root+17
	MOVWF       FSR1L 
	MOVLW       hi_addr(_root+17)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVF        _Strng+3, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,299 :: 		end
L__ReadTemp44:
;ThermoController.mpas,300 :: 		end;
L__ReadTemp41:
;ThermoController.mpas,301 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,302 :: 		end;
L__ReadTemp37:
;ThermoController.mpas,303 :: 		temp_index := (temp_index + 1) mod 4;
	INCF        _Temp_index+0, 1 
	MOVLW       3
	ANDWF       _Temp_index+0, 1 
;ThermoController.mpas,304 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,305 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,306 :: 		end;
	GOTO        L__ReadTemp32
;ThermoController.mpas,307 :: 		end;
	RETURN      0
; end of _ReadTemp

_DisplayLED:

;ThermoController.mpas,310 :: 		begin
;ThermoController.mpas,311 :: 		while true do
L__DisplayLED47:
;ThermoController.mpas,313 :: 		OS_WaitSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,314 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,315 :: 		LCD_OUT(1,1,current_node^.row1);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _current_node+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _current_node+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ThermoController.mpas,316 :: 		LCD_OUT(2,1,current_node^.row2);
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       17
	ADDWF       _current_node+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ThermoController.mpas,317 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED52
;ThermoController.mpas,318 :: 		Lcd_Cmd(_LCD_UNDERLINE_ON)
	MOVLW       14
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED53
;ThermoController.mpas,319 :: 		else if edit then
L__DisplayLED52:
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED55
;ThermoController.mpas,320 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON)
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED56
;ThermoController.mpas,321 :: 		else
L__DisplayLED55:
;ThermoController.mpas,322 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
L__DisplayLED56:
L__DisplayLED53:
;ThermoController.mpas,325 :: 		if underscore or edit then
	MOVF        _edit+0, 0 
	IORWF       _underscore+0, 0 
	MOVWF       R0 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED58
;ThermoController.mpas,328 :: 		@submenu1: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED494
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__DisplayLED494:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED63
;ThermoController.mpas,329 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,331 :: 		1 : begin Lcd_Cmd(_LCD_FIRST_ROW); end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED495
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED495:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED70
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED70:
;ThermoController.mpas,332 :: 		2 : begin Lcd_Cmd(_LCD_FIRST_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED496
	MOVLW       2
	XORWF       _index+0, 0 
L__DisplayLED496:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED73
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED73:
;ThermoController.mpas,333 :: 		3 : begin Lcd_Cmd(_LCD_FIRST_ROW);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED497
	MOVLW       3
	XORWF       _index+0, 0 
L__DisplayLED497:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED76
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,334 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); end;
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED76:
;ThermoController.mpas,335 :: 		4 : begin Lcd_Cmd(_LCD_SECOND_ROW);                                                                                                   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED498
	MOVLW       4
	XORWF       _index+0, 0 
L__DisplayLED498:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED79
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED79:
;ThermoController.mpas,336 :: 		5 : begin Lcd_Cmd(_LCD_SECOND_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED499
	MOVLW       5
	XORWF       _index+0, 0 
L__DisplayLED499:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED82
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED82:
L__DisplayLED67:
;ThermoController.mpas,338 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED63:
;ThermoController.mpas,339 :: 		@submenu2[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED500
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__DisplayLED500:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED85
;ThermoController.mpas,340 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,341 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,342 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED90:
;ThermoController.mpas,343 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED501
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED501:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED93
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED90
L__DisplayLED93:
;ThermoController.mpas,344 :: 		if funcDays[index] = true then
	DECF        _index+0, 0 
	MOVWF       R0 
	MOVLW       _funcDays+0
	MOVWF       FSR0L 
	MOVLW       hi_addr(_funcDays+0)
	MOVWF       FSR0H 
	MOVF        R0, 0 
	ADDWF       FSR0L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	MOVF        POSTINC0+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED95
;ThermoController.mpas,345 :: 		funcDaysStatus := ' ON'
	MOVLW       32
	MOVWF       _funcDaysStatus+0 
	MOVLW       79
	MOVWF       _funcDaysStatus+1 
	MOVLW       78
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
	GOTO        L__DisplayLED96
;ThermoController.mpas,346 :: 		else
L__DisplayLED95:
;ThermoController.mpas,347 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
L__DisplayLED96:
;ThermoController.mpas,348 :: 		strcat2(submenu2[1].row2,funcDaysString[index], funcDaysStatus);
	MOVLW       _submenu2+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+17)
	MOVWF       FARG_strcat2_l1+1 
	DECF        _index+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       14
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _funcDaysString+0
	ADDWF       R0, 0 
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_funcDaysString+0)
	ADDWFC      R1, 0 
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _funcDaysStatus+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_funcDaysStatus+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,349 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED85:
;ThermoController.mpas,350 :: 		@submenu2[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED502
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__DisplayLED502:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED99
;ThermoController.mpas,351 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,352 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,353 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED503
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED503:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED104
;ThermoController.mpas,354 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED107:
;ThermoController.mpas,355 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED504
	MOVLW       3
	XORWF       _i+0, 0 
L__DisplayLED504:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED110
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED107
L__DisplayLED110:
	GOTO        L__DisplayLED105
;ThermoController.mpas,356 :: 		else
L__DisplayLED104:
;ThermoController.mpas,357 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED112:
;ThermoController.mpas,358 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED505
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED505:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED115
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED112
L__DisplayLED115:
L__DisplayLED105:
;ThermoController.mpas,359 :: 		strcat2(submenu2[2].row2, '','');
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	CLRF        ?LocalText_DisplayLED+0 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+1 
	MOVLW       ?LocalText_DisplayLED+1
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+1)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,360 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'S: ');
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       83
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,361 :: 		ByteToStr(start_hour, min_temp_string);
	MOVF        _start_hour+0, 0 
	MOVWF       FARG_ByteToStr_input+0 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_ByteToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_ByteToStr_output+1 
	CALL        _ByteToStr+0, 0
;ThermoController.mpas,362 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,363 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'     E: ');
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       69
	MOVWF       ?LocalText_DisplayLED+5 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+6 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	CLRF        ?LocalText_DisplayLED+8 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,364 :: 		IntToStr(end_hour, min_temp_string);
	MOVF        _end_hour+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,365 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,366 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED99:
;ThermoController.mpas,367 :: 		@submenu2[3]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED506
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__DisplayLED506:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED118
;ThermoController.mpas,368 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,369 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,370 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED507
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED507:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED123
;ThermoController.mpas,371 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED126:
;ThermoController.mpas,372 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED508
	MOVLW       6
	XORWF       _i+0, 0 
L__DisplayLED508:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED129
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED126
L__DisplayLED129:
	GOTO        L__DisplayLED124
;ThermoController.mpas,373 :: 		else
L__DisplayLED123:
;ThermoController.mpas,374 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED131:
;ThermoController.mpas,375 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED509
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED509:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED134
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED131
L__DisplayLED134:
L__DisplayLED124:
;ThermoController.mpas,376 :: 		strcat2(submenu2[2].row2, '','');
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	CLRF        ?LocalText_DisplayLED+0 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+1 
	MOVLW       ?LocalText_DisplayLED+1
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+1)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,377 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'Max: ');
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       97
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       120
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+4 
	CLRF        ?LocalText_DisplayLED+5 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,378 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,379 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,380 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'   Min: ');
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       105
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       110
	MOVWF       ?LocalText_DisplayLED+5 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+6 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	CLRF        ?LocalText_DisplayLED+8 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,381 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,382 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu2+59
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu2+59)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,383 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED118:
;ThermoController.mpas,384 :: 		@submenu3: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED510
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__DisplayLED510:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED137
;ThermoController.mpas,385 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,386 :: 		Lcd_Cmd(_LCD_FIRST_ROW);
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,387 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED142:
;ThermoController.mpas,388 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED511
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED511:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED145
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED142
L__DisplayLED145:
;ThermoController.mpas,389 :: 		strcat2(submenu3.row1, '','');
	MOVLW       _submenu3+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       FARG_strcat2_l1+1 
	CLRF        ?LocalText_DisplayLED+0 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+1 
	MOVLW       ?LocalText_DisplayLED+1
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+1)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,390 :: 		strcat2(submenu3.row1, submenu3.row1,'Locked:    ');
	MOVLW       _submenu3+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu3+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       76
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       111
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       99
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       107
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       101
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       100
	MOVWF       ?LocalText_DisplayLED+5 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+6 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+10 
	CLRF        ?LocalText_DisplayLED+11 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,391 :: 		if locked then
	MOVF        _locked+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED147
;ThermoController.mpas,392 :: 		strcat2(submenu3.row1, submenu3.row1,' ON')
	MOVLW       _submenu3+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu3+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
	GOTO        L__DisplayLED148
;ThermoController.mpas,393 :: 		else
L__DisplayLED147:
;ThermoController.mpas,394 :: 		strcat2(submenu3.row1, submenu3.row1,'OFF');
	MOVLW       _submenu3+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu3+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
L__DisplayLED148:
;ThermoController.mpas,395 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED137:
;ThermoController.mpas,396 :: 		@submenu4: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED512
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__DisplayLED512:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED151
;ThermoController.mpas,397 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,398 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,399 :: 		for i:=1 to 8 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED156:
;ThermoController.mpas,400 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED513
	MOVLW       8
	XORWF       _i+0, 0 
L__DisplayLED513:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED159
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED156
L__DisplayLED159:
;ThermoController.mpas,401 :: 		strcat2(submenu4.row2, '','');
	MOVLW       _submenu4+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu4+17)
	MOVWF       FARG_strcat2_l1+1 
	CLRF        ?LocalText_DisplayLED+0 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+1 
	MOVLW       ?LocalText_DisplayLED+1
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+1)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,402 :: 		if locked then
	MOVF        _locked+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED161
;ThermoController.mpas,403 :: 		strcat2(submenu4.row2, submenu4.row2,'       ON')
	MOVLW       _submenu4+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu4+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu4+17
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu4+17)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+5 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+6 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+8 
	CLRF        ?LocalText_DisplayLED+9 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
	GOTO        L__DisplayLED162
;ThermoController.mpas,404 :: 		else
L__DisplayLED161:
;ThermoController.mpas,405 :: 		strcat2(submenu4.row2, submenu4.row2,'      OFF');
	MOVLW       _submenu4+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_submenu4+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _submenu4+17
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_submenu4+17)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+5 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+6 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+8 
	CLRF        ?LocalText_DisplayLED+9 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
L__DisplayLED162:
;ThermoController.mpas,406 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED151:
;ThermoController.mpas,407 :: 		@submenu5[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED514
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__DisplayLED514:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED165
;ThermoController.mpas,408 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,409 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,410 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,412 :: 		1: submenu5[1].row2 := 'All four rooms ';
	MOVF        _room_disp+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED172
	MOVLW       65
	MOVWF       _submenu5+17 
	MOVLW       108
	MOVWF       _submenu5+18 
	MOVLW       108
	MOVWF       _submenu5+19 
	MOVLW       32
	MOVWF       _submenu5+20 
	MOVLW       102
	MOVWF       _submenu5+21 
	MOVLW       111
	MOVWF       _submenu5+22 
	MOVLW       117
	MOVWF       _submenu5+23 
	MOVLW       114
	MOVWF       _submenu5+24 
	MOVLW       32
	MOVWF       _submenu5+25 
	MOVLW       114
	MOVWF       _submenu5+26 
	MOVLW       111
	MOVWF       _submenu5+27 
	MOVLW       111
	MOVWF       _submenu5+28 
	MOVLW       109
	MOVWF       _submenu5+29 
	MOVLW       115
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED172:
;ThermoController.mpas,413 :: 		2: submenu5[1].row2 := 'Room1 + Room2  ';
	MOVF        _room_disp+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED175
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       49
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       43
	MOVWF       _submenu5+23 
	MOVLW       32
	MOVWF       _submenu5+24 
	MOVLW       82
	MOVWF       _submenu5+25 
	MOVLW       111
	MOVWF       _submenu5+26 
	MOVLW       111
	MOVWF       _submenu5+27 
	MOVLW       109
	MOVWF       _submenu5+28 
	MOVLW       50
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED175:
;ThermoController.mpas,414 :: 		3: submenu5[1].row2 := 'Room1 + Room3  ';
	MOVF        _room_disp+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED178
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       49
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       43
	MOVWF       _submenu5+23 
	MOVLW       32
	MOVWF       _submenu5+24 
	MOVLW       82
	MOVWF       _submenu5+25 
	MOVLW       111
	MOVWF       _submenu5+26 
	MOVLW       111
	MOVWF       _submenu5+27 
	MOVLW       109
	MOVWF       _submenu5+28 
	MOVLW       51
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED178:
;ThermoController.mpas,415 :: 		4: submenu5[1].row2 := 'Room1 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED181
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       49
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       43
	MOVWF       _submenu5+23 
	MOVLW       32
	MOVWF       _submenu5+24 
	MOVLW       82
	MOVWF       _submenu5+25 
	MOVLW       111
	MOVWF       _submenu5+26 
	MOVLW       111
	MOVWF       _submenu5+27 
	MOVLW       109
	MOVWF       _submenu5+28 
	MOVLW       52
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED181:
;ThermoController.mpas,416 :: 		5: submenu5[1].row2 := 'Room2 + Room3  ';
	MOVF        _room_disp+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED184
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       50
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       43
	MOVWF       _submenu5+23 
	MOVLW       32
	MOVWF       _submenu5+24 
	MOVLW       82
	MOVWF       _submenu5+25 
	MOVLW       111
	MOVWF       _submenu5+26 
	MOVLW       111
	MOVWF       _submenu5+27 
	MOVLW       109
	MOVWF       _submenu5+28 
	MOVLW       51
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED184:
;ThermoController.mpas,417 :: 		6: submenu5[1].row2 := 'Room2 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED187
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       50
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       43
	MOVWF       _submenu5+23 
	MOVLW       32
	MOVWF       _submenu5+24 
	MOVLW       82
	MOVWF       _submenu5+25 
	MOVLW       111
	MOVWF       _submenu5+26 
	MOVLW       111
	MOVWF       _submenu5+27 
	MOVLW       109
	MOVWF       _submenu5+28 
	MOVLW       52
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED187:
;ThermoController.mpas,418 :: 		7: submenu5[1].row2 := 'Room3 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED190
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       51
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       43
	MOVWF       _submenu5+23 
	MOVLW       32
	MOVWF       _submenu5+24 
	MOVLW       82
	MOVWF       _submenu5+25 
	MOVLW       111
	MOVWF       _submenu5+26 
	MOVLW       111
	MOVWF       _submenu5+27 
	MOVLW       109
	MOVWF       _submenu5+28 
	MOVLW       52
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED190:
;ThermoController.mpas,419 :: 		8: submenu5[1].row2 := 'Room1 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED193
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       49
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       111
	MOVWF       _submenu5+23 
	MOVLW       110
	MOVWF       _submenu5+24 
	MOVLW       108
	MOVWF       _submenu5+25 
	MOVLW       121
	MOVWF       _submenu5+26 
	MOVLW       32
	MOVWF       _submenu5+27 
	MOVLW       32
	MOVWF       _submenu5+28 
	MOVLW       32
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED193:
;ThermoController.mpas,420 :: 		9: submenu5[1].row2 := 'Room2 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED196
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       50
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       111
	MOVWF       _submenu5+23 
	MOVLW       110
	MOVWF       _submenu5+24 
	MOVLW       108
	MOVWF       _submenu5+25 
	MOVLW       121
	MOVWF       _submenu5+26 
	MOVLW       32
	MOVWF       _submenu5+27 
	MOVLW       32
	MOVWF       _submenu5+28 
	MOVLW       32
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED196:
;ThermoController.mpas,421 :: 		10: submenu5[1].row2 := 'Room3 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       10
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED199
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       51
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       111
	MOVWF       _submenu5+23 
	MOVLW       110
	MOVWF       _submenu5+24 
	MOVLW       108
	MOVWF       _submenu5+25 
	MOVLW       121
	MOVWF       _submenu5+26 
	MOVLW       32
	MOVWF       _submenu5+27 
	MOVLW       32
	MOVWF       _submenu5+28 
	MOVLW       32
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED199:
;ThermoController.mpas,422 :: 		11: submenu5[1].row2 := 'Room4 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       11
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED202
	MOVLW       82
	MOVWF       _submenu5+17 
	MOVLW       111
	MOVWF       _submenu5+18 
	MOVLW       111
	MOVWF       _submenu5+19 
	MOVLW       109
	MOVWF       _submenu5+20 
	MOVLW       52
	MOVWF       _submenu5+21 
	MOVLW       32
	MOVWF       _submenu5+22 
	MOVLW       111
	MOVWF       _submenu5+23 
	MOVLW       110
	MOVWF       _submenu5+24 
	MOVLW       108
	MOVWF       _submenu5+25 
	MOVLW       121
	MOVWF       _submenu5+26 
	MOVLW       32
	MOVWF       _submenu5+27 
	MOVLW       32
	MOVWF       _submenu5+28 
	MOVLW       32
	MOVWF       _submenu5+29 
	MOVLW       32
	MOVWF       _submenu5+30 
	MOVLW       32
	MOVWF       _submenu5+31 
	CLRF        _submenu5+32 
	GOTO        L__DisplayLED169
L__DisplayLED202:
L__DisplayLED169:
;ThermoController.mpas,424 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED165:
;ThermoController.mpas,425 :: 		@submenu5[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED515
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__DisplayLED515:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED205
;ThermoController.mpas,426 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,427 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,428 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,429 :: 		if disp_mode then
	MOVF        _disp_mode+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED210
;ThermoController.mpas,430 :: 		submenu5[2].row2 := 'Mode 1'
	MOVLW       77
	MOVWF       _submenu5+59 
	MOVLW       111
	MOVWF       _submenu5+60 
	MOVLW       100
	MOVWF       _submenu5+61 
	MOVLW       101
	MOVWF       _submenu5+62 
	MOVLW       32
	MOVWF       _submenu5+63 
	MOVLW       49
	MOVWF       _submenu5+64 
	CLRF        _submenu5+65 
	GOTO        L__DisplayLED211
;ThermoController.mpas,431 :: 		else
L__DisplayLED210:
;ThermoController.mpas,432 :: 		submenu5[2].row2 := 'Mode 2';
	MOVLW       77
	MOVWF       _submenu5+59 
	MOVLW       111
	MOVWF       _submenu5+60 
	MOVLW       100
	MOVWF       _submenu5+61 
	MOVLW       101
	MOVWF       _submenu5+62 
	MOVLW       32
	MOVWF       _submenu5+63 
	MOVLW       50
	MOVWF       _submenu5+64 
	CLRF        _submenu5+65 
L__DisplayLED211:
;ThermoController.mpas,433 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED205:
L__DisplayLED60:
;ThermoController.mpas,435 :: 		end;
L__DisplayLED58:
;ThermoController.mpas,438 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,439 :: 		end;
	GOTO        L__DisplayLED47
;ThermoController.mpas,440 :: 		end;
	RETURN      0
; end of _DisplayLED

_ReadKeys:

;ThermoController.mpas,443 :: 		begin
;ThermoController.mpas,444 :: 		while true do
L__ReadKeys214:
;ThermoController.mpas,446 :: 		OS_Delay(20);
	MOVLW       20
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,447 :: 		if Button(PORTE, 2, 1, 1) then old_enter := 255;
	MOVLW       PORTE+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time+0 
	MOVLW       1
	MOVWF       FARG_Button_activeState+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadKeys219
	MOVLW       255
	MOVWF       _old_enter+0 
L__ReadKeys219:
;ThermoController.mpas,448 :: 		if old_enter and Button(PORTE, 2, 1, 0) then
	MOVLW       PORTE+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time+0 
	CLRF        FARG_Button_activeState+0 
	CALL        _Button+0, 0
	MOVF        _old_enter+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadKeys222
;ThermoController.mpas,450 :: 		enter := 255;
	MOVLW       255
	MOVWF       _enter+0 
;ThermoController.mpas,451 :: 		old_enter := 0;
	CLRF        _old_enter+0 
;ThermoController.mpas,452 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,453 :: 		end;
L__ReadKeys222:
;ThermoController.mpas,454 :: 		if Button(PORTB, 4, 1, 1) then old_esc := 255;
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time+0 
	MOVLW       1
	MOVWF       FARG_Button_activeState+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadKeys225
	MOVLW       255
	MOVWF       _old_esc+0 
L__ReadKeys225:
;ThermoController.mpas,455 :: 		if old_esc and Button(PORTB, 4, 1, 0) then
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       4
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time+0 
	CLRF        FARG_Button_activeState+0 
	CALL        _Button+0, 0
	MOVF        _old_esc+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadKeys228
;ThermoController.mpas,457 :: 		esc := 255;
	MOVLW       255
	MOVWF       _esc+0 
;ThermoController.mpas,458 :: 		old_esc := 0;
	CLRF        _old_esc+0 
;ThermoController.mpas,459 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,460 :: 		end;
L__ReadKeys228:
;ThermoController.mpas,461 :: 		if Button(PORTE, 1, 1, 1) then old_up := 255;
	MOVLW       PORTE+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time+0 
	MOVLW       1
	MOVWF       FARG_Button_activeState+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadKeys231
	MOVLW       255
	MOVWF       _old_up+0 
L__ReadKeys231:
;ThermoController.mpas,462 :: 		if old_up and Button(PORTE, 1, 1, 0) then
	MOVLW       PORTE+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time+0 
	CLRF        FARG_Button_activeState+0 
	CALL        _Button+0, 0
	MOVF        _old_up+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadKeys234
;ThermoController.mpas,464 :: 		up := 255;
	MOVLW       255
	MOVWF       _up+0 
;ThermoController.mpas,465 :: 		old_up := 0;
	CLRF        _old_up+0 
;ThermoController.mpas,466 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,467 :: 		end;
L__ReadKeys234:
;ThermoController.mpas,468 :: 		if Button(PORTE, 0, 1, 1) then old_down := 255;
	MOVLW       PORTE+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time+0 
	MOVLW       1
	MOVWF       FARG_Button_activeState+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadKeys237
	MOVLW       255
	MOVWF       _old_down+0 
L__ReadKeys237:
;ThermoController.mpas,469 :: 		if old_down and Button(PORTE, 0, 1, 0) then
	MOVLW       PORTE+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTE+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time+0 
	CLRF        FARG_Button_activeState+0 
	CALL        _Button+0, 0
	MOVF        _old_down+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadKeys240
;ThermoController.mpas,471 :: 		down := 255;
	MOVLW       255
	MOVWF       _down+0 
;ThermoController.mpas,472 :: 		old_down := 0;
	CLRF        _old_down+0 
;ThermoController.mpas,473 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,474 :: 		end;
L__ReadKeys240:
;ThermoController.mpas,476 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,477 :: 		end;
	GOTO        L__ReadKeys214
;ThermoController.mpas,478 :: 		end;
	RETURN      0
; end of _ReadKeys

_ReadTime:

;ThermoController.mpas,481 :: 		begin
;ThermoController.mpas,482 :: 		while true do
L__ReadTime244:
;ThermoController.mpas,484 :: 		OS_Delay(50);
	MOVLW       50
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,485 :: 		if (current_node = @submenu1) and (edit = false) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__ReadTime516
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__ReadTime516:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _edit+0, 0 
	XORLW       0
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadTime249
;ThermoController.mpas,487 :: 		Ds1307_Get_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+1 
	CALL        _Ds1307_Get_TimeDate+0, 0
;ThermoController.mpas,488 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_TimeDateStr_Timedate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Timedate+1 
	MOVLW       _timestr+0
	MOVWF       FARG_Ds1307_TimeDateStr_Ts+0 
	MOVLW       hi_addr(_timestr+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Ts+1 
	MOVLW       _datestr+0
	MOVWF       FARG_Ds1307_TimeDateStr_Ds+0 
	MOVLW       hi_addr(_datestr+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Ds+1 
	CALL        _Ds1307_TimeDateStr+0, 0
;ThermoController.mpas,489 :: 		submenu1.row1 := datestr;
	MOVLW       _submenu1+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       FSR1H 
	MOVLW       _datestr+0
	MOVWF       FSR2L 
	MOVLW       hi_addr(_datestr+0)
	MOVWF       FSR2H 
	CALL        ___CS2S+0, 0
	CLRF        POSTINC1+0 
;ThermoController.mpas,490 :: 		submenu1.row2 := timestr;
	MOVLW       _submenu1+17
	MOVWF       FSR1L 
	MOVLW       hi_addr(_submenu1+17)
	MOVWF       FSR1H 
	MOVLW       _timestr+0
	MOVWF       FSR2L 
	MOVLW       hi_addr(_timestr+0)
	MOVWF       FSR2H 
	CALL        ___CS2S+0, 0
	CLRF        POSTINC1+0 
;ThermoController.mpas,491 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,492 :: 		end;
L__ReadTime249:
;ThermoController.mpas,493 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,494 :: 		end;
	GOTO        L__ReadTime244
;ThermoController.mpas,495 :: 		end;
	RETURN      0
; end of _ReadTime

_SaveTime:

;ThermoController.mpas,498 :: 		begin
;ThermoController.mpas,499 :: 		while true do
L__SaveTime253:
;ThermoController.mpas,501 :: 		OS_WaitSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,502 :: 		Ds1307_Set_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+1 
	CALL        _Ds1307_Set_TimeDate+0, 0
;ThermoController.mpas,503 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,504 :: 		end;
	GOTO        L__SaveTime253
;ThermoController.mpas,505 :: 		end;
	RETURN      0
; end of _SaveTime

_NavigateMenu:

;ThermoController.mpas,508 :: 		begin
;ThermoController.mpas,509 :: 		while true do
L__NavigateMenu259:
;ThermoController.mpas,511 :: 		OS_WaitSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,512 :: 		if enter = 255 then
	MOVF        _enter+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu264
;ThermoController.mpas,528 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu517
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu517:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu518
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu518:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu519
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu519:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu520
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu520:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu267
;ThermoController.mpas,530 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu270
;ThermoController.mpas,532 :: 		edit := true;
	MOVLW       255
	MOVWF       _edit+0 
;ThermoController.mpas,533 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,534 :: 		end
	GOTO        L__NavigateMenu271
;ThermoController.mpas,535 :: 		else
L__NavigateMenu270:
;ThermoController.mpas,537 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,538 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu273
;ThermoController.mpas,539 :: 		edit := false;
	CLRF        _edit+0 
L__NavigateMenu273:
;ThermoController.mpas,540 :: 		end;
L__NavigateMenu271:
;ThermoController.mpas,541 :: 		end
	GOTO        L__NavigateMenu268
;ThermoController.mpas,542 :: 		else
L__NavigateMenu267:
;ThermoController.mpas,544 :: 		if  (current_node = @submenu3) or (current_node = @submenu4) or (current_node = @submenu5[1]) or (current_node = @submenu5[2]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu521
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu521:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu522
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu522:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu523
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu523:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu524
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu524:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu276
;ThermoController.mpas,546 :: 		edit := true;
	MOVLW       255
	MOVWF       _edit+0 
;ThermoController.mpas,547 :: 		end
L__NavigateMenu276:
;ThermoController.mpas,548 :: 		end;
L__NavigateMenu268:
;ThermoController.mpas,551 :: 		current_node := current_node^.child;
	MOVLW       40
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
;ThermoController.mpas,552 :: 		enter := 0;
	CLRF        _enter+0 
;ThermoController.mpas,553 :: 		end;
L__NavigateMenu264:
;ThermoController.mpas,554 :: 		if esc = 255 then
	MOVF        _esc+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu279
;ThermoController.mpas,574 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu525
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu525:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu526
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu526:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu527
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu527:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu528
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu528:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu282
;ThermoController.mpas,576 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu285
;ThermoController.mpas,578 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,580 :: 		if (current_node = @submenu1) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu529
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu529:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu288
;ThermoController.mpas,582 :: 		OS_SignalSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,583 :: 		end;
L__NavigateMenu288:
;ThermoController.mpas,584 :: 		end
	GOTO        L__NavigateMenu286
;ThermoController.mpas,585 :: 		else
L__NavigateMenu285:
;ThermoController.mpas,587 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu291
;ThermoController.mpas,589 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,590 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,591 :: 		end
	GOTO        L__NavigateMenu292
;ThermoController.mpas,592 :: 		else
L__NavigateMenu291:
;ThermoController.mpas,594 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,595 :: 		current_node := current_node^.parent;
	MOVLW       34
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
;ThermoController.mpas,596 :: 		end;
L__NavigateMenu292:
;ThermoController.mpas,597 :: 		end
L__NavigateMenu286:
;ThermoController.mpas,598 :: 		end
	GOTO        L__NavigateMenu283
;ThermoController.mpas,599 :: 		else
L__NavigateMenu282:
;ThermoController.mpas,600 :: 		if (current_node = @submenu3) or (current_node = @submenu4) or (current_node = @submenu5[1]) or (current_node = @submenu5[2]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu530
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu530:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu531
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu531:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu532
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu532:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu533
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu533:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu294
;ThermoController.mpas,602 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,603 :: 		current_node := current_node^.parent;
	MOVLW       34
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
;ThermoController.mpas,604 :: 		end
	GOTO        L__NavigateMenu295
;ThermoController.mpas,605 :: 		else
L__NavigateMenu294:
;ThermoController.mpas,607 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,608 :: 		current_node := current_node^.parent;
	MOVLW       34
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
;ThermoController.mpas,609 :: 		end;
L__NavigateMenu295:
L__NavigateMenu283:
;ThermoController.mpas,610 :: 		esc := 0;
	CLRF        _esc+0 
;ThermoController.mpas,611 :: 		end;
L__NavigateMenu279:
;ThermoController.mpas,613 :: 		if up = 255 then
	MOVF        _up+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu297
;ThermoController.mpas,616 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu534
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu534:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu302
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu304
;ThermoController.mpas,618 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,620 :: 		3:     if timedate.Year = 99 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu535
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu535:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu309
	MOVF        _timedate+6, 0 
	XORLW       99
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu311
;ThermoController.mpas,621 :: 		timedate.Year := 0
	CLRF        _timedate+6 
	GOTO        L__NavigateMenu312
;ThermoController.mpas,622 :: 		else timedate.Year := timeDate.Year + 1;
L__NavigateMenu311:
	MOVF        _timedate+6, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu312:
	GOTO        L__NavigateMenu306
L__NavigateMenu309:
;ThermoController.mpas,623 :: 		2:     if timedate.Month = 12 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu536
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu536:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu315
	MOVF        _timedate+5, 0 
	XORLW       12
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu317
;ThermoController.mpas,624 :: 		timedate.Month := 1
	MOVLW       1
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu318
;ThermoController.mpas,625 :: 		else timedate.Month := timeDate.Month + 1;
L__NavigateMenu317:
	MOVF        _timedate+5, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu318:
	GOTO        L__NavigateMenu306
L__NavigateMenu315:
;ThermoController.mpas,626 :: 		1:     if timedate.Date = maxday[timedate.Month] then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu537
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu537:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu321
	DECF        _timedate+5, 0 
	MOVWF       R0 
	MOVLW       _maxday+0
	MOVWF       FSR2L 
	MOVLW       hi_addr(_maxday+0)
	MOVWF       FSR2H 
	MOVF        R0, 0 
	ADDWF       FSR2L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR2H, 1 
	MOVF        _timedate+4, 0 
	XORWF       POSTINC2+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu323
;ThermoController.mpas,627 :: 		timedate.Date := 1
	MOVLW       1
	MOVWF       _timedate+4 
	GOTO        L__NavigateMenu324
;ThermoController.mpas,628 :: 		else timedate.Date := timeDate.Date + 1;
L__NavigateMenu323:
	MOVF        _timedate+4, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu324:
	GOTO        L__NavigateMenu306
L__NavigateMenu321:
;ThermoController.mpas,629 :: 		4:     if timedate.Hours = 23 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu538
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu538:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu327
	MOVF        _timedate+2, 0 
	XORLW       23
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu329
;ThermoController.mpas,630 :: 		timedate.Hours := 0
	CLRF        _timedate+2 
	GOTO        L__NavigateMenu330
;ThermoController.mpas,631 :: 		else timedate.Hours := timeDate.Hours + 1;
L__NavigateMenu329:
	MOVF        _timedate+2, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu330:
	GOTO        L__NavigateMenu306
L__NavigateMenu327:
;ThermoController.mpas,632 :: 		5:     if timedate.Minutes = 59 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu539
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu539:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu333
	MOVF        _timedate+1, 0 
	XORLW       59
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu335
;ThermoController.mpas,633 :: 		timedate.Minutes := 0
	CLRF        _timedate+1 
	GOTO        L__NavigateMenu336
;ThermoController.mpas,634 :: 		else timedate.Minutes := timeDate.Minutes + 1;
L__NavigateMenu335:
	MOVF        _timedate+1, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu336:
	GOTO        L__NavigateMenu306
L__NavigateMenu333:
L__NavigateMenu306:
;ThermoController.mpas,636 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,637 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_TimeDateStr_Timedate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Timedate+1 
	MOVLW       _timestr+0
	MOVWF       FARG_Ds1307_TimeDateStr_Ts+0 
	MOVLW       hi_addr(_timestr+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Ts+1 
	MOVLW       _datestr+0
	MOVWF       FARG_Ds1307_TimeDateStr_Ds+0 
	MOVLW       hi_addr(_datestr+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Ds+1 
	CALL        _Ds1307_TimeDateStr+0, 0
;ThermoController.mpas,638 :: 		submenu1.row1 := datestr;
	MOVLW       _submenu1+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       FSR1H 
	MOVLW       _datestr+0
	MOVWF       FSR2L 
	MOVLW       hi_addr(_datestr+0)
	MOVWF       FSR2H 
	CALL        ___CS2S+0, 0
	CLRF        POSTINC1+0 
;ThermoController.mpas,639 :: 		submenu1.row2 := timestr;
	MOVLW       _submenu1+17
	MOVWF       FSR1L 
	MOVLW       hi_addr(_submenu1+17)
	MOVWF       FSR1H 
	MOVLW       _timestr+0
	MOVWF       FSR2L 
	MOVLW       hi_addr(_timestr+0)
	MOVWF       FSR2H 
	CALL        ___CS2S+0, 0
	CLRF        POSTINC1+0 
;ThermoController.mpas,640 :: 		end
	GOTO        L__NavigateMenu305
;ThermoController.mpas,641 :: 		else if underscore then
L__NavigateMenu304:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu338
;ThermoController.mpas,642 :: 		index := (index  mod 5) + 1;
	MOVLW       5
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _index+0, 0 
	MOVWF       R0 
	MOVF        _index+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       _index+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       _index+1 
L__NavigateMenu338:
L__NavigateMenu305:
	GOTO        L__NavigateMenu299
L__NavigateMenu302:
;ThermoController.mpas,643 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu540
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu540:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu342
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu344
;ThermoController.mpas,645 :: 		funcDays[index] := not funcDays[index];
	DECF        _index+0, 0 
	MOVWF       R0 
	MOVLW       _funcDays+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_funcDays+0)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVLW       _funcDays+0
	MOVWF       FSR0L 
	MOVLW       hi_addr(_funcDays+0)
	MOVWF       FSR0H 
	MOVF        R0, 0 
	ADDWF       FSR0L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	COMF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,646 :: 		end
	GOTO        L__NavigateMenu345
;ThermoController.mpas,647 :: 		else
L__NavigateMenu344:
;ThermoController.mpas,649 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu347
;ThermoController.mpas,651 :: 		index := (index  mod 7) + 1;
	MOVLW       7
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _index+0, 0 
	MOVWF       R0 
	MOVF        _index+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       _index+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       _index+1 
;ThermoController.mpas,652 :: 		end
	GOTO        L__NavigateMenu348
;ThermoController.mpas,653 :: 		else
L__NavigateMenu347:
;ThermoController.mpas,655 :: 		current_node := current_node^.next;
	MOVLW       36
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
;ThermoController.mpas,656 :: 		end;
L__NavigateMenu348:
;ThermoController.mpas,657 :: 		end;
L__NavigateMenu345:
	GOTO        L__NavigateMenu299
L__NavigateMenu342:
;ThermoController.mpas,658 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu541
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu541:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu351
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu353
;ThermoController.mpas,660 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu542
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu542:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu356
;ThermoController.mpas,662 :: 		min_temp := min_temp + 1;
	INFSNZ      _min_temp+0, 1 
	INCF        _min_temp+1, 1 
;ThermoController.mpas,663 :: 		if (min_temp > max_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu543
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu543:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu359
;ThermoController.mpas,664 :: 		min_temp := max_temp;
	MOVF        _max_temp+0, 0 
	MOVWF       _min_temp+0 
	MOVF        _max_temp+1, 0 
	MOVWF       _min_temp+1 
L__NavigateMenu359:
;ThermoController.mpas,665 :: 		end
	GOTO        L__NavigateMenu357
;ThermoController.mpas,666 :: 		else
L__NavigateMenu356:
;ThermoController.mpas,668 :: 		max_temp := max_temp + 1;
	INFSNZ      _max_temp+0, 1 
	INCF        _max_temp+1, 1 
;ThermoController.mpas,669 :: 		if (max_temp > 50) then
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _max_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu544
	MOVF        _max_temp+0, 0 
	SUBLW       50
L__NavigateMenu544:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu362
;ThermoController.mpas,670 :: 		max_temp := 50;
	MOVLW       50
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
L__NavigateMenu362:
;ThermoController.mpas,671 :: 		end;
L__NavigateMenu357:
;ThermoController.mpas,672 :: 		end
	GOTO        L__NavigateMenu354
;ThermoController.mpas,673 :: 		else
L__NavigateMenu353:
;ThermoController.mpas,675 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu365
;ThermoController.mpas,677 :: 		index := (index  mod 2) + 1;
	MOVLW       2
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _index+0, 0 
	MOVWF       R0 
	MOVF        _index+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       _index+0 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       _index+1 
;ThermoController.mpas,678 :: 		end
	GOTO        L__NavigateMenu366
;ThermoController.mpas,679 :: 		else
L__NavigateMenu365:
;ThermoController.mpas,681 :: 		current_node := current_node^.next;
	MOVLW       36
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
;ThermoController.mpas,682 :: 		end;
L__NavigateMenu366:
;ThermoController.mpas,683 :: 		end;
L__NavigateMenu354:
	GOTO        L__NavigateMenu299
L__NavigateMenu351:
;ThermoController.mpas,684 :: 		@submenu3: locked := not locked;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu545
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu545:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu369
	COMF        _locked+0, 1 
	GOTO        L__NavigateMenu299
L__NavigateMenu369:
;ThermoController.mpas,685 :: 		@submenu4: status_led := not status_led ;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu546
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu546:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu372
	COMF        _status_led+0, 1 
	GOTO        L__NavigateMenu299
L__NavigateMenu372:
;ThermoController.mpas,686 :: 		@submenu5[1]: room_disp := (room_disp mod 11) + 1;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu547
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu547:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu375
	MOVLW       11
	MOVWF       R4 
	MOVF        _room_disp+0, 0 
	MOVWF       R0 
	CALL        _Div_8x8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	ADDLW       1
	MOVWF       _room_disp+0 
	GOTO        L__NavigateMenu299
L__NavigateMenu375:
;ThermoController.mpas,687 :: 		@submenu5[2]: disp_mode := not disp_mode
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu548
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu548:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu378
	COMF        _disp_mode+0, 1 
;ThermoController.mpas,689 :: 		else
	GOTO        L__NavigateMenu299
L__NavigateMenu378:
;ThermoController.mpas,690 :: 		current_node := current_node^.next;
	MOVLW       36
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
L__NavigateMenu299:
;ThermoController.mpas,692 :: 		up := 0;
	CLRF        _up+0 
;ThermoController.mpas,693 :: 		end;
L__NavigateMenu297:
;ThermoController.mpas,695 :: 		if down = 255 then
	MOVF        _down+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu380
;ThermoController.mpas,698 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu549
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu549:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu385
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu387
;ThermoController.mpas,700 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,702 :: 		3:     if timedate.Year = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu550
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu550:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu392
	MOVF        _timedate+6, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu394
;ThermoController.mpas,703 :: 		timedate.Year := 99
	MOVLW       99
	MOVWF       _timedate+6 
	GOTO        L__NavigateMenu395
;ThermoController.mpas,704 :: 		else timedate.Year := timeDate.Year - 1;
L__NavigateMenu394:
	DECF        _timedate+6, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu395:
	GOTO        L__NavigateMenu389
L__NavigateMenu392:
;ThermoController.mpas,705 :: 		2:     if timedate.Month = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu551
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu551:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu398
	MOVF        _timedate+5, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu400
;ThermoController.mpas,706 :: 		timedate.Month := 12
	MOVLW       12
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu401
;ThermoController.mpas,707 :: 		else timedate.Month := timeDate.Month - 1;
L__NavigateMenu400:
	DECF        _timedate+5, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu401:
	GOTO        L__NavigateMenu389
L__NavigateMenu398:
;ThermoController.mpas,708 :: 		1:     if timedate.Date = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu552
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu552:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu404
	MOVF        _timedate+4, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu406
;ThermoController.mpas,709 :: 		timedate.Date := maxday[timedate.Month]
	DECF        _timedate+5, 0 
	MOVWF       R0 
	MOVLW       _maxday+0
	MOVWF       FSR0L 
	MOVLW       hi_addr(_maxday+0)
	MOVWF       FSR0H 
	MOVF        R0, 0 
	ADDWF       FSR0L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	MOVF        POSTINC0+0, 0 
	MOVWF       _timedate+4 
	GOTO        L__NavigateMenu407
;ThermoController.mpas,710 :: 		else timedate.Date := timeDate.Date - 1;
L__NavigateMenu406:
	DECF        _timedate+4, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu407:
	GOTO        L__NavigateMenu389
L__NavigateMenu404:
;ThermoController.mpas,711 :: 		4:     if timedate.Hours = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu553
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu553:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu410
	MOVF        _timedate+2, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu412
;ThermoController.mpas,712 :: 		timedate.Hours := 23
	MOVLW       23
	MOVWF       _timedate+2 
	GOTO        L__NavigateMenu413
;ThermoController.mpas,713 :: 		else timedate.Hours := timeDate.Hours - 1;
L__NavigateMenu412:
	DECF        _timedate+2, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu413:
	GOTO        L__NavigateMenu389
L__NavigateMenu410:
;ThermoController.mpas,714 :: 		5:     if timedate.Minutes = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu554
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu554:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu416
	MOVF        _timedate+1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu418
;ThermoController.mpas,715 :: 		timedate.Minutes := 59
	MOVLW       59
	MOVWF       _timedate+1 
	GOTO        L__NavigateMenu419
;ThermoController.mpas,716 :: 		else timedate.Minutes := timeDate.Minutes - 1;
L__NavigateMenu418:
	DECF        _timedate+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu419:
	GOTO        L__NavigateMenu389
L__NavigateMenu416:
L__NavigateMenu389:
;ThermoController.mpas,718 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,719 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_TimeDateStr_Timedate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Timedate+1 
	MOVLW       _timestr+0
	MOVWF       FARG_Ds1307_TimeDateStr_Ts+0 
	MOVLW       hi_addr(_timestr+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Ts+1 
	MOVLW       _datestr+0
	MOVWF       FARG_Ds1307_TimeDateStr_Ds+0 
	MOVLW       hi_addr(_datestr+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Ds+1 
	CALL        _Ds1307_TimeDateStr+0, 0
;ThermoController.mpas,720 :: 		submenu1.row1 := datestr;
	MOVLW       _submenu1+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       FSR1H 
	MOVLW       _datestr+0
	MOVWF       FSR2L 
	MOVLW       hi_addr(_datestr+0)
	MOVWF       FSR2H 
	CALL        ___CS2S+0, 0
	CLRF        POSTINC1+0 
;ThermoController.mpas,721 :: 		submenu1.row2 := timestr;
	MOVLW       _submenu1+17
	MOVWF       FSR1L 
	MOVLW       hi_addr(_submenu1+17)
	MOVWF       FSR1H 
	MOVLW       _timestr+0
	MOVWF       FSR2L 
	MOVLW       hi_addr(_timestr+0)
	MOVWF       FSR2H 
	CALL        ___CS2S+0, 0
	CLRF        POSTINC1+0 
;ThermoController.mpas,722 :: 		end
	GOTO        L__NavigateMenu388
;ThermoController.mpas,723 :: 		else if underscore then
L__NavigateMenu387:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu421
;ThermoController.mpas,724 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu555
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu555:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu424
;ThermoController.mpas,725 :: 		index := 5
	MOVLW       5
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu425
;ThermoController.mpas,726 :: 		else
L__NavigateMenu424:
;ThermoController.mpas,727 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu425:
L__NavigateMenu421:
L__NavigateMenu388:
	GOTO        L__NavigateMenu382
L__NavigateMenu385:
;ThermoController.mpas,728 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu556
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu556:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu428
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu430
;ThermoController.mpas,730 :: 		funcDays[index] := not funcDays[index];
	DECF        _index+0, 0 
	MOVWF       R0 
	MOVLW       _funcDays+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_funcDays+0)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	MOVLW       _funcDays+0
	MOVWF       FSR0L 
	MOVLW       hi_addr(_funcDays+0)
	MOVWF       FSR0H 
	MOVF        R0, 0 
	ADDWF       FSR0L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0H, 1 
	COMF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;ThermoController.mpas,731 :: 		end
	GOTO        L__NavigateMenu431
;ThermoController.mpas,732 :: 		else
L__NavigateMenu430:
;ThermoController.mpas,734 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu433
;ThermoController.mpas,736 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu557
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu557:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu436
;ThermoController.mpas,737 :: 		index := 7
	MOVLW       7
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu437
;ThermoController.mpas,738 :: 		else
L__NavigateMenu436:
;ThermoController.mpas,739 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu437:
;ThermoController.mpas,740 :: 		end
	GOTO        L__NavigateMenu434
;ThermoController.mpas,741 :: 		else
L__NavigateMenu433:
;ThermoController.mpas,743 :: 		current_node := current_node^.prev;
	MOVLW       38
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
;ThermoController.mpas,744 :: 		end;
L__NavigateMenu434:
;ThermoController.mpas,745 :: 		end;
L__NavigateMenu431:
	GOTO        L__NavigateMenu382
L__NavigateMenu428:
;ThermoController.mpas,746 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu558
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu558:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu440
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu442
;ThermoController.mpas,748 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu559
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu559:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu445
;ThermoController.mpas,750 :: 		min_temp := min_temp - 1;
	MOVLW       1
	SUBWF       _min_temp+0, 1 
	MOVLW       0
	SUBWFB      _min_temp+1, 1 
;ThermoController.mpas,751 :: 		if (min_temp < 0) then
	MOVLW       128
	XORWF       _min_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu560
	MOVLW       0
	SUBWF       _min_temp+0, 0 
L__NavigateMenu560:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu448
;ThermoController.mpas,752 :: 		min_temp := 0;
	CLRF        _min_temp+0 
	CLRF        _min_temp+1 
L__NavigateMenu448:
;ThermoController.mpas,753 :: 		end
	GOTO        L__NavigateMenu446
;ThermoController.mpas,754 :: 		else
L__NavigateMenu445:
;ThermoController.mpas,756 :: 		max_temp := max_temp - 1;
	MOVLW       1
	SUBWF       _max_temp+0, 1 
	MOVLW       0
	SUBWFB      _max_temp+1, 1 
;ThermoController.mpas,757 :: 		if (max_temp < min_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu561
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu561:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu451
;ThermoController.mpas,758 :: 		max_temp := min_temp;
	MOVF        _min_temp+0, 0 
	MOVWF       _max_temp+0 
	MOVF        _min_temp+1, 0 
	MOVWF       _max_temp+1 
L__NavigateMenu451:
;ThermoController.mpas,759 :: 		end;
L__NavigateMenu446:
;ThermoController.mpas,760 :: 		end
	GOTO        L__NavigateMenu443
;ThermoController.mpas,761 :: 		else
L__NavigateMenu442:
;ThermoController.mpas,763 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu454
;ThermoController.mpas,765 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu562
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu562:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu457
;ThermoController.mpas,766 :: 		index := 2
	MOVLW       2
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu458
;ThermoController.mpas,767 :: 		else
L__NavigateMenu457:
;ThermoController.mpas,768 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
L__NavigateMenu458:
;ThermoController.mpas,769 :: 		end
	GOTO        L__NavigateMenu455
;ThermoController.mpas,770 :: 		else
L__NavigateMenu454:
;ThermoController.mpas,772 :: 		current_node := current_node^.prev;
	MOVLW       38
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
;ThermoController.mpas,773 :: 		end;
L__NavigateMenu455:
;ThermoController.mpas,774 :: 		end;
L__NavigateMenu443:
	GOTO        L__NavigateMenu382
L__NavigateMenu440:
;ThermoController.mpas,775 :: 		@submenu3: locked := not locked;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu563
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu563:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu461
	COMF        _locked+0, 1 
	GOTO        L__NavigateMenu382
L__NavigateMenu461:
;ThermoController.mpas,776 :: 		@submenu4: status_led := not status_led;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu564
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu564:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu464
	COMF        _status_led+0, 1 
	GOTO        L__NavigateMenu382
L__NavigateMenu464:
;ThermoController.mpas,777 :: 		@submenu5[1]: if room_disp = 1 then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu565
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu565:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu467
	MOVF        _room_disp+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu469
;ThermoController.mpas,778 :: 		room_disp := 11
	MOVLW       11
	MOVWF       _room_disp+0 
	GOTO        L__NavigateMenu470
;ThermoController.mpas,779 :: 		else
L__NavigateMenu469:
;ThermoController.mpas,780 :: 		room_disp := room_disp - 1;
	DECF        _room_disp+0, 1 
L__NavigateMenu470:
	GOTO        L__NavigateMenu382
L__NavigateMenu467:
;ThermoController.mpas,781 :: 		@submenu5[2]: disp_mode := not disp_mode
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu566
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu566:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu473
	COMF        _disp_mode+0, 1 
;ThermoController.mpas,782 :: 		else
	GOTO        L__NavigateMenu382
L__NavigateMenu473:
;ThermoController.mpas,783 :: 		current_node := current_node^.prev;
	MOVLW       38
	ADDWF       _current_node+0, 0 
	MOVWF       FSR0L 
	MOVLW       0
	ADDWFC      _current_node+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       _current_node+1 
L__NavigateMenu382:
;ThermoController.mpas,785 :: 		down := 0;
	CLRF        _down+0 
;ThermoController.mpas,786 :: 		end;
L__NavigateMenu380:
;ThermoController.mpas,787 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,788 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,789 :: 		end;
	GOTO        L__NavigateMenu259
;ThermoController.mpas,790 :: 		end;
	RETURN      0
; end of _NavigateMenu

_main:

;ThermoController.mpas,792 :: 		begin
;ThermoController.mpas,795 :: 		Delay_ms(100);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L__main475:
	DECFSZ      R13, 1, 1
	BRA         L__main475
	DECFSZ      R12, 1, 1
	BRA         L__main475
	DECFSZ      R11, 1, 1
	BRA         L__main475
	NOP
;ThermoController.mpas,796 :: 		LATC:=0xFF;
	MOVLW       255
	MOVWF       LATC+0 
;ThermoController.mpas,797 :: 		TRISC:=0xff;
	MOVLW       255
	MOVWF       TRISC+0 
;ThermoController.mpas,798 :: 		LATD:=0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;ThermoController.mpas,799 :: 		TRISD:=0xff;
	MOVLW       255
	MOVWF       TRISD+0 
;ThermoController.mpas,801 :: 		TRISC.2 := 0; //out latc.2
	BCF         TRISC+0, 2 
;ThermoController.mpas,802 :: 		Trisb.5 := 0; //out latb.5
	BCF         TRISB+0, 5 
;ThermoController.mpas,803 :: 		Trisb.4 := 1; //in portb.4
	BSF         TRISB+0, 4 
;ThermoController.mpas,804 :: 		TrisE.0 := 1; //in portE.0
	BSF         TRISE+0, 0 
;ThermoController.mpas,805 :: 		TrisE.1 := 1; //in portE.1
	BSF         TRISE+0, 1 
;ThermoController.mpas,806 :: 		TrisE.2 := 1; //in portE.2
	BSF         TRISE+0, 2 
;ThermoController.mpas,807 :: 		TrisD.0 := 1; //
	BSF         TRISD+0, 0 
;ThermoController.mpas,808 :: 		TrisD.1 := 1;
	BSF         TRISD+0, 1 
;ThermoController.mpas,809 :: 		TrisD.2 := 1;
	BSF         TRISD+0, 2 
;ThermoController.mpas,810 :: 		TrisD.3 := 1;
	BSF         TRISD+0, 3 
;ThermoController.mpas,813 :: 		Lcd_Init();                        // Initialize LCD
	CALL        _Lcd_Init+0, 0
;ThermoController.mpas,814 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,815 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,818 :: 		for i:=1 to 4 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main477:
;ThermoController.mpas,819 :: 		Temp[i] := 0;
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _Temp+0
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
	CLRF        POSTINC1+0 
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main567
	MOVLW       4
	XORWF       _i+0, 0 
L__main567:
	BTFSC       STATUS+0, 2 
	GOTO        L__main480
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main477
L__main480:
;ThermoController.mpas,820 :: 		temp_index := 0;
	CLRF        _Temp_index+0 
;ThermoController.mpas,823 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main482:
;ThermoController.mpas,824 :: 		funcDays[i] := false;
	DECF        _i+0, 0 
	MOVWF       R0 
	MOVLW       _funcDays+0
	MOVWF       FSR1L 
	MOVLW       hi_addr(_funcDays+0)
	MOVWF       FSR1H 
	MOVF        R0, 0 
	ADDWF       FSR1L, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR1H, 1 
	CLRF        POSTINC1+0 
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main568
	MOVLW       7
	XORWF       _i+0, 0 
L__main568:
	BTFSC       STATUS+0, 2 
	GOTO        L__main485
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main482
L__main485:
;ThermoController.mpas,825 :: 		funcDaysString[1]:= 'Monday       ';
	MOVLW       77
	MOVWF       _funcDaysString+0 
	MOVLW       111
	MOVWF       _funcDaysString+1 
	MOVLW       110
	MOVWF       _funcDaysString+2 
	MOVLW       100
	MOVWF       _funcDaysString+3 
	MOVLW       97
	MOVWF       _funcDaysString+4 
	MOVLW       121
	MOVWF       _funcDaysString+5 
	MOVLW       32
	MOVWF       _funcDaysString+6 
	MOVLW       32
	MOVWF       _funcDaysString+7 
	MOVLW       32
	MOVWF       _funcDaysString+8 
	MOVLW       32
	MOVWF       _funcDaysString+9 
	MOVLW       32
	MOVWF       _funcDaysString+10 
	MOVLW       32
	MOVWF       _funcDaysString+11 
	MOVLW       32
	MOVWF       _funcDaysString+12 
	CLRF        _funcDaysString+13 
;ThermoController.mpas,826 :: 		funcDaysString[2]:= 'Tuesday      ';
	MOVLW       84
	MOVWF       _funcDaysString+14 
	MOVLW       117
	MOVWF       _funcDaysString+15 
	MOVLW       101
	MOVWF       _funcDaysString+16 
	MOVLW       115
	MOVWF       _funcDaysString+17 
	MOVLW       100
	MOVWF       _funcDaysString+18 
	MOVLW       97
	MOVWF       _funcDaysString+19 
	MOVLW       121
	MOVWF       _funcDaysString+20 
	MOVLW       32
	MOVWF       _funcDaysString+21 
	MOVLW       32
	MOVWF       _funcDaysString+22 
	MOVLW       32
	MOVWF       _funcDaysString+23 
	MOVLW       32
	MOVWF       _funcDaysString+24 
	MOVLW       32
	MOVWF       _funcDaysString+25 
	MOVLW       32
	MOVWF       _funcDaysString+26 
	CLRF        _funcDaysString+27 
;ThermoController.mpas,827 :: 		funcDaysString[3]:= 'Wednsday     ';
	MOVLW       87
	MOVWF       _funcDaysString+28 
	MOVLW       101
	MOVWF       _funcDaysString+29 
	MOVLW       100
	MOVWF       _funcDaysString+30 
	MOVLW       110
	MOVWF       _funcDaysString+31 
	MOVLW       115
	MOVWF       _funcDaysString+32 
	MOVLW       100
	MOVWF       _funcDaysString+33 
	MOVLW       97
	MOVWF       _funcDaysString+34 
	MOVLW       121
	MOVWF       _funcDaysString+35 
	MOVLW       32
	MOVWF       _funcDaysString+36 
	MOVLW       32
	MOVWF       _funcDaysString+37 
	MOVLW       32
	MOVWF       _funcDaysString+38 
	MOVLW       32
	MOVWF       _funcDaysString+39 
	MOVLW       32
	MOVWF       _funcDaysString+40 
	CLRF        _funcDaysString+41 
;ThermoController.mpas,828 :: 		funcDaysString[4]:= 'Thursday     ';
	MOVLW       84
	MOVWF       _funcDaysString+42 
	MOVLW       104
	MOVWF       _funcDaysString+43 
	MOVLW       117
	MOVWF       _funcDaysString+44 
	MOVLW       114
	MOVWF       _funcDaysString+45 
	MOVLW       115
	MOVWF       _funcDaysString+46 
	MOVLW       100
	MOVWF       _funcDaysString+47 
	MOVLW       97
	MOVWF       _funcDaysString+48 
	MOVLW       121
	MOVWF       _funcDaysString+49 
	MOVLW       32
	MOVWF       _funcDaysString+50 
	MOVLW       32
	MOVWF       _funcDaysString+51 
	MOVLW       32
	MOVWF       _funcDaysString+52 
	MOVLW       32
	MOVWF       _funcDaysString+53 
	MOVLW       32
	MOVWF       _funcDaysString+54 
	CLRF        _funcDaysString+55 
;ThermoController.mpas,829 :: 		funcDaysString[5]:= 'Friday       ';
	MOVLW       70
	MOVWF       _funcDaysString+56 
	MOVLW       114
	MOVWF       _funcDaysString+57 
	MOVLW       105
	MOVWF       _funcDaysString+58 
	MOVLW       100
	MOVWF       _funcDaysString+59 
	MOVLW       97
	MOVWF       _funcDaysString+60 
	MOVLW       121
	MOVWF       _funcDaysString+61 
	MOVLW       32
	MOVWF       _funcDaysString+62 
	MOVLW       32
	MOVWF       _funcDaysString+63 
	MOVLW       32
	MOVWF       _funcDaysString+64 
	MOVLW       32
	MOVWF       _funcDaysString+65 
	MOVLW       32
	MOVWF       _funcDaysString+66 
	MOVLW       32
	MOVWF       _funcDaysString+67 
	MOVLW       32
	MOVWF       _funcDaysString+68 
	CLRF        _funcDaysString+69 
;ThermoController.mpas,830 :: 		funcDaysString[6]:= 'Saturday     ';
	MOVLW       83
	MOVWF       _funcDaysString+70 
	MOVLW       97
	MOVWF       _funcDaysString+71 
	MOVLW       116
	MOVWF       _funcDaysString+72 
	MOVLW       117
	MOVWF       _funcDaysString+73 
	MOVLW       114
	MOVWF       _funcDaysString+74 
	MOVLW       100
	MOVWF       _funcDaysString+75 
	MOVLW       97
	MOVWF       _funcDaysString+76 
	MOVLW       121
	MOVWF       _funcDaysString+77 
	MOVLW       32
	MOVWF       _funcDaysString+78 
	MOVLW       32
	MOVWF       _funcDaysString+79 
	MOVLW       32
	MOVWF       _funcDaysString+80 
	MOVLW       32
	MOVWF       _funcDaysString+81 
	MOVLW       32
	MOVWF       _funcDaysString+82 
	CLRF        _funcDaysString+83 
;ThermoController.mpas,831 :: 		funcDaysString[7]:= 'Sunday       ';
	MOVLW       83
	MOVWF       _funcDaysString+84 
	MOVLW       117
	MOVWF       _funcDaysString+85 
	MOVLW       110
	MOVWF       _funcDaysString+86 
	MOVLW       100
	MOVWF       _funcDaysString+87 
	MOVLW       97
	MOVWF       _funcDaysString+88 
	MOVLW       121
	MOVWF       _funcDaysString+89 
	MOVLW       32
	MOVWF       _funcDaysString+90 
	MOVLW       32
	MOVWF       _funcDaysString+91 
	MOVLW       32
	MOVWF       _funcDaysString+92 
	MOVLW       32
	MOVWF       _funcDaysString+93 
	MOVLW       32
	MOVWF       _funcDaysString+94 
	MOVLW       32
	MOVWF       _funcDaysString+95 
	MOVLW       32
	MOVWF       _funcDaysString+96 
	CLRF        _funcDaysString+97 
;ThermoController.mpas,832 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
;ThermoController.mpas,833 :: 		min_temp := 19;
	MOVLW       19
	MOVWF       _min_temp+0 
	MOVLW       0
	MOVWF       _min_temp+1 
;ThermoController.mpas,834 :: 		max_temp := 22;
	MOVLW       22
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
;ThermoController.mpas,835 :: 		start_hour := 7;
	MOVLW       7
	MOVWF       _start_hour+0 
;ThermoController.mpas,836 :: 		end_hour := 21;
	MOVLW       21
	MOVWF       _end_hour+0 
;ThermoController.mpas,838 :: 		locked := false;
	CLRF        _locked+0 
;ThermoController.mpas,839 :: 		status_led := true;
	MOVLW       255
	MOVWF       _status_led+0 
;ThermoController.mpas,841 :: 		room_disp:= 1;
	MOVLW       1
	MOVWF       _room_disp+0 
;ThermoController.mpas,842 :: 		disp_mode := true;
	MOVLW       255
	MOVWF       _disp_mode+0 
;ThermoController.mpas,845 :: 		ADCON1 := %00111111; //all analog pins as digital
	MOVLW       63
	MOVWF       ADCON1+0 
;ThermoController.mpas,847 :: 		I2c1_Init(100000);
	MOVLW       120
	MOVWF       SSPADD+0 
	CALL        _I2C1_Init+0, 0
;ThermoController.mpas,848 :: 		DS1307_Init;                      // Ds1307 Real Time clock
	CALL        _Ds1307_Init+0, 0
;ThermoController.mpas,849 :: 		Delay_ms(500);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L__main486:
	DECFSZ      R13, 1, 1
	BRA         L__main486
	DECFSZ      R12, 1, 1
	BRA         L__main486
	DECFSZ      R11, 1, 1
	BRA         L__main486
	NOP
;ThermoController.mpas,852 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_TimeDateStr_Timedate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Timedate+1 
	MOVLW       _timestr+0
	MOVWF       FARG_Ds1307_TimeDateStr_Ts+0 
	MOVLW       hi_addr(_timestr+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Ts+1 
	MOVLW       _datestr+0
	MOVWF       FARG_Ds1307_TimeDateStr_Ds+0 
	MOVLW       hi_addr(_datestr+0)
	MOVWF       FARG_Ds1307_TimeDateStr_Ds+1 
	CALL        _Ds1307_TimeDateStr+0, 0
;ThermoController.mpas,854 :: 		InitMenu;
	CALL        _InitMenu+0, 0
;ThermoController.mpas,855 :: 		LCD_OUT(1,1,'ddd');
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       100
	MOVWF       ?LocalText_main+0 
	MOVLW       100
	MOVWF       ?LocalText_main+1 
	MOVLW       100
	MOVWF       ?LocalText_main+2 
	CLRF        ?LocalText_main+3 
	MOVLW       ?LocalText_main+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?LocalText_main+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ThermoController.mpas,858 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,859 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,860 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,863 :: 		OS_Init;
	CALL        _OS_Init+0, 0
;ThermoController.mpas,872 :: 		T_ReadTemp := OS_CreateTask(@ReadTemp, 2);
	MOVLW       _ReadTemp+0
	MOVWF       FARG_OS_CreateTask_TaskProc+0 
	MOVLW       hi_addr(_ReadTemp+0)
	MOVWF       FARG_OS_CreateTask_TaskProc+1 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+2 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+3 
	MOVLW       2
	MOVWF       FARG_OS_CreateTask_Priority+0 
	CALL        _OS_CreateTask+0, 0
	MOVF        R0, 0 
	MOVWF       _T_ReadTemp+0 
;ThermoController.mpas,873 :: 		T_ReadTime := OS_CreateTask(@ReadTime, 1);
	MOVLW       _ReadTime+0
	MOVWF       FARG_OS_CreateTask_TaskProc+0 
	MOVLW       hi_addr(_ReadTime+0)
	MOVWF       FARG_OS_CreateTask_TaskProc+1 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+2 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+3 
	MOVLW       1
	MOVWF       FARG_OS_CreateTask_Priority+0 
	CALL        _OS_CreateTask+0, 0
	MOVF        R0, 0 
	MOVWF       _T_ReadTime+0 
;ThermoController.mpas,874 :: 		T_DisplayLED := OS_CreateTask(@DisplayLED, 1);
	MOVLW       _DisplayLED+0
	MOVWF       FARG_OS_CreateTask_TaskProc+0 
	MOVLW       hi_addr(_DisplayLED+0)
	MOVWF       FARG_OS_CreateTask_TaskProc+1 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+2 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+3 
	MOVLW       1
	MOVWF       FARG_OS_CreateTask_Priority+0 
	CALL        _OS_CreateTask+0, 0
	MOVF        R0, 0 
	MOVWF       _T_DisplayLED+0 
;ThermoController.mpas,875 :: 		T_ReadKeys := OS_CreateTask(@ReadKeys, 0);
	MOVLW       _ReadKeys+0
	MOVWF       FARG_OS_CreateTask_TaskProc+0 
	MOVLW       hi_addr(_ReadKeys+0)
	MOVWF       FARG_OS_CreateTask_TaskProc+1 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+2 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+3 
	CLRF        FARG_OS_CreateTask_Priority+0 
	CALL        _OS_CreateTask+0, 0
	MOVF        R0, 0 
	MOVWF       _T_ReadKeys+0 
;ThermoController.mpas,876 :: 		T_NavigateMenu := OS_CreateTask(@NavigateMenu, 3);
	MOVLW       _NavigateMenu+0
	MOVWF       FARG_OS_CreateTask_TaskProc+0 
	MOVLW       hi_addr(_NavigateMenu+0)
	MOVWF       FARG_OS_CreateTask_TaskProc+1 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+2 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+3 
	MOVLW       3
	MOVWF       FARG_OS_CreateTask_Priority+0 
	CALL        _OS_CreateTask+0, 0
	MOVF        R0, 0 
	MOVWF       _T_NavigateMenu+0 
;ThermoController.mpas,877 :: 		T_SaveTime := OS_CreateTask(@SaveTime, 3);
	MOVLW       _SaveTime+0
	MOVWF       FARG_OS_CreateTask_TaskProc+0 
	MOVLW       hi_addr(_SaveTime+0)
	MOVWF       FARG_OS_CreateTask_TaskProc+1 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+2 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+3 
	MOVLW       3
	MOVWF       FARG_OS_CreateTask_Priority+0 
	CALL        _OS_CreateTask+0, 0
	MOVF        R0, 0 
	MOVWF       _T_SaveTime+0 
;ThermoController.mpas,880 :: 		S_Display := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Display+0 
;ThermoController.mpas,881 :: 		S_Navigate := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Navigate+0 
;ThermoController.mpas,882 :: 		S_SetTime := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_SetTime+0 
;ThermoController.mpas,885 :: 		OS_StartTask(T_ReadTemp);
	MOVF        _T_ReadTemp+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,886 :: 		OS_StartTask(T_ReadTime);
	MOVF        _T_ReadTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,887 :: 		OS_StartTask(T_DisplayLED);
	MOVF        _T_DisplayLED+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,888 :: 		OS_StartTask(T_ReadKeys);
	MOVF        _T_ReadKeys+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,889 :: 		OS_StartTask(T_NavigateMenu);
	MOVF        _T_NavigateMenu+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,890 :: 		OS_StartTask(T_SaveTime);
	MOVF        _T_SaveTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,893 :: 		T1CKPS0_bit := 1;
	BSF         T1CKPS0_bit+0, 4 
;ThermoController.mpas,894 :: 		T1CKPS1_bit := 0;
	BCF         T1CKPS1_bit+0, 5 
;ThermoController.mpas,895 :: 		TMR1CS_bit := 0; // internal clock
	BCF         TMR1CS_bit+0, 1 
;ThermoController.mpas,896 :: 		TMR1L := 0x40; // reset timer register
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,897 :: 		TMR1H := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,898 :: 		OS_Timer_IE_bit := 0; // disable timebase interrupt, will be enabled in “OS_Run”
	BCF         TMR1IE_bit+0, 0 
;ThermoController.mpas,899 :: 		TMR1ON_bit := 1; // start timer
	BSF         TMR1ON_bit+0, 0 
;ThermoController.mpas,900 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,901 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,903 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,904 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,908 :: 		OS_Run;
	CALL        _OS_Run+0, 0
;ThermoController.mpas,909 :: 		end.
	GOTO        $+0
; end of _main
