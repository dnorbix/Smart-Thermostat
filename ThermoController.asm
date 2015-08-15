
_InitMenu:

;ThermoController.mpas,132 :: 		begin
;ThermoController.mpas,134 :: 		maxday[1]:=31;
	MOVLW       31
	MOVWF       _maxday+0 
;ThermoController.mpas,135 :: 		maxday[2]:=28;
	MOVLW       28
	MOVWF       _maxday+1 
;ThermoController.mpas,136 :: 		maxday[3]:=31;
	MOVLW       31
	MOVWF       _maxday+2 
;ThermoController.mpas,137 :: 		maxday[4]:=30;
	MOVLW       30
	MOVWF       _maxday+3 
;ThermoController.mpas,138 :: 		maxday[5]:=31;
	MOVLW       31
	MOVWF       _maxday+4 
;ThermoController.mpas,139 :: 		maxday[6]:=30;
	MOVLW       30
	MOVWF       _maxday+5 
;ThermoController.mpas,140 :: 		maxday[7]:=31;
	MOVLW       31
	MOVWF       _maxday+6 
;ThermoController.mpas,141 :: 		maxday[8]:=31;
	MOVLW       31
	MOVWF       _maxday+7 
;ThermoController.mpas,142 :: 		maxday[9]:=30;
	MOVLW       30
	MOVWF       _maxday+8 
;ThermoController.mpas,143 :: 		maxday[10]:=31;
	MOVLW       31
	MOVWF       _maxday+9 
;ThermoController.mpas,144 :: 		maxday[11]:=30;
	MOVLW       30
	MOVWF       _maxday+10 
;ThermoController.mpas,145 :: 		maxday[12]:=31;
	MOVLW       31
	MOVWF       _maxday+11 
;ThermoController.mpas,151 :: 		root.row1 := 'Welcome, Laci!';
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
;ThermoController.mpas,152 :: 		root.child := @menu[1];
	MOVLW       _menu+0
	MOVWF       _root+40 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _root+41 
;ThermoController.mpas,153 :: 		root.parent := @root;
	MOVLW       _root+0
	MOVWF       _root+34 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+35 
;ThermoController.mpas,154 :: 		root.next := @root;
	MOVLW       _root+0
	MOVWF       _root+36 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+37 
;ThermoController.mpas,155 :: 		root.prev := @root;
	MOVLW       _root+0
	MOVWF       _root+38 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+39 
;ThermoController.mpas,156 :: 		current_node := @root;
	MOVLW       _root+0
	MOVWF       _current_node+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       _current_node+1 
;ThermoController.mpas,158 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu2:
;ThermoController.mpas,159 :: 		menu[i].next := @menu[i+1];
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
	GOTO        L__InitMenu709
	MOVLW       6
	XORWF       _i+0, 0 
L__InitMenu709:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu5
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu2
L__InitMenu5:
;ThermoController.mpas,160 :: 		menu[7].next := @menu[1];
	MOVLW       _menu+0
	MOVWF       _menu+288 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _menu+289 
;ThermoController.mpas,161 :: 		for i:=7 downto 2 do
	MOVLW       7
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu7:
;ThermoController.mpas,162 :: 		menu[i].prev := @menu[i-1];
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
	GOTO        L__InitMenu710
	MOVLW       2
	XORWF       _i+0, 0 
L__InitMenu710:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu10
	MOVLW       1
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
	GOTO        L__InitMenu7
L__InitMenu10:
;ThermoController.mpas,163 :: 		menu[1].prev := @menu[7];
	MOVLW       _menu+252
	MOVWF       _menu+38 
	MOVLW       hi_addr(_menu+252)
	MOVWF       _menu+39 
;ThermoController.mpas,164 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu12:
;ThermoController.mpas,165 :: 		menu[i].parent := @root;
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
	GOTO        L__InitMenu711
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu711:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu15
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu12
L__InitMenu15:
;ThermoController.mpas,168 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu17:
;ThermoController.mpas,169 :: 		menu[i].child := @menu[i];
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
	GOTO        L__InitMenu712
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu712:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu20
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu17
L__InitMenu20:
;ThermoController.mpas,171 :: 		menu[1].child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _menu+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _menu+41 
;ThermoController.mpas,172 :: 		menu[2].child := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _menu+82 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _menu+83 
;ThermoController.mpas,173 :: 		menu[3].child := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _menu+124 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _menu+125 
;ThermoController.mpas,174 :: 		menu[4].child := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _menu+166 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _menu+167 
;ThermoController.mpas,175 :: 		menu[5].child := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _menu+208 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _menu+209 
;ThermoController.mpas,177 :: 		submenu1.parent := @menu[1];
	MOVLW       _menu+0
	MOVWF       _submenu1+34 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _submenu1+35 
;ThermoController.mpas,178 :: 		submenu1.next := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+36 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+37 
;ThermoController.mpas,179 :: 		submenu1.prev := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+38 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+39 
;ThermoController.mpas,180 :: 		submenu1.child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+41 
;ThermoController.mpas,182 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu22:
;ThermoController.mpas,184 :: 		submenu2[i].parent := @menu[2];
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
;ThermoController.mpas,185 :: 		submenu2[i].child := @submenu2[i];
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
;ThermoController.mpas,186 :: 		end;
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu713
	MOVLW       3
	XORWF       _i+0, 0 
L__InitMenu713:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu25
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu22
L__InitMenu25:
;ThermoController.mpas,188 :: 		submenu2[2].next := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+78 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+79 
;ThermoController.mpas,189 :: 		submenu2[2].prev := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+80 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+81 
;ThermoController.mpas,190 :: 		submenu2[1].prev := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+38 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+39 
;ThermoController.mpas,191 :: 		submenu2[3].next := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+120 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+121 
;ThermoController.mpas,192 :: 		submenu2[1].next := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+36 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+37 
;ThermoController.mpas,193 :: 		submenu2[3].prev := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+122 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+123 
;ThermoController.mpas,195 :: 		submenu3.parent := @menu[3];
	MOVLW       _menu+84
	MOVWF       _submenu3+34 
	MOVLW       hi_addr(_menu+84)
	MOVWF       _submenu3+35 
;ThermoController.mpas,196 :: 		submenu3.next := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+36 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+37 
;ThermoController.mpas,197 :: 		submenu3.prev := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+38 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+39 
;ThermoController.mpas,198 :: 		submenu3.child := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+40 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+41 
;ThermoController.mpas,200 :: 		submenu4.parent := @menu[4];
	MOVLW       _menu+126
	MOVWF       _submenu4+34 
	MOVLW       hi_addr(_menu+126)
	MOVWF       _submenu4+35 
;ThermoController.mpas,201 :: 		submenu4.next := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+36 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+37 
;ThermoController.mpas,202 :: 		submenu4.prev := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+38 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+39 
;ThermoController.mpas,203 :: 		submenu4.child := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+40 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+41 
;ThermoController.mpas,205 :: 		submenu5[1].next := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+36 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+37 
;ThermoController.mpas,206 :: 		submenu5[2].next := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+78 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+79 
;ThermoController.mpas,207 :: 		submenu5[1].prev := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+38 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+39 
;ThermoController.mpas,208 :: 		submenu5[2].prev := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+80 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+81 
;ThermoController.mpas,209 :: 		submenu5[1].child := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+40 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+41 
;ThermoController.mpas,210 :: 		submenu5[2].child := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+82 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+83 
;ThermoController.mpas,211 :: 		submenu5[1].parent := @menu[5];
	MOVLW       _menu+168
	MOVWF       _submenu5+34 
	MOVLW       hi_addr(_menu+168)
	MOVWF       _submenu5+35 
;ThermoController.mpas,212 :: 		submenu5[2].parent := @menu[5];
	MOVLW       _menu+168
	MOVWF       _submenu5+76 
	MOVLW       hi_addr(_menu+168)
	MOVWF       _submenu5+77 
;ThermoController.mpas,215 :: 		root.row1 := 'T1:     T2:    ';
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
;ThermoController.mpas,216 :: 		root.row2 := 'T3:     T4:    ';
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
;ThermoController.mpas,217 :: 		menu[1].row1 := '1. Date/Time';
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
;ThermoController.mpas,218 :: 		menu[1].row2 := '';
	CLRF        _menu+17 
;ThermoController.mpas,219 :: 		menu[2].row1 := '2. Functioning';
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
;ThermoController.mpas,220 :: 		menu[2].row2 := '     Interval';
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
;ThermoController.mpas,221 :: 		menu[3].row1 := '3. Lock Settings';
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
;ThermoController.mpas,222 :: 		menu[3].row2 := '';
	CLRF        _menu+101 
;ThermoController.mpas,223 :: 		menu[4].row1 := '4. Status LED';
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
;ThermoController.mpas,224 :: 		menu[4].row2 := '';
	CLRF        _menu+143 
;ThermoController.mpas,225 :: 		menu[5].row1 := '5. Standby Disp';
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
;ThermoController.mpas,226 :: 		menu[5].row2 := '    Settings';
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
;ThermoController.mpas,227 :: 		menu[6].row1 := '6. Log';
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
;ThermoController.mpas,228 :: 		menu[6].row2 := '';
	CLRF        _menu+227 
;ThermoController.mpas,229 :: 		menu[7].row1 := '7. Menu';
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
;ThermoController.mpas,230 :: 		menu[7].row2 := '';
	CLRF        _menu+269 
;ThermoController.mpas,231 :: 		submenu1.row1 := 'date';
	MOVLW       100
	MOVWF       _submenu1+0 
	MOVLW       97
	MOVWF       _submenu1+1 
	MOVLW       116
	MOVWF       _submenu1+2 
	MOVLW       101
	MOVWF       _submenu1+3 
	CLRF        _submenu1+4 
;ThermoController.mpas,232 :: 		submenu1.row2 := 'time';
	MOVLW       116
	MOVWF       _submenu1+17 
	MOVLW       105
	MOVWF       _submenu1+18 
	MOVLW       109
	MOVWF       _submenu1+19 
	MOVLW       101
	MOVWF       _submenu1+20 
	CLRF        _submenu1+21 
;ThermoController.mpas,234 :: 		submenu2[1].row1 := '2.1 Days';
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
;ThermoController.mpas,235 :: 		strcat2(submenu2[1].row2,funcDaysString[1],funcDaysStatus);
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
;ThermoController.mpas,236 :: 		submenu2[2].row1 := '2.2 Hours';
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
;ThermoController.mpas,237 :: 		submenu2[2].row2 := 'S: 21;     E:  7';
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
;ThermoController.mpas,238 :: 		submenu2[3].row1 := '2.3 Temp. Limits';
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
;ThermoController.mpas,239 :: 		submenu2[3].row2 := 'Min: 19; Max: 22';
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
;ThermoController.mpas,241 :: 		submenu3.row1 := 'Locked:     OFF';
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
;ThermoController.mpas,242 :: 		submenu3.row2 := '';
	CLRF        _submenu3+17 
;ThermoController.mpas,244 :: 		submenu4.row1 := 'Status LED:';
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
;ThermoController.mpas,245 :: 		submenu4.row2 := '        ON';
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
;ThermoController.mpas,247 :: 		submenu5[1].row1 := '6.1 Room Display';
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
;ThermoController.mpas,248 :: 		submenu5[1].row2 := 'All four rooms';
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
;ThermoController.mpas,249 :: 		submenu5[2].row1 := '6.2 Display Mode';
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
;ThermoController.mpas,250 :: 		submenu5[2].row2 := 'Mode 1';
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
;ThermoController.mpas,252 :: 		end;
	RETURN      0
; end of _InitMenu

_Interrupt:

;ThermoController.mpas,257 :: 		begin
;ThermoController.mpas,258 :: 		if TMR1IF_bit = 1 then
	BTFSS       TMR1IF_bit+0, 0 
	GOTO        L__Interrupt28
;ThermoController.mpas,260 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,261 :: 		TMR1H         := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,262 :: 		TMR1L         := 0x40;
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,263 :: 		OS_TimerInterrupt; // to be called every x millisecs
	CALL        _OS_TimerInterrupt+0, 0
;ThermoController.mpas,264 :: 		end;
L__Interrupt28:
;ThermoController.mpas,265 :: 		end;
L__Interrupt714:
	RETFIE      1
; end of _Interrupt

_Logic:

;ThermoController.mpas,268 :: 		begin
;ThermoController.mpas,269 :: 		while true do
L__Logic32:
;ThermoController.mpas,271 :: 		OS_Delay(500);
	MOVLW       244
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       1
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,272 :: 		for i:=1 to 4 do begin
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__Logic37:
;ThermoController.mpas,273 :: 		if (Temp[i] < min_temp) then begin
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
	MOVWF       FSR0L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic715
	MOVF        _min_temp+0, 0 
	SUBWF       R1, 0 
L__Logic715:
	BTFSC       STATUS+0, 0 
	GOTO        L__Logic42
;ThermoController.mpas,275 :: 		if (room_flag[i] < 600) then
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic716
	MOVLW       88
	SUBWF       R1, 0 
L__Logic716:
	BTFSC       STATUS+0, 0 
	GOTO        L__Logic45
;ThermoController.mpas,276 :: 		room_flag[i] := room_flag[i] + 1;
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVLW       1
	ADDWF       POSTINC0+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
L__Logic45:
;ThermoController.mpas,277 :: 		end;
L__Logic42:
;ThermoController.mpas,279 :: 		if (Temp[i] > max_temp) and (room_flag[i] = 600) then
	DECF        _i+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	MOVWF       R2 
	MOVLW       0
	MOVWF       R3 
	RLCF        R2, 1 
	BCF         R2, 0 
	RLCF        R3, 1 
	MOVLW       _Temp+0
	ADDWF       R2, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R3, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R4 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R4, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic717
	MOVF        R0, 0 
	SUBWF       _max_temp+0, 0 
L__Logic717:
	MOVLW       255
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R4 
	MOVLW       _room_flag+0
	ADDWF       R2, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R3, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic718
	MOVLW       88
	XORWF       R1, 0 
L__Logic718:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R4, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic48
;ThermoController.mpas,280 :: 		room_flag[i] := 0;
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
	CLRF        POSTINC1+0 
L__Logic48:
;ThermoController.mpas,282 :: 		if (Temp[i] > min_temp) and (room_flag[i] > 100) and (room_flag[i] < 600) then
	DECF        _i+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	RLCF        R4, 1 
	BCF         R4, 0 
	RLCF        R5, 1 
	MOVLW       _Temp+0
	ADDWF       R4, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R5, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic719
	MOVF        R0, 0 
	SUBWF       _min_temp+0, 0 
L__Logic719:
	MOVLW       255
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R3 
	MOVLW       _room_flag+0
	ADDWF       R4, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R5, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic720
	MOVF        R1, 0 
	SUBLW       100
L__Logic720:
	MOVLW       255
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R3, 1 
	MOVLW       _room_flag+0
	ADDWF       R4, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R5, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       2
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic721
	MOVLW       88
	SUBWF       R1, 0 
L__Logic721:
	MOVLW       255
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic51
;ThermoController.mpas,283 :: 		room_flag[i] := 0;
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
	CLRF        POSTINC1+0 
L__Logic51:
;ThermoController.mpas,284 :: 		end;
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic722
	MOVLW       4
	XORWF       _i+0, 0 
L__Logic722:
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic40
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__Logic37
L__Logic40:
;ThermoController.mpas,286 :: 		if func_mode then begin
	MOVF        _func_mode+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic54
;ThermoController.mpas,287 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,288 :: 		if ((timedate.Hours > start_hour) or (timedate.Hours < end_hour)) and (funcDays[timedate.Day] = true) then begin
	MOVF        _timedate+2, 0 
	SUBWF       _start_hour+0, 0 
	MOVLW       255
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _end_hour+0, 0 
	SUBWF       _timedate+2, 0 
	MOVLW       255
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	DECF        _timedate+3, 0 
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
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic57
;ThermoController.mpas,289 :: 		aux_flag1 := 0;
	CLRF        _aux_flag1+0 
;ThermoController.mpas,290 :: 		aux_flag2 := 0;
	CLRF        _aux_flag2+0 
;ThermoController.mpas,292 :: 		for i:= 1 to 4 do begin
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__Logic60:
;ThermoController.mpas,293 :: 		if (room_flag[i] = 600) then
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic723
	MOVLW       88
	XORWF       R1, 0 
L__Logic723:
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic65
;ThermoController.mpas,294 :: 		aux_flag1 := aux_flag1 + 1;
	INCF        _aux_flag1+0, 1 
L__Logic65:
;ThermoController.mpas,295 :: 		if (Temp[i] > max_temp) then
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
	MOVWF       FSR0L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic724
	MOVF        R1, 0 
	SUBWF       _max_temp+0, 0 
L__Logic724:
	BTFSC       STATUS+0, 0 
	GOTO        L__Logic68
;ThermoController.mpas,296 :: 		aux_flag2 := aux_flag2 + 1;
	INCF        _aux_flag2+0, 1 
L__Logic68:
;ThermoController.mpas,297 :: 		end;
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic725
	MOVLW       4
	XORWF       _i+0, 0 
L__Logic725:
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic63
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__Logic60
L__Logic63:
;ThermoController.mpas,300 :: 		if (aux_flag1 > 0) and (aux_flag2 > 0) then begin
	MOVF        _aux_flag1+0, 0 
	SUBLW       0
	MOVLW       255
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVF        _aux_flag2+0, 0 
	SUBLW       0
	MOVLW       255
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic71
;ThermoController.mpas,301 :: 		aux_flag3 := 0;
	CLRF        _aux_flag3+0 
;ThermoController.mpas,302 :: 		for i:= 1 to 4 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__Logic74:
;ThermoController.mpas,303 :: 		if (Temp[i] < (min_temp + max_temp) div 2 ) then
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
	MOVWF       FSR0L 
	MOVLW       hi_addr(_Temp+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        _max_temp+0, 0 
	ADDWF       _min_temp+0, 0 
	MOVWF       R1 
	MOVF        _max_temp+1, 0 
	ADDWFC      _min_temp+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       R3 
	MOVF        R2, 0 
	MOVWF       R4 
	RRCF        R4, 1 
	RRCF        R3, 1 
	BCF         R4, 7 
	BTFSC       R4, 6 
	BSF         R4, 7 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R4, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic726
	MOVF        R3, 0 
	SUBWF       R1, 0 
L__Logic726:
	BTFSC       STATUS+0, 0 
	GOTO        L__Logic79
;ThermoController.mpas,304 :: 		aux_flag3 := 1;
	MOVLW       1
	MOVWF       _aux_flag3+0 
L__Logic79:
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic727
	MOVLW       4
	XORWF       _i+0, 0 
L__Logic727:
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic77
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__Logic74
L__Logic77:
;ThermoController.mpas,305 :: 		if (aux_flag3 = 0) then begin
	MOVF        _aux_flag3+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic82
;ThermoController.mpas,306 :: 		for i:= 1 to 4 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__Logic85:
;ThermoController.mpas,307 :: 		if (room_flag[i] = 600) then
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR0L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic728
	MOVLW       88
	XORWF       R1, 0 
L__Logic728:
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic90
;ThermoController.mpas,308 :: 		room_flag[i] := 0;
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
	CLRF        POSTINC1+0 
L__Logic90:
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Logic729
	MOVLW       4
	XORWF       _i+0, 0 
L__Logic729:
	BTFSC       STATUS+0, 2 
	GOTO        L__Logic88
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__Logic85
L__Logic88:
;ThermoController.mpas,309 :: 		aux_flag1 := 0;
	CLRF        _aux_flag1+0 
;ThermoController.mpas,310 :: 		end;
L__Logic82:
;ThermoController.mpas,311 :: 		end;
L__Logic71:
;ThermoController.mpas,314 :: 		if (aux_flag1 > 0) then begin
	MOVF        _aux_flag1+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L__Logic93
;ThermoController.mpas,315 :: 		Releu := true;
	BSF         LATB+0, 5 
;ThermoController.mpas,316 :: 		end
	GOTO        L__Logic94
;ThermoController.mpas,317 :: 		else begin
L__Logic93:
;ThermoController.mpas,318 :: 		Releu := false;
	BCF         LATB+0, 5 
;ThermoController.mpas,319 :: 		end;
L__Logic94:
;ThermoController.mpas,320 :: 		end;
L__Logic57:
;ThermoController.mpas,321 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,322 :: 		end;
L__Logic54:
;ThermoController.mpas,323 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,324 :: 		end;
	GOTO        L__Logic32
;ThermoController.mpas,325 :: 		end;
	RETURN      0
; end of _Logic

_ReadTemp:

;ThermoController.mpas,329 :: 		begin
;ThermoController.mpas,330 :: 		while true do
L__ReadTemp97:
;ThermoController.mpas,332 :: 		OS_Delay(500);
	MOVLW       244
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       1
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,333 :: 		INTCON := 0x00;
	CLRF        INTCON+0 
;ThermoController.mpas,334 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,335 :: 		DS1820_StartTempConversion(PortD,temp_index, true);
	MOVLW       PORTD+0
	MOVWF       FARG_DS1820_StartTempConversion_Port_+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_DS1820_StartTempConversion_Port_+1 
	MOVF        _Temp_index+0, 0 
	MOVWF       FARG_DS1820_StartTempConversion_Bit_+0 
	MOVLW       255
	MOVWF       FARG_DS1820_StartTempConversion_Wait+0 
	CALL        _DS1820_StartTempConversion+0, 0
;ThermoController.mpas,336 :: 		aux_temp := DS1820_ReadTemperature(PortD,temp_index);
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
;ThermoController.mpas,337 :: 		if (aux_temp <> Temp[temp_index + 1]) then
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
	GOTO        L__ReadTemp730
	MOVF        R3, 0 
	XORWF       R0, 0 
L__ReadTemp730:
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadTemp102
;ThermoController.mpas,339 :: 		Temp[temp_index + 1] := aux_temp;
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
;ThermoController.mpas,341 :: 		CRCOk := DS1820_CheckCRC;
	CALL        _DS1820_CheckCRC+0, 0
	MOVF        R0, 0 
	MOVWF       _CRCOk+0 
;ThermoController.mpas,343 :: 		if CRCOk > 0 then // CRC error
	MOVF        R0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L__ReadTemp105
;ThermoController.mpas,345 :: 		LCD_OUT(2,1,'Temperature CRC error');
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
;ThermoController.mpas,346 :: 		end
	GOTO        L__ReadTemp106
;ThermoController.mpas,347 :: 		else
L__ReadTemp105:
;ThermoController.mpas,349 :: 		DS1820_TempToString(Temp[temp_index + 1], Temp_string[temp_index + 1], ',');
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
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       7
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       _Temp_string+0
	ADDWF       R0, 0 
	MOVWF       FARG_DS1820_TempToString_S+0 
	MOVLW       hi_addr(_Temp_string+0)
	ADDWFC      R1, 0 
	MOVWF       FARG_DS1820_TempToString_S+1 
	MOVLW       44
	MOVWF       FARG_DS1820_TempToString_Sep+0 
	CALL        _DS1820_TempToString+0, 0
;ThermoController.mpas,364 :: 		end;
L__ReadTemp106:
;ThermoController.mpas,365 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,366 :: 		end;
L__ReadTemp102:
;ThermoController.mpas,367 :: 		temp_index := (temp_index + 1) mod 4;
	INCF        _Temp_index+0, 1 
	MOVLW       3
	ANDWF       _Temp_index+0, 1 
;ThermoController.mpas,368 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,369 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,370 :: 		end;
	GOTO        L__ReadTemp97
;ThermoController.mpas,371 :: 		end;
	RETURN      0
; end of _ReadTemp

_DisplayLED:

;ThermoController.mpas,374 :: 		begin
;ThermoController.mpas,375 :: 		while true do
L__DisplayLED109:
;ThermoController.mpas,377 :: 		OS_WaitSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,378 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,384 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED114
;ThermoController.mpas,385 :: 		Lcd_Cmd(_LCD_UNDERLINE_ON)
	MOVLW       14
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED115
;ThermoController.mpas,386 :: 		else if edit then
L__DisplayLED114:
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED117
;ThermoController.mpas,387 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON)
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED118
;ThermoController.mpas,388 :: 		else
L__DisplayLED117:
;ThermoController.mpas,389 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
L__DisplayLED118:
L__DisplayLED115:
;ThermoController.mpas,392 :: 		if underscore or edit then
	MOVF        _edit+0, 0 
	IORWF       _underscore+0, 0 
	MOVWF       R0 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED120
;ThermoController.mpas,395 :: 		@root: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_root+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED731
	MOVLW       _root+0
	XORWF       _current_node+0, 0 
L__DisplayLED731:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED125
;ThermoController.mpas,397 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED125:
;ThermoController.mpas,398 :: 		@submenu1: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED732
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__DisplayLED732:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED131
;ThermoController.mpas,399 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,401 :: 		1 : begin Lcd_Cmd(_LCD_FIRST_ROW); end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED733
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED733:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED138
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED135
L__DisplayLED138:
;ThermoController.mpas,402 :: 		2 : begin Lcd_Cmd(_LCD_FIRST_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED734
	MOVLW       2
	XORWF       _index+0, 0 
L__DisplayLED734:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED141
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
	GOTO        L__DisplayLED135
L__DisplayLED141:
;ThermoController.mpas,403 :: 		3 : begin Lcd_Cmd(_LCD_FIRST_ROW);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED735
	MOVLW       3
	XORWF       _index+0, 0 
L__DisplayLED735:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED144
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
;ThermoController.mpas,404 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); end;
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
	GOTO        L__DisplayLED135
L__DisplayLED144:
;ThermoController.mpas,405 :: 		4 : begin Lcd_Cmd(_LCD_SECOND_ROW);                                                                                                   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED736
	MOVLW       4
	XORWF       _index+0, 0 
L__DisplayLED736:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED147
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED135
L__DisplayLED147:
;ThermoController.mpas,406 :: 		5 : begin Lcd_Cmd(_LCD_SECOND_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED737
	MOVLW       5
	XORWF       _index+0, 0 
L__DisplayLED737:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED150
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
	GOTO        L__DisplayLED135
L__DisplayLED150:
L__DisplayLED135:
;ThermoController.mpas,408 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED131:
;ThermoController.mpas,409 :: 		@submenu2[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED738
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__DisplayLED738:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED153
;ThermoController.mpas,410 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,411 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,412 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED158:
;ThermoController.mpas,413 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED739
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED739:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED161
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED158
L__DisplayLED161:
;ThermoController.mpas,414 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED153:
;ThermoController.mpas,415 :: 		@submenu2[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED740
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__DisplayLED740:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED164
;ThermoController.mpas,416 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,417 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,418 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED741
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED741:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED169
;ThermoController.mpas,419 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED172:
;ThermoController.mpas,420 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED742
	MOVLW       3
	XORWF       _i+0, 0 
L__DisplayLED742:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED175
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED172
L__DisplayLED175:
	GOTO        L__DisplayLED170
;ThermoController.mpas,421 :: 		else
L__DisplayLED169:
;ThermoController.mpas,422 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED177:
;ThermoController.mpas,423 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED743
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED743:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED180
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED177
L__DisplayLED180:
L__DisplayLED170:
;ThermoController.mpas,424 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED164:
;ThermoController.mpas,425 :: 		@submenu2[3]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED744
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__DisplayLED744:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED183
;ThermoController.mpas,426 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,427 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,428 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED745
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED745:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED188
;ThermoController.mpas,429 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED191:
;ThermoController.mpas,430 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED746
	MOVLW       6
	XORWF       _i+0, 0 
L__DisplayLED746:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED194
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED191
L__DisplayLED194:
	GOTO        L__DisplayLED189
;ThermoController.mpas,431 :: 		else
L__DisplayLED188:
;ThermoController.mpas,432 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED196:
;ThermoController.mpas,433 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED747
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED747:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED199
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED196
L__DisplayLED199:
L__DisplayLED189:
;ThermoController.mpas,434 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED183:
;ThermoController.mpas,435 :: 		@submenu3: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED748
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__DisplayLED748:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED202
;ThermoController.mpas,436 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,437 :: 		Lcd_Cmd(_LCD_FIRST_ROW);
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,438 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED207:
;ThermoController.mpas,439 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED749
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED749:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED210
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED207
L__DisplayLED210:
;ThermoController.mpas,440 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED202:
;ThermoController.mpas,441 :: 		@submenu4: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED750
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__DisplayLED750:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED213
;ThermoController.mpas,442 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,443 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,444 :: 		for i:=1 to 8 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED218:
;ThermoController.mpas,445 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED751
	MOVLW       8
	XORWF       _i+0, 0 
L__DisplayLED751:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED221
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED218
L__DisplayLED221:
;ThermoController.mpas,446 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED213:
;ThermoController.mpas,447 :: 		@submenu5[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED752
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__DisplayLED752:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED224
;ThermoController.mpas,448 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,449 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,450 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,451 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED224:
;ThermoController.mpas,452 :: 		@submenu5[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED753
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__DisplayLED753:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED230
;ThermoController.mpas,453 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,454 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,455 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,456 :: 		end;
	GOTO        L__DisplayLED122
L__DisplayLED230:
L__DisplayLED122:
;ThermoController.mpas,458 :: 		end;
L__DisplayLED120:
;ThermoController.mpas,462 :: 		@root: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_root+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED754
	MOVLW       _root+0
	XORWF       _current_node+0, 0 
L__DisplayLED754:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED237
;ThermoController.mpas,464 :: 		1: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED244
;ThermoController.mpas,465 :: 		strcat2(root.row1,'T1:',Temp_string[1]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       49
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,466 :: 		strcat2(root.row1,root.row1,'T2:');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       50
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,467 :: 		strcat2(root.row1,root.row1,Temp_string[2]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+7
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+7)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,468 :: 		strcat2(root.row2,'T3:',Temp_string[3]);
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       51
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+14
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+14)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,469 :: 		strcat2(root.row2,root.row2,'T4:');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+17
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       52
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,470 :: 		strcat2(root.row2,root.row2,Temp_string[4]);
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+17
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+21
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+21)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,471 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED244:
;ThermoController.mpas,472 :: 		2: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED250
;ThermoController.mpas,473 :: 		strcat2(root.row1,'T1:',Temp_string[1]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       49
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,474 :: 		strcat2(root.row1,root.row1,'T2:');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       50
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,475 :: 		strcat2(root.row1,root.row1,Temp_string[2]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+7
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+7)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,476 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,477 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED250:
;ThermoController.mpas,478 :: 		3: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED256
;ThermoController.mpas,479 :: 		submenu5[1].row2 := 'Room1 + Room3  ';
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
;ThermoController.mpas,480 :: 		strcat2(root.row1,'T1:',Temp_string[1]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       49
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,481 :: 		strcat2(root.row1,root.row1,'T3:');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       51
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,482 :: 		strcat2(root.row1,root.row1,Temp_string[3]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+14
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+14)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,483 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,484 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED256:
;ThermoController.mpas,485 :: 		4: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED262
;ThermoController.mpas,486 :: 		strcat2(root.row1,'T1:',Temp_string[1]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       49
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,487 :: 		strcat2(root.row1,root.row1,'T4:');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       52
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,488 :: 		strcat2(root.row1,root.row1,Temp_string[4]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+21
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+21)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,489 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,490 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED262:
;ThermoController.mpas,491 :: 		5: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED268
;ThermoController.mpas,492 :: 		strcat2(root.row1,'T2:',Temp_string[2]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       50
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+7
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+7)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,493 :: 		strcat2(root.row1,root.row1,'T3:');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       51
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,494 :: 		strcat2(root.row1,root.row1,Temp_string[3]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+14
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+14)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,495 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,496 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED268:
;ThermoController.mpas,497 :: 		6: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED274
;ThermoController.mpas,498 :: 		strcat2(root.row1,'T2:',Temp_string[2]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       50
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+7
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+7)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,499 :: 		strcat2(root.row1,root.row1,'T4:');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       52
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,500 :: 		strcat2(root.row1,root.row1,Temp_string[4]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+21
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+21)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,501 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,502 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED274:
;ThermoController.mpas,503 :: 		7: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED280
;ThermoController.mpas,504 :: 		strcat2(root.row1,'T3:',Temp_string[3]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       51
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+14
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+14)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,505 :: 		strcat2(root.row1,root.row1,'T4:');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       52
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,506 :: 		strcat2(root.row1,root.row1,Temp_string[4]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+21
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+21)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,507 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,508 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED280:
;ThermoController.mpas,509 :: 		8: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED286
;ThermoController.mpas,510 :: 		strcat2(root.row1,'T1:',Temp_string[1]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       49
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,511 :: 		strcat2(root.row1,root.row1,'A:    ');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+5 
	CLRF        ?LocalText_DisplayLED+6 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,512 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,513 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED286:
;ThermoController.mpas,514 :: 		9: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED292
;ThermoController.mpas,515 :: 		strcat2(root.row1,'T2:',Temp_string[2]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       50
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+7
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+7)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,516 :: 		strcat2(root.row1,root.row1,'A:    ');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+5 
	CLRF        ?LocalText_DisplayLED+6 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,517 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,518 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED292:
;ThermoController.mpas,519 :: 		10: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       10
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED298
;ThermoController.mpas,520 :: 		strcat2(root.row1,'T3:',Temp_string[3]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       51
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+14
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+14)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,521 :: 		strcat2(root.row1,root.row1,'A:    ');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+5 
	CLRF        ?LocalText_DisplayLED+6 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,522 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,523 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED298:
;ThermoController.mpas,524 :: 		11: if true then begin
	MOVF        _room_disp+0, 0 
	XORLW       11
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED304
;ThermoController.mpas,525 :: 		strcat2(root.row1,'T4:',Temp_string[4]);
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       84
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       52
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+2 
	CLRF        ?LocalText_DisplayLED+3 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       _Temp_string+21
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(_Temp_string+21)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,526 :: 		strcat2(root.row1,root.row1,'A:    ');
	MOVLW       _root+0
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       _root+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       FARG_strcat2_s1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
	MOVWF       ?LocalText_DisplayLED+1 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+2 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+3 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+4 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+5 
	CLRF        ?LocalText_DisplayLED+6 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,527 :: 		strcat2(root.row2,'A:      MAN  OFF','');
	MOVLW       _root+17
	MOVWF       FARG_strcat2_l1+0 
	MOVLW       hi_addr(_root+17)
	MOVWF       FARG_strcat2_l1+1 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+0 
	MOVLW       58
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
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+7 
	MOVLW       77
	MOVWF       ?LocalText_DisplayLED+8 
	MOVLW       65
	MOVWF       ?LocalText_DisplayLED+9 
	MOVLW       78
	MOVWF       ?LocalText_DisplayLED+10 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+11 
	MOVLW       32
	MOVWF       ?LocalText_DisplayLED+12 
	MOVLW       79
	MOVWF       ?LocalText_DisplayLED+13 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+14 
	MOVLW       70
	MOVWF       ?LocalText_DisplayLED+15 
	CLRF        ?LocalText_DisplayLED+16 
	MOVLW       ?LocalText_DisplayLED+0
	MOVWF       FARG_strcat2_s1+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+0)
	MOVWF       FARG_strcat2_s1+1 
	CLRF        ?LocalText_DisplayLED+17 
	MOVLW       ?LocalText_DisplayLED+17
	MOVWF       FARG_strcat2_s2+0 
	MOVLW       hi_addr(?LocalText_DisplayLED+17)
	MOVWF       FARG_strcat2_s2+1 
	CALL        _strcat2+0, 0
;ThermoController.mpas,528 :: 		end;
	GOTO        L__DisplayLED241
L__DisplayLED304:
L__DisplayLED241:
;ThermoController.mpas,530 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED237:
;ThermoController.mpas,531 :: 		@submenu1: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED755
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__DisplayLED755:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED310
;ThermoController.mpas,532 :: 		submenu1.row1 := datestr;
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
;ThermoController.mpas,533 :: 		submenu1.row2 := timestr;
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
;ThermoController.mpas,534 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED310:
;ThermoController.mpas,535 :: 		@submenu2[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED756
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__DisplayLED756:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED316
;ThermoController.mpas,536 :: 		if funcDays[index] = true then
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
	GOTO        L__DisplayLED321
;ThermoController.mpas,537 :: 		funcDaysStatus := ' ON'
	MOVLW       32
	MOVWF       _funcDaysStatus+0 
	MOVLW       79
	MOVWF       _funcDaysStatus+1 
	MOVLW       78
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
	GOTO        L__DisplayLED322
;ThermoController.mpas,538 :: 		else
L__DisplayLED321:
;ThermoController.mpas,539 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
L__DisplayLED322:
;ThermoController.mpas,540 :: 		strcat2(submenu2[1].row2,funcDaysString[index], funcDaysStatus);
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
;ThermoController.mpas,541 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED316:
;ThermoController.mpas,542 :: 		@submenu2[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED757
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__DisplayLED757:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED325
;ThermoController.mpas,543 :: 		strcat2(submenu2[2].row2, '','');
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
;ThermoController.mpas,544 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'S: ');
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
;ThermoController.mpas,545 :: 		ByteToStr(start_hour, min_temp_string);
	MOVF        _start_hour+0, 0 
	MOVWF       FARG_ByteToStr_input+0 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_ByteToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_ByteToStr_output+1 
	CALL        _ByteToStr+0, 0
;ThermoController.mpas,546 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,547 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'     E: ');
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
;ThermoController.mpas,548 :: 		IntToStr(end_hour, min_temp_string);
	MOVF        _end_hour+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,549 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,550 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED325:
;ThermoController.mpas,551 :: 		@submenu2[3]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED758
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__DisplayLED758:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED331
;ThermoController.mpas,552 :: 		strcat2(submenu2[2].row2, '','');
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
;ThermoController.mpas,553 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'Max: ');
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
;ThermoController.mpas,554 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,555 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,556 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'   Min: ');
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
;ThermoController.mpas,557 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,558 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,559 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED331:
;ThermoController.mpas,560 :: 		@submenu3: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED759
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__DisplayLED759:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED337
;ThermoController.mpas,561 :: 		strcat2(submenu3.row1, '','');
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
;ThermoController.mpas,562 :: 		strcat2(submenu3.row1, submenu3.row1,'Locked:    ');
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
;ThermoController.mpas,563 :: 		if locked then
	MOVF        _locked+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED342
;ThermoController.mpas,564 :: 		strcat2(submenu3.row1, submenu3.row1,' ON')
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
	GOTO        L__DisplayLED343
;ThermoController.mpas,565 :: 		else
L__DisplayLED342:
;ThermoController.mpas,566 :: 		strcat2(submenu3.row1, submenu3.row1,'OFF');
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
L__DisplayLED343:
;ThermoController.mpas,567 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED337:
;ThermoController.mpas,568 :: 		@submenu4: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED760
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__DisplayLED760:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED346
;ThermoController.mpas,569 :: 		strcat2(submenu4.row2, '','');
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
;ThermoController.mpas,570 :: 		if locked then
	MOVF        _locked+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED351
;ThermoController.mpas,571 :: 		strcat2(submenu4.row2, submenu4.row2,'       ON')
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
	GOTO        L__DisplayLED352
;ThermoController.mpas,572 :: 		else
L__DisplayLED351:
;ThermoController.mpas,573 :: 		strcat2(submenu4.row2, submenu4.row2,'      OFF');
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
L__DisplayLED352:
;ThermoController.mpas,574 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED346:
;ThermoController.mpas,575 :: 		@submenu5[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED761
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__DisplayLED761:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED355
;ThermoController.mpas,577 :: 		1: submenu5[1].row2 := 'All four rooms ';
	MOVF        _room_disp+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED362
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
	GOTO        L__DisplayLED359
L__DisplayLED362:
;ThermoController.mpas,578 :: 		2: submenu5[1].row2 := 'Room1 + Room2  ';
	MOVF        _room_disp+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED365
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
	GOTO        L__DisplayLED359
L__DisplayLED365:
;ThermoController.mpas,579 :: 		3: submenu5[1].row2 := 'Room1 + Room3  ';
	MOVF        _room_disp+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED368
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
	GOTO        L__DisplayLED359
L__DisplayLED368:
;ThermoController.mpas,580 :: 		4: submenu5[1].row2 := 'Room1 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED371
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
	GOTO        L__DisplayLED359
L__DisplayLED371:
;ThermoController.mpas,581 :: 		5: submenu5[1].row2 := 'Room2 + Room3  ';
	MOVF        _room_disp+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED374
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
	GOTO        L__DisplayLED359
L__DisplayLED374:
;ThermoController.mpas,582 :: 		6: submenu5[1].row2 := 'Room2 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED377
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
	GOTO        L__DisplayLED359
L__DisplayLED377:
;ThermoController.mpas,583 :: 		7: submenu5[1].row2 := 'Room3 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED380
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
	GOTO        L__DisplayLED359
L__DisplayLED380:
;ThermoController.mpas,584 :: 		8: submenu5[1].row2 := 'Room1 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED383
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
	GOTO        L__DisplayLED359
L__DisplayLED383:
;ThermoController.mpas,585 :: 		9: submenu5[1].row2 := 'Room2 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED386
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
	GOTO        L__DisplayLED359
L__DisplayLED386:
;ThermoController.mpas,586 :: 		10: submenu5[1].row2 := 'Room3 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       10
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED389
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
	GOTO        L__DisplayLED359
L__DisplayLED389:
;ThermoController.mpas,587 :: 		11: submenu5[1].row2 := 'Room4 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       11
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED392
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
	GOTO        L__DisplayLED359
L__DisplayLED392:
L__DisplayLED359:
;ThermoController.mpas,589 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED355:
;ThermoController.mpas,590 :: 		@submenu5[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED762
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__DisplayLED762:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED395
;ThermoController.mpas,591 :: 		if disp_mode then
	MOVF        _disp_mode+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED400
;ThermoController.mpas,592 :: 		submenu5[2].row2 := 'Mode 1'
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
	GOTO        L__DisplayLED401
;ThermoController.mpas,593 :: 		else
L__DisplayLED400:
;ThermoController.mpas,594 :: 		submenu5[2].row2 := 'Mode 2';
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
L__DisplayLED401:
;ThermoController.mpas,595 :: 		end;
	GOTO        L__DisplayLED234
L__DisplayLED395:
L__DisplayLED234:
;ThermoController.mpas,598 :: 		LCD_OUT(1,1,current_node^.row1);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _current_node+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _current_node+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ThermoController.mpas,599 :: 		LCD_OUT(2,1,current_node^.row2);
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
;ThermoController.mpas,602 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,603 :: 		end;
	GOTO        L__DisplayLED109
;ThermoController.mpas,604 :: 		end;
	RETURN      0
; end of _DisplayLED

_ReadKeys:

;ThermoController.mpas,607 :: 		begin
;ThermoController.mpas,608 :: 		while true do
L__ReadKeys404:
;ThermoController.mpas,610 :: 		OS_Delay(20);
	MOVLW       20
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,611 :: 		if Button(PORTE, 2, 1, 1) then old_enter := 255;
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
	GOTO        L__ReadKeys409
	MOVLW       255
	MOVWF       _old_enter+0 
L__ReadKeys409:
;ThermoController.mpas,612 :: 		if old_enter and Button(PORTE, 2, 1, 0) then
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
	GOTO        L__ReadKeys412
;ThermoController.mpas,614 :: 		enter := 255;
	MOVLW       255
	MOVWF       _enter+0 
;ThermoController.mpas,615 :: 		old_enter := 0;
	CLRF        _old_enter+0 
;ThermoController.mpas,616 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,617 :: 		end;
L__ReadKeys412:
;ThermoController.mpas,618 :: 		if Button(PORTB, 4, 1, 1) then old_esc := 255;
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
	GOTO        L__ReadKeys415
	MOVLW       255
	MOVWF       _old_esc+0 
L__ReadKeys415:
;ThermoController.mpas,619 :: 		if old_esc and Button(PORTB, 4, 1, 0) then
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
	GOTO        L__ReadKeys418
;ThermoController.mpas,621 :: 		esc := 255;
	MOVLW       255
	MOVWF       _esc+0 
;ThermoController.mpas,622 :: 		old_esc := 0;
	CLRF        _old_esc+0 
;ThermoController.mpas,623 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,624 :: 		end;
L__ReadKeys418:
;ThermoController.mpas,625 :: 		if Button(PORTE, 1, 1, 1) then old_up := 255;
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
	GOTO        L__ReadKeys421
	MOVLW       255
	MOVWF       _old_up+0 
L__ReadKeys421:
;ThermoController.mpas,626 :: 		if old_up and Button(PORTE, 1, 1, 0) then
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
	GOTO        L__ReadKeys424
;ThermoController.mpas,628 :: 		up := 255;
	MOVLW       255
	MOVWF       _up+0 
;ThermoController.mpas,629 :: 		old_up := 0;
	CLRF        _old_up+0 
;ThermoController.mpas,630 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,631 :: 		end;
L__ReadKeys424:
;ThermoController.mpas,632 :: 		if Button(PORTE, 0, 1, 1) then old_down := 255;
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
	GOTO        L__ReadKeys427
	MOVLW       255
	MOVWF       _old_down+0 
L__ReadKeys427:
;ThermoController.mpas,633 :: 		if old_down and Button(PORTE, 0, 1, 0) then
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
	GOTO        L__ReadKeys430
;ThermoController.mpas,635 :: 		down := 255;
	MOVLW       255
	MOVWF       _down+0 
;ThermoController.mpas,636 :: 		old_down := 0;
	CLRF        _old_down+0 
;ThermoController.mpas,637 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,638 :: 		end;
L__ReadKeys430:
;ThermoController.mpas,640 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,641 :: 		end;
	GOTO        L__ReadKeys404
;ThermoController.mpas,642 :: 		end;
	RETURN      0
; end of _ReadKeys

_ReadTime:

;ThermoController.mpas,645 :: 		begin
;ThermoController.mpas,646 :: 		while true do
L__ReadTime434:
;ThermoController.mpas,648 :: 		OS_Delay(50);
	MOVLW       50
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,651 :: 		Ds1307_Get_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+1 
	CALL        _Ds1307_Get_TimeDate+0, 0
;ThermoController.mpas,652 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,657 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,658 :: 		end;
	GOTO        L__ReadTime434
;ThermoController.mpas,659 :: 		end;
	RETURN      0
; end of _ReadTime

_SaveTime:

;ThermoController.mpas,662 :: 		begin
;ThermoController.mpas,663 :: 		while true do
L__SaveTime440:
;ThermoController.mpas,665 :: 		OS_WaitSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,666 :: 		Ds1307_Set_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+1 
	CALL        _Ds1307_Set_TimeDate+0, 0
;ThermoController.mpas,667 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,668 :: 		end;
	GOTO        L__SaveTime440
;ThermoController.mpas,669 :: 		end;
	RETURN      0
; end of _SaveTime

_NavigateMenu:

;ThermoController.mpas,672 :: 		begin
;ThermoController.mpas,673 :: 		while true do
L__NavigateMenu446:
;ThermoController.mpas,675 :: 		OS_WaitSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,676 :: 		if enter = 255 then
	MOVF        _enter+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu451
;ThermoController.mpas,678 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu763
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu763:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu764
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu764:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu765
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu765:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu766
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu766:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu454
;ThermoController.mpas,680 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu457
;ThermoController.mpas,682 :: 		edit := true;
	MOVLW       255
	MOVWF       _edit+0 
;ThermoController.mpas,683 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,684 :: 		end
	GOTO        L__NavigateMenu458
;ThermoController.mpas,685 :: 		else
L__NavigateMenu457:
;ThermoController.mpas,687 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,688 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu460
;ThermoController.mpas,689 :: 		edit := false;
	CLRF        _edit+0 
L__NavigateMenu460:
;ThermoController.mpas,690 :: 		end;
L__NavigateMenu458:
;ThermoController.mpas,691 :: 		end
	GOTO        L__NavigateMenu455
;ThermoController.mpas,692 :: 		else
L__NavigateMenu454:
;ThermoController.mpas,694 :: 		if  (current_node = @submenu3) or (current_node = @submenu4) or (current_node = @submenu5[1]) or (current_node = @submenu5[2]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu767
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu767:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu768
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu768:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu769
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu769:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu770
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu770:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu463
;ThermoController.mpas,696 :: 		edit := not true;
	CLRF        _edit+0 
;ThermoController.mpas,697 :: 		end
L__NavigateMenu463:
;ThermoController.mpas,698 :: 		end;
L__NavigateMenu455:
;ThermoController.mpas,701 :: 		current_node := current_node^.child;
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
;ThermoController.mpas,702 :: 		enter := 0;
	CLRF        _enter+0 
;ThermoController.mpas,703 :: 		end;
L__NavigateMenu451:
;ThermoController.mpas,704 :: 		if esc = 255 then
	MOVF        _esc+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu466
;ThermoController.mpas,706 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu771
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu771:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu772
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu772:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu773
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu773:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu774
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu774:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu469
;ThermoController.mpas,708 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu472
;ThermoController.mpas,710 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,712 :: 		if (current_node = @submenu1) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu775
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu775:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu475
;ThermoController.mpas,714 :: 		OS_SignalSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,715 :: 		end;
L__NavigateMenu475:
;ThermoController.mpas,716 :: 		end
	GOTO        L__NavigateMenu473
;ThermoController.mpas,717 :: 		else
L__NavigateMenu472:
;ThermoController.mpas,719 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu478
;ThermoController.mpas,721 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,722 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,723 :: 		end
	GOTO        L__NavigateMenu479
;ThermoController.mpas,724 :: 		else
L__NavigateMenu478:
;ThermoController.mpas,726 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,727 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,728 :: 		end;
L__NavigateMenu479:
;ThermoController.mpas,729 :: 		end
L__NavigateMenu473:
;ThermoController.mpas,730 :: 		end
	GOTO        L__NavigateMenu470
;ThermoController.mpas,731 :: 		else
L__NavigateMenu469:
;ThermoController.mpas,732 :: 		if (current_node = @submenu3) or (current_node = @submenu4) or (current_node = @submenu5[1]) or (current_node = @submenu5[2]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu776
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu776:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu777
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu777:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu778
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu778:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu779
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu779:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu481
;ThermoController.mpas,734 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,735 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,736 :: 		end
	GOTO        L__NavigateMenu482
;ThermoController.mpas,737 :: 		else
L__NavigateMenu481:
;ThermoController.mpas,739 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,740 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,741 :: 		end;
L__NavigateMenu482:
L__NavigateMenu470:
;ThermoController.mpas,742 :: 		esc := 0;
	CLRF        _esc+0 
;ThermoController.mpas,743 :: 		end;
L__NavigateMenu466:
;ThermoController.mpas,745 :: 		if up = 255 then
	MOVF        _up+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu484
;ThermoController.mpas,748 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu780
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu780:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu489
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu491
;ThermoController.mpas,750 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,752 :: 		3:     if timedate.Year = 99 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu781
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu781:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu496
	MOVF        _timedate+6, 0 
	XORLW       99
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu498
;ThermoController.mpas,753 :: 		timedate.Year := 0
	CLRF        _timedate+6 
	GOTO        L__NavigateMenu499
;ThermoController.mpas,754 :: 		else timedate.Year := timeDate.Year + 1;
L__NavigateMenu498:
	MOVF        _timedate+6, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu499:
	GOTO        L__NavigateMenu493
L__NavigateMenu496:
;ThermoController.mpas,755 :: 		2:     if timedate.Month = 12 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu782
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu782:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu502
	MOVF        _timedate+5, 0 
	XORLW       12
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu504
;ThermoController.mpas,756 :: 		timedate.Month := 1
	MOVLW       1
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu505
;ThermoController.mpas,757 :: 		else timedate.Month := timeDate.Month + 1;
L__NavigateMenu504:
	MOVF        _timedate+5, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu505:
	GOTO        L__NavigateMenu493
L__NavigateMenu502:
;ThermoController.mpas,758 :: 		1:     if timedate.Date = maxday[timedate.Month] then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu783
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu783:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu508
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
	GOTO        L__NavigateMenu510
;ThermoController.mpas,759 :: 		timedate.Date := 1
	MOVLW       1
	MOVWF       _timedate+4 
	GOTO        L__NavigateMenu511
;ThermoController.mpas,760 :: 		else timedate.Date := timeDate.Date + 1;
L__NavigateMenu510:
	MOVF        _timedate+4, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu511:
	GOTO        L__NavigateMenu493
L__NavigateMenu508:
;ThermoController.mpas,761 :: 		4:     if timedate.Hours = 23 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu784
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu784:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu514
	MOVF        _timedate+2, 0 
	XORLW       23
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu516
;ThermoController.mpas,762 :: 		timedate.Hours := 0
	CLRF        _timedate+2 
	GOTO        L__NavigateMenu517
;ThermoController.mpas,763 :: 		else timedate.Hours := timeDate.Hours + 1;
L__NavigateMenu516:
	MOVF        _timedate+2, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu517:
	GOTO        L__NavigateMenu493
L__NavigateMenu514:
;ThermoController.mpas,764 :: 		5:     if timedate.Minutes = 59 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu785
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu785:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu520
	MOVF        _timedate+1, 0 
	XORLW       59
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu522
;ThermoController.mpas,765 :: 		timedate.Minutes := 0
	CLRF        _timedate+1 
	GOTO        L__NavigateMenu523
;ThermoController.mpas,766 :: 		else timedate.Minutes := timeDate.Minutes + 1;
L__NavigateMenu522:
	MOVF        _timedate+1, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu523:
	GOTO        L__NavigateMenu493
L__NavigateMenu520:
L__NavigateMenu493:
;ThermoController.mpas,768 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,769 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,772 :: 		end
	GOTO        L__NavigateMenu492
;ThermoController.mpas,773 :: 		else if underscore then
L__NavigateMenu491:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu525
;ThermoController.mpas,774 :: 		index := (index  mod 5) + 1;
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
L__NavigateMenu525:
L__NavigateMenu492:
	GOTO        L__NavigateMenu486
L__NavigateMenu489:
;ThermoController.mpas,775 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu786
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu786:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu529
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu531
;ThermoController.mpas,777 :: 		funcDays[index] := not funcDays[index];
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
;ThermoController.mpas,778 :: 		end
	GOTO        L__NavigateMenu532
;ThermoController.mpas,779 :: 		else
L__NavigateMenu531:
;ThermoController.mpas,781 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu534
;ThermoController.mpas,783 :: 		index := (index  mod 7) + 1;
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
;ThermoController.mpas,784 :: 		end
	GOTO        L__NavigateMenu535
;ThermoController.mpas,785 :: 		else
L__NavigateMenu534:
;ThermoController.mpas,787 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,788 :: 		end;
L__NavigateMenu535:
;ThermoController.mpas,789 :: 		end;
L__NavigateMenu532:
	GOTO        L__NavigateMenu486
L__NavigateMenu529:
;ThermoController.mpas,790 :: 		@submenu2[2]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu787
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu787:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu538
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu540
;ThermoController.mpas,792 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu788
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu788:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu543
;ThermoController.mpas,794 :: 		start_hour := (start_hour + 1) mod 24;
	MOVF        _start_hour+0, 0 
	ADDLW       1
	MOVWF       R0 
	MOVLW       24
	MOVWF       R4 
	CALL        _Div_8x8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _start_hour+0 
;ThermoController.mpas,795 :: 		end
	GOTO        L__NavigateMenu544
;ThermoController.mpas,796 :: 		else
L__NavigateMenu543:
;ThermoController.mpas,798 :: 		end_hour := (end_hour + 1) mod 24;
	MOVF        _end_hour+0, 0 
	ADDLW       1
	MOVWF       R0 
	MOVLW       24
	MOVWF       R4 
	CALL        _Div_8x8_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _end_hour+0 
;ThermoController.mpas,799 :: 		end;
L__NavigateMenu544:
;ThermoController.mpas,800 :: 		end
	GOTO        L__NavigateMenu541
;ThermoController.mpas,801 :: 		else
L__NavigateMenu540:
;ThermoController.mpas,803 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu546
;ThermoController.mpas,805 :: 		index := (index  mod 2) + 1;
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
;ThermoController.mpas,806 :: 		end
	GOTO        L__NavigateMenu547
;ThermoController.mpas,807 :: 		else
L__NavigateMenu546:
;ThermoController.mpas,809 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,810 :: 		end;
L__NavigateMenu547:
;ThermoController.mpas,811 :: 		end;
L__NavigateMenu541:
	GOTO        L__NavigateMenu486
L__NavigateMenu538:
;ThermoController.mpas,812 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu789
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu789:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu550
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu552
;ThermoController.mpas,814 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu790
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu790:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu555
;ThermoController.mpas,816 :: 		min_temp := min_temp + 1;
	INFSNZ      _min_temp+0, 1 
	INCF        _min_temp+1, 1 
;ThermoController.mpas,817 :: 		if (min_temp > max_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu791
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu791:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu558
;ThermoController.mpas,818 :: 		min_temp := max_temp;
	MOVF        _max_temp+0, 0 
	MOVWF       _min_temp+0 
	MOVF        _max_temp+1, 0 
	MOVWF       _min_temp+1 
L__NavigateMenu558:
;ThermoController.mpas,819 :: 		end
	GOTO        L__NavigateMenu556
;ThermoController.mpas,820 :: 		else
L__NavigateMenu555:
;ThermoController.mpas,822 :: 		max_temp := max_temp + 1;
	INFSNZ      _max_temp+0, 1 
	INCF        _max_temp+1, 1 
;ThermoController.mpas,823 :: 		if (max_temp > 50) then
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _max_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu792
	MOVF        _max_temp+0, 0 
	SUBLW       50
L__NavigateMenu792:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu561
;ThermoController.mpas,824 :: 		max_temp := 50;
	MOVLW       50
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
L__NavigateMenu561:
;ThermoController.mpas,825 :: 		end;
L__NavigateMenu556:
;ThermoController.mpas,826 :: 		end
	GOTO        L__NavigateMenu553
;ThermoController.mpas,827 :: 		else
L__NavigateMenu552:
;ThermoController.mpas,829 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu564
;ThermoController.mpas,831 :: 		index := (index  mod 2) + 1;
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
;ThermoController.mpas,832 :: 		end
	GOTO        L__NavigateMenu565
;ThermoController.mpas,833 :: 		else
L__NavigateMenu564:
;ThermoController.mpas,835 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,836 :: 		end;
L__NavigateMenu565:
;ThermoController.mpas,837 :: 		end;
L__NavigateMenu553:
	GOTO        L__NavigateMenu486
L__NavigateMenu550:
;ThermoController.mpas,838 :: 		@submenu3: locked := not locked;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu793
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu793:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu568
	COMF        _locked+0, 1 
	GOTO        L__NavigateMenu486
L__NavigateMenu568:
;ThermoController.mpas,839 :: 		@submenu4: status_led := not status_led ;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu794
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu794:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu571
	COMF        _status_led+0, 1 
	GOTO        L__NavigateMenu486
L__NavigateMenu571:
;ThermoController.mpas,840 :: 		@submenu5[1]: room_disp := (room_disp mod 11) + 1;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu795
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu795:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu574
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
	GOTO        L__NavigateMenu486
L__NavigateMenu574:
;ThermoController.mpas,841 :: 		@submenu5[2]: disp_mode := not disp_mode
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu796
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu796:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu577
	COMF        _disp_mode+0, 1 
;ThermoController.mpas,843 :: 		else
	GOTO        L__NavigateMenu486
L__NavigateMenu577:
;ThermoController.mpas,844 :: 		current_node := current_node^.next;
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
L__NavigateMenu486:
;ThermoController.mpas,846 :: 		up := 0;
	CLRF        _up+0 
;ThermoController.mpas,847 :: 		end;
L__NavigateMenu484:
;ThermoController.mpas,849 :: 		if down = 255 then
	MOVF        _down+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu579
;ThermoController.mpas,852 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu797
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu797:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu584
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu586
;ThermoController.mpas,854 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,856 :: 		3:     if timedate.Year = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu798
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu798:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu591
	MOVF        _timedate+6, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu593
;ThermoController.mpas,857 :: 		timedate.Year := 99
	MOVLW       99
	MOVWF       _timedate+6 
	GOTO        L__NavigateMenu594
;ThermoController.mpas,858 :: 		else timedate.Year := timeDate.Year - 1;
L__NavigateMenu593:
	DECF        _timedate+6, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu594:
	GOTO        L__NavigateMenu588
L__NavigateMenu591:
;ThermoController.mpas,859 :: 		2:     if timedate.Month = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu799
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu799:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu597
	MOVF        _timedate+5, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu599
;ThermoController.mpas,860 :: 		timedate.Month := 12
	MOVLW       12
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu600
;ThermoController.mpas,861 :: 		else timedate.Month := timeDate.Month - 1;
L__NavigateMenu599:
	DECF        _timedate+5, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu600:
	GOTO        L__NavigateMenu588
L__NavigateMenu597:
;ThermoController.mpas,862 :: 		1:     if timedate.Date = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu800
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu800:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu603
	MOVF        _timedate+4, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu605
;ThermoController.mpas,863 :: 		timedate.Date := maxday[timedate.Month]
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
	GOTO        L__NavigateMenu606
;ThermoController.mpas,864 :: 		else timedate.Date := timeDate.Date - 1;
L__NavigateMenu605:
	DECF        _timedate+4, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu606:
	GOTO        L__NavigateMenu588
L__NavigateMenu603:
;ThermoController.mpas,865 :: 		4:     if timedate.Hours = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu801
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu801:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu609
	MOVF        _timedate+2, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu611
;ThermoController.mpas,866 :: 		timedate.Hours := 23
	MOVLW       23
	MOVWF       _timedate+2 
	GOTO        L__NavigateMenu612
;ThermoController.mpas,867 :: 		else timedate.Hours := timeDate.Hours - 1;
L__NavigateMenu611:
	DECF        _timedate+2, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu612:
	GOTO        L__NavigateMenu588
L__NavigateMenu609:
;ThermoController.mpas,868 :: 		5:     if timedate.Minutes = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu802
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu802:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu615
	MOVF        _timedate+1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu617
;ThermoController.mpas,869 :: 		timedate.Minutes := 59
	MOVLW       59
	MOVWF       _timedate+1 
	GOTO        L__NavigateMenu618
;ThermoController.mpas,870 :: 		else timedate.Minutes := timeDate.Minutes - 1;
L__NavigateMenu617:
	DECF        _timedate+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu618:
	GOTO        L__NavigateMenu588
L__NavigateMenu615:
L__NavigateMenu588:
;ThermoController.mpas,872 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,873 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,876 :: 		end
	GOTO        L__NavigateMenu587
;ThermoController.mpas,877 :: 		else if underscore then
L__NavigateMenu586:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu620
;ThermoController.mpas,878 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu803
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu803:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu623
;ThermoController.mpas,879 :: 		index := 5
	MOVLW       5
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu624
;ThermoController.mpas,880 :: 		else
L__NavigateMenu623:
;ThermoController.mpas,881 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu624:
L__NavigateMenu620:
L__NavigateMenu587:
	GOTO        L__NavigateMenu581
L__NavigateMenu584:
;ThermoController.mpas,882 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu804
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu804:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu627
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu629
;ThermoController.mpas,884 :: 		funcDays[index] := not funcDays[index];
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
;ThermoController.mpas,885 :: 		end
	GOTO        L__NavigateMenu630
;ThermoController.mpas,886 :: 		else
L__NavigateMenu629:
;ThermoController.mpas,888 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu632
;ThermoController.mpas,890 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu805
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu805:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu635
;ThermoController.mpas,891 :: 		index := 7
	MOVLW       7
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu636
;ThermoController.mpas,892 :: 		else
L__NavigateMenu635:
;ThermoController.mpas,893 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu636:
;ThermoController.mpas,894 :: 		end
	GOTO        L__NavigateMenu633
;ThermoController.mpas,895 :: 		else
L__NavigateMenu632:
;ThermoController.mpas,897 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,898 :: 		end;
L__NavigateMenu633:
;ThermoController.mpas,899 :: 		end;
L__NavigateMenu630:
	GOTO        L__NavigateMenu581
L__NavigateMenu627:
;ThermoController.mpas,900 :: 		@submenu2[2]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu806
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu806:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu639
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu641
;ThermoController.mpas,902 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu807
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu807:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu644
;ThermoController.mpas,904 :: 		if (start_hour = 0) then
	MOVF        _start_hour+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu647
;ThermoController.mpas,905 :: 		start_hour := 23
	MOVLW       23
	MOVWF       _start_hour+0 
	GOTO        L__NavigateMenu648
;ThermoController.mpas,906 :: 		else
L__NavigateMenu647:
;ThermoController.mpas,907 :: 		start_hour := start_hour - 1;
	DECF        _start_hour+0, 1 
L__NavigateMenu648:
;ThermoController.mpas,908 :: 		end
	GOTO        L__NavigateMenu645
;ThermoController.mpas,909 :: 		else
L__NavigateMenu644:
;ThermoController.mpas,911 :: 		if (end_hour = 0) then
	MOVF        _end_hour+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu650
;ThermoController.mpas,912 :: 		end_hour := 23
	MOVLW       23
	MOVWF       _end_hour+0 
	GOTO        L__NavigateMenu651
;ThermoController.mpas,913 :: 		else
L__NavigateMenu650:
;ThermoController.mpas,914 :: 		end_hour := end_hour - 1;
	DECF        _end_hour+0, 1 
L__NavigateMenu651:
;ThermoController.mpas,915 :: 		end;
L__NavigateMenu645:
;ThermoController.mpas,916 :: 		end
	GOTO        L__NavigateMenu642
;ThermoController.mpas,917 :: 		else
L__NavigateMenu641:
;ThermoController.mpas,919 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu653
;ThermoController.mpas,921 :: 		index := (index  mod 2) + 1;
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
;ThermoController.mpas,922 :: 		end
	GOTO        L__NavigateMenu654
;ThermoController.mpas,923 :: 		else
L__NavigateMenu653:
;ThermoController.mpas,925 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,926 :: 		end;
L__NavigateMenu654:
;ThermoController.mpas,927 :: 		end;
L__NavigateMenu642:
	GOTO        L__NavigateMenu581
L__NavigateMenu639:
;ThermoController.mpas,928 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu808
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu808:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu657
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu659
;ThermoController.mpas,930 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu809
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu809:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu662
;ThermoController.mpas,932 :: 		min_temp := min_temp - 1;
	MOVLW       1
	SUBWF       _min_temp+0, 1 
	MOVLW       0
	SUBWFB      _min_temp+1, 1 
;ThermoController.mpas,933 :: 		if (min_temp < 0) then
	MOVLW       128
	XORWF       _min_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu810
	MOVLW       0
	SUBWF       _min_temp+0, 0 
L__NavigateMenu810:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu665
;ThermoController.mpas,934 :: 		min_temp := 0;
	CLRF        _min_temp+0 
	CLRF        _min_temp+1 
L__NavigateMenu665:
;ThermoController.mpas,935 :: 		end
	GOTO        L__NavigateMenu663
;ThermoController.mpas,936 :: 		else
L__NavigateMenu662:
;ThermoController.mpas,938 :: 		max_temp := max_temp - 1;
	MOVLW       1
	SUBWF       _max_temp+0, 1 
	MOVLW       0
	SUBWFB      _max_temp+1, 1 
;ThermoController.mpas,939 :: 		if (max_temp < min_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu811
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu811:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu668
;ThermoController.mpas,940 :: 		max_temp := min_temp;
	MOVF        _min_temp+0, 0 
	MOVWF       _max_temp+0 
	MOVF        _min_temp+1, 0 
	MOVWF       _max_temp+1 
L__NavigateMenu668:
;ThermoController.mpas,941 :: 		end;
L__NavigateMenu663:
;ThermoController.mpas,942 :: 		end
	GOTO        L__NavigateMenu660
;ThermoController.mpas,943 :: 		else
L__NavigateMenu659:
;ThermoController.mpas,945 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu671
;ThermoController.mpas,947 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu812
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu812:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu674
;ThermoController.mpas,948 :: 		index := 2
	MOVLW       2
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu675
;ThermoController.mpas,949 :: 		else
L__NavigateMenu674:
;ThermoController.mpas,950 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
L__NavigateMenu675:
;ThermoController.mpas,951 :: 		end
	GOTO        L__NavigateMenu672
;ThermoController.mpas,952 :: 		else
L__NavigateMenu671:
;ThermoController.mpas,954 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,955 :: 		end;
L__NavigateMenu672:
;ThermoController.mpas,956 :: 		end;
L__NavigateMenu660:
	GOTO        L__NavigateMenu581
L__NavigateMenu657:
;ThermoController.mpas,957 :: 		@submenu3: locked := not locked;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu813
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu813:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu678
	COMF        _locked+0, 1 
	GOTO        L__NavigateMenu581
L__NavigateMenu678:
;ThermoController.mpas,958 :: 		@submenu4: status_led := not status_led;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu814
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu814:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu681
	COMF        _status_led+0, 1 
	GOTO        L__NavigateMenu581
L__NavigateMenu681:
;ThermoController.mpas,959 :: 		@submenu5[1]: if room_disp = 1 then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu815
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu815:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu684
	MOVF        _room_disp+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu686
;ThermoController.mpas,960 :: 		room_disp := 11
	MOVLW       11
	MOVWF       _room_disp+0 
	GOTO        L__NavigateMenu687
;ThermoController.mpas,961 :: 		else
L__NavigateMenu686:
;ThermoController.mpas,962 :: 		room_disp := room_disp - 1;
	DECF        _room_disp+0, 1 
L__NavigateMenu687:
	GOTO        L__NavigateMenu581
L__NavigateMenu684:
;ThermoController.mpas,963 :: 		@submenu5[2]: disp_mode := not disp_mode
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu816
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu816:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu690
	COMF        _disp_mode+0, 1 
;ThermoController.mpas,964 :: 		else
	GOTO        L__NavigateMenu581
L__NavigateMenu690:
;ThermoController.mpas,965 :: 		current_node := current_node^.prev;
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
L__NavigateMenu581:
;ThermoController.mpas,967 :: 		down := 0;
	CLRF        _down+0 
;ThermoController.mpas,968 :: 		end;
L__NavigateMenu579:
;ThermoController.mpas,969 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,970 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,971 :: 		end;
	GOTO        L__NavigateMenu446
;ThermoController.mpas,972 :: 		end;
	RETURN      0
; end of _NavigateMenu

_main:

;ThermoController.mpas,974 :: 		begin
;ThermoController.mpas,977 :: 		Delay_ms(100);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L__main692:
	DECFSZ      R13, 1, 1
	BRA         L__main692
	DECFSZ      R12, 1, 1
	BRA         L__main692
	DECFSZ      R11, 1, 1
	BRA         L__main692
	NOP
;ThermoController.mpas,978 :: 		LATC:=0xFF;
	MOVLW       255
	MOVWF       LATC+0 
;ThermoController.mpas,979 :: 		TRISC:=0xff;
	MOVLW       255
	MOVWF       TRISC+0 
;ThermoController.mpas,980 :: 		LATD:=0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;ThermoController.mpas,981 :: 		TRISD:=0xff;
	MOVLW       255
	MOVWF       TRISD+0 
;ThermoController.mpas,983 :: 		TRISC.2 := 0; //out latc.2
	BCF         TRISC+0, 2 
;ThermoController.mpas,984 :: 		Trisb.5 := 0; //out latb.5
	BCF         TRISB+0, 5 
;ThermoController.mpas,985 :: 		Trisb.4 := 1; //in portb.4
	BSF         TRISB+0, 4 
;ThermoController.mpas,986 :: 		TrisE.0 := 1; //in portE.0
	BSF         TRISE+0, 0 
;ThermoController.mpas,987 :: 		TrisE.1 := 1; //in portE.1
	BSF         TRISE+0, 1 
;ThermoController.mpas,988 :: 		TrisE.2 := 1; //in portE.2
	BSF         TRISE+0, 2 
;ThermoController.mpas,989 :: 		TrisD.0 := 1; //
	BSF         TRISD+0, 0 
;ThermoController.mpas,990 :: 		TrisD.1 := 1;
	BSF         TRISD+0, 1 
;ThermoController.mpas,991 :: 		TrisD.2 := 1;
	BSF         TRISD+0, 2 
;ThermoController.mpas,992 :: 		TrisD.3 := 1;
	BSF         TRISD+0, 3 
;ThermoController.mpas,995 :: 		Lcd_Init();                        // Initialize LCD
	CALL        _Lcd_Init+0, 0
;ThermoController.mpas,996 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,997 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,1000 :: 		for i:=1 to 4 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main694:
;ThermoController.mpas,1001 :: 		Temp[i] := 0;
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
	GOTO        L__main817
	MOVLW       4
	XORWF       _i+0, 0 
L__main817:
	BTFSC       STATUS+0, 2 
	GOTO        L__main697
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main694
L__main697:
;ThermoController.mpas,1002 :: 		temp_index := 0;
	CLRF        _Temp_index+0 
;ThermoController.mpas,1005 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main699:
;ThermoController.mpas,1006 :: 		funcDays[i] := false;
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
	GOTO        L__main818
	MOVLW       7
	XORWF       _i+0, 0 
L__main818:
	BTFSC       STATUS+0, 2 
	GOTO        L__main702
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main699
L__main702:
;ThermoController.mpas,1007 :: 		funcDaysString[1]:= 'Monday       ';
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
;ThermoController.mpas,1008 :: 		funcDaysString[2]:= 'Tuesday      ';
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
;ThermoController.mpas,1009 :: 		funcDaysString[3]:= 'Wednsday     ';
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
;ThermoController.mpas,1010 :: 		funcDaysString[4]:= 'Thursday     ';
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
;ThermoController.mpas,1011 :: 		funcDaysString[5]:= 'Friday       ';
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
;ThermoController.mpas,1012 :: 		funcDaysString[6]:= 'Saturday     ';
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
;ThermoController.mpas,1013 :: 		funcDaysString[7]:= 'Sunday       ';
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
;ThermoController.mpas,1014 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
;ThermoController.mpas,1015 :: 		min_temp := 19;
	MOVLW       19
	MOVWF       _min_temp+0 
	MOVLW       0
	MOVWF       _min_temp+1 
;ThermoController.mpas,1016 :: 		max_temp := 22;
	MOVLW       22
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
;ThermoController.mpas,1017 :: 		start_hour := 7;
	MOVLW       7
	MOVWF       _start_hour+0 
;ThermoController.mpas,1018 :: 		end_hour := 21;
	MOVLW       21
	MOVWF       _end_hour+0 
;ThermoController.mpas,1020 :: 		locked := false;
	CLRF        _locked+0 
;ThermoController.mpas,1021 :: 		status_led := true;
	MOVLW       255
	MOVWF       _status_led+0 
;ThermoController.mpas,1023 :: 		room_disp:= 1;
	MOVLW       1
	MOVWF       _room_disp+0 
;ThermoController.mpas,1024 :: 		disp_mode := true;
	MOVLW       255
	MOVWF       _disp_mode+0 
;ThermoController.mpas,1027 :: 		for i:=1 to 4 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main704:
;ThermoController.mpas,1028 :: 		room_flag[i] := 0;
	DECF        _i+0, 0 
	MOVWF       R3 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _room_flag+0
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       hi_addr(_room_flag+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
	CLRF        POSTINC1+0 
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main819
	MOVLW       4
	XORWF       _i+0, 0 
L__main819:
	BTFSC       STATUS+0, 2 
	GOTO        L__main707
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main704
L__main707:
;ThermoController.mpas,1029 :: 		func_mode := true;
	MOVLW       255
	MOVWF       _func_mode+0 
;ThermoController.mpas,1032 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,1033 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,1034 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,1037 :: 		ADCON1 := %00111111; //all analog pins as digital
	MOVLW       63
	MOVWF       ADCON1+0 
;ThermoController.mpas,1039 :: 		I2c1_Init(100000);
	MOVLW       120
	MOVWF       SSPADD+0 
	CALL        _I2C1_Init+0, 0
;ThermoController.mpas,1040 :: 		DS1307_Init;                      // Ds1307 Real Time clock
	CALL        _Ds1307_Init+0, 0
;ThermoController.mpas,1041 :: 		Delay_ms(500);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L__main708:
	DECFSZ      R13, 1, 1
	BRA         L__main708
	DECFSZ      R12, 1, 1
	BRA         L__main708
	DECFSZ      R11, 1, 1
	BRA         L__main708
	NOP
;ThermoController.mpas,1044 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,1046 :: 		InitMenu;
	CALL        _InitMenu+0, 0
;ThermoController.mpas,1047 :: 		LCD_OUT(1,1,'ddd');
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
;ThermoController.mpas,1050 :: 		OS_Init;
	CALL        _OS_Init+0, 0
;ThermoController.mpas,1060 :: 		T_ReadTemp := OS_CreateTask(@ReadTemp, 2);
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
;ThermoController.mpas,1061 :: 		T_ReadTime := OS_CreateTask(@ReadTime, 1);
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
;ThermoController.mpas,1062 :: 		T_DisplayLED := OS_CreateTask(@DisplayLED, 1);
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
;ThermoController.mpas,1063 :: 		T_ReadKeys := OS_CreateTask(@ReadKeys, 0);
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
;ThermoController.mpas,1064 :: 		T_NavigateMenu := OS_CreateTask(@NavigateMenu, 3);
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
;ThermoController.mpas,1065 :: 		T_SaveTime := OS_CreateTask(@SaveTime, 3);
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
;ThermoController.mpas,1066 :: 		T_Logic := OS_CreateTask(@Logic, 3);
	MOVLW       _Logic+0
	MOVWF       FARG_OS_CreateTask_TaskProc+0 
	MOVLW       hi_addr(_Logic+0)
	MOVWF       FARG_OS_CreateTask_TaskProc+1 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+2 
	MOVLW       0
	MOVWF       FARG_OS_CreateTask_TaskProc+3 
	MOVLW       3
	MOVWF       FARG_OS_CreateTask_Priority+0 
	CALL        _OS_CreateTask+0, 0
	MOVF        R0, 0 
	MOVWF       _T_Logic+0 
;ThermoController.mpas,1069 :: 		S_Display := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Display+0 
;ThermoController.mpas,1070 :: 		S_Navigate := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Navigate+0 
;ThermoController.mpas,1071 :: 		S_SetTime := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_SetTime+0 
;ThermoController.mpas,1074 :: 		OS_StartTask(T_ReadTemp);
	MOVF        _T_ReadTemp+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,1075 :: 		OS_StartTask(T_ReadTime);
	MOVF        _T_ReadTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,1076 :: 		OS_StartTask(T_DisplayLED);
	MOVF        _T_DisplayLED+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,1077 :: 		OS_StartTask(T_ReadKeys);
	MOVF        _T_ReadKeys+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,1078 :: 		OS_StartTask(T_NavigateMenu);
	MOVF        _T_NavigateMenu+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,1079 :: 		OS_StartTask(T_SaveTime);
	MOVF        _T_SaveTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,1080 :: 		OS_StartTask(T_Logic);
	MOVF        _T_Logic+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,1083 :: 		T1CKPS0_bit := 1;
	BSF         T1CKPS0_bit+0, 4 
;ThermoController.mpas,1084 :: 		T1CKPS1_bit := 0;
	BCF         T1CKPS1_bit+0, 5 
;ThermoController.mpas,1085 :: 		TMR1CS_bit := 0; // internal clock
	BCF         TMR1CS_bit+0, 1 
;ThermoController.mpas,1086 :: 		TMR1L := 0x40; // reset timer register
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,1087 :: 		TMR1H := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,1088 :: 		OS_Timer_IE_bit := 0; // disable timebase interrupt, will be enabled in “OS_Run”
	BCF         TMR1IE_bit+0, 0 
;ThermoController.mpas,1089 :: 		TMR1ON_bit := 1; // start timer
	BSF         TMR1ON_bit+0, 0 
;ThermoController.mpas,1090 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,1091 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,1093 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,1094 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,1098 :: 		OS_Run;
	CALL        _OS_Run+0, 0
;ThermoController.mpas,1099 :: 		end.
	GOTO        $+0
; end of _main
