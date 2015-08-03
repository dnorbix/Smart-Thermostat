
_InitMenu:

;ThermoController.mpas,129 :: 		begin
;ThermoController.mpas,131 :: 		maxday[1]:=31;
	MOVLW       31
	MOVWF       _maxday+0 
;ThermoController.mpas,132 :: 		maxday[2]:=28;
	MOVLW       28
	MOVWF       _maxday+1 
;ThermoController.mpas,133 :: 		maxday[3]:=31;
	MOVLW       31
	MOVWF       _maxday+2 
;ThermoController.mpas,134 :: 		maxday[4]:=30;
	MOVLW       30
	MOVWF       _maxday+3 
;ThermoController.mpas,135 :: 		maxday[5]:=31;
	MOVLW       31
	MOVWF       _maxday+4 
;ThermoController.mpas,136 :: 		maxday[6]:=30;
	MOVLW       30
	MOVWF       _maxday+5 
;ThermoController.mpas,137 :: 		maxday[7]:=31;
	MOVLW       31
	MOVWF       _maxday+6 
;ThermoController.mpas,138 :: 		maxday[8]:=31;
	MOVLW       31
	MOVWF       _maxday+7 
;ThermoController.mpas,139 :: 		maxday[9]:=30;
	MOVLW       30
	MOVWF       _maxday+8 
;ThermoController.mpas,140 :: 		maxday[10]:=31;
	MOVLW       31
	MOVWF       _maxday+9 
;ThermoController.mpas,141 :: 		maxday[11]:=30;
	MOVLW       30
	MOVWF       _maxday+10 
;ThermoController.mpas,142 :: 		maxday[12]:=31;
	MOVLW       31
	MOVWF       _maxday+11 
;ThermoController.mpas,148 :: 		root.row1 := 'Welcome, Laci!';
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
;ThermoController.mpas,149 :: 		root.child := @menu[1];
	MOVLW       _menu+0
	MOVWF       _root+40 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _root+41 
;ThermoController.mpas,150 :: 		root.parent := @root;
	MOVLW       _root+0
	MOVWF       _root+34 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+35 
;ThermoController.mpas,151 :: 		root.next := @root;
	MOVLW       _root+0
	MOVWF       _root+36 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+37 
;ThermoController.mpas,152 :: 		root.prev := @root;
	MOVLW       _root+0
	MOVWF       _root+38 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+39 
;ThermoController.mpas,153 :: 		current_node := @root;
	MOVLW       _root+0
	MOVWF       _current_node+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       _current_node+1 
;ThermoController.mpas,155 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu2:
;ThermoController.mpas,156 :: 		menu[i].next := @menu[i+1];
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
	GOTO        L__InitMenu572
	MOVLW       6
	XORWF       _i+0, 0 
L__InitMenu572:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu5
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu2
L__InitMenu5:
;ThermoController.mpas,157 :: 		menu[7].next := @menu[1];
	MOVLW       _menu+0
	MOVWF       _menu+288 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _menu+289 
;ThermoController.mpas,158 :: 		for i:=7 downto 2 do
	MOVLW       7
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu7:
;ThermoController.mpas,159 :: 		menu[i].prev := @menu[i-1];
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
	GOTO        L__InitMenu573
	MOVLW       2
	XORWF       _i+0, 0 
L__InitMenu573:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu10
	MOVLW       1
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
	GOTO        L__InitMenu7
L__InitMenu10:
;ThermoController.mpas,160 :: 		menu[1].prev := @menu[7];
	MOVLW       _menu+252
	MOVWF       _menu+38 
	MOVLW       hi_addr(_menu+252)
	MOVWF       _menu+39 
;ThermoController.mpas,161 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu12:
;ThermoController.mpas,162 :: 		menu[i].parent := @root;
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
	GOTO        L__InitMenu574
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu574:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu15
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu12
L__InitMenu15:
;ThermoController.mpas,165 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu17:
;ThermoController.mpas,166 :: 		menu[i].child := @menu[i];
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
	GOTO        L__InitMenu575
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu575:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu20
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu17
L__InitMenu20:
;ThermoController.mpas,168 :: 		menu[1].child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _menu+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _menu+41 
;ThermoController.mpas,169 :: 		menu[2].child := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _menu+82 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _menu+83 
;ThermoController.mpas,170 :: 		menu[3].child := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _menu+124 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _menu+125 
;ThermoController.mpas,171 :: 		menu[4].child := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _menu+166 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _menu+167 
;ThermoController.mpas,172 :: 		menu[5].child := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _menu+208 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _menu+209 
;ThermoController.mpas,174 :: 		submenu1.parent := @menu[1];
	MOVLW       _menu+0
	MOVWF       _submenu1+34 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _submenu1+35 
;ThermoController.mpas,175 :: 		submenu1.next := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+36 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+37 
;ThermoController.mpas,176 :: 		submenu1.prev := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+38 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+39 
;ThermoController.mpas,177 :: 		submenu1.child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+41 
;ThermoController.mpas,179 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu22:
;ThermoController.mpas,181 :: 		submenu2[i].parent := @menu[2];
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
;ThermoController.mpas,182 :: 		submenu2[i].child := @submenu2[i];
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
;ThermoController.mpas,183 :: 		end;
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu576
	MOVLW       3
	XORWF       _i+0, 0 
L__InitMenu576:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu25
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu22
L__InitMenu25:
;ThermoController.mpas,185 :: 		submenu2[2].next := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+78 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+79 
;ThermoController.mpas,186 :: 		submenu2[2].prev := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+80 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+81 
;ThermoController.mpas,187 :: 		submenu2[1].prev := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+38 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+39 
;ThermoController.mpas,188 :: 		submenu2[3].next := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+120 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+121 
;ThermoController.mpas,189 :: 		submenu2[1].next := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+36 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+37 
;ThermoController.mpas,190 :: 		submenu2[3].prev := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+122 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+123 
;ThermoController.mpas,192 :: 		submenu3.parent := @menu[3];
	MOVLW       _menu+84
	MOVWF       _submenu3+34 
	MOVLW       hi_addr(_menu+84)
	MOVWF       _submenu3+35 
;ThermoController.mpas,193 :: 		submenu3.next := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+36 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+37 
;ThermoController.mpas,194 :: 		submenu3.prev := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+38 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+39 
;ThermoController.mpas,195 :: 		submenu3.child := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+40 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+41 
;ThermoController.mpas,197 :: 		submenu4.parent := @menu[4];
	MOVLW       _menu+126
	MOVWF       _submenu4+34 
	MOVLW       hi_addr(_menu+126)
	MOVWF       _submenu4+35 
;ThermoController.mpas,198 :: 		submenu4.next := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+36 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+37 
;ThermoController.mpas,199 :: 		submenu4.prev := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+38 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+39 
;ThermoController.mpas,200 :: 		submenu4.child := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+40 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+41 
;ThermoController.mpas,202 :: 		submenu5[1].next := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+36 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+37 
;ThermoController.mpas,203 :: 		submenu5[2].next := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+78 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+79 
;ThermoController.mpas,204 :: 		submenu5[1].prev := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+38 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+39 
;ThermoController.mpas,205 :: 		submenu5[2].prev := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+80 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+81 
;ThermoController.mpas,206 :: 		submenu5[1].child := @submenu5[1];
	MOVLW       _submenu5+0
	MOVWF       _submenu5+40 
	MOVLW       hi_addr(_submenu5+0)
	MOVWF       _submenu5+41 
;ThermoController.mpas,207 :: 		submenu5[2].child := @submenu5[2];
	MOVLW       _submenu5+42
	MOVWF       _submenu5+82 
	MOVLW       hi_addr(_submenu5+42)
	MOVWF       _submenu5+83 
;ThermoController.mpas,208 :: 		submenu5[1].parent := @menu[5];
	MOVLW       _menu+168
	MOVWF       _submenu5+34 
	MOVLW       hi_addr(_menu+168)
	MOVWF       _submenu5+35 
;ThermoController.mpas,209 :: 		submenu5[2].parent := @menu[5];
	MOVLW       _menu+168
	MOVWF       _submenu5+76 
	MOVLW       hi_addr(_menu+168)
	MOVWF       _submenu5+77 
;ThermoController.mpas,212 :: 		root.row1 := 'T1:     T2:    ';
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
;ThermoController.mpas,213 :: 		root.row2 := 'T3:     T4:    ';
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
;ThermoController.mpas,214 :: 		menu[1].row1 := '1. Date/Time';
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
;ThermoController.mpas,215 :: 		menu[1].row2 := '';
	CLRF        _menu+17 
;ThermoController.mpas,216 :: 		menu[2].row1 := '2. Functioning';
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
;ThermoController.mpas,217 :: 		menu[2].row2 := '     Interval';
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
;ThermoController.mpas,218 :: 		menu[3].row1 := '3. Lock Settings';
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
;ThermoController.mpas,219 :: 		menu[3].row2 := '';
	CLRF        _menu+101 
;ThermoController.mpas,220 :: 		menu[4].row1 := '4. Status LED';
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
;ThermoController.mpas,221 :: 		menu[4].row2 := '';
	CLRF        _menu+143 
;ThermoController.mpas,222 :: 		menu[5].row1 := '5. Standby Disp';
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
;ThermoController.mpas,223 :: 		menu[5].row2 := '    Settings';
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
;ThermoController.mpas,224 :: 		menu[6].row1 := '6. Log';
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
;ThermoController.mpas,225 :: 		menu[6].row2 := '';
	CLRF        _menu+227 
;ThermoController.mpas,226 :: 		menu[7].row1 := '7. Menu';
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
;ThermoController.mpas,227 :: 		menu[7].row2 := '';
	CLRF        _menu+269 
;ThermoController.mpas,228 :: 		submenu1.row1 := 'date';
	MOVLW       100
	MOVWF       _submenu1+0 
	MOVLW       97
	MOVWF       _submenu1+1 
	MOVLW       116
	MOVWF       _submenu1+2 
	MOVLW       101
	MOVWF       _submenu1+3 
	CLRF        _submenu1+4 
;ThermoController.mpas,229 :: 		submenu1.row2 := 'time';
	MOVLW       116
	MOVWF       _submenu1+17 
	MOVLW       105
	MOVWF       _submenu1+18 
	MOVLW       109
	MOVWF       _submenu1+19 
	MOVLW       101
	MOVWF       _submenu1+20 
	CLRF        _submenu1+21 
;ThermoController.mpas,231 :: 		submenu2[1].row1 := '2.1 Days';
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
;ThermoController.mpas,232 :: 		strcat2(submenu2[1].row2,funcDaysString[1],funcDaysStatus);
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
;ThermoController.mpas,233 :: 		submenu2[2].row1 := '2.2 Hours';
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
;ThermoController.mpas,234 :: 		submenu2[2].row2 := 'S: 21;     E:  7';
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
;ThermoController.mpas,235 :: 		submenu2[3].row1 := '2.3 Temp. Limits';
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
;ThermoController.mpas,236 :: 		submenu2[3].row2 := 'Min: 19; Max: 22';
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
;ThermoController.mpas,238 :: 		submenu3.row1 := 'Locked:     OFF';
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
;ThermoController.mpas,239 :: 		submenu3.row2 := '';
	CLRF        _submenu3+17 
;ThermoController.mpas,241 :: 		submenu4.row1 := 'Status LED:';
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
;ThermoController.mpas,242 :: 		submenu4.row2 := '        ON';
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
;ThermoController.mpas,244 :: 		submenu5[1].row1 := '6.1 Room Display';
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
;ThermoController.mpas,245 :: 		submenu5[1].row2 := 'All four rooms';
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
;ThermoController.mpas,246 :: 		submenu5[2].row1 := '6.2 Display Mode';
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
;ThermoController.mpas,247 :: 		submenu5[2].row2 := 'Mode 1';
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
;ThermoController.mpas,249 :: 		end;
	RETURN      0
; end of _InitMenu

_Interrupt:

;ThermoController.mpas,254 :: 		begin
;ThermoController.mpas,255 :: 		if TMR1IF_bit = 1 then
	BTFSS       TMR1IF_bit+0, 0 
	GOTO        L__Interrupt28
;ThermoController.mpas,257 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,258 :: 		TMR1H         := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,259 :: 		TMR1L         := 0x40;
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,260 :: 		OS_TimerInterrupt; // to be called every x millisecs
	CALL        _OS_TimerInterrupt+0, 0
;ThermoController.mpas,261 :: 		end;
L__Interrupt28:
;ThermoController.mpas,262 :: 		end;
L__Interrupt577:
	RETFIE      1
; end of _Interrupt

_ReadTemp:

;ThermoController.mpas,266 :: 		begin
;ThermoController.mpas,267 :: 		while true do
L__ReadTemp32:
;ThermoController.mpas,269 :: 		OS_Delay(500);
	MOVLW       244
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       1
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,270 :: 		INTCON := 0x00;
	CLRF        INTCON+0 
;ThermoController.mpas,271 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,272 :: 		DS1820_StartTempConversion(PortD,temp_index, true);
	MOVLW       PORTD+0
	MOVWF       FARG_DS1820_StartTempConversion_Port_+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_DS1820_StartTempConversion_Port_+1 
	MOVF        _Temp_index+0, 0 
	MOVWF       FARG_DS1820_StartTempConversion_Bit_+0 
	MOVLW       255
	MOVWF       FARG_DS1820_StartTempConversion_Wait+0 
	CALL        _DS1820_StartTempConversion+0, 0
;ThermoController.mpas,273 :: 		aux_temp := DS1820_ReadTemperature(PortD,temp_index);
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
;ThermoController.mpas,274 :: 		if (aux_temp <> Temp[temp_index + 1]) then
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
	GOTO        L__ReadTemp578
	MOVF        R3, 0 
	XORWF       R0, 0 
L__ReadTemp578:
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadTemp37
;ThermoController.mpas,276 :: 		Temp[temp_index + 1] := aux_temp;
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
;ThermoController.mpas,278 :: 		CRCOk := DS1820_CheckCRC;
	CALL        _DS1820_CheckCRC+0, 0
	MOVF        R0, 0 
	MOVWF       _CRCOk+0 
;ThermoController.mpas,280 :: 		if CRCOk > 0 then // CRC error
	MOVF        R0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L__ReadTemp40
;ThermoController.mpas,282 :: 		LCD_OUT(2,1,'Temperature CRC error');
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
;ThermoController.mpas,283 :: 		end
	GOTO        L__ReadTemp41
;ThermoController.mpas,284 :: 		else
L__ReadTemp40:
;ThermoController.mpas,286 :: 		DS1820_TempToString(Temp[temp_index + 1], Temp_string[temp_index + 1], ',');
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
;ThermoController.mpas,301 :: 		end;
L__ReadTemp41:
;ThermoController.mpas,302 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,303 :: 		end;
L__ReadTemp37:
;ThermoController.mpas,304 :: 		temp_index := (temp_index + 1) mod 4;
	INCF        _Temp_index+0, 1 
	MOVLW       3
	ANDWF       _Temp_index+0, 1 
;ThermoController.mpas,305 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,306 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,307 :: 		end;
	GOTO        L__ReadTemp32
;ThermoController.mpas,308 :: 		end;
	RETURN      0
; end of _ReadTemp

_DisplayLED:

;ThermoController.mpas,311 :: 		begin
;ThermoController.mpas,312 :: 		while true do
L__DisplayLED44:
;ThermoController.mpas,314 :: 		OS_WaitSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,315 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,321 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED49
;ThermoController.mpas,322 :: 		Lcd_Cmd(_LCD_UNDERLINE_ON)
	MOVLW       14
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED50
;ThermoController.mpas,323 :: 		else if edit then
L__DisplayLED49:
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED52
;ThermoController.mpas,324 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON)
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED53
;ThermoController.mpas,325 :: 		else
L__DisplayLED52:
;ThermoController.mpas,326 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
L__DisplayLED53:
L__DisplayLED50:
;ThermoController.mpas,329 :: 		if underscore or edit then
	MOVF        _edit+0, 0 
	IORWF       _underscore+0, 0 
	MOVWF       R0 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED55
;ThermoController.mpas,332 :: 		@root: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_root+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED579
	MOVLW       _root+0
	XORWF       _current_node+0, 0 
L__DisplayLED579:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED60
;ThermoController.mpas,334 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED60:
;ThermoController.mpas,335 :: 		@submenu1: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED580
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__DisplayLED580:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED66
;ThermoController.mpas,336 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,338 :: 		1 : begin Lcd_Cmd(_LCD_FIRST_ROW); end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED581
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED581:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED73
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED70
L__DisplayLED73:
;ThermoController.mpas,339 :: 		2 : begin Lcd_Cmd(_LCD_FIRST_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED582
	MOVLW       2
	XORWF       _index+0, 0 
L__DisplayLED582:
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
	GOTO        L__DisplayLED70
L__DisplayLED76:
;ThermoController.mpas,340 :: 		3 : begin Lcd_Cmd(_LCD_FIRST_ROW);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED583
	MOVLW       3
	XORWF       _index+0, 0 
L__DisplayLED583:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED79
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
;ThermoController.mpas,341 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); end;
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
	GOTO        L__DisplayLED70
L__DisplayLED79:
;ThermoController.mpas,342 :: 		4 : begin Lcd_Cmd(_LCD_SECOND_ROW);                                                                                                   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED584
	MOVLW       4
	XORWF       _index+0, 0 
L__DisplayLED584:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED82
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED70
L__DisplayLED82:
;ThermoController.mpas,343 :: 		5 : begin Lcd_Cmd(_LCD_SECOND_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED585
	MOVLW       5
	XORWF       _index+0, 0 
L__DisplayLED585:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED85
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
	GOTO        L__DisplayLED70
L__DisplayLED85:
L__DisplayLED70:
;ThermoController.mpas,345 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED66:
;ThermoController.mpas,346 :: 		@submenu2[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED586
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__DisplayLED586:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED88
;ThermoController.mpas,347 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,348 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,349 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED93:
;ThermoController.mpas,350 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED587
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED587:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED96
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED93
L__DisplayLED96:
;ThermoController.mpas,351 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED88:
;ThermoController.mpas,352 :: 		@submenu2[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED588
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__DisplayLED588:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED99
;ThermoController.mpas,353 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,354 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,355 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED589
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED589:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED104
;ThermoController.mpas,356 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED107:
;ThermoController.mpas,357 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED590
	MOVLW       3
	XORWF       _i+0, 0 
L__DisplayLED590:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED110
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED107
L__DisplayLED110:
	GOTO        L__DisplayLED105
;ThermoController.mpas,358 :: 		else
L__DisplayLED104:
;ThermoController.mpas,359 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED112:
;ThermoController.mpas,360 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED591
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED591:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED115
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED112
L__DisplayLED115:
L__DisplayLED105:
;ThermoController.mpas,361 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED99:
;ThermoController.mpas,362 :: 		@submenu2[3]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED592
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__DisplayLED592:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED118
;ThermoController.mpas,363 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,364 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,365 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED593
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED593:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED123
;ThermoController.mpas,366 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED126:
;ThermoController.mpas,367 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED594
	MOVLW       6
	XORWF       _i+0, 0 
L__DisplayLED594:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED129
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED126
L__DisplayLED129:
	GOTO        L__DisplayLED124
;ThermoController.mpas,368 :: 		else
L__DisplayLED123:
;ThermoController.mpas,369 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED131:
;ThermoController.mpas,370 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED595
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED595:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED134
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED131
L__DisplayLED134:
L__DisplayLED124:
;ThermoController.mpas,371 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED118:
;ThermoController.mpas,372 :: 		@submenu3: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED596
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__DisplayLED596:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED137
;ThermoController.mpas,373 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,374 :: 		Lcd_Cmd(_LCD_FIRST_ROW);
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,375 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED142:
;ThermoController.mpas,376 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED597
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED597:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED145
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED142
L__DisplayLED145:
;ThermoController.mpas,377 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED137:
;ThermoController.mpas,378 :: 		@submenu4: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED598
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__DisplayLED598:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED148
;ThermoController.mpas,379 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,380 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,381 :: 		for i:=1 to 8 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED153:
;ThermoController.mpas,382 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED599
	MOVLW       8
	XORWF       _i+0, 0 
L__DisplayLED599:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED156
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED153
L__DisplayLED156:
;ThermoController.mpas,383 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED148:
;ThermoController.mpas,384 :: 		@submenu5[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED600
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__DisplayLED600:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED159
;ThermoController.mpas,385 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,386 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,387 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,388 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED159:
;ThermoController.mpas,389 :: 		@submenu5[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED601
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__DisplayLED601:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED165
;ThermoController.mpas,390 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,391 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,392 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,393 :: 		end;
	GOTO        L__DisplayLED57
L__DisplayLED165:
L__DisplayLED57:
;ThermoController.mpas,395 :: 		end;
L__DisplayLED55:
;ThermoController.mpas,399 :: 		@root: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_root+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED602
	MOVLW       _root+0
	XORWF       _current_node+0, 0 
L__DisplayLED602:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED172
;ThermoController.mpas,401 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED172:
;ThermoController.mpas,402 :: 		@submenu1: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED603
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__DisplayLED603:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED178
;ThermoController.mpas,404 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED178:
;ThermoController.mpas,405 :: 		@submenu2[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED604
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__DisplayLED604:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED184
;ThermoController.mpas,406 :: 		if funcDays[index] = true then
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
	GOTO        L__DisplayLED189
;ThermoController.mpas,407 :: 		funcDaysStatus := ' ON'
	MOVLW       32
	MOVWF       _funcDaysStatus+0 
	MOVLW       79
	MOVWF       _funcDaysStatus+1 
	MOVLW       78
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
	GOTO        L__DisplayLED190
;ThermoController.mpas,408 :: 		else
L__DisplayLED189:
;ThermoController.mpas,409 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
L__DisplayLED190:
;ThermoController.mpas,410 :: 		strcat2(submenu2[1].row2,funcDaysString[index], funcDaysStatus);
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
;ThermoController.mpas,411 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED184:
;ThermoController.mpas,412 :: 		@submenu2[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED605
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__DisplayLED605:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED193
;ThermoController.mpas,413 :: 		strcat2(submenu2[2].row2, '','');
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
;ThermoController.mpas,414 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'S: ');
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
;ThermoController.mpas,415 :: 		ByteToStr(start_hour, min_temp_string);
	MOVF        _start_hour+0, 0 
	MOVWF       FARG_ByteToStr_input+0 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_ByteToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_ByteToStr_output+1 
	CALL        _ByteToStr+0, 0
;ThermoController.mpas,416 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,417 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'     E: ');
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
;ThermoController.mpas,418 :: 		IntToStr(end_hour, min_temp_string);
	MOVF        _end_hour+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,419 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,420 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED193:
;ThermoController.mpas,421 :: 		@submenu2[3]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED606
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__DisplayLED606:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED199
;ThermoController.mpas,422 :: 		strcat2(submenu2[2].row2, '','');
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
;ThermoController.mpas,423 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'Max: ');
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
;ThermoController.mpas,424 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,425 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,426 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'   Min: ');
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
;ThermoController.mpas,427 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,428 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,429 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED199:
;ThermoController.mpas,430 :: 		@submenu3: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED607
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__DisplayLED607:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED205
;ThermoController.mpas,431 :: 		strcat2(submenu3.row1, '','');
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
;ThermoController.mpas,432 :: 		strcat2(submenu3.row1, submenu3.row1,'Locked:    ');
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
;ThermoController.mpas,433 :: 		if locked then
	MOVF        _locked+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED210
;ThermoController.mpas,434 :: 		strcat2(submenu3.row1, submenu3.row1,' ON')
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
	GOTO        L__DisplayLED211
;ThermoController.mpas,435 :: 		else
L__DisplayLED210:
;ThermoController.mpas,436 :: 		strcat2(submenu3.row1, submenu3.row1,'OFF');
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
L__DisplayLED211:
;ThermoController.mpas,437 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED205:
;ThermoController.mpas,438 :: 		@submenu4: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED608
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__DisplayLED608:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED214
;ThermoController.mpas,439 :: 		strcat2(submenu4.row2, '','');
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
;ThermoController.mpas,440 :: 		if locked then
	MOVF        _locked+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED219
;ThermoController.mpas,441 :: 		strcat2(submenu4.row2, submenu4.row2,'       ON')
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
	GOTO        L__DisplayLED220
;ThermoController.mpas,442 :: 		else
L__DisplayLED219:
;ThermoController.mpas,443 :: 		strcat2(submenu4.row2, submenu4.row2,'      OFF');
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
L__DisplayLED220:
;ThermoController.mpas,444 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED214:
;ThermoController.mpas,445 :: 		@submenu5[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED609
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__DisplayLED609:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED223
;ThermoController.mpas,447 :: 		1: submenu5[1].row2 := 'All four rooms ';
	MOVF        _room_disp+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED230
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
	GOTO        L__DisplayLED227
L__DisplayLED230:
;ThermoController.mpas,448 :: 		2: submenu5[1].row2 := 'Room1 + Room2  ';
	MOVF        _room_disp+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED233
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
	GOTO        L__DisplayLED227
L__DisplayLED233:
;ThermoController.mpas,449 :: 		3: submenu5[1].row2 := 'Room1 + Room3  ';
	MOVF        _room_disp+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED236
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
	GOTO        L__DisplayLED227
L__DisplayLED236:
;ThermoController.mpas,450 :: 		4: submenu5[1].row2 := 'Room1 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED239
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
	GOTO        L__DisplayLED227
L__DisplayLED239:
;ThermoController.mpas,451 :: 		5: submenu5[1].row2 := 'Room2 + Room3  ';
	MOVF        _room_disp+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED242
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
	GOTO        L__DisplayLED227
L__DisplayLED242:
;ThermoController.mpas,452 :: 		6: submenu5[1].row2 := 'Room2 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED245
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
	GOTO        L__DisplayLED227
L__DisplayLED245:
;ThermoController.mpas,453 :: 		7: submenu5[1].row2 := 'Room3 + Room4  ';
	MOVF        _room_disp+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED248
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
	GOTO        L__DisplayLED227
L__DisplayLED248:
;ThermoController.mpas,454 :: 		8: submenu5[1].row2 := 'Room1 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED251
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
	GOTO        L__DisplayLED227
L__DisplayLED251:
;ThermoController.mpas,455 :: 		9: submenu5[1].row2 := 'Room2 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       9
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED254
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
	GOTO        L__DisplayLED227
L__DisplayLED254:
;ThermoController.mpas,456 :: 		10: submenu5[1].row2 := 'Room3 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       10
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED257
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
	GOTO        L__DisplayLED227
L__DisplayLED257:
;ThermoController.mpas,457 :: 		11: submenu5[1].row2 := 'Room4 only     ';
	MOVF        _room_disp+0, 0 
	XORLW       11
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED260
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
	GOTO        L__DisplayLED227
L__DisplayLED260:
L__DisplayLED227:
;ThermoController.mpas,459 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED223:
;ThermoController.mpas,460 :: 		@submenu5[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED610
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__DisplayLED610:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED263
;ThermoController.mpas,461 :: 		if disp_mode then
	MOVF        _disp_mode+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED268
;ThermoController.mpas,462 :: 		submenu5[2].row2 := 'Mode 1'
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
	GOTO        L__DisplayLED269
;ThermoController.mpas,463 :: 		else
L__DisplayLED268:
;ThermoController.mpas,464 :: 		submenu5[2].row2 := 'Mode 2';
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
L__DisplayLED269:
;ThermoController.mpas,465 :: 		end;
	GOTO        L__DisplayLED169
L__DisplayLED263:
L__DisplayLED169:
;ThermoController.mpas,468 :: 		LCD_OUT(1,1,current_node^.row1);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _current_node+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _current_node+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ThermoController.mpas,469 :: 		LCD_OUT(2,1,current_node^.row2);
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
;ThermoController.mpas,472 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,473 :: 		end;
	GOTO        L__DisplayLED44
;ThermoController.mpas,474 :: 		end;
	RETURN      0
; end of _DisplayLED

_ReadKeys:

;ThermoController.mpas,477 :: 		begin
;ThermoController.mpas,478 :: 		while true do
L__ReadKeys272:
;ThermoController.mpas,480 :: 		OS_Delay(20);
	MOVLW       20
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,481 :: 		if Button(PORTE, 2, 1, 1) then old_enter := 255;
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
	GOTO        L__ReadKeys277
	MOVLW       255
	MOVWF       _old_enter+0 
L__ReadKeys277:
;ThermoController.mpas,482 :: 		if old_enter and Button(PORTE, 2, 1, 0) then
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
	GOTO        L__ReadKeys280
;ThermoController.mpas,484 :: 		enter := 255;
	MOVLW       255
	MOVWF       _enter+0 
;ThermoController.mpas,485 :: 		old_enter := 0;
	CLRF        _old_enter+0 
;ThermoController.mpas,486 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,487 :: 		end;
L__ReadKeys280:
;ThermoController.mpas,488 :: 		if Button(PORTB, 4, 1, 1) then old_esc := 255;
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
	GOTO        L__ReadKeys283
	MOVLW       255
	MOVWF       _old_esc+0 
L__ReadKeys283:
;ThermoController.mpas,489 :: 		if old_esc and Button(PORTB, 4, 1, 0) then
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
	GOTO        L__ReadKeys286
;ThermoController.mpas,491 :: 		esc := 255;
	MOVLW       255
	MOVWF       _esc+0 
;ThermoController.mpas,492 :: 		old_esc := 0;
	CLRF        _old_esc+0 
;ThermoController.mpas,493 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,494 :: 		end;
L__ReadKeys286:
;ThermoController.mpas,495 :: 		if Button(PORTE, 1, 1, 1) then old_up := 255;
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
	GOTO        L__ReadKeys289
	MOVLW       255
	MOVWF       _old_up+0 
L__ReadKeys289:
;ThermoController.mpas,496 :: 		if old_up and Button(PORTE, 1, 1, 0) then
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
	GOTO        L__ReadKeys292
;ThermoController.mpas,498 :: 		up := 255;
	MOVLW       255
	MOVWF       _up+0 
;ThermoController.mpas,499 :: 		old_up := 0;
	CLRF        _old_up+0 
;ThermoController.mpas,500 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,501 :: 		end;
L__ReadKeys292:
;ThermoController.mpas,502 :: 		if Button(PORTE, 0, 1, 1) then old_down := 255;
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
	GOTO        L__ReadKeys295
	MOVLW       255
	MOVWF       _old_down+0 
L__ReadKeys295:
;ThermoController.mpas,503 :: 		if old_down and Button(PORTE, 0, 1, 0) then
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
	GOTO        L__ReadKeys298
;ThermoController.mpas,505 :: 		down := 255;
	MOVLW       255
	MOVWF       _down+0 
;ThermoController.mpas,506 :: 		old_down := 0;
	CLRF        _old_down+0 
;ThermoController.mpas,507 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,508 :: 		end;
L__ReadKeys298:
;ThermoController.mpas,510 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,511 :: 		end;
	GOTO        L__ReadKeys272
;ThermoController.mpas,512 :: 		end;
	RETURN      0
; end of _ReadKeys

_ReadTime:

;ThermoController.mpas,515 :: 		begin
;ThermoController.mpas,516 :: 		while true do
L__ReadTime302:
;ThermoController.mpas,518 :: 		OS_Delay(50);
	MOVLW       50
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,521 :: 		Ds1307_Get_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+1 
	CALL        _Ds1307_Get_TimeDate+0, 0
;ThermoController.mpas,522 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,527 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,528 :: 		end;
	GOTO        L__ReadTime302
;ThermoController.mpas,529 :: 		end;
	RETURN      0
; end of _ReadTime

_SaveTime:

;ThermoController.mpas,532 :: 		begin
;ThermoController.mpas,533 :: 		while true do
L__SaveTime308:
;ThermoController.mpas,535 :: 		OS_WaitSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,536 :: 		Ds1307_Set_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+1 
	CALL        _Ds1307_Set_TimeDate+0, 0
;ThermoController.mpas,537 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,538 :: 		end;
	GOTO        L__SaveTime308
;ThermoController.mpas,539 :: 		end;
	RETURN      0
; end of _SaveTime

_NavigateMenu:

;ThermoController.mpas,542 :: 		begin
;ThermoController.mpas,543 :: 		while true do
L__NavigateMenu314:
;ThermoController.mpas,545 :: 		OS_WaitSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,546 :: 		if enter = 255 then
	MOVF        _enter+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu319
;ThermoController.mpas,548 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu611
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu611:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu612
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu612:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu613
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu613:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu614
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu614:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu322
;ThermoController.mpas,550 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu325
;ThermoController.mpas,552 :: 		edit := true;
	MOVLW       255
	MOVWF       _edit+0 
;ThermoController.mpas,553 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,554 :: 		end
	GOTO        L__NavigateMenu326
;ThermoController.mpas,555 :: 		else
L__NavigateMenu325:
;ThermoController.mpas,557 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,558 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu328
;ThermoController.mpas,559 :: 		edit := false;
	CLRF        _edit+0 
L__NavigateMenu328:
;ThermoController.mpas,560 :: 		end;
L__NavigateMenu326:
;ThermoController.mpas,561 :: 		end
	GOTO        L__NavigateMenu323
;ThermoController.mpas,562 :: 		else
L__NavigateMenu322:
;ThermoController.mpas,564 :: 		if  (current_node = @submenu3) or (current_node = @submenu4) or (current_node = @submenu5[1]) or (current_node = @submenu5[2]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu615
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu615:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu616
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu616:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu617
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu617:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu618
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu618:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu331
;ThermoController.mpas,566 :: 		edit := not true;
	CLRF        _edit+0 
;ThermoController.mpas,567 :: 		end
L__NavigateMenu331:
;ThermoController.mpas,568 :: 		end;
L__NavigateMenu323:
;ThermoController.mpas,571 :: 		current_node := current_node^.child;
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
;ThermoController.mpas,572 :: 		enter := 0;
	CLRF        _enter+0 
;ThermoController.mpas,573 :: 		end;
L__NavigateMenu319:
;ThermoController.mpas,574 :: 		if esc = 255 then
	MOVF        _esc+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu334
;ThermoController.mpas,576 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu619
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu619:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu620
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu620:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu621
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu621:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu622
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu622:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu337
;ThermoController.mpas,578 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu340
;ThermoController.mpas,580 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,582 :: 		if (current_node = @submenu1) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu623
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu623:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu343
;ThermoController.mpas,584 :: 		OS_SignalSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,585 :: 		end;
L__NavigateMenu343:
;ThermoController.mpas,586 :: 		end
	GOTO        L__NavigateMenu341
;ThermoController.mpas,587 :: 		else
L__NavigateMenu340:
;ThermoController.mpas,589 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu346
;ThermoController.mpas,591 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,592 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,593 :: 		end
	GOTO        L__NavigateMenu347
;ThermoController.mpas,594 :: 		else
L__NavigateMenu346:
;ThermoController.mpas,596 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,597 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,598 :: 		end;
L__NavigateMenu347:
;ThermoController.mpas,599 :: 		end
L__NavigateMenu341:
;ThermoController.mpas,600 :: 		end
	GOTO        L__NavigateMenu338
;ThermoController.mpas,601 :: 		else
L__NavigateMenu337:
;ThermoController.mpas,602 :: 		if (current_node = @submenu3) or (current_node = @submenu4) or (current_node = @submenu5[1]) or (current_node = @submenu5[2]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu624
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu624:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu625
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu625:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu626
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu626:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu627
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu627:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu349
;ThermoController.mpas,604 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,605 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,606 :: 		end
	GOTO        L__NavigateMenu350
;ThermoController.mpas,607 :: 		else
L__NavigateMenu349:
;ThermoController.mpas,609 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,610 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,611 :: 		end;
L__NavigateMenu350:
L__NavigateMenu338:
;ThermoController.mpas,612 :: 		esc := 0;
	CLRF        _esc+0 
;ThermoController.mpas,613 :: 		end;
L__NavigateMenu334:
;ThermoController.mpas,615 :: 		if up = 255 then
	MOVF        _up+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu352
;ThermoController.mpas,618 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu628
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu628:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu357
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu359
;ThermoController.mpas,620 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,622 :: 		3:     if timedate.Year = 99 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu629
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu629:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu364
	MOVF        _timedate+6, 0 
	XORLW       99
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu366
;ThermoController.mpas,623 :: 		timedate.Year := 0
	CLRF        _timedate+6 
	GOTO        L__NavigateMenu367
;ThermoController.mpas,624 :: 		else timedate.Year := timeDate.Year + 1;
L__NavigateMenu366:
	MOVF        _timedate+6, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu367:
	GOTO        L__NavigateMenu361
L__NavigateMenu364:
;ThermoController.mpas,625 :: 		2:     if timedate.Month = 12 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu630
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu630:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu370
	MOVF        _timedate+5, 0 
	XORLW       12
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu372
;ThermoController.mpas,626 :: 		timedate.Month := 1
	MOVLW       1
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu373
;ThermoController.mpas,627 :: 		else timedate.Month := timeDate.Month + 1;
L__NavigateMenu372:
	MOVF        _timedate+5, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu373:
	GOTO        L__NavigateMenu361
L__NavigateMenu370:
;ThermoController.mpas,628 :: 		1:     if timedate.Date = maxday[timedate.Month] then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu631
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu631:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu376
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
	GOTO        L__NavigateMenu378
;ThermoController.mpas,629 :: 		timedate.Date := 1
	MOVLW       1
	MOVWF       _timedate+4 
	GOTO        L__NavigateMenu379
;ThermoController.mpas,630 :: 		else timedate.Date := timeDate.Date + 1;
L__NavigateMenu378:
	MOVF        _timedate+4, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu379:
	GOTO        L__NavigateMenu361
L__NavigateMenu376:
;ThermoController.mpas,631 :: 		4:     if timedate.Hours = 23 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu632
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu632:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu382
	MOVF        _timedate+2, 0 
	XORLW       23
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu384
;ThermoController.mpas,632 :: 		timedate.Hours := 0
	CLRF        _timedate+2 
	GOTO        L__NavigateMenu385
;ThermoController.mpas,633 :: 		else timedate.Hours := timeDate.Hours + 1;
L__NavigateMenu384:
	MOVF        _timedate+2, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu385:
	GOTO        L__NavigateMenu361
L__NavigateMenu382:
;ThermoController.mpas,634 :: 		5:     if timedate.Minutes = 59 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu633
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu633:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu388
	MOVF        _timedate+1, 0 
	XORLW       59
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu390
;ThermoController.mpas,635 :: 		timedate.Minutes := 0
	CLRF        _timedate+1 
	GOTO        L__NavigateMenu391
;ThermoController.mpas,636 :: 		else timedate.Minutes := timeDate.Minutes + 1;
L__NavigateMenu390:
	MOVF        _timedate+1, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu391:
	GOTO        L__NavigateMenu361
L__NavigateMenu388:
L__NavigateMenu361:
;ThermoController.mpas,638 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,639 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,642 :: 		end
	GOTO        L__NavigateMenu360
;ThermoController.mpas,643 :: 		else if underscore then
L__NavigateMenu359:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu393
;ThermoController.mpas,644 :: 		index := (index  mod 5) + 1;
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
L__NavigateMenu393:
L__NavigateMenu360:
	GOTO        L__NavigateMenu354
L__NavigateMenu357:
;ThermoController.mpas,645 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu634
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu634:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu397
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu399
;ThermoController.mpas,647 :: 		funcDays[index] := not funcDays[index];
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
;ThermoController.mpas,648 :: 		end
	GOTO        L__NavigateMenu400
;ThermoController.mpas,649 :: 		else
L__NavigateMenu399:
;ThermoController.mpas,651 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu402
;ThermoController.mpas,653 :: 		index := (index  mod 7) + 1;
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
;ThermoController.mpas,654 :: 		end
	GOTO        L__NavigateMenu403
;ThermoController.mpas,655 :: 		else
L__NavigateMenu402:
;ThermoController.mpas,657 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,658 :: 		end;
L__NavigateMenu403:
;ThermoController.mpas,659 :: 		end;
L__NavigateMenu400:
	GOTO        L__NavigateMenu354
L__NavigateMenu397:
;ThermoController.mpas,660 :: 		@submenu2[2]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu635
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu635:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu406
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu408
;ThermoController.mpas,662 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu636
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu636:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu411
;ThermoController.mpas,664 :: 		start_hour := (start_hour + 1) mod 24;
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
;ThermoController.mpas,665 :: 		end
	GOTO        L__NavigateMenu412
;ThermoController.mpas,666 :: 		else
L__NavigateMenu411:
;ThermoController.mpas,668 :: 		end_hour := (end_hour + 1) mod 24;
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
;ThermoController.mpas,669 :: 		end;
L__NavigateMenu412:
;ThermoController.mpas,670 :: 		end
	GOTO        L__NavigateMenu409
;ThermoController.mpas,671 :: 		else
L__NavigateMenu408:
;ThermoController.mpas,673 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu414
;ThermoController.mpas,675 :: 		index := (index  mod 2) + 1;
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
;ThermoController.mpas,676 :: 		end
	GOTO        L__NavigateMenu415
;ThermoController.mpas,677 :: 		else
L__NavigateMenu414:
;ThermoController.mpas,679 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,680 :: 		end;
L__NavigateMenu415:
;ThermoController.mpas,681 :: 		end;
L__NavigateMenu409:
	GOTO        L__NavigateMenu354
L__NavigateMenu406:
;ThermoController.mpas,682 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu637
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu637:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu418
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu420
;ThermoController.mpas,684 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu638
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu638:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu423
;ThermoController.mpas,686 :: 		min_temp := min_temp + 1;
	INFSNZ      _min_temp+0, 1 
	INCF        _min_temp+1, 1 
;ThermoController.mpas,687 :: 		if (min_temp > max_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu639
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu639:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu426
;ThermoController.mpas,688 :: 		min_temp := max_temp;
	MOVF        _max_temp+0, 0 
	MOVWF       _min_temp+0 
	MOVF        _max_temp+1, 0 
	MOVWF       _min_temp+1 
L__NavigateMenu426:
;ThermoController.mpas,689 :: 		end
	GOTO        L__NavigateMenu424
;ThermoController.mpas,690 :: 		else
L__NavigateMenu423:
;ThermoController.mpas,692 :: 		max_temp := max_temp + 1;
	INFSNZ      _max_temp+0, 1 
	INCF        _max_temp+1, 1 
;ThermoController.mpas,693 :: 		if (max_temp > 50) then
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _max_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu640
	MOVF        _max_temp+0, 0 
	SUBLW       50
L__NavigateMenu640:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu429
;ThermoController.mpas,694 :: 		max_temp := 50;
	MOVLW       50
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
L__NavigateMenu429:
;ThermoController.mpas,695 :: 		end;
L__NavigateMenu424:
;ThermoController.mpas,696 :: 		end
	GOTO        L__NavigateMenu421
;ThermoController.mpas,697 :: 		else
L__NavigateMenu420:
;ThermoController.mpas,699 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu432
;ThermoController.mpas,701 :: 		index := (index  mod 2) + 1;
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
;ThermoController.mpas,702 :: 		end
	GOTO        L__NavigateMenu433
;ThermoController.mpas,703 :: 		else
L__NavigateMenu432:
;ThermoController.mpas,705 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,706 :: 		end;
L__NavigateMenu433:
;ThermoController.mpas,707 :: 		end;
L__NavigateMenu421:
	GOTO        L__NavigateMenu354
L__NavigateMenu418:
;ThermoController.mpas,708 :: 		@submenu3: locked := not locked;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu641
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu641:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu436
	COMF        _locked+0, 1 
	GOTO        L__NavigateMenu354
L__NavigateMenu436:
;ThermoController.mpas,709 :: 		@submenu4: status_led := not status_led ;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu642
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu642:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu439
	COMF        _status_led+0, 1 
	GOTO        L__NavigateMenu354
L__NavigateMenu439:
;ThermoController.mpas,710 :: 		@submenu5[1]: room_disp := (room_disp mod 11) + 1;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu643
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu643:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu442
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
	GOTO        L__NavigateMenu354
L__NavigateMenu442:
;ThermoController.mpas,711 :: 		@submenu5[2]: disp_mode := not disp_mode
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu644
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu644:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu445
	COMF        _disp_mode+0, 1 
;ThermoController.mpas,713 :: 		else
	GOTO        L__NavigateMenu354
L__NavigateMenu445:
;ThermoController.mpas,714 :: 		current_node := current_node^.next;
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
L__NavigateMenu354:
;ThermoController.mpas,716 :: 		up := 0;
	CLRF        _up+0 
;ThermoController.mpas,717 :: 		end;
L__NavigateMenu352:
;ThermoController.mpas,719 :: 		if down = 255 then
	MOVF        _down+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu447
;ThermoController.mpas,722 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu645
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu645:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu452
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu454
;ThermoController.mpas,724 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,726 :: 		3:     if timedate.Year = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu646
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu646:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu459
	MOVF        _timedate+6, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu461
;ThermoController.mpas,727 :: 		timedate.Year := 99
	MOVLW       99
	MOVWF       _timedate+6 
	GOTO        L__NavigateMenu462
;ThermoController.mpas,728 :: 		else timedate.Year := timeDate.Year - 1;
L__NavigateMenu461:
	DECF        _timedate+6, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu462:
	GOTO        L__NavigateMenu456
L__NavigateMenu459:
;ThermoController.mpas,729 :: 		2:     if timedate.Month = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu647
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu647:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu465
	MOVF        _timedate+5, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu467
;ThermoController.mpas,730 :: 		timedate.Month := 12
	MOVLW       12
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu468
;ThermoController.mpas,731 :: 		else timedate.Month := timeDate.Month - 1;
L__NavigateMenu467:
	DECF        _timedate+5, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu468:
	GOTO        L__NavigateMenu456
L__NavigateMenu465:
;ThermoController.mpas,732 :: 		1:     if timedate.Date = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu648
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu648:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu471
	MOVF        _timedate+4, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu473
;ThermoController.mpas,733 :: 		timedate.Date := maxday[timedate.Month]
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
	GOTO        L__NavigateMenu474
;ThermoController.mpas,734 :: 		else timedate.Date := timeDate.Date - 1;
L__NavigateMenu473:
	DECF        _timedate+4, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu474:
	GOTO        L__NavigateMenu456
L__NavigateMenu471:
;ThermoController.mpas,735 :: 		4:     if timedate.Hours = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu649
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu649:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu477
	MOVF        _timedate+2, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu479
;ThermoController.mpas,736 :: 		timedate.Hours := 23
	MOVLW       23
	MOVWF       _timedate+2 
	GOTO        L__NavigateMenu480
;ThermoController.mpas,737 :: 		else timedate.Hours := timeDate.Hours - 1;
L__NavigateMenu479:
	DECF        _timedate+2, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu480:
	GOTO        L__NavigateMenu456
L__NavigateMenu477:
;ThermoController.mpas,738 :: 		5:     if timedate.Minutes = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu650
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu650:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu483
	MOVF        _timedate+1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu485
;ThermoController.mpas,739 :: 		timedate.Minutes := 59
	MOVLW       59
	MOVWF       _timedate+1 
	GOTO        L__NavigateMenu486
;ThermoController.mpas,740 :: 		else timedate.Minutes := timeDate.Minutes - 1;
L__NavigateMenu485:
	DECF        _timedate+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu486:
	GOTO        L__NavigateMenu456
L__NavigateMenu483:
L__NavigateMenu456:
;ThermoController.mpas,742 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,743 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,746 :: 		end
	GOTO        L__NavigateMenu455
;ThermoController.mpas,747 :: 		else if underscore then
L__NavigateMenu454:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu488
;ThermoController.mpas,748 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu651
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu651:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu491
;ThermoController.mpas,749 :: 		index := 5
	MOVLW       5
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu492
;ThermoController.mpas,750 :: 		else
L__NavigateMenu491:
;ThermoController.mpas,751 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu492:
L__NavigateMenu488:
L__NavigateMenu455:
	GOTO        L__NavigateMenu449
L__NavigateMenu452:
;ThermoController.mpas,752 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu652
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu652:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu495
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu497
;ThermoController.mpas,754 :: 		funcDays[index] := not funcDays[index];
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
;ThermoController.mpas,755 :: 		end
	GOTO        L__NavigateMenu498
;ThermoController.mpas,756 :: 		else
L__NavigateMenu497:
;ThermoController.mpas,758 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu500
;ThermoController.mpas,760 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu653
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu653:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu503
;ThermoController.mpas,761 :: 		index := 7
	MOVLW       7
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu504
;ThermoController.mpas,762 :: 		else
L__NavigateMenu503:
;ThermoController.mpas,763 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu504:
;ThermoController.mpas,764 :: 		end
	GOTO        L__NavigateMenu501
;ThermoController.mpas,765 :: 		else
L__NavigateMenu500:
;ThermoController.mpas,767 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,768 :: 		end;
L__NavigateMenu501:
;ThermoController.mpas,769 :: 		end;
L__NavigateMenu498:
	GOTO        L__NavigateMenu449
L__NavigateMenu495:
;ThermoController.mpas,770 :: 		@submenu2[2]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu654
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu654:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu507
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu509
;ThermoController.mpas,772 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu655
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu655:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu512
;ThermoController.mpas,774 :: 		if (start_hour = 0) then
	MOVF        _start_hour+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu515
;ThermoController.mpas,775 :: 		start_hour := 23
	MOVLW       23
	MOVWF       _start_hour+0 
	GOTO        L__NavigateMenu516
;ThermoController.mpas,776 :: 		else
L__NavigateMenu515:
;ThermoController.mpas,777 :: 		start_hour := start_hour - 1;
	DECF        _start_hour+0, 1 
L__NavigateMenu516:
;ThermoController.mpas,778 :: 		end
	GOTO        L__NavigateMenu513
;ThermoController.mpas,779 :: 		else
L__NavigateMenu512:
;ThermoController.mpas,781 :: 		if (end_hour = 0) then
	MOVF        _end_hour+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu518
;ThermoController.mpas,782 :: 		end_hour := 23
	MOVLW       23
	MOVWF       _end_hour+0 
	GOTO        L__NavigateMenu519
;ThermoController.mpas,783 :: 		else
L__NavigateMenu518:
;ThermoController.mpas,784 :: 		end_hour := end_hour - 1;
	DECF        _end_hour+0, 1 
L__NavigateMenu519:
;ThermoController.mpas,785 :: 		end;
L__NavigateMenu513:
;ThermoController.mpas,786 :: 		end
	GOTO        L__NavigateMenu510
;ThermoController.mpas,787 :: 		else
L__NavigateMenu509:
;ThermoController.mpas,789 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu521
;ThermoController.mpas,791 :: 		index := (index  mod 2) + 1;
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
;ThermoController.mpas,792 :: 		end
	GOTO        L__NavigateMenu522
;ThermoController.mpas,793 :: 		else
L__NavigateMenu521:
;ThermoController.mpas,795 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,796 :: 		end;
L__NavigateMenu522:
;ThermoController.mpas,797 :: 		end;
L__NavigateMenu510:
	GOTO        L__NavigateMenu449
L__NavigateMenu507:
;ThermoController.mpas,798 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu656
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu656:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu525
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu527
;ThermoController.mpas,800 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu657
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu657:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu530
;ThermoController.mpas,802 :: 		min_temp := min_temp - 1;
	MOVLW       1
	SUBWF       _min_temp+0, 1 
	MOVLW       0
	SUBWFB      _min_temp+1, 1 
;ThermoController.mpas,803 :: 		if (min_temp < 0) then
	MOVLW       128
	XORWF       _min_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu658
	MOVLW       0
	SUBWF       _min_temp+0, 0 
L__NavigateMenu658:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu533
;ThermoController.mpas,804 :: 		min_temp := 0;
	CLRF        _min_temp+0 
	CLRF        _min_temp+1 
L__NavigateMenu533:
;ThermoController.mpas,805 :: 		end
	GOTO        L__NavigateMenu531
;ThermoController.mpas,806 :: 		else
L__NavigateMenu530:
;ThermoController.mpas,808 :: 		max_temp := max_temp - 1;
	MOVLW       1
	SUBWF       _max_temp+0, 1 
	MOVLW       0
	SUBWFB      _max_temp+1, 1 
;ThermoController.mpas,809 :: 		if (max_temp < min_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu659
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu659:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu536
;ThermoController.mpas,810 :: 		max_temp := min_temp;
	MOVF        _min_temp+0, 0 
	MOVWF       _max_temp+0 
	MOVF        _min_temp+1, 0 
	MOVWF       _max_temp+1 
L__NavigateMenu536:
;ThermoController.mpas,811 :: 		end;
L__NavigateMenu531:
;ThermoController.mpas,812 :: 		end
	GOTO        L__NavigateMenu528
;ThermoController.mpas,813 :: 		else
L__NavigateMenu527:
;ThermoController.mpas,815 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu539
;ThermoController.mpas,817 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu660
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu660:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu542
;ThermoController.mpas,818 :: 		index := 2
	MOVLW       2
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu543
;ThermoController.mpas,819 :: 		else
L__NavigateMenu542:
;ThermoController.mpas,820 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
L__NavigateMenu543:
;ThermoController.mpas,821 :: 		end
	GOTO        L__NavigateMenu540
;ThermoController.mpas,822 :: 		else
L__NavigateMenu539:
;ThermoController.mpas,824 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,825 :: 		end;
L__NavigateMenu540:
;ThermoController.mpas,826 :: 		end;
L__NavigateMenu528:
	GOTO        L__NavigateMenu449
L__NavigateMenu525:
;ThermoController.mpas,827 :: 		@submenu3: locked := not locked;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu661
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu661:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu546
	COMF        _locked+0, 1 
	GOTO        L__NavigateMenu449
L__NavigateMenu546:
;ThermoController.mpas,828 :: 		@submenu4: status_led := not status_led;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu662
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu662:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu549
	COMF        _status_led+0, 1 
	GOTO        L__NavigateMenu449
L__NavigateMenu549:
;ThermoController.mpas,829 :: 		@submenu5[1]: if room_disp = 1 then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu663
	MOVLW       _submenu5+0
	XORWF       _current_node+0, 0 
L__NavigateMenu663:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu552
	MOVF        _room_disp+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu554
;ThermoController.mpas,830 :: 		room_disp := 11
	MOVLW       11
	MOVWF       _room_disp+0 
	GOTO        L__NavigateMenu555
;ThermoController.mpas,831 :: 		else
L__NavigateMenu554:
;ThermoController.mpas,832 :: 		room_disp := room_disp - 1;
	DECF        _room_disp+0, 1 
L__NavigateMenu555:
	GOTO        L__NavigateMenu449
L__NavigateMenu552:
;ThermoController.mpas,833 :: 		@submenu5[2]: disp_mode := not disp_mode
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu5+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu664
	MOVLW       _submenu5+42
	XORWF       _current_node+0, 0 
L__NavigateMenu664:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu558
	COMF        _disp_mode+0, 1 
;ThermoController.mpas,834 :: 		else
	GOTO        L__NavigateMenu449
L__NavigateMenu558:
;ThermoController.mpas,835 :: 		current_node := current_node^.prev;
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
L__NavigateMenu449:
;ThermoController.mpas,837 :: 		down := 0;
	CLRF        _down+0 
;ThermoController.mpas,838 :: 		end;
L__NavigateMenu447:
;ThermoController.mpas,839 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,840 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,841 :: 		end;
	GOTO        L__NavigateMenu314
;ThermoController.mpas,842 :: 		end;
	RETURN      0
; end of _NavigateMenu

_main:

;ThermoController.mpas,844 :: 		begin
;ThermoController.mpas,847 :: 		Delay_ms(100);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L__main560:
	DECFSZ      R13, 1, 1
	BRA         L__main560
	DECFSZ      R12, 1, 1
	BRA         L__main560
	DECFSZ      R11, 1, 1
	BRA         L__main560
	NOP
;ThermoController.mpas,848 :: 		LATC:=0xFF;
	MOVLW       255
	MOVWF       LATC+0 
;ThermoController.mpas,849 :: 		TRISC:=0xff;
	MOVLW       255
	MOVWF       TRISC+0 
;ThermoController.mpas,850 :: 		LATD:=0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;ThermoController.mpas,851 :: 		TRISD:=0xff;
	MOVLW       255
	MOVWF       TRISD+0 
;ThermoController.mpas,853 :: 		TRISC.2 := 0; //out latc.2
	BCF         TRISC+0, 2 
;ThermoController.mpas,854 :: 		Trisb.5 := 0; //out latb.5
	BCF         TRISB+0, 5 
;ThermoController.mpas,855 :: 		Trisb.4 := 1; //in portb.4
	BSF         TRISB+0, 4 
;ThermoController.mpas,856 :: 		TrisE.0 := 1; //in portE.0
	BSF         TRISE+0, 0 
;ThermoController.mpas,857 :: 		TrisE.1 := 1; //in portE.1
	BSF         TRISE+0, 1 
;ThermoController.mpas,858 :: 		TrisE.2 := 1; //in portE.2
	BSF         TRISE+0, 2 
;ThermoController.mpas,859 :: 		TrisD.0 := 1; //
	BSF         TRISD+0, 0 
;ThermoController.mpas,860 :: 		TrisD.1 := 1;
	BSF         TRISD+0, 1 
;ThermoController.mpas,861 :: 		TrisD.2 := 1;
	BSF         TRISD+0, 2 
;ThermoController.mpas,862 :: 		TrisD.3 := 1;
	BSF         TRISD+0, 3 
;ThermoController.mpas,865 :: 		Lcd_Init();                        // Initialize LCD
	CALL        _Lcd_Init+0, 0
;ThermoController.mpas,866 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,867 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,870 :: 		for i:=1 to 4 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main562:
;ThermoController.mpas,871 :: 		Temp[i] := 0;
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
	GOTO        L__main665
	MOVLW       4
	XORWF       _i+0, 0 
L__main665:
	BTFSC       STATUS+0, 2 
	GOTO        L__main565
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main562
L__main565:
;ThermoController.mpas,872 :: 		temp_index := 0;
	CLRF        _Temp_index+0 
;ThermoController.mpas,875 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main567:
;ThermoController.mpas,876 :: 		funcDays[i] := false;
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
	GOTO        L__main666
	MOVLW       7
	XORWF       _i+0, 0 
L__main666:
	BTFSC       STATUS+0, 2 
	GOTO        L__main570
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main567
L__main570:
;ThermoController.mpas,877 :: 		funcDaysString[1]:= 'Monday       ';
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
;ThermoController.mpas,878 :: 		funcDaysString[2]:= 'Tuesday      ';
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
;ThermoController.mpas,879 :: 		funcDaysString[3]:= 'Wednsday     ';
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
;ThermoController.mpas,880 :: 		funcDaysString[4]:= 'Thursday     ';
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
;ThermoController.mpas,881 :: 		funcDaysString[5]:= 'Friday       ';
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
;ThermoController.mpas,882 :: 		funcDaysString[6]:= 'Saturday     ';
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
;ThermoController.mpas,883 :: 		funcDaysString[7]:= 'Sunday       ';
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
;ThermoController.mpas,884 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
;ThermoController.mpas,885 :: 		min_temp := 19;
	MOVLW       19
	MOVWF       _min_temp+0 
	MOVLW       0
	MOVWF       _min_temp+1 
;ThermoController.mpas,886 :: 		max_temp := 22;
	MOVLW       22
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
;ThermoController.mpas,887 :: 		start_hour := 7;
	MOVLW       7
	MOVWF       _start_hour+0 
;ThermoController.mpas,888 :: 		end_hour := 21;
	MOVLW       21
	MOVWF       _end_hour+0 
;ThermoController.mpas,890 :: 		locked := false;
	CLRF        _locked+0 
;ThermoController.mpas,891 :: 		status_led := true;
	MOVLW       255
	MOVWF       _status_led+0 
;ThermoController.mpas,893 :: 		room_disp:= 1;
	MOVLW       1
	MOVWF       _room_disp+0 
;ThermoController.mpas,894 :: 		disp_mode := true;
	MOVLW       255
	MOVWF       _disp_mode+0 
;ThermoController.mpas,897 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,898 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,899 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,902 :: 		ADCON1 := %00111111; //all analog pins as digital
	MOVLW       63
	MOVWF       ADCON1+0 
;ThermoController.mpas,904 :: 		I2c1_Init(100000);
	MOVLW       120
	MOVWF       SSPADD+0 
	CALL        _I2C1_Init+0, 0
;ThermoController.mpas,905 :: 		DS1307_Init;                      // Ds1307 Real Time clock
	CALL        _Ds1307_Init+0, 0
;ThermoController.mpas,906 :: 		Delay_ms(500);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L__main571:
	DECFSZ      R13, 1, 1
	BRA         L__main571
	DECFSZ      R12, 1, 1
	BRA         L__main571
	DECFSZ      R11, 1, 1
	BRA         L__main571
	NOP
;ThermoController.mpas,909 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,911 :: 		InitMenu;
	CALL        _InitMenu+0, 0
;ThermoController.mpas,912 :: 		LCD_OUT(1,1,'ddd');
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
;ThermoController.mpas,915 :: 		OS_Init;
	CALL        _OS_Init+0, 0
;ThermoController.mpas,924 :: 		T_ReadTemp := OS_CreateTask(@ReadTemp, 2);
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
;ThermoController.mpas,925 :: 		T_ReadTime := OS_CreateTask(@ReadTime, 1);
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
;ThermoController.mpas,926 :: 		T_DisplayLED := OS_CreateTask(@DisplayLED, 1);
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
;ThermoController.mpas,927 :: 		T_ReadKeys := OS_CreateTask(@ReadKeys, 0);
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
;ThermoController.mpas,928 :: 		T_NavigateMenu := OS_CreateTask(@NavigateMenu, 3);
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
;ThermoController.mpas,929 :: 		T_SaveTime := OS_CreateTask(@SaveTime, 3);
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
;ThermoController.mpas,932 :: 		S_Display := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Display+0 
;ThermoController.mpas,933 :: 		S_Navigate := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Navigate+0 
;ThermoController.mpas,934 :: 		S_SetTime := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_SetTime+0 
;ThermoController.mpas,937 :: 		OS_StartTask(T_ReadTemp);
	MOVF        _T_ReadTemp+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,938 :: 		OS_StartTask(T_ReadTime);
	MOVF        _T_ReadTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,939 :: 		OS_StartTask(T_DisplayLED);
	MOVF        _T_DisplayLED+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,940 :: 		OS_StartTask(T_ReadKeys);
	MOVF        _T_ReadKeys+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,941 :: 		OS_StartTask(T_NavigateMenu);
	MOVF        _T_NavigateMenu+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,942 :: 		OS_StartTask(T_SaveTime);
	MOVF        _T_SaveTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,945 :: 		T1CKPS0_bit := 1;
	BSF         T1CKPS0_bit+0, 4 
;ThermoController.mpas,946 :: 		T1CKPS1_bit := 0;
	BCF         T1CKPS1_bit+0, 5 
;ThermoController.mpas,947 :: 		TMR1CS_bit := 0; // internal clock
	BCF         TMR1CS_bit+0, 1 
;ThermoController.mpas,948 :: 		TMR1L := 0x40; // reset timer register
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,949 :: 		TMR1H := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,950 :: 		OS_Timer_IE_bit := 0; // disable timebase interrupt, will be enabled in “OS_Run”
	BCF         TMR1IE_bit+0, 0 
;ThermoController.mpas,951 :: 		TMR1ON_bit := 1; // start timer
	BSF         TMR1ON_bit+0, 0 
;ThermoController.mpas,952 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,953 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,955 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,956 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,960 :: 		OS_Run;
	CALL        _OS_Run+0, 0
;ThermoController.mpas,961 :: 		end.
	GOTO        $+0
; end of _main
