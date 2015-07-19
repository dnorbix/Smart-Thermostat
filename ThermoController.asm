
_InitMenu:

;ThermoController.mpas,121 :: 		begin
;ThermoController.mpas,123 :: 		maxday[1]:=31;
	MOVLW       31
	MOVWF       _maxday+0 
;ThermoController.mpas,124 :: 		maxday[2]:=28;
	MOVLW       28
	MOVWF       _maxday+1 
;ThermoController.mpas,125 :: 		maxday[3]:=31;
	MOVLW       31
	MOVWF       _maxday+2 
;ThermoController.mpas,126 :: 		maxday[4]:=30;
	MOVLW       30
	MOVWF       _maxday+3 
;ThermoController.mpas,127 :: 		maxday[5]:=31;
	MOVLW       31
	MOVWF       _maxday+4 
;ThermoController.mpas,128 :: 		maxday[6]:=30;
	MOVLW       30
	MOVWF       _maxday+5 
;ThermoController.mpas,129 :: 		maxday[7]:=31;
	MOVLW       31
	MOVWF       _maxday+6 
;ThermoController.mpas,130 :: 		maxday[8]:=31;
	MOVLW       31
	MOVWF       _maxday+7 
;ThermoController.mpas,131 :: 		maxday[9]:=30;
	MOVLW       30
	MOVWF       _maxday+8 
;ThermoController.mpas,132 :: 		maxday[10]:=31;
	MOVLW       31
	MOVWF       _maxday+9 
;ThermoController.mpas,133 :: 		maxday[11]:=30;
	MOVLW       30
	MOVWF       _maxday+10 
;ThermoController.mpas,134 :: 		maxday[12]:=31;
	MOVLW       31
	MOVWF       _maxday+11 
;ThermoController.mpas,140 :: 		root.row1 := 'Welcome, Laci!';
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
;ThermoController.mpas,141 :: 		root.child := @menu[1];
	MOVLW       _menu+0
	MOVWF       _root+40 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _root+41 
;ThermoController.mpas,142 :: 		root.parent := @root;
	MOVLW       _root+0
	MOVWF       _root+34 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+35 
;ThermoController.mpas,143 :: 		root.next := @root;
	MOVLW       _root+0
	MOVWF       _root+36 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+37 
;ThermoController.mpas,144 :: 		root.prev := @root;
	MOVLW       _root+0
	MOVWF       _root+38 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+39 
;ThermoController.mpas,145 :: 		current_node := @root;
	MOVLW       _root+0
	MOVWF       _current_node+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       _current_node+1 
;ThermoController.mpas,147 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu2:
;ThermoController.mpas,148 :: 		menu[i].next := @menu[i+1];
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
	GOTO        L__InitMenu417
	MOVLW       6
	XORWF       _i+0, 0 
L__InitMenu417:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu5
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu2
L__InitMenu5:
;ThermoController.mpas,149 :: 		menu[7].next := @menu[1];
	MOVLW       _menu+0
	MOVWF       _menu+288 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _menu+289 
;ThermoController.mpas,150 :: 		for i:=7 downto 2 do
	MOVLW       7
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu7:
;ThermoController.mpas,151 :: 		menu[i].prev := @menu[i-1];
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
	GOTO        L__InitMenu418
	MOVLW       2
	XORWF       _i+0, 0 
L__InitMenu418:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu10
	MOVLW       1
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
	GOTO        L__InitMenu7
L__InitMenu10:
;ThermoController.mpas,152 :: 		menu[1].prev := @menu[7];
	MOVLW       _menu+252
	MOVWF       _menu+38 
	MOVLW       hi_addr(_menu+252)
	MOVWF       _menu+39 
;ThermoController.mpas,153 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu12:
;ThermoController.mpas,154 :: 		menu[i].parent := @root;
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
	GOTO        L__InitMenu419
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu419:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu15
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu12
L__InitMenu15:
;ThermoController.mpas,157 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu17:
;ThermoController.mpas,158 :: 		menu[i].child := @menu[i];
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
	GOTO        L__InitMenu420
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu420:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu20
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu17
L__InitMenu20:
;ThermoController.mpas,160 :: 		menu[1].child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _menu+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _menu+41 
;ThermoController.mpas,161 :: 		menu[2].child := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _menu+82 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _menu+83 
;ThermoController.mpas,162 :: 		menu[3].child := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _menu+124 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _menu+125 
;ThermoController.mpas,163 :: 		menu[4].child := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _menu+166 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _menu+167 
;ThermoController.mpas,165 :: 		submenu1.parent := @menu[1];
	MOVLW       _menu+0
	MOVWF       _submenu1+34 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _submenu1+35 
;ThermoController.mpas,166 :: 		submenu1.next := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+36 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+37 
;ThermoController.mpas,167 :: 		submenu1.prev := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+38 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+39 
;ThermoController.mpas,168 :: 		submenu1.child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+41 
;ThermoController.mpas,170 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu22:
;ThermoController.mpas,172 :: 		submenu2[i].parent := @menu[2];
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
;ThermoController.mpas,173 :: 		submenu2[i].child := @submenu2[i];
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
;ThermoController.mpas,174 :: 		end;
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu421
	MOVLW       3
	XORWF       _i+0, 0 
L__InitMenu421:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu25
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu22
L__InitMenu25:
;ThermoController.mpas,176 :: 		submenu2[2].next := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+78 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+79 
;ThermoController.mpas,177 :: 		submenu2[2].prev := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+80 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+81 
;ThermoController.mpas,178 :: 		submenu2[1].prev := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+38 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+39 
;ThermoController.mpas,179 :: 		submenu2[3].next := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+120 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+121 
;ThermoController.mpas,180 :: 		submenu2[1].next := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+36 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+37 
;ThermoController.mpas,181 :: 		submenu2[3].prev := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+122 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+123 
;ThermoController.mpas,183 :: 		submenu3.parent := @menu[3];
	MOVLW       _menu+84
	MOVWF       _submenu3+34 
	MOVLW       hi_addr(_menu+84)
	MOVWF       _submenu3+35 
;ThermoController.mpas,184 :: 		submenu3.next := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+36 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+37 
;ThermoController.mpas,185 :: 		submenu3.prev := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+38 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+39 
;ThermoController.mpas,186 :: 		submenu3.child := @submenu3;
	MOVLW       _submenu3+0
	MOVWF       _submenu3+40 
	MOVLW       hi_addr(_submenu3+0)
	MOVWF       _submenu3+41 
;ThermoController.mpas,188 :: 		submenu4.parent := @menu[4];
	MOVLW       _menu+126
	MOVWF       _submenu4+34 
	MOVLW       hi_addr(_menu+126)
	MOVWF       _submenu4+35 
;ThermoController.mpas,189 :: 		submenu4.next := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+36 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+37 
;ThermoController.mpas,190 :: 		submenu4.prev := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+38 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+39 
;ThermoController.mpas,191 :: 		submenu4.child := @submenu4;
	MOVLW       _submenu4+0
	MOVWF       _submenu4+40 
	MOVLW       hi_addr(_submenu4+0)
	MOVWF       _submenu4+41 
;ThermoController.mpas,194 :: 		root.row1 := 'T1:     T2:    ';
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
;ThermoController.mpas,195 :: 		root.row2 := 'T3:     T4:    ';
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
;ThermoController.mpas,196 :: 		menu[1].row1 := '1. Date/Time';
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
;ThermoController.mpas,197 :: 		menu[1].row2 := '';
	CLRF        _menu+17 
;ThermoController.mpas,198 :: 		menu[2].row1 := '2. Functioning';
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
;ThermoController.mpas,199 :: 		menu[2].row2 := '     Interval';
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
;ThermoController.mpas,200 :: 		menu[3].row1 := '3. Lock Settings';
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
;ThermoController.mpas,201 :: 		menu[3].row2 := '';
	CLRF        _menu+101 
;ThermoController.mpas,202 :: 		menu[4].row1 := '4. Status LED';
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
;ThermoController.mpas,203 :: 		menu[4].row2 := '';
	CLRF        _menu+143 
;ThermoController.mpas,204 :: 		menu[5].row1 := '5. Standby Disp';
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
;ThermoController.mpas,205 :: 		menu[5].row2 := '    Settings';
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
;ThermoController.mpas,206 :: 		menu[6].row1 := '6. Log';
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
;ThermoController.mpas,207 :: 		menu[6].row2 := '';
	CLRF        _menu+227 
;ThermoController.mpas,208 :: 		menu[7].row1 := '7. Menu';
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
;ThermoController.mpas,209 :: 		menu[7].row2 := '';
	CLRF        _menu+269 
;ThermoController.mpas,210 :: 		submenu1.row1 := 'date';
	MOVLW       100
	MOVWF       _submenu1+0 
	MOVLW       97
	MOVWF       _submenu1+1 
	MOVLW       116
	MOVWF       _submenu1+2 
	MOVLW       101
	MOVWF       _submenu1+3 
	CLRF        _submenu1+4 
;ThermoController.mpas,211 :: 		submenu1.row2 := 'time';
	MOVLW       116
	MOVWF       _submenu1+17 
	MOVLW       105
	MOVWF       _submenu1+18 
	MOVLW       109
	MOVWF       _submenu1+19 
	MOVLW       101
	MOVWF       _submenu1+20 
	CLRF        _submenu1+21 
;ThermoController.mpas,213 :: 		submenu2[1].row1 := '2.1 Days';
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
;ThermoController.mpas,214 :: 		strcat2(submenu2[1].row2,funcDaysString[1],funcDaysStatus);
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
;ThermoController.mpas,215 :: 		submenu2[2].row1 := '2.2 Hours';
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
;ThermoController.mpas,216 :: 		submenu2[2].row2 := 'S: 21;     E:  7';
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
;ThermoController.mpas,217 :: 		submenu2[3].row1 := '2.3 Temp. Limits';
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
;ThermoController.mpas,218 :: 		submenu2[3].row2 := 'Min: 19; Max: 22';
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
;ThermoController.mpas,220 :: 		submenu3.row1 := 'Locked:     OFF';
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
;ThermoController.mpas,221 :: 		submenu3.row2 := '';
	CLRF        _submenu3+17 
;ThermoController.mpas,223 :: 		submenu4.row1 := 'Status LED:';
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
;ThermoController.mpas,224 :: 		submenu4.row2 := '        ON';
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
;ThermoController.mpas,226 :: 		end;
	RETURN      0
; end of _InitMenu

_Interrupt:

;ThermoController.mpas,231 :: 		begin
;ThermoController.mpas,232 :: 		if TMR1IF_bit = 1 then
	BTFSS       TMR1IF_bit+0, 0 
	GOTO        L__Interrupt28
;ThermoController.mpas,234 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,235 :: 		TMR1H         := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,236 :: 		TMR1L         := 0x40;
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,237 :: 		OS_TimerInterrupt; // to be called every x millisecs
	CALL        _OS_TimerInterrupt+0, 0
;ThermoController.mpas,238 :: 		end;
L__Interrupt28:
;ThermoController.mpas,239 :: 		end;
L__Interrupt422:
	RETFIE      1
; end of _Interrupt

_ReadTemp:

;ThermoController.mpas,243 :: 		begin
;ThermoController.mpas,244 :: 		while true do
L__ReadTemp32:
;ThermoController.mpas,246 :: 		OS_Delay(500);
	MOVLW       244
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       1
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,247 :: 		INTCON := 0x00;
	CLRF        INTCON+0 
;ThermoController.mpas,248 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,249 :: 		DS1820_StartTempConversion(PortD,temp_index, true);
	MOVLW       PORTD+0
	MOVWF       FARG_DS1820_StartTempConversion_Port_+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_DS1820_StartTempConversion_Port_+1 
	MOVF        _Temp_index+0, 0 
	MOVWF       FARG_DS1820_StartTempConversion_Bit_+0 
	MOVLW       255
	MOVWF       FARG_DS1820_StartTempConversion_Wait+0 
	CALL        _DS1820_StartTempConversion+0, 0
;ThermoController.mpas,250 :: 		aux_temp := DS1820_ReadTemperature(PortD,temp_index);
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
;ThermoController.mpas,251 :: 		if (aux_temp <> Temp[temp_index + 1]) then
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
	GOTO        L__ReadTemp423
	MOVF        R3, 0 
	XORWF       R0, 0 
L__ReadTemp423:
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadTemp37
;ThermoController.mpas,253 :: 		Temp[temp_index + 1] := aux_temp;
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
;ThermoController.mpas,255 :: 		CRCOk := DS1820_CheckCRC;
	CALL        _DS1820_CheckCRC+0, 0
	MOVF        R0, 0 
	MOVWF       _CRCOk+0 
;ThermoController.mpas,257 :: 		if CRCOk > 0 then // CRC error
	MOVF        R0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L__ReadTemp40
;ThermoController.mpas,259 :: 		LCD_OUT(2,1,'Temperature CRC error');
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
;ThermoController.mpas,260 :: 		end
	GOTO        L__ReadTemp41
;ThermoController.mpas,261 :: 		else
L__ReadTemp40:
;ThermoController.mpas,263 :: 		DS1820_TempToString(Temp[temp_index + 1], Strng, ',');
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
;ThermoController.mpas,264 :: 		if temp_index < 2  then
	MOVLW       2
	SUBWF       _Temp_index+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L__ReadTemp43
;ThermoController.mpas,266 :: 		root.row1[3 + temp_index * 8] := Strng[0];
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
;ThermoController.mpas,267 :: 		root.row1[4 + temp_index * 8] := Strng[1];
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
;ThermoController.mpas,268 :: 		root.row1[5 + temp_index * 8] := Strng[2];
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
;ThermoController.mpas,269 :: 		root.row1[6 + temp_index * 8] := Strng[3];
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
;ThermoController.mpas,270 :: 		end
	GOTO        L__ReadTemp44
;ThermoController.mpas,271 :: 		else
L__ReadTemp43:
;ThermoController.mpas,273 :: 		root.row2[3 + (temp_index - 2) * 8] := Strng[0];
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
;ThermoController.mpas,274 :: 		root.row2[4 + (temp_index - 2) * 8] := Strng[1];
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
;ThermoController.mpas,275 :: 		root.row2[5 + (temp_index - 2) * 8] := Strng[2];
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
;ThermoController.mpas,276 :: 		root.row2[6 + (temp_index - 2) * 8] := Strng[3];
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
;ThermoController.mpas,277 :: 		end
L__ReadTemp44:
;ThermoController.mpas,278 :: 		end;
L__ReadTemp41:
;ThermoController.mpas,279 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,280 :: 		end;
L__ReadTemp37:
;ThermoController.mpas,281 :: 		temp_index := (temp_index + 1) mod 4;
	INCF        _Temp_index+0, 1 
	MOVLW       3
	ANDWF       _Temp_index+0, 1 
;ThermoController.mpas,282 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,283 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,284 :: 		end;
	GOTO        L__ReadTemp32
;ThermoController.mpas,285 :: 		end;
	RETURN      0
; end of _ReadTemp

_DisplayLED:

;ThermoController.mpas,288 :: 		begin
;ThermoController.mpas,289 :: 		while true do
L__DisplayLED47:
;ThermoController.mpas,291 :: 		OS_WaitSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,292 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,293 :: 		LCD_OUT(1,1,current_node^.row1);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _current_node+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _current_node+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ThermoController.mpas,294 :: 		LCD_OUT(2,1,current_node^.row2);
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
;ThermoController.mpas,295 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED52
;ThermoController.mpas,296 :: 		Lcd_Cmd(_LCD_UNDERLINE_ON)
	MOVLW       14
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED53
;ThermoController.mpas,297 :: 		else if edit then
L__DisplayLED52:
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED55
;ThermoController.mpas,298 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON)
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED56
;ThermoController.mpas,299 :: 		else
L__DisplayLED55:
;ThermoController.mpas,300 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
L__DisplayLED56:
L__DisplayLED53:
;ThermoController.mpas,303 :: 		if underscore or edit then
	MOVF        _edit+0, 0 
	IORWF       _underscore+0, 0 
	MOVWF       R0 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED58
;ThermoController.mpas,306 :: 		@submenu1: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED424
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__DisplayLED424:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED63
;ThermoController.mpas,307 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,309 :: 		1 : begin Lcd_Cmd(_LCD_FIRST_ROW); end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED425
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED425:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED70
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED70:
;ThermoController.mpas,310 :: 		2 : begin Lcd_Cmd(_LCD_FIRST_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED426
	MOVLW       2
	XORWF       _index+0, 0 
L__DisplayLED426:
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
;ThermoController.mpas,311 :: 		3 : begin Lcd_Cmd(_LCD_FIRST_ROW);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED427
	MOVLW       3
	XORWF       _index+0, 0 
L__DisplayLED427:
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
;ThermoController.mpas,312 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); end;
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
;ThermoController.mpas,313 :: 		4 : begin Lcd_Cmd(_LCD_SECOND_ROW);                                                                                                   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED428
	MOVLW       4
	XORWF       _index+0, 0 
L__DisplayLED428:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED79
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED79:
;ThermoController.mpas,314 :: 		5 : begin Lcd_Cmd(_LCD_SECOND_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED429
	MOVLW       5
	XORWF       _index+0, 0 
L__DisplayLED429:
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
;ThermoController.mpas,316 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED63:
;ThermoController.mpas,317 :: 		@submenu2[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED430
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__DisplayLED430:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED85
;ThermoController.mpas,318 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,319 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,320 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED90:
;ThermoController.mpas,321 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED431
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED431:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED93
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED90
L__DisplayLED93:
;ThermoController.mpas,322 :: 		if funcDays[index] = true then
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
;ThermoController.mpas,323 :: 		funcDaysStatus := ' ON'
	MOVLW       32
	MOVWF       _funcDaysStatus+0 
	MOVLW       79
	MOVWF       _funcDaysStatus+1 
	MOVLW       78
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
	GOTO        L__DisplayLED96
;ThermoController.mpas,324 :: 		else
L__DisplayLED95:
;ThermoController.mpas,325 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
L__DisplayLED96:
;ThermoController.mpas,326 :: 		strcat2(submenu2[1].row2,funcDaysString[index], funcDaysStatus);
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
;ThermoController.mpas,327 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED85:
;ThermoController.mpas,328 :: 		@submenu2[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED432
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__DisplayLED432:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED99
;ThermoController.mpas,329 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,330 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,331 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED433
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED433:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED104
;ThermoController.mpas,332 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED107:
;ThermoController.mpas,333 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED434
	MOVLW       3
	XORWF       _i+0, 0 
L__DisplayLED434:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED110
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED107
L__DisplayLED110:
	GOTO        L__DisplayLED105
;ThermoController.mpas,334 :: 		else
L__DisplayLED104:
;ThermoController.mpas,335 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED112:
;ThermoController.mpas,336 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED435
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED435:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED115
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED112
L__DisplayLED115:
L__DisplayLED105:
;ThermoController.mpas,337 :: 		strcat2(submenu2[2].row2, '','');
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
;ThermoController.mpas,338 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'S: ');
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
;ThermoController.mpas,339 :: 		ByteToStr(start_hour, min_temp_string);
	MOVF        _start_hour+0, 0 
	MOVWF       FARG_ByteToStr_input+0 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_ByteToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_ByteToStr_output+1 
	CALL        _ByteToStr+0, 0
;ThermoController.mpas,340 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,341 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'     E: ');
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
;ThermoController.mpas,342 :: 		IntToStr(end_hour, min_temp_string);
	MOVF        _end_hour+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,343 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,344 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED99:
;ThermoController.mpas,345 :: 		@submenu2[3]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED436
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__DisplayLED436:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED118
;ThermoController.mpas,346 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,347 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,348 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED437
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED437:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED123
;ThermoController.mpas,349 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED126:
;ThermoController.mpas,350 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED438
	MOVLW       6
	XORWF       _i+0, 0 
L__DisplayLED438:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED129
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED126
L__DisplayLED129:
	GOTO        L__DisplayLED124
;ThermoController.mpas,351 :: 		else
L__DisplayLED123:
;ThermoController.mpas,352 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED131:
;ThermoController.mpas,353 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED439
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED439:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED134
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED131
L__DisplayLED134:
L__DisplayLED124:
;ThermoController.mpas,354 :: 		strcat2(submenu2[2].row2, '','');
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
;ThermoController.mpas,355 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'Max: ');
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
;ThermoController.mpas,356 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,357 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,358 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'   Min: ');
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
;ThermoController.mpas,359 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,360 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,361 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED118:
;ThermoController.mpas,362 :: 		@submenu3: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED440
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__DisplayLED440:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED137
;ThermoController.mpas,363 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,364 :: 		Lcd_Cmd(_LCD_FIRST_ROW);
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,365 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED142:
;ThermoController.mpas,366 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED441
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED441:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED145
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED142
L__DisplayLED145:
;ThermoController.mpas,367 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED137:
;ThermoController.mpas,368 :: 		@submenu4: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED442
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__DisplayLED442:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED148
;ThermoController.mpas,369 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,370 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,371 :: 		for i:=1 to 8 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED153:
;ThermoController.mpas,372 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED443
	MOVLW       8
	XORWF       _i+0, 0 
L__DisplayLED443:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED156
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED153
L__DisplayLED156:
;ThermoController.mpas,373 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED148:
L__DisplayLED60:
;ThermoController.mpas,375 :: 		end;
L__DisplayLED58:
;ThermoController.mpas,378 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,379 :: 		end;
	GOTO        L__DisplayLED47
;ThermoController.mpas,380 :: 		end;
	RETURN      0
; end of _DisplayLED

_ReadKeys:

;ThermoController.mpas,383 :: 		begin
;ThermoController.mpas,384 :: 		while true do
L__ReadKeys159:
;ThermoController.mpas,386 :: 		OS_Delay(20);
	MOVLW       20
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,387 :: 		if Button(PORTE, 2, 1, 1) then old_enter := 255;
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
	GOTO        L__ReadKeys164
	MOVLW       255
	MOVWF       _old_enter+0 
L__ReadKeys164:
;ThermoController.mpas,388 :: 		if old_enter and Button(PORTE, 2, 1, 0) then
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
	GOTO        L__ReadKeys167
;ThermoController.mpas,390 :: 		enter := 255;
	MOVLW       255
	MOVWF       _enter+0 
;ThermoController.mpas,391 :: 		old_enter := 0;
	CLRF        _old_enter+0 
;ThermoController.mpas,392 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,393 :: 		end;
L__ReadKeys167:
;ThermoController.mpas,394 :: 		if Button(PORTB, 4, 1, 1) then old_esc := 255;
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
	GOTO        L__ReadKeys170
	MOVLW       255
	MOVWF       _old_esc+0 
L__ReadKeys170:
;ThermoController.mpas,395 :: 		if old_esc and Button(PORTB, 4, 1, 0) then
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
	GOTO        L__ReadKeys173
;ThermoController.mpas,397 :: 		esc := 255;
	MOVLW       255
	MOVWF       _esc+0 
;ThermoController.mpas,398 :: 		old_esc := 0;
	CLRF        _old_esc+0 
;ThermoController.mpas,399 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,400 :: 		end;
L__ReadKeys173:
;ThermoController.mpas,401 :: 		if Button(PORTE, 1, 1, 1) then old_up := 255;
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
	GOTO        L__ReadKeys176
	MOVLW       255
	MOVWF       _old_up+0 
L__ReadKeys176:
;ThermoController.mpas,402 :: 		if old_up and Button(PORTE, 1, 1, 0) then
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
	GOTO        L__ReadKeys179
;ThermoController.mpas,404 :: 		up := 255;
	MOVLW       255
	MOVWF       _up+0 
;ThermoController.mpas,405 :: 		old_up := 0;
	CLRF        _old_up+0 
;ThermoController.mpas,406 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,407 :: 		end;
L__ReadKeys179:
;ThermoController.mpas,408 :: 		if Button(PORTE, 0, 1, 1) then old_down := 255;
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
	GOTO        L__ReadKeys182
	MOVLW       255
	MOVWF       _old_down+0 
L__ReadKeys182:
;ThermoController.mpas,409 :: 		if old_down and Button(PORTE, 0, 1, 0) then
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
	GOTO        L__ReadKeys185
;ThermoController.mpas,411 :: 		down := 255;
	MOVLW       255
	MOVWF       _down+0 
;ThermoController.mpas,412 :: 		old_down := 0;
	CLRF        _old_down+0 
;ThermoController.mpas,413 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,414 :: 		end;
L__ReadKeys185:
;ThermoController.mpas,416 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,417 :: 		end;
	GOTO        L__ReadKeys159
;ThermoController.mpas,418 :: 		end;
	RETURN      0
; end of _ReadKeys

_ReadTime:

;ThermoController.mpas,421 :: 		begin
;ThermoController.mpas,422 :: 		while true do
L__ReadTime189:
;ThermoController.mpas,424 :: 		OS_Delay(50);
	MOVLW       50
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,425 :: 		if (current_node = @submenu1) and (edit = false) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__ReadTime444
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__ReadTime444:
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
	GOTO        L__ReadTime194
;ThermoController.mpas,427 :: 		Ds1307_Get_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+1 
	CALL        _Ds1307_Get_TimeDate+0, 0
;ThermoController.mpas,428 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,429 :: 		submenu1.row1 := datestr;
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
;ThermoController.mpas,430 :: 		submenu1.row2 := timestr;
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
;ThermoController.mpas,431 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,432 :: 		end;
L__ReadTime194:
;ThermoController.mpas,433 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,434 :: 		end;
	GOTO        L__ReadTime189
;ThermoController.mpas,435 :: 		end;
	RETURN      0
; end of _ReadTime

_SaveTime:

;ThermoController.mpas,438 :: 		begin
;ThermoController.mpas,439 :: 		while true do
L__SaveTime198:
;ThermoController.mpas,441 :: 		OS_WaitSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,442 :: 		Ds1307_Set_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+1 
	CALL        _Ds1307_Set_TimeDate+0, 0
;ThermoController.mpas,443 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,444 :: 		end;
	GOTO        L__SaveTime198
;ThermoController.mpas,445 :: 		end;
	RETURN      0
; end of _SaveTime

_NavigateMenu:

;ThermoController.mpas,448 :: 		begin
;ThermoController.mpas,449 :: 		while true do
L__NavigateMenu204:
;ThermoController.mpas,451 :: 		OS_WaitSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,452 :: 		if enter = 255 then
	MOVF        _enter+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu209
;ThermoController.mpas,468 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu445
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu445:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu446
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu446:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu447
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu447:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu448
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu448:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu212
;ThermoController.mpas,470 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu215
;ThermoController.mpas,472 :: 		edit := true;
	MOVLW       255
	MOVWF       _edit+0 
;ThermoController.mpas,473 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,474 :: 		end
	GOTO        L__NavigateMenu216
;ThermoController.mpas,475 :: 		else
L__NavigateMenu215:
;ThermoController.mpas,477 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,478 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu218
;ThermoController.mpas,479 :: 		edit := false;
	CLRF        _edit+0 
L__NavigateMenu218:
;ThermoController.mpas,480 :: 		end;
L__NavigateMenu216:
;ThermoController.mpas,481 :: 		end
	GOTO        L__NavigateMenu213
;ThermoController.mpas,482 :: 		else
L__NavigateMenu212:
;ThermoController.mpas,484 :: 		if  (current_node = @submenu3) or (current_node = @submenu4) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu449
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu449:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu450
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu450:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu221
;ThermoController.mpas,486 :: 		edit := true;
	MOVLW       255
	MOVWF       _edit+0 
;ThermoController.mpas,487 :: 		end
L__NavigateMenu221:
;ThermoController.mpas,488 :: 		end;
L__NavigateMenu213:
;ThermoController.mpas,491 :: 		current_node := current_node^.child;
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
;ThermoController.mpas,492 :: 		enter := 0;
	CLRF        _enter+0 
;ThermoController.mpas,493 :: 		end;
L__NavigateMenu209:
;ThermoController.mpas,494 :: 		if esc = 255 then
	MOVF        _esc+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu224
;ThermoController.mpas,514 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu451
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu451:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu452
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu452:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu453
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu453:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu454
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu454:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu227
;ThermoController.mpas,516 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu230
;ThermoController.mpas,518 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,520 :: 		if (current_node = @submenu1) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu455
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu455:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu233
;ThermoController.mpas,522 :: 		OS_SignalSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,523 :: 		end;
L__NavigateMenu233:
;ThermoController.mpas,524 :: 		end
	GOTO        L__NavigateMenu231
;ThermoController.mpas,525 :: 		else
L__NavigateMenu230:
;ThermoController.mpas,527 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu236
;ThermoController.mpas,529 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,530 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,531 :: 		end
	GOTO        L__NavigateMenu237
;ThermoController.mpas,532 :: 		else
L__NavigateMenu236:
;ThermoController.mpas,534 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,535 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,536 :: 		end;
L__NavigateMenu237:
;ThermoController.mpas,537 :: 		end
L__NavigateMenu231:
;ThermoController.mpas,538 :: 		end
	GOTO        L__NavigateMenu228
;ThermoController.mpas,539 :: 		else
L__NavigateMenu227:
;ThermoController.mpas,540 :: 		if (current_node = @submenu3) or (current_node = @submenu4) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu456
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu456:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu457
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu457:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu239
;ThermoController.mpas,542 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,543 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,544 :: 		end
	GOTO        L__NavigateMenu240
;ThermoController.mpas,545 :: 		else
L__NavigateMenu239:
;ThermoController.mpas,547 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,548 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,549 :: 		end;
L__NavigateMenu240:
L__NavigateMenu228:
;ThermoController.mpas,550 :: 		esc := 0;
	CLRF        _esc+0 
;ThermoController.mpas,551 :: 		end;
L__NavigateMenu224:
;ThermoController.mpas,553 :: 		if up = 255 then
	MOVF        _up+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu242
;ThermoController.mpas,556 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu458
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu458:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu247
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu249
;ThermoController.mpas,558 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,560 :: 		3:     if timedate.Year = 99 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu459
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu459:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu254
	MOVF        _timedate+6, 0 
	XORLW       99
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu256
;ThermoController.mpas,561 :: 		timedate.Year := 0
	CLRF        _timedate+6 
	GOTO        L__NavigateMenu257
;ThermoController.mpas,562 :: 		else timedate.Year := timeDate.Year + 1;
L__NavigateMenu256:
	MOVF        _timedate+6, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu257:
	GOTO        L__NavigateMenu251
L__NavigateMenu254:
;ThermoController.mpas,563 :: 		2:     if timedate.Month = 12 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu460
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu460:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu260
	MOVF        _timedate+5, 0 
	XORLW       12
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu262
;ThermoController.mpas,564 :: 		timedate.Month := 1
	MOVLW       1
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu263
;ThermoController.mpas,565 :: 		else timedate.Month := timeDate.Month + 1;
L__NavigateMenu262:
	MOVF        _timedate+5, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu263:
	GOTO        L__NavigateMenu251
L__NavigateMenu260:
;ThermoController.mpas,566 :: 		1:     if timedate.Date = maxday[timedate.Month] then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu461
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu461:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu266
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
	GOTO        L__NavigateMenu268
;ThermoController.mpas,567 :: 		timedate.Date := 1
	MOVLW       1
	MOVWF       _timedate+4 
	GOTO        L__NavigateMenu269
;ThermoController.mpas,568 :: 		else timedate.Date := timeDate.Date + 1;
L__NavigateMenu268:
	MOVF        _timedate+4, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu269:
	GOTO        L__NavigateMenu251
L__NavigateMenu266:
;ThermoController.mpas,569 :: 		4:     if timedate.Hours = 23 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu462
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu462:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu272
	MOVF        _timedate+2, 0 
	XORLW       23
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu274
;ThermoController.mpas,570 :: 		timedate.Hours := 0
	CLRF        _timedate+2 
	GOTO        L__NavigateMenu275
;ThermoController.mpas,571 :: 		else timedate.Hours := timeDate.Hours + 1;
L__NavigateMenu274:
	MOVF        _timedate+2, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu275:
	GOTO        L__NavigateMenu251
L__NavigateMenu272:
;ThermoController.mpas,572 :: 		5:     if timedate.Minutes = 59 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu463
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu463:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu278
	MOVF        _timedate+1, 0 
	XORLW       59
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu280
;ThermoController.mpas,573 :: 		timedate.Minutes := 0
	CLRF        _timedate+1 
	GOTO        L__NavigateMenu281
;ThermoController.mpas,574 :: 		else timedate.Minutes := timeDate.Minutes + 1;
L__NavigateMenu280:
	MOVF        _timedate+1, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu281:
	GOTO        L__NavigateMenu251
L__NavigateMenu278:
L__NavigateMenu251:
;ThermoController.mpas,576 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,577 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,578 :: 		submenu1.row1 := datestr;
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
;ThermoController.mpas,579 :: 		submenu1.row2 := timestr;
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
;ThermoController.mpas,580 :: 		end
	GOTO        L__NavigateMenu250
;ThermoController.mpas,581 :: 		else if underscore then
L__NavigateMenu249:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu283
;ThermoController.mpas,582 :: 		index := (index  mod 5) + 1;
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
L__NavigateMenu283:
L__NavigateMenu250:
	GOTO        L__NavigateMenu244
L__NavigateMenu247:
;ThermoController.mpas,583 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu464
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu464:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu287
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu289
;ThermoController.mpas,585 :: 		funcDays[index] := not funcDays[index];
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
;ThermoController.mpas,586 :: 		end
	GOTO        L__NavigateMenu290
;ThermoController.mpas,587 :: 		else
L__NavigateMenu289:
;ThermoController.mpas,589 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu292
;ThermoController.mpas,591 :: 		index := (index  mod 7) + 1;
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
;ThermoController.mpas,592 :: 		end
	GOTO        L__NavigateMenu293
;ThermoController.mpas,593 :: 		else
L__NavigateMenu292:
;ThermoController.mpas,595 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,596 :: 		end;
L__NavigateMenu293:
;ThermoController.mpas,597 :: 		end;
L__NavigateMenu290:
	GOTO        L__NavigateMenu244
L__NavigateMenu287:
;ThermoController.mpas,598 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu465
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu465:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu296
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu298
;ThermoController.mpas,600 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu466
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu466:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu301
;ThermoController.mpas,602 :: 		min_temp := min_temp + 1;
	INFSNZ      _min_temp+0, 1 
	INCF        _min_temp+1, 1 
;ThermoController.mpas,603 :: 		if (min_temp > max_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu467
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu467:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu304
;ThermoController.mpas,604 :: 		min_temp := max_temp;
	MOVF        _max_temp+0, 0 
	MOVWF       _min_temp+0 
	MOVF        _max_temp+1, 0 
	MOVWF       _min_temp+1 
L__NavigateMenu304:
;ThermoController.mpas,605 :: 		end
	GOTO        L__NavigateMenu302
;ThermoController.mpas,606 :: 		else
L__NavigateMenu301:
;ThermoController.mpas,608 :: 		max_temp := max_temp + 1;
	INFSNZ      _max_temp+0, 1 
	INCF        _max_temp+1, 1 
;ThermoController.mpas,609 :: 		if (max_temp > 50) then
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _max_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu468
	MOVF        _max_temp+0, 0 
	SUBLW       50
L__NavigateMenu468:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu307
;ThermoController.mpas,610 :: 		max_temp := 50;
	MOVLW       50
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
L__NavigateMenu307:
;ThermoController.mpas,611 :: 		end;
L__NavigateMenu302:
;ThermoController.mpas,612 :: 		end
	GOTO        L__NavigateMenu299
;ThermoController.mpas,613 :: 		else
L__NavigateMenu298:
;ThermoController.mpas,615 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu310
;ThermoController.mpas,617 :: 		index := (index  mod 2) + 1;
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
;ThermoController.mpas,618 :: 		end
	GOTO        L__NavigateMenu311
;ThermoController.mpas,619 :: 		else
L__NavigateMenu310:
;ThermoController.mpas,621 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,622 :: 		end;
L__NavigateMenu311:
;ThermoController.mpas,623 :: 		end;
L__NavigateMenu299:
	GOTO        L__NavigateMenu244
L__NavigateMenu296:
;ThermoController.mpas,624 :: 		@submenu3: locked := not locked;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu469
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu469:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu314
	COMF        _locked+0, 1 
	GOTO        L__NavigateMenu244
L__NavigateMenu314:
;ThermoController.mpas,625 :: 		@submenu4: status_led := not status_led
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu470
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu470:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu317
	COMF        _status_led+0, 1 
;ThermoController.mpas,627 :: 		else
	GOTO        L__NavigateMenu244
L__NavigateMenu317:
;ThermoController.mpas,628 :: 		current_node := current_node^.next;
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
L__NavigateMenu244:
;ThermoController.mpas,630 :: 		up := 0;
	CLRF        _up+0 
;ThermoController.mpas,631 :: 		end;
L__NavigateMenu242:
;ThermoController.mpas,633 :: 		if down = 255 then
	MOVF        _down+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu319
;ThermoController.mpas,636 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu471
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu471:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu324
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu326
;ThermoController.mpas,638 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,640 :: 		3:     if timedate.Year = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu472
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu472:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu331
	MOVF        _timedate+6, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu333
;ThermoController.mpas,641 :: 		timedate.Year := 99
	MOVLW       99
	MOVWF       _timedate+6 
	GOTO        L__NavigateMenu334
;ThermoController.mpas,642 :: 		else timedate.Year := timeDate.Year - 1;
L__NavigateMenu333:
	DECF        _timedate+6, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu334:
	GOTO        L__NavigateMenu328
L__NavigateMenu331:
;ThermoController.mpas,643 :: 		2:     if timedate.Month = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu473
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu473:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu337
	MOVF        _timedate+5, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu339
;ThermoController.mpas,644 :: 		timedate.Month := 12
	MOVLW       12
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu340
;ThermoController.mpas,645 :: 		else timedate.Month := timeDate.Month - 1;
L__NavigateMenu339:
	DECF        _timedate+5, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu340:
	GOTO        L__NavigateMenu328
L__NavigateMenu337:
;ThermoController.mpas,646 :: 		1:     if timedate.Date = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu474
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu474:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu343
	MOVF        _timedate+4, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu345
;ThermoController.mpas,647 :: 		timedate.Date := maxday[timedate.Month]
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
	GOTO        L__NavigateMenu346
;ThermoController.mpas,648 :: 		else timedate.Date := timeDate.Date - 1;
L__NavigateMenu345:
	DECF        _timedate+4, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu346:
	GOTO        L__NavigateMenu328
L__NavigateMenu343:
;ThermoController.mpas,649 :: 		4:     if timedate.Hours = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu475
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu475:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu349
	MOVF        _timedate+2, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu351
;ThermoController.mpas,650 :: 		timedate.Hours := 23
	MOVLW       23
	MOVWF       _timedate+2 
	GOTO        L__NavigateMenu352
;ThermoController.mpas,651 :: 		else timedate.Hours := timeDate.Hours - 1;
L__NavigateMenu351:
	DECF        _timedate+2, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu352:
	GOTO        L__NavigateMenu328
L__NavigateMenu349:
;ThermoController.mpas,652 :: 		5:     if timedate.Minutes = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu476
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu476:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu355
	MOVF        _timedate+1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu357
;ThermoController.mpas,653 :: 		timedate.Minutes := 59
	MOVLW       59
	MOVWF       _timedate+1 
	GOTO        L__NavigateMenu358
;ThermoController.mpas,654 :: 		else timedate.Minutes := timeDate.Minutes - 1;
L__NavigateMenu357:
	DECF        _timedate+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu358:
	GOTO        L__NavigateMenu328
L__NavigateMenu355:
L__NavigateMenu328:
;ThermoController.mpas,656 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,657 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,658 :: 		submenu1.row1 := datestr;
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
;ThermoController.mpas,659 :: 		submenu1.row2 := timestr;
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
;ThermoController.mpas,660 :: 		end
	GOTO        L__NavigateMenu327
;ThermoController.mpas,661 :: 		else if underscore then
L__NavigateMenu326:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu360
;ThermoController.mpas,662 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu477
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu477:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu363
;ThermoController.mpas,663 :: 		index := 5
	MOVLW       5
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu364
;ThermoController.mpas,664 :: 		else
L__NavigateMenu363:
;ThermoController.mpas,665 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu364:
L__NavigateMenu360:
L__NavigateMenu327:
	GOTO        L__NavigateMenu321
L__NavigateMenu324:
;ThermoController.mpas,666 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu478
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu478:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu367
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu369
;ThermoController.mpas,668 :: 		funcDays[index] := not funcDays[index];
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
;ThermoController.mpas,669 :: 		end
	GOTO        L__NavigateMenu370
;ThermoController.mpas,670 :: 		else
L__NavigateMenu369:
;ThermoController.mpas,672 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu372
;ThermoController.mpas,674 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu479
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu479:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu375
;ThermoController.mpas,675 :: 		index := 7
	MOVLW       7
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu376
;ThermoController.mpas,676 :: 		else
L__NavigateMenu375:
;ThermoController.mpas,677 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu376:
;ThermoController.mpas,678 :: 		end
	GOTO        L__NavigateMenu373
;ThermoController.mpas,679 :: 		else
L__NavigateMenu372:
;ThermoController.mpas,681 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,682 :: 		end;
L__NavigateMenu373:
;ThermoController.mpas,683 :: 		end;
L__NavigateMenu370:
	GOTO        L__NavigateMenu321
L__NavigateMenu367:
;ThermoController.mpas,684 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu480
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu480:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu379
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu381
;ThermoController.mpas,686 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu481
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu481:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu384
;ThermoController.mpas,688 :: 		min_temp := min_temp - 1;
	MOVLW       1
	SUBWF       _min_temp+0, 1 
	MOVLW       0
	SUBWFB      _min_temp+1, 1 
;ThermoController.mpas,689 :: 		if (min_temp < 0) then
	MOVLW       128
	XORWF       _min_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu482
	MOVLW       0
	SUBWF       _min_temp+0, 0 
L__NavigateMenu482:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu387
;ThermoController.mpas,690 :: 		min_temp := 0;
	CLRF        _min_temp+0 
	CLRF        _min_temp+1 
L__NavigateMenu387:
;ThermoController.mpas,691 :: 		end
	GOTO        L__NavigateMenu385
;ThermoController.mpas,692 :: 		else
L__NavigateMenu384:
;ThermoController.mpas,694 :: 		max_temp := max_temp - 1;
	MOVLW       1
	SUBWF       _max_temp+0, 1 
	MOVLW       0
	SUBWFB      _max_temp+1, 1 
;ThermoController.mpas,695 :: 		if (max_temp < min_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu483
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu483:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu390
;ThermoController.mpas,696 :: 		max_temp := min_temp;
	MOVF        _min_temp+0, 0 
	MOVWF       _max_temp+0 
	MOVF        _min_temp+1, 0 
	MOVWF       _max_temp+1 
L__NavigateMenu390:
;ThermoController.mpas,697 :: 		end;
L__NavigateMenu385:
;ThermoController.mpas,698 :: 		end
	GOTO        L__NavigateMenu382
;ThermoController.mpas,699 :: 		else
L__NavigateMenu381:
;ThermoController.mpas,701 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu393
;ThermoController.mpas,703 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu484
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu484:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu396
;ThermoController.mpas,704 :: 		index := 2
	MOVLW       2
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu397
;ThermoController.mpas,705 :: 		else
L__NavigateMenu396:
;ThermoController.mpas,706 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
L__NavigateMenu397:
;ThermoController.mpas,707 :: 		end
	GOTO        L__NavigateMenu394
;ThermoController.mpas,708 :: 		else
L__NavigateMenu393:
;ThermoController.mpas,710 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,711 :: 		end;
L__NavigateMenu394:
;ThermoController.mpas,712 :: 		end;
L__NavigateMenu382:
	GOTO        L__NavigateMenu321
L__NavigateMenu379:
;ThermoController.mpas,713 :: 		@submenu3: locked := not locked;
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu3+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu485
	MOVLW       _submenu3+0
	XORWF       _current_node+0, 0 
L__NavigateMenu485:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu400
	COMF        _locked+0, 1 
	GOTO        L__NavigateMenu321
L__NavigateMenu400:
;ThermoController.mpas,714 :: 		@submenu4: status_led := not status_led
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu4+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu486
	MOVLW       _submenu4+0
	XORWF       _current_node+0, 0 
L__NavigateMenu486:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu403
	COMF        _status_led+0, 1 
;ThermoController.mpas,715 :: 		else
	GOTO        L__NavigateMenu321
L__NavigateMenu403:
;ThermoController.mpas,716 :: 		current_node := current_node^.prev;
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
L__NavigateMenu321:
;ThermoController.mpas,718 :: 		down := 0;
	CLRF        _down+0 
;ThermoController.mpas,719 :: 		end;
L__NavigateMenu319:
;ThermoController.mpas,720 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,721 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,722 :: 		end;
	GOTO        L__NavigateMenu204
;ThermoController.mpas,723 :: 		end;
	RETURN      0
; end of _NavigateMenu

_main:

;ThermoController.mpas,725 :: 		begin
;ThermoController.mpas,728 :: 		Delay_ms(100);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L__main405:
	DECFSZ      R13, 1, 1
	BRA         L__main405
	DECFSZ      R12, 1, 1
	BRA         L__main405
	DECFSZ      R11, 1, 1
	BRA         L__main405
	NOP
;ThermoController.mpas,729 :: 		LATC:=0xFF;
	MOVLW       255
	MOVWF       LATC+0 
;ThermoController.mpas,730 :: 		TRISC:=0xff;
	MOVLW       255
	MOVWF       TRISC+0 
;ThermoController.mpas,731 :: 		LATD:=0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;ThermoController.mpas,732 :: 		TRISD:=0xff;
	MOVLW       255
	MOVWF       TRISD+0 
;ThermoController.mpas,734 :: 		TRISC.2 := 0; //out latc.2
	BCF         TRISC+0, 2 
;ThermoController.mpas,735 :: 		Trisb.5 := 0; //out latb.5
	BCF         TRISB+0, 5 
;ThermoController.mpas,736 :: 		Trisb.4 := 1; //in portb.4
	BSF         TRISB+0, 4 
;ThermoController.mpas,737 :: 		TrisE.0 := 1; //in portE.0
	BSF         TRISE+0, 0 
;ThermoController.mpas,738 :: 		TrisE.1 := 1; //in portE.1
	BSF         TRISE+0, 1 
;ThermoController.mpas,739 :: 		TrisE.2 := 1; //in portE.2
	BSF         TRISE+0, 2 
;ThermoController.mpas,740 :: 		TrisD.0 := 1; //
	BSF         TRISD+0, 0 
;ThermoController.mpas,741 :: 		TrisD.1 := 1;
	BSF         TRISD+0, 1 
;ThermoController.mpas,742 :: 		TrisD.2 := 1;
	BSF         TRISD+0, 2 
;ThermoController.mpas,743 :: 		TrisD.3 := 1;
	BSF         TRISD+0, 3 
;ThermoController.mpas,746 :: 		Lcd_Init();                        // Initialize LCD
	CALL        _Lcd_Init+0, 0
;ThermoController.mpas,747 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,748 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,751 :: 		for i:=1 to 4 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main407:
;ThermoController.mpas,752 :: 		Temp[i] := 0;
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
	GOTO        L__main487
	MOVLW       4
	XORWF       _i+0, 0 
L__main487:
	BTFSC       STATUS+0, 2 
	GOTO        L__main410
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main407
L__main410:
;ThermoController.mpas,753 :: 		temp_index := 0;
	CLRF        _Temp_index+0 
;ThermoController.mpas,756 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main412:
;ThermoController.mpas,757 :: 		funcDays[i] := false;
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
	GOTO        L__main488
	MOVLW       7
	XORWF       _i+0, 0 
L__main488:
	BTFSC       STATUS+0, 2 
	GOTO        L__main415
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main412
L__main415:
;ThermoController.mpas,758 :: 		funcDaysString[1]:= 'Monday       ';
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
;ThermoController.mpas,759 :: 		funcDaysString[2]:= 'Tuesday      ';
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
;ThermoController.mpas,760 :: 		funcDaysString[3]:= 'Wednsday     ';
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
;ThermoController.mpas,761 :: 		funcDaysString[4]:= 'Thursday     ';
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
;ThermoController.mpas,762 :: 		funcDaysString[5]:= 'Friday       ';
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
;ThermoController.mpas,763 :: 		funcDaysString[6]:= 'Saturday     ';
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
;ThermoController.mpas,764 :: 		funcDaysString[7]:= 'Sunday       ';
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
;ThermoController.mpas,765 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
;ThermoController.mpas,766 :: 		min_temp := 19;
	MOVLW       19
	MOVWF       _min_temp+0 
	MOVLW       0
	MOVWF       _min_temp+1 
;ThermoController.mpas,767 :: 		max_temp := 22;
	MOVLW       22
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
;ThermoController.mpas,768 :: 		start_hour := 7;
	MOVLW       7
	MOVWF       _start_hour+0 
;ThermoController.mpas,769 :: 		end_hour := 21;
	MOVLW       21
	MOVWF       _end_hour+0 
;ThermoController.mpas,771 :: 		locked := false;
	CLRF        _locked+0 
;ThermoController.mpas,772 :: 		status_led := true;
	MOVLW       255
	MOVWF       _status_led+0 
;ThermoController.mpas,775 :: 		ADCON1 := %00111111; //all analog pins as digital
	MOVLW       63
	MOVWF       ADCON1+0 
;ThermoController.mpas,777 :: 		I2c1_Init(100000);
	MOVLW       120
	MOVWF       SSPADD+0 
	CALL        _I2C1_Init+0, 0
;ThermoController.mpas,778 :: 		DS1307_Init;                      // Ds1307 Real Time clock
	CALL        _Ds1307_Init+0, 0
;ThermoController.mpas,779 :: 		Delay_ms(500);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L__main416:
	DECFSZ      R13, 1, 1
	BRA         L__main416
	DECFSZ      R12, 1, 1
	BRA         L__main416
	DECFSZ      R11, 1, 1
	BRA         L__main416
	NOP
;ThermoController.mpas,782 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,784 :: 		InitMenu;
	CALL        _InitMenu+0, 0
;ThermoController.mpas,785 :: 		LCD_OUT(1,1,'ddd');
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
;ThermoController.mpas,788 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,789 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,790 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,793 :: 		OS_Init;
	CALL        _OS_Init+0, 0
;ThermoController.mpas,802 :: 		T_ReadTemp := OS_CreateTask(@ReadTemp, 2);
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
;ThermoController.mpas,803 :: 		T_ReadTime := OS_CreateTask(@ReadTime, 1);
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
;ThermoController.mpas,804 :: 		T_DisplayLED := OS_CreateTask(@DisplayLED, 1);
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
;ThermoController.mpas,805 :: 		T_ReadKeys := OS_CreateTask(@ReadKeys, 0);
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
;ThermoController.mpas,806 :: 		T_NavigateMenu := OS_CreateTask(@NavigateMenu, 3);
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
;ThermoController.mpas,807 :: 		T_SaveTime := OS_CreateTask(@SaveTime, 3);
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
;ThermoController.mpas,810 :: 		S_Display := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Display+0 
;ThermoController.mpas,811 :: 		S_Navigate := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Navigate+0 
;ThermoController.mpas,812 :: 		S_SetTime := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_SetTime+0 
;ThermoController.mpas,815 :: 		OS_StartTask(T_ReadTemp);
	MOVF        _T_ReadTemp+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,816 :: 		OS_StartTask(T_ReadTime);
	MOVF        _T_ReadTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,817 :: 		OS_StartTask(T_DisplayLED);
	MOVF        _T_DisplayLED+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,818 :: 		OS_StartTask(T_ReadKeys);
	MOVF        _T_ReadKeys+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,819 :: 		OS_StartTask(T_NavigateMenu);
	MOVF        _T_NavigateMenu+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,820 :: 		OS_StartTask(T_SaveTime);
	MOVF        _T_SaveTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,823 :: 		T1CKPS0_bit := 1;
	BSF         T1CKPS0_bit+0, 4 
;ThermoController.mpas,824 :: 		T1CKPS1_bit := 0;
	BCF         T1CKPS1_bit+0, 5 
;ThermoController.mpas,825 :: 		TMR1CS_bit := 0; // internal clock
	BCF         TMR1CS_bit+0, 1 
;ThermoController.mpas,826 :: 		TMR1L := 0x40; // reset timer register
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,827 :: 		TMR1H := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,828 :: 		OS_Timer_IE_bit := 0; // disable timebase interrupt, will be enabled in “OS_Run”
	BCF         TMR1IE_bit+0, 0 
;ThermoController.mpas,829 :: 		TMR1ON_bit := 1; // start timer
	BSF         TMR1ON_bit+0, 0 
;ThermoController.mpas,830 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,831 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,833 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,834 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,838 :: 		OS_Run;
	CALL        _OS_Run+0, 0
;ThermoController.mpas,839 :: 		end.
	GOTO        $+0
; end of _main
