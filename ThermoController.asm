
_InitMenu:

;ThermoController.mpas,115 :: 		begin
;ThermoController.mpas,117 :: 		maxday[1]:=31;
	MOVLW       31
	MOVWF       _maxday+0 
;ThermoController.mpas,118 :: 		maxday[2]:=28;
	MOVLW       28
	MOVWF       _maxday+1 
;ThermoController.mpas,119 :: 		maxday[3]:=31;
	MOVLW       31
	MOVWF       _maxday+2 
;ThermoController.mpas,120 :: 		maxday[4]:=30;
	MOVLW       30
	MOVWF       _maxday+3 
;ThermoController.mpas,121 :: 		maxday[5]:=31;
	MOVLW       31
	MOVWF       _maxday+4 
;ThermoController.mpas,122 :: 		maxday[6]:=30;
	MOVLW       30
	MOVWF       _maxday+5 
;ThermoController.mpas,123 :: 		maxday[7]:=31;
	MOVLW       31
	MOVWF       _maxday+6 
;ThermoController.mpas,124 :: 		maxday[8]:=31;
	MOVLW       31
	MOVWF       _maxday+7 
;ThermoController.mpas,125 :: 		maxday[9]:=30;
	MOVLW       30
	MOVWF       _maxday+8 
;ThermoController.mpas,126 :: 		maxday[10]:=31;
	MOVLW       31
	MOVWF       _maxday+9 
;ThermoController.mpas,127 :: 		maxday[11]:=30;
	MOVLW       30
	MOVWF       _maxday+10 
;ThermoController.mpas,128 :: 		maxday[12]:=31;
	MOVLW       31
	MOVWF       _maxday+11 
;ThermoController.mpas,134 :: 		root.row1 := 'Welcome, Laci!';
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
;ThermoController.mpas,135 :: 		root.child := @menu[1];
	MOVLW       _menu+0
	MOVWF       _root+40 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _root+41 
;ThermoController.mpas,136 :: 		root.parent := @root;
	MOVLW       _root+0
	MOVWF       _root+34 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+35 
;ThermoController.mpas,137 :: 		root.next := @root;
	MOVLW       _root+0
	MOVWF       _root+36 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+37 
;ThermoController.mpas,138 :: 		root.prev := @root;
	MOVLW       _root+0
	MOVWF       _root+38 
	MOVLW       hi_addr(_root+0)
	MOVWF       _root+39 
;ThermoController.mpas,139 :: 		current_node := @root;
	MOVLW       _root+0
	MOVWF       _current_node+0 
	MOVLW       hi_addr(_root+0)
	MOVWF       _current_node+1 
;ThermoController.mpas,141 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu2:
;ThermoController.mpas,142 :: 		menu[i].next := @menu[i+1];
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
	GOTO        L__InitMenu377
	MOVLW       6
	XORWF       _i+0, 0 
L__InitMenu377:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu5
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu2
L__InitMenu5:
;ThermoController.mpas,143 :: 		menu[7].next := @menu[1];
	MOVLW       _menu+0
	MOVWF       _menu+288 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _menu+289 
;ThermoController.mpas,144 :: 		for i:=7 downto 2 do
	MOVLW       7
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu7:
;ThermoController.mpas,145 :: 		menu[i].prev := @menu[i-1];
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
	GOTO        L__InitMenu378
	MOVLW       2
	XORWF       _i+0, 0 
L__InitMenu378:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu10
	MOVLW       1
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
	GOTO        L__InitMenu7
L__InitMenu10:
;ThermoController.mpas,146 :: 		menu[1].prev := @menu[7];
	MOVLW       _menu+252
	MOVWF       _menu+38 
	MOVLW       hi_addr(_menu+252)
	MOVWF       _menu+39 
;ThermoController.mpas,147 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu12:
;ThermoController.mpas,148 :: 		menu[i].parent := @root;
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
	GOTO        L__InitMenu379
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu379:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu15
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu12
L__InitMenu15:
;ThermoController.mpas,151 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu17:
;ThermoController.mpas,152 :: 		menu[i].child := @menu[i];
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
	GOTO        L__InitMenu380
	MOVLW       7
	XORWF       _i+0, 0 
L__InitMenu380:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu20
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu17
L__InitMenu20:
;ThermoController.mpas,154 :: 		menu[1].child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _menu+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _menu+41 
;ThermoController.mpas,155 :: 		menu[2].child := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _menu+82 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _menu+83 
;ThermoController.mpas,157 :: 		submenu1.parent := @menu[1];
	MOVLW       _menu+0
	MOVWF       _submenu1+34 
	MOVLW       hi_addr(_menu+0)
	MOVWF       _submenu1+35 
;ThermoController.mpas,158 :: 		submenu1.next := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+36 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+37 
;ThermoController.mpas,159 :: 		submenu1.prev := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+38 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+39 
;ThermoController.mpas,160 :: 		submenu1.child := @submenu1;
	MOVLW       _submenu1+0
	MOVWF       _submenu1+40 
	MOVLW       hi_addr(_submenu1+0)
	MOVWF       _submenu1+41 
;ThermoController.mpas,162 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__InitMenu22:
;ThermoController.mpas,164 :: 		submenu2[i].parent := @menu[2];
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
;ThermoController.mpas,165 :: 		submenu2[i].child := @submenu2[i];
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
;ThermoController.mpas,166 :: 		end;
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__InitMenu381
	MOVLW       3
	XORWF       _i+0, 0 
L__InitMenu381:
	BTFSC       STATUS+0, 2 
	GOTO        L__InitMenu25
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__InitMenu22
L__InitMenu25:
;ThermoController.mpas,168 :: 		submenu2[2].next := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+78 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+79 
;ThermoController.mpas,169 :: 		submenu2[2].prev := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+80 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+81 
;ThermoController.mpas,170 :: 		submenu2[1].prev := @submenu2[3];
	MOVLW       _submenu2+84
	MOVWF       _submenu2+38 
	MOVLW       hi_addr(_submenu2+84)
	MOVWF       _submenu2+39 
;ThermoController.mpas,171 :: 		submenu2[3].next := @submenu2[1];
	MOVLW       _submenu2+0
	MOVWF       _submenu2+120 
	MOVLW       hi_addr(_submenu2+0)
	MOVWF       _submenu2+121 
;ThermoController.mpas,172 :: 		submenu2[1].next := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+36 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+37 
;ThermoController.mpas,173 :: 		submenu2[3].prev := @submenu2[2];
	MOVLW       _submenu2+42
	MOVWF       _submenu2+122 
	MOVLW       hi_addr(_submenu2+42)
	MOVWF       _submenu2+123 
;ThermoController.mpas,176 :: 		root.row1 := 'T1:     T2:    ';
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
;ThermoController.mpas,177 :: 		root.row2 := 'T3:     T4:    ';
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
;ThermoController.mpas,178 :: 		menu[1].row1 := '1. Date/Time';
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
;ThermoController.mpas,179 :: 		menu[1].row2 := '';
	CLRF        _menu+17 
;ThermoController.mpas,180 :: 		menu[2].row1 := '2. Functioning';
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
;ThermoController.mpas,181 :: 		menu[2].row2 := '     Interval';
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
;ThermoController.mpas,182 :: 		menu[3].row1 := '3. Lock Settings';
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
;ThermoController.mpas,183 :: 		menu[3].row2 := '';
	CLRF        _menu+101 
;ThermoController.mpas,184 :: 		menu[4].row1 := '4. Status LED';
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
;ThermoController.mpas,185 :: 		menu[4].row2 := '';
	CLRF        _menu+143 
;ThermoController.mpas,186 :: 		menu[5].row1 := '5. Standby Disp';
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
;ThermoController.mpas,187 :: 		menu[5].row2 := '    Settings';
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
;ThermoController.mpas,188 :: 		menu[6].row1 := '6. Log';
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
;ThermoController.mpas,189 :: 		menu[6].row2 := '';
	CLRF        _menu+227 
;ThermoController.mpas,190 :: 		menu[7].row1 := '7. Menu';
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
;ThermoController.mpas,191 :: 		menu[7].row2 := '';
	CLRF        _menu+269 
;ThermoController.mpas,192 :: 		submenu1.row1 := 'date';
	MOVLW       100
	MOVWF       _submenu1+0 
	MOVLW       97
	MOVWF       _submenu1+1 
	MOVLW       116
	MOVWF       _submenu1+2 
	MOVLW       101
	MOVWF       _submenu1+3 
	CLRF        _submenu1+4 
;ThermoController.mpas,193 :: 		submenu1.row2 := 'time';
	MOVLW       116
	MOVWF       _submenu1+17 
	MOVLW       105
	MOVWF       _submenu1+18 
	MOVLW       109
	MOVWF       _submenu1+19 
	MOVLW       101
	MOVWF       _submenu1+20 
	CLRF        _submenu1+21 
;ThermoController.mpas,195 :: 		submenu2[1].row1 := '2.1 Days';
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
;ThermoController.mpas,196 :: 		strcat2(submenu2[1].row2,funcDaysString[1],funcDaysStatus);
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
;ThermoController.mpas,197 :: 		submenu2[2].row1 := '2.2 Hours';
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
;ThermoController.mpas,198 :: 		submenu2[2].row2 := 'S: 21;     E:  7';
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
;ThermoController.mpas,199 :: 		submenu2[3].row1 := '2.3 Temp. Limits';
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
;ThermoController.mpas,200 :: 		submenu2[3].row2 := 'Min: 19; Max: 22';
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
;ThermoController.mpas,202 :: 		end;
	RETURN      0
; end of _InitMenu

_Interrupt:

;ThermoController.mpas,207 :: 		begin
;ThermoController.mpas,208 :: 		if TMR1IF_bit = 1 then
	BTFSS       TMR1IF_bit+0, 0 
	GOTO        L__Interrupt28
;ThermoController.mpas,210 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,211 :: 		TMR1H         := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,212 :: 		TMR1L         := 0x40;
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,213 :: 		OS_TimerInterrupt; // to be called every x millisecs
	CALL        _OS_TimerInterrupt+0, 0
;ThermoController.mpas,214 :: 		end;
L__Interrupt28:
;ThermoController.mpas,215 :: 		end;
L__Interrupt382:
	RETFIE      1
; end of _Interrupt

_ReadTemp:

;ThermoController.mpas,219 :: 		begin
;ThermoController.mpas,220 :: 		while true do
L__ReadTemp32:
;ThermoController.mpas,222 :: 		OS_Delay(500);
	MOVLW       244
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       1
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,223 :: 		INTCON := 0x00;
	CLRF        INTCON+0 
;ThermoController.mpas,224 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,225 :: 		DS1820_StartTempConversion(PortD,temp_index, true);
	MOVLW       PORTD+0
	MOVWF       FARG_DS1820_StartTempConversion_Port_+0 
	MOVLW       hi_addr(PORTD+0)
	MOVWF       FARG_DS1820_StartTempConversion_Port_+1 
	MOVF        _Temp_index+0, 0 
	MOVWF       FARG_DS1820_StartTempConversion_Bit_+0 
	MOVLW       255
	MOVWF       FARG_DS1820_StartTempConversion_Wait+0 
	CALL        _DS1820_StartTempConversion+0, 0
;ThermoController.mpas,226 :: 		aux_temp := DS1820_ReadTemperature(PortD,temp_index);
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
;ThermoController.mpas,227 :: 		if (aux_temp <> Temp[temp_index + 1]) then
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
	GOTO        L__ReadTemp383
	MOVF        R3, 0 
	XORWF       R0, 0 
L__ReadTemp383:
	BTFSC       STATUS+0, 2 
	GOTO        L__ReadTemp37
;ThermoController.mpas,229 :: 		Temp[temp_index + 1] := aux_temp;
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
;ThermoController.mpas,231 :: 		CRCOk := DS1820_CheckCRC;
	CALL        _DS1820_CheckCRC+0, 0
	MOVF        R0, 0 
	MOVWF       _CRCOk+0 
;ThermoController.mpas,233 :: 		if CRCOk > 0 then // CRC error
	MOVF        R0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L__ReadTemp40
;ThermoController.mpas,235 :: 		LCD_OUT(2,1,'Temperature CRC error');
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
;ThermoController.mpas,236 :: 		end
	GOTO        L__ReadTemp41
;ThermoController.mpas,237 :: 		else
L__ReadTemp40:
;ThermoController.mpas,239 :: 		DS1820_TempToString(Temp[temp_index + 1], Strng, ',');
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
;ThermoController.mpas,240 :: 		if temp_index < 2  then
	MOVLW       2
	SUBWF       _Temp_index+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L__ReadTemp43
;ThermoController.mpas,242 :: 		root.row1[3 + temp_index * 8] := Strng[0];
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
;ThermoController.mpas,243 :: 		root.row1[4 + temp_index * 8] := Strng[1];
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
;ThermoController.mpas,244 :: 		root.row1[5 + temp_index * 8] := Strng[2];
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
;ThermoController.mpas,245 :: 		root.row1[6 + temp_index * 8] := Strng[3];
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
;ThermoController.mpas,246 :: 		end
	GOTO        L__ReadTemp44
;ThermoController.mpas,247 :: 		else
L__ReadTemp43:
;ThermoController.mpas,249 :: 		root.row2[3 + (temp_index - 2) * 8] := Strng[0];
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
;ThermoController.mpas,250 :: 		root.row2[4 + (temp_index - 2) * 8] := Strng[1];
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
;ThermoController.mpas,251 :: 		root.row2[5 + (temp_index - 2) * 8] := Strng[2];
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
;ThermoController.mpas,252 :: 		root.row2[6 + (temp_index - 2) * 8] := Strng[3];
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
;ThermoController.mpas,253 :: 		end
L__ReadTemp44:
;ThermoController.mpas,254 :: 		end;
L__ReadTemp41:
;ThermoController.mpas,255 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,256 :: 		end;
L__ReadTemp37:
;ThermoController.mpas,257 :: 		temp_index := (temp_index + 1) mod 4;
	INCF        _Temp_index+0, 1 
	MOVLW       3
	ANDWF       _Temp_index+0, 1 
;ThermoController.mpas,258 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,259 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,260 :: 		end;
	GOTO        L__ReadTemp32
;ThermoController.mpas,261 :: 		end;
	RETURN      0
; end of _ReadTemp

_DisplayLED:

;ThermoController.mpas,264 :: 		begin
;ThermoController.mpas,265 :: 		while true do
L__DisplayLED47:
;ThermoController.mpas,267 :: 		OS_WaitSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,268 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,269 :: 		LCD_OUT(1,1,current_node^.row1);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _current_node+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _current_node+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ThermoController.mpas,270 :: 		LCD_OUT(2,1,current_node^.row2);
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
;ThermoController.mpas,271 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED52
;ThermoController.mpas,272 :: 		Lcd_Cmd(_LCD_UNDERLINE_ON)
	MOVLW       14
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED53
;ThermoController.mpas,273 :: 		else if edit then
L__DisplayLED52:
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED55
;ThermoController.mpas,274 :: 		Lcd_Cmd(_LCD_BLINK_CURSOR_ON)
	MOVLW       15
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED56
;ThermoController.mpas,275 :: 		else
L__DisplayLED55:
;ThermoController.mpas,276 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
L__DisplayLED56:
L__DisplayLED53:
;ThermoController.mpas,279 :: 		if underscore or edit then
	MOVF        _edit+0, 0 
	IORWF       _underscore+0, 0 
	MOVWF       R0 
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED58
;ThermoController.mpas,282 :: 		@submenu1: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED384
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__DisplayLED384:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED63
;ThermoController.mpas,283 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,285 :: 		1 : begin Lcd_Cmd(_LCD_FIRST_ROW); end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED385
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED385:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED70
	MOVLW       128
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED70:
;ThermoController.mpas,286 :: 		2 : begin Lcd_Cmd(_LCD_FIRST_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED386
	MOVLW       2
	XORWF       _index+0, 0 
L__DisplayLED386:
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
;ThermoController.mpas,287 :: 		3 : begin Lcd_Cmd(_LCD_FIRST_ROW);  Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED387
	MOVLW       3
	XORWF       _index+0, 0 
L__DisplayLED387:
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
;ThermoController.mpas,288 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT); end;
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
;ThermoController.mpas,289 :: 		4 : begin Lcd_Cmd(_LCD_SECOND_ROW);                                                                                                   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED388
	MOVLW       4
	XORWF       _index+0, 0 
L__DisplayLED388:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED79
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	GOTO        L__DisplayLED67
L__DisplayLED79:
;ThermoController.mpas,290 :: 		5 : begin Lcd_Cmd(_LCD_SECOND_ROW); Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);   end;
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED389
	MOVLW       5
	XORWF       _index+0, 0 
L__DisplayLED389:
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
;ThermoController.mpas,292 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED63:
;ThermoController.mpas,293 :: 		@submenu2[1]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED390
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__DisplayLED390:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED85
;ThermoController.mpas,294 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,295 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,296 :: 		for i:=1 to 14 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED90:
;ThermoController.mpas,297 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED391
	MOVLW       14
	XORWF       _i+0, 0 
L__DisplayLED391:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED93
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED90
L__DisplayLED93:
;ThermoController.mpas,298 :: 		if funcDays[index] = true then
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
;ThermoController.mpas,299 :: 		funcDaysStatus := ' ON'
	MOVLW       32
	MOVWF       _funcDaysStatus+0 
	MOVLW       79
	MOVWF       _funcDaysStatus+1 
	MOVLW       78
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
	GOTO        L__DisplayLED96
;ThermoController.mpas,300 :: 		else
L__DisplayLED95:
;ThermoController.mpas,301 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
L__DisplayLED96:
;ThermoController.mpas,302 :: 		strcat2(submenu2[1].row2,funcDaysString[index], funcDaysStatus);
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
;ThermoController.mpas,303 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED85:
;ThermoController.mpas,304 :: 		@submenu2[2]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED392
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__DisplayLED392:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED99
;ThermoController.mpas,305 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,306 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,307 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED393
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED393:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED104
;ThermoController.mpas,308 :: 		for i:=1 to 3 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED107:
;ThermoController.mpas,309 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED394
	MOVLW       3
	XORWF       _i+0, 0 
L__DisplayLED394:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED110
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED107
L__DisplayLED110:
	GOTO        L__DisplayLED105
;ThermoController.mpas,310 :: 		else
L__DisplayLED104:
;ThermoController.mpas,311 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED112:
;ThermoController.mpas,312 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED395
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED395:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED115
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED112
L__DisplayLED115:
L__DisplayLED105:
;ThermoController.mpas,313 :: 		strcat2(submenu2[2].row2, '','');
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
;ThermoController.mpas,314 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'S: ');
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
;ThermoController.mpas,315 :: 		ByteToStr(start_hour, min_temp_string);
	MOVF        _start_hour+0, 0 
	MOVWF       FARG_ByteToStr_input+0 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_ByteToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_ByteToStr_output+1 
	CALL        _ByteToStr+0, 0
;ThermoController.mpas,316 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,317 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'     E: ');
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
;ThermoController.mpas,318 :: 		IntToStr(end_hour, min_temp_string);
	MOVF        _end_hour+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,319 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,320 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED99:
;ThermoController.mpas,321 :: 		@submenu2[3]: if true then begin
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED396
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__DisplayLED396:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED118
;ThermoController.mpas,322 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,323 :: 		Lcd_Cmd(_LCD_SECOND_ROW);
	MOVLW       192
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,324 :: 		if index=1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED397
	MOVLW       1
	XORWF       _index+0, 0 
L__DisplayLED397:
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED123
;ThermoController.mpas,325 :: 		for i:=1 to 6 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED126:
;ThermoController.mpas,326 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT)
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED398
	MOVLW       6
	XORWF       _i+0, 0 
L__DisplayLED398:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED129
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED126
L__DisplayLED129:
	GOTO        L__DisplayLED124
;ThermoController.mpas,327 :: 		else
L__DisplayLED123:
;ThermoController.mpas,328 :: 		for i:=1 to 15 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__DisplayLED131:
;ThermoController.mpas,329 :: 		Lcd_Cmd(_LCD_MOVE_CURSOR_RIGHT);
	MOVLW       20
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayLED399
	MOVLW       15
	XORWF       _i+0, 0 
L__DisplayLED399:
	BTFSC       STATUS+0, 2 
	GOTO        L__DisplayLED134
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__DisplayLED131
L__DisplayLED134:
L__DisplayLED124:
;ThermoController.mpas,330 :: 		strcat2(submenu2[2].row2, '','');
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
;ThermoController.mpas,331 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'Max: ');
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
;ThermoController.mpas,332 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,333 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,334 :: 		strcat2(submenu2[2].row2, submenu2[2].row2,'   Min: ');
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
;ThermoController.mpas,335 :: 		IntToStr(min_temp, min_temp_string);
	MOVF        _min_temp+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _min_temp+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _min_temp_string+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_min_temp_string+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;ThermoController.mpas,336 :: 		strcat2(submenu2[2].row2, submenu2[2].row2, min_temp_string);
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
;ThermoController.mpas,337 :: 		end;
	GOTO        L__DisplayLED60
L__DisplayLED118:
L__DisplayLED60:
;ThermoController.mpas,339 :: 		end;
L__DisplayLED58:
;ThermoController.mpas,342 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,343 :: 		end;
	GOTO        L__DisplayLED47
;ThermoController.mpas,344 :: 		end;
	RETURN      0
; end of _DisplayLED

_ReadKeys:

;ThermoController.mpas,347 :: 		begin
;ThermoController.mpas,348 :: 		while true do
L__ReadKeys137:
;ThermoController.mpas,350 :: 		OS_Delay(20);
	MOVLW       20
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,351 :: 		if Button(PORTE, 2, 1, 1) then old_enter := 255;
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
	GOTO        L__ReadKeys142
	MOVLW       255
	MOVWF       _old_enter+0 
L__ReadKeys142:
;ThermoController.mpas,352 :: 		if old_enter and Button(PORTE, 2, 1, 0) then
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
	GOTO        L__ReadKeys145
;ThermoController.mpas,354 :: 		enter := 255;
	MOVLW       255
	MOVWF       _enter+0 
;ThermoController.mpas,355 :: 		old_enter := 0;
	CLRF        _old_enter+0 
;ThermoController.mpas,356 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,357 :: 		end;
L__ReadKeys145:
;ThermoController.mpas,358 :: 		if Button(PORTB, 4, 1, 1) then old_esc := 255;
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
	GOTO        L__ReadKeys148
	MOVLW       255
	MOVWF       _old_esc+0 
L__ReadKeys148:
;ThermoController.mpas,359 :: 		if old_esc and Button(PORTB, 4, 1, 0) then
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
	GOTO        L__ReadKeys151
;ThermoController.mpas,361 :: 		esc := 255;
	MOVLW       255
	MOVWF       _esc+0 
;ThermoController.mpas,362 :: 		old_esc := 0;
	CLRF        _old_esc+0 
;ThermoController.mpas,363 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,364 :: 		end;
L__ReadKeys151:
;ThermoController.mpas,365 :: 		if Button(PORTE, 1, 1, 1) then old_up := 255;
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
	GOTO        L__ReadKeys154
	MOVLW       255
	MOVWF       _old_up+0 
L__ReadKeys154:
;ThermoController.mpas,366 :: 		if old_up and Button(PORTE, 1, 1, 0) then
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
	GOTO        L__ReadKeys157
;ThermoController.mpas,368 :: 		up := 255;
	MOVLW       255
	MOVWF       _up+0 
;ThermoController.mpas,369 :: 		old_up := 0;
	CLRF        _old_up+0 
;ThermoController.mpas,370 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,371 :: 		end;
L__ReadKeys157:
;ThermoController.mpas,372 :: 		if Button(PORTE, 0, 1, 1) then old_down := 255;
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
	GOTO        L__ReadKeys160
	MOVLW       255
	MOVWF       _old_down+0 
L__ReadKeys160:
;ThermoController.mpas,373 :: 		if old_down and Button(PORTE, 0, 1, 0) then
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
	GOTO        L__ReadKeys163
;ThermoController.mpas,375 :: 		down := 255;
	MOVLW       255
	MOVWF       _down+0 
;ThermoController.mpas,376 :: 		old_down := 0;
	CLRF        _old_down+0 
;ThermoController.mpas,377 :: 		OS_SignalSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,378 :: 		end;
L__ReadKeys163:
;ThermoController.mpas,380 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,381 :: 		end;
	GOTO        L__ReadKeys137
;ThermoController.mpas,382 :: 		end;
	RETURN      0
; end of _ReadKeys

_ReadTime:

;ThermoController.mpas,385 :: 		begin
;ThermoController.mpas,386 :: 		while true do
L__ReadTime167:
;ThermoController.mpas,388 :: 		OS_Delay(50);
	MOVLW       50
	MOVWF       FARG_OS_Delay_Ticks+0 
	MOVLW       0
	MOVWF       FARG_OS_Delay_Ticks+1 
	CALL        _OS_Delay+0, 0
;ThermoController.mpas,389 :: 		if (current_node = @submenu1) and (edit = false) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__ReadTime400
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__ReadTime400:
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
	GOTO        L__ReadTime172
;ThermoController.mpas,391 :: 		Ds1307_Get_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Get_TimeDate_TimeDate+1 
	CALL        _Ds1307_Get_TimeDate+0, 0
;ThermoController.mpas,392 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,393 :: 		submenu1.row1 := datestr;
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
;ThermoController.mpas,394 :: 		submenu1.row2 := timestr;
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
;ThermoController.mpas,395 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,396 :: 		end;
L__ReadTime172:
;ThermoController.mpas,397 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,398 :: 		end;
	GOTO        L__ReadTime167
;ThermoController.mpas,399 :: 		end;
	RETURN      0
; end of _ReadTime

_SaveTime:

;ThermoController.mpas,402 :: 		begin
;ThermoController.mpas,403 :: 		while true do
L__SaveTime176:
;ThermoController.mpas,405 :: 		OS_WaitSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,406 :: 		Ds1307_Set_TimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Set_TimeDate_TimeDate+1 
	CALL        _Ds1307_Set_TimeDate+0, 0
;ThermoController.mpas,407 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,408 :: 		end;
	GOTO        L__SaveTime176
;ThermoController.mpas,409 :: 		end;
	RETURN      0
; end of _SaveTime

_NavigateMenu:

;ThermoController.mpas,412 :: 		begin
;ThermoController.mpas,413 :: 		while true do
L__NavigateMenu182:
;ThermoController.mpas,415 :: 		OS_WaitSemaphore(S_Navigate);
	MOVF        _S_Navigate+0, 0 
	MOVWF       FARG_OS_WaitSemaphore_Event_+0 
	CALL        _OS_WaitSemaphore+0, 0
;ThermoController.mpas,416 :: 		if enter = 255 then
	MOVF        _enter+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu187
;ThermoController.mpas,432 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu401
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu401:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu402
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu402:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu403
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu403:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu404
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu404:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu190
;ThermoController.mpas,434 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu193
;ThermoController.mpas,436 :: 		edit := true;
	MOVLW       255
	MOVWF       _edit+0 
;ThermoController.mpas,437 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,438 :: 		end
	GOTO        L__NavigateMenu194
;ThermoController.mpas,439 :: 		else
L__NavigateMenu193:
;ThermoController.mpas,441 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,442 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu196
;ThermoController.mpas,443 :: 		edit := false;
	CLRF        _edit+0 
L__NavigateMenu196:
;ThermoController.mpas,444 :: 		end;
L__NavigateMenu194:
;ThermoController.mpas,445 :: 		end;
L__NavigateMenu190:
;ThermoController.mpas,447 :: 		current_node := current_node^.child;
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
;ThermoController.mpas,448 :: 		enter := 0;
	CLRF        _enter+0 
;ThermoController.mpas,449 :: 		end;
L__NavigateMenu187:
;ThermoController.mpas,450 :: 		if esc = 255 then
	MOVF        _esc+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu199
;ThermoController.mpas,470 :: 		if (current_node = @submenu1) or (current_node = @submenu2[1]) or (current_node = @submenu2[2]) or (current_node = @submenu2[3]) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu405
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu405:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu406
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu406:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+42)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu407
	MOVLW       _submenu2+42
	XORWF       _current_node+0, 0 
L__NavigateMenu407:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	IORWF       R1, 1 
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu408
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu408:
	MOVLW       255
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu202
;ThermoController.mpas,472 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu205
;ThermoController.mpas,474 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,476 :: 		if (current_node = @submenu1) then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu409
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu409:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu208
;ThermoController.mpas,478 :: 		OS_SignalSemaphore(S_SetTime);
	MOVF        _S_SetTime+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,479 :: 		end;
L__NavigateMenu208:
;ThermoController.mpas,480 :: 		end
	GOTO        L__NavigateMenu206
;ThermoController.mpas,481 :: 		else
L__NavigateMenu205:
;ThermoController.mpas,483 :: 		if edit then
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu211
;ThermoController.mpas,485 :: 		underscore := true;
	MOVLW       255
	MOVWF       _underscore+0 
;ThermoController.mpas,486 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,487 :: 		end
	GOTO        L__NavigateMenu212
;ThermoController.mpas,488 :: 		else
L__NavigateMenu211:
;ThermoController.mpas,490 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,491 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,492 :: 		end;
L__NavigateMenu212:
;ThermoController.mpas,493 :: 		end
L__NavigateMenu206:
;ThermoController.mpas,494 :: 		end
	GOTO        L__NavigateMenu203
;ThermoController.mpas,495 :: 		else
L__NavigateMenu202:
;ThermoController.mpas,497 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,498 :: 		current_node := current_node^.parent;
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
;ThermoController.mpas,499 :: 		end;
L__NavigateMenu203:
;ThermoController.mpas,500 :: 		esc := 0;
	CLRF        _esc+0 
;ThermoController.mpas,501 :: 		end;
L__NavigateMenu199:
;ThermoController.mpas,503 :: 		if up = 255 then
	MOVF        _up+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu214
;ThermoController.mpas,506 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu410
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu410:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu219
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu221
;ThermoController.mpas,508 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,510 :: 		3:     if timedate.Year = 99 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu411
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu411:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu226
	MOVF        _timedate+6, 0 
	XORLW       99
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu228
;ThermoController.mpas,511 :: 		timedate.Year := 0
	CLRF        _timedate+6 
	GOTO        L__NavigateMenu229
;ThermoController.mpas,512 :: 		else timedate.Year := timeDate.Year + 1;
L__NavigateMenu228:
	MOVF        _timedate+6, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu229:
	GOTO        L__NavigateMenu223
L__NavigateMenu226:
;ThermoController.mpas,513 :: 		2:     if timedate.Month = 12 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu412
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu412:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu232
	MOVF        _timedate+5, 0 
	XORLW       12
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu234
;ThermoController.mpas,514 :: 		timedate.Month := 1
	MOVLW       1
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu235
;ThermoController.mpas,515 :: 		else timedate.Month := timeDate.Month + 1;
L__NavigateMenu234:
	MOVF        _timedate+5, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu235:
	GOTO        L__NavigateMenu223
L__NavigateMenu232:
;ThermoController.mpas,516 :: 		1:     if timedate.Date = maxday[timedate.Month] then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu413
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu413:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu238
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
	GOTO        L__NavigateMenu240
;ThermoController.mpas,517 :: 		timedate.Date := 1
	MOVLW       1
	MOVWF       _timedate+4 
	GOTO        L__NavigateMenu241
;ThermoController.mpas,518 :: 		else timedate.Date := timeDate.Date + 1;
L__NavigateMenu240:
	MOVF        _timedate+4, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu241:
	GOTO        L__NavigateMenu223
L__NavigateMenu238:
;ThermoController.mpas,519 :: 		4:     if timedate.Hours = 23 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu414
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu414:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu244
	MOVF        _timedate+2, 0 
	XORLW       23
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu246
;ThermoController.mpas,520 :: 		timedate.Hours := 0
	CLRF        _timedate+2 
	GOTO        L__NavigateMenu247
;ThermoController.mpas,521 :: 		else timedate.Hours := timeDate.Hours + 1;
L__NavigateMenu246:
	MOVF        _timedate+2, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu247:
	GOTO        L__NavigateMenu223
L__NavigateMenu244:
;ThermoController.mpas,522 :: 		5:     if timedate.Minutes = 59 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu415
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu415:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu250
	MOVF        _timedate+1, 0 
	XORLW       59
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu252
;ThermoController.mpas,523 :: 		timedate.Minutes := 0
	CLRF        _timedate+1 
	GOTO        L__NavigateMenu253
;ThermoController.mpas,524 :: 		else timedate.Minutes := timeDate.Minutes + 1;
L__NavigateMenu252:
	MOVF        _timedate+1, 0 
	ADDLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu253:
	GOTO        L__NavigateMenu223
L__NavigateMenu250:
L__NavigateMenu223:
;ThermoController.mpas,526 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,527 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,528 :: 		submenu1.row1 := datestr;
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
;ThermoController.mpas,529 :: 		submenu1.row2 := timestr;
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
;ThermoController.mpas,530 :: 		end
	GOTO        L__NavigateMenu222
;ThermoController.mpas,531 :: 		else if underscore then
L__NavigateMenu221:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu255
;ThermoController.mpas,532 :: 		index := (index  mod 5) + 1;
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
L__NavigateMenu255:
L__NavigateMenu222:
	GOTO        L__NavigateMenu216
L__NavigateMenu219:
;ThermoController.mpas,533 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu416
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu416:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu259
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu261
;ThermoController.mpas,535 :: 		funcDays[index] := not funcDays[index];
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
;ThermoController.mpas,536 :: 		end
	GOTO        L__NavigateMenu262
;ThermoController.mpas,537 :: 		else
L__NavigateMenu261:
;ThermoController.mpas,539 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu264
;ThermoController.mpas,541 :: 		index := (index  mod 7) + 1;
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
;ThermoController.mpas,542 :: 		end
	GOTO        L__NavigateMenu265
;ThermoController.mpas,543 :: 		else
L__NavigateMenu264:
;ThermoController.mpas,545 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,546 :: 		end;
L__NavigateMenu265:
;ThermoController.mpas,547 :: 		end;
L__NavigateMenu262:
	GOTO        L__NavigateMenu216
L__NavigateMenu259:
;ThermoController.mpas,548 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu417
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu417:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu268
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu270
;ThermoController.mpas,550 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu418
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu418:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu273
;ThermoController.mpas,552 :: 		min_temp := min_temp + 1;
	INFSNZ      _min_temp+0, 1 
	INCF        _min_temp+1, 1 
;ThermoController.mpas,553 :: 		if (min_temp > max_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu419
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu419:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu276
;ThermoController.mpas,554 :: 		min_temp := max_temp;
	MOVF        _max_temp+0, 0 
	MOVWF       _min_temp+0 
	MOVF        _max_temp+1, 0 
	MOVWF       _min_temp+1 
L__NavigateMenu276:
;ThermoController.mpas,555 :: 		end
	GOTO        L__NavigateMenu274
;ThermoController.mpas,556 :: 		else
L__NavigateMenu273:
;ThermoController.mpas,558 :: 		max_temp := max_temp + 1;
	INFSNZ      _max_temp+0, 1 
	INCF        _max_temp+1, 1 
;ThermoController.mpas,559 :: 		if (max_temp > 50) then
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _max_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu420
	MOVF        _max_temp+0, 0 
	SUBLW       50
L__NavigateMenu420:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu279
;ThermoController.mpas,560 :: 		max_temp := 50;
	MOVLW       50
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
L__NavigateMenu279:
;ThermoController.mpas,561 :: 		end;
L__NavigateMenu274:
;ThermoController.mpas,562 :: 		end
	GOTO        L__NavigateMenu271
;ThermoController.mpas,563 :: 		else
L__NavigateMenu270:
;ThermoController.mpas,565 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu282
;ThermoController.mpas,567 :: 		index := (index  mod 2) + 1;
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
;ThermoController.mpas,568 :: 		end
	GOTO        L__NavigateMenu283
;ThermoController.mpas,569 :: 		else
L__NavigateMenu282:
;ThermoController.mpas,571 :: 		current_node := current_node^.next;
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
;ThermoController.mpas,572 :: 		end;
L__NavigateMenu283:
;ThermoController.mpas,573 :: 		end
L__NavigateMenu271:
;ThermoController.mpas,575 :: 		else
	GOTO        L__NavigateMenu216
L__NavigateMenu268:
;ThermoController.mpas,576 :: 		current_node := current_node^.next;
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
L__NavigateMenu216:
;ThermoController.mpas,578 :: 		up := 0;
	CLRF        _up+0 
;ThermoController.mpas,579 :: 		end;
L__NavigateMenu214:
;ThermoController.mpas,581 :: 		if down = 255 then
	MOVF        _down+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu285
;ThermoController.mpas,584 :: 		@submenu1:   if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu1+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu421
	MOVLW       _submenu1+0
	XORWF       _current_node+0, 0 
L__NavigateMenu421:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu290
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu292
;ThermoController.mpas,586 :: 		Ds1307_Bcd2DecTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Bcd2DecTimeDate_TimeDate+1 
	CALL        _Ds1307_Bcd2DecTimeDate+0, 0
;ThermoController.mpas,588 :: 		3:     if timedate.Year = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu422
	MOVLW       3
	XORWF       _index+0, 0 
L__NavigateMenu422:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu297
	MOVF        _timedate+6, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu299
;ThermoController.mpas,589 :: 		timedate.Year := 99
	MOVLW       99
	MOVWF       _timedate+6 
	GOTO        L__NavigateMenu300
;ThermoController.mpas,590 :: 		else timedate.Year := timeDate.Year - 1;
L__NavigateMenu299:
	DECF        _timedate+6, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+6 
L__NavigateMenu300:
	GOTO        L__NavigateMenu294
L__NavigateMenu297:
;ThermoController.mpas,591 :: 		2:     if timedate.Month = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu423
	MOVLW       2
	XORWF       _index+0, 0 
L__NavigateMenu423:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu303
	MOVF        _timedate+5, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu305
;ThermoController.mpas,592 :: 		timedate.Month := 12
	MOVLW       12
	MOVWF       _timedate+5 
	GOTO        L__NavigateMenu306
;ThermoController.mpas,593 :: 		else timedate.Month := timeDate.Month - 1;
L__NavigateMenu305:
	DECF        _timedate+5, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+5 
L__NavigateMenu306:
	GOTO        L__NavigateMenu294
L__NavigateMenu303:
;ThermoController.mpas,594 :: 		1:     if timedate.Date = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu424
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu424:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu309
	MOVF        _timedate+4, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu311
;ThermoController.mpas,595 :: 		timedate.Date := maxday[timedate.Month]
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
	GOTO        L__NavigateMenu312
;ThermoController.mpas,596 :: 		else timedate.Date := timeDate.Date - 1;
L__NavigateMenu311:
	DECF        _timedate+4, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+4 
L__NavigateMenu312:
	GOTO        L__NavigateMenu294
L__NavigateMenu309:
;ThermoController.mpas,597 :: 		4:     if timedate.Hours = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu425
	MOVLW       4
	XORWF       _index+0, 0 
L__NavigateMenu425:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu315
	MOVF        _timedate+2, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu317
;ThermoController.mpas,598 :: 		timedate.Hours := 23
	MOVLW       23
	MOVWF       _timedate+2 
	GOTO        L__NavigateMenu318
;ThermoController.mpas,599 :: 		else timedate.Hours := timeDate.Hours - 1;
L__NavigateMenu317:
	DECF        _timedate+2, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+2 
L__NavigateMenu318:
	GOTO        L__NavigateMenu294
L__NavigateMenu315:
;ThermoController.mpas,600 :: 		5:     if timedate.Minutes = 0 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu426
	MOVLW       5
	XORWF       _index+0, 0 
L__NavigateMenu426:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu321
	MOVF        _timedate+1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu323
;ThermoController.mpas,601 :: 		timedate.Minutes := 59
	MOVLW       59
	MOVWF       _timedate+1 
	GOTO        L__NavigateMenu324
;ThermoController.mpas,602 :: 		else timedate.Minutes := timeDate.Minutes - 1;
L__NavigateMenu323:
	DECF        _timedate+1, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       _timedate+1 
L__NavigateMenu324:
	GOTO        L__NavigateMenu294
L__NavigateMenu321:
L__NavigateMenu294:
;ThermoController.mpas,604 :: 		Ds1307_Dec2BcdTimeDate(timedate);
	MOVLW       _timedate+0
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+0 
	MOVLW       hi_addr(_timedate+0)
	MOVWF       FARG_Ds1307_Dec2BcdTimeDate_TimeDate+1 
	CALL        _Ds1307_Dec2BcdTimeDate+0, 0
;ThermoController.mpas,605 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,606 :: 		submenu1.row1 := datestr;
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
;ThermoController.mpas,607 :: 		submenu1.row2 := timestr;
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
;ThermoController.mpas,608 :: 		end
	GOTO        L__NavigateMenu293
;ThermoController.mpas,609 :: 		else if underscore then
L__NavigateMenu292:
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu326
;ThermoController.mpas,610 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu427
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu427:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu329
;ThermoController.mpas,611 :: 		index := 5
	MOVLW       5
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu330
;ThermoController.mpas,612 :: 		else
L__NavigateMenu329:
;ThermoController.mpas,613 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu330:
L__NavigateMenu326:
L__NavigateMenu293:
	GOTO        L__NavigateMenu287
L__NavigateMenu290:
;ThermoController.mpas,614 :: 		@submenu2[1]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+0)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu428
	MOVLW       _submenu2+0
	XORWF       _current_node+0, 0 
L__NavigateMenu428:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu333
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu335
;ThermoController.mpas,616 :: 		funcDays[index] := not funcDays[index];
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
;ThermoController.mpas,617 :: 		end
	GOTO        L__NavigateMenu336
;ThermoController.mpas,618 :: 		else
L__NavigateMenu335:
;ThermoController.mpas,620 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu338
;ThermoController.mpas,622 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu429
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu429:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu341
;ThermoController.mpas,623 :: 		index := 7
	MOVLW       7
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu342
;ThermoController.mpas,624 :: 		else
L__NavigateMenu341:
;ThermoController.mpas,625 :: 		index := index - 1;
	MOVLW       1
	SUBWF       _index+0, 1 
	MOVLW       0
	SUBWFB      _index+1, 1 
L__NavigateMenu342:
;ThermoController.mpas,626 :: 		end
	GOTO        L__NavigateMenu339
;ThermoController.mpas,627 :: 		else
L__NavigateMenu338:
;ThermoController.mpas,629 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,630 :: 		end;
L__NavigateMenu339:
;ThermoController.mpas,631 :: 		end;
L__NavigateMenu336:
	GOTO        L__NavigateMenu287
L__NavigateMenu333:
;ThermoController.mpas,632 :: 		@submenu2[3]:  if edit then
	MOVF        _current_node+1, 0 
	XORLW       hi_addr(_submenu2+84)
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu430
	MOVLW       _submenu2+84
	XORWF       _current_node+0, 0 
L__NavigateMenu430:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu345
	MOVF        _edit+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu347
;ThermoController.mpas,634 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu431
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu431:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu350
;ThermoController.mpas,636 :: 		min_temp := min_temp - 1;
	MOVLW       1
	SUBWF       _min_temp+0, 1 
	MOVLW       0
	SUBWFB      _min_temp+1, 1 
;ThermoController.mpas,637 :: 		if (min_temp < 0) then
	MOVLW       128
	XORWF       _min_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu432
	MOVLW       0
	SUBWF       _min_temp+0, 0 
L__NavigateMenu432:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu353
;ThermoController.mpas,638 :: 		min_temp := 0;
	CLRF        _min_temp+0 
	CLRF        _min_temp+1 
L__NavigateMenu353:
;ThermoController.mpas,639 :: 		end
	GOTO        L__NavigateMenu351
;ThermoController.mpas,640 :: 		else
L__NavigateMenu350:
;ThermoController.mpas,642 :: 		max_temp := max_temp - 1;
	MOVLW       1
	SUBWF       _max_temp+0, 1 
	MOVLW       0
	SUBWFB      _max_temp+1, 1 
;ThermoController.mpas,643 :: 		if (max_temp < min_temp) then
	MOVLW       128
	XORWF       _max_temp+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _min_temp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu433
	MOVF        _min_temp+0, 0 
	SUBWF       _max_temp+0, 0 
L__NavigateMenu433:
	BTFSC       STATUS+0, 0 
	GOTO        L__NavigateMenu356
;ThermoController.mpas,644 :: 		max_temp := min_temp;
	MOVF        _min_temp+0, 0 
	MOVWF       _max_temp+0 
	MOVF        _min_temp+1, 0 
	MOVWF       _max_temp+1 
L__NavigateMenu356:
;ThermoController.mpas,645 :: 		end;
L__NavigateMenu351:
;ThermoController.mpas,646 :: 		end
	GOTO        L__NavigateMenu348
;ThermoController.mpas,647 :: 		else
L__NavigateMenu347:
;ThermoController.mpas,649 :: 		if underscore then
	MOVF        _underscore+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L__NavigateMenu359
;ThermoController.mpas,651 :: 		if index = 1 then
	MOVLW       0
	XORWF       _index+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu434
	MOVLW       1
	XORWF       _index+0, 0 
L__NavigateMenu434:
	BTFSS       STATUS+0, 2 
	GOTO        L__NavigateMenu362
;ThermoController.mpas,652 :: 		index := 2
	MOVLW       2
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
	GOTO        L__NavigateMenu363
;ThermoController.mpas,653 :: 		else
L__NavigateMenu362:
;ThermoController.mpas,654 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
L__NavigateMenu363:
;ThermoController.mpas,655 :: 		end
	GOTO        L__NavigateMenu360
;ThermoController.mpas,656 :: 		else
L__NavigateMenu359:
;ThermoController.mpas,658 :: 		current_node := current_node^.prev;
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
;ThermoController.mpas,659 :: 		end;
L__NavigateMenu360:
;ThermoController.mpas,660 :: 		end
L__NavigateMenu348:
;ThermoController.mpas,661 :: 		else
	GOTO        L__NavigateMenu287
L__NavigateMenu345:
;ThermoController.mpas,662 :: 		current_node := current_node^.prev;
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
L__NavigateMenu287:
;ThermoController.mpas,664 :: 		down := 0;
	CLRF        _down+0 
;ThermoController.mpas,665 :: 		end;
L__NavigateMenu285:
;ThermoController.mpas,666 :: 		OS_SignalSemaphore(S_Display);
	MOVF        _S_Display+0, 0 
	MOVWF       FARG_OS_SignalSemaphore_Event_+0 
	CALL        _OS_SignalSemaphore+0, 0
;ThermoController.mpas,667 :: 		OS_Yield;
	CALL        _OS_Yield+0, 0
;ThermoController.mpas,668 :: 		end;
	GOTO        L__NavigateMenu182
;ThermoController.mpas,669 :: 		end;
	RETURN      0
; end of _NavigateMenu

_main:

;ThermoController.mpas,671 :: 		begin
;ThermoController.mpas,674 :: 		Delay_ms(100);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L__main365:
	DECFSZ      R13, 1, 1
	BRA         L__main365
	DECFSZ      R12, 1, 1
	BRA         L__main365
	DECFSZ      R11, 1, 1
	BRA         L__main365
	NOP
;ThermoController.mpas,675 :: 		LATC:=0xFF;
	MOVLW       255
	MOVWF       LATC+0 
;ThermoController.mpas,676 :: 		TRISC:=0xff;
	MOVLW       255
	MOVWF       TRISC+0 
;ThermoController.mpas,677 :: 		LATD:=0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;ThermoController.mpas,678 :: 		TRISD:=0xff;
	MOVLW       255
	MOVWF       TRISD+0 
;ThermoController.mpas,680 :: 		TRISC.2 := 0; //out latc.2
	BCF         TRISC+0, 2 
;ThermoController.mpas,681 :: 		Trisb.5 := 0; //out latb.5
	BCF         TRISB+0, 5 
;ThermoController.mpas,682 :: 		Trisb.4 := 1; //in portb.4
	BSF         TRISB+0, 4 
;ThermoController.mpas,683 :: 		TrisE.0 := 1; //in portE.0
	BSF         TRISE+0, 0 
;ThermoController.mpas,684 :: 		TrisE.1 := 1; //in portE.1
	BSF         TRISE+0, 1 
;ThermoController.mpas,685 :: 		TrisE.2 := 1; //in portE.2
	BSF         TRISE+0, 2 
;ThermoController.mpas,686 :: 		TrisD.0 := 1; //
	BSF         TRISD+0, 0 
;ThermoController.mpas,687 :: 		TrisD.1 := 1;
	BSF         TRISD+0, 1 
;ThermoController.mpas,688 :: 		TrisD.2 := 1;
	BSF         TRISD+0, 2 
;ThermoController.mpas,689 :: 		TrisD.3 := 1;
	BSF         TRISD+0, 3 
;ThermoController.mpas,692 :: 		Lcd_Init();                        // Initialize LCD
	CALL        _Lcd_Init+0, 0
;ThermoController.mpas,693 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,694 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ThermoController.mpas,697 :: 		for i:=1 to 4 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main367:
;ThermoController.mpas,698 :: 		Temp[i] := 0;
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
	GOTO        L__main435
	MOVLW       4
	XORWF       _i+0, 0 
L__main435:
	BTFSC       STATUS+0, 2 
	GOTO        L__main370
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main367
L__main370:
;ThermoController.mpas,699 :: 		temp_index := 0;
	CLRF        _Temp_index+0 
;ThermoController.mpas,702 :: 		for i:=1 to 7 do
	MOVLW       1
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L__main372:
;ThermoController.mpas,703 :: 		funcDays[i] := false;
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
	GOTO        L__main436
	MOVLW       7
	XORWF       _i+0, 0 
L__main436:
	BTFSC       STATUS+0, 2 
	GOTO        L__main375
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	GOTO        L__main372
L__main375:
;ThermoController.mpas,704 :: 		funcDaysString[1]:= 'Monday       ';
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
;ThermoController.mpas,705 :: 		funcDaysString[2]:= 'Tuesday      ';
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
;ThermoController.mpas,706 :: 		funcDaysString[3]:= 'Wednsday     ';
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
;ThermoController.mpas,707 :: 		funcDaysString[4]:= 'Thursday     ';
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
;ThermoController.mpas,708 :: 		funcDaysString[5]:= 'Friday       ';
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
;ThermoController.mpas,709 :: 		funcDaysString[6]:= 'Saturday     ';
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
;ThermoController.mpas,710 :: 		funcDaysString[7]:= 'Sunday       ';
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
;ThermoController.mpas,711 :: 		funcDaysStatus := 'OFF';
	MOVLW       79
	MOVWF       _funcDaysStatus+0 
	MOVLW       70
	MOVWF       _funcDaysStatus+1 
	MOVLW       70
	MOVWF       _funcDaysStatus+2 
	CLRF        _funcDaysStatus+3 
;ThermoController.mpas,712 :: 		min_temp := 19;
	MOVLW       19
	MOVWF       _min_temp+0 
	MOVLW       0
	MOVWF       _min_temp+1 
;ThermoController.mpas,713 :: 		max_temp := 22;
	MOVLW       22
	MOVWF       _max_temp+0 
	MOVLW       0
	MOVWF       _max_temp+1 
;ThermoController.mpas,714 :: 		start_hour := 7;
	MOVLW       7
	MOVWF       _start_hour+0 
;ThermoController.mpas,715 :: 		end_hour := 21;
	MOVLW       21
	MOVWF       _end_hour+0 
;ThermoController.mpas,718 :: 		ADCON1 := %00111111; //all analog pins as digital
	MOVLW       63
	MOVWF       ADCON1+0 
;ThermoController.mpas,720 :: 		I2c1_Init(100000);
	MOVLW       120
	MOVWF       SSPADD+0 
	CALL        _I2C1_Init+0, 0
;ThermoController.mpas,721 :: 		DS1307_Init;                      // Ds1307 Real Time clock
	CALL        _Ds1307_Init+0, 0
;ThermoController.mpas,722 :: 		Delay_ms(500);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L__main376:
	DECFSZ      R13, 1, 1
	BRA         L__main376
	DECFSZ      R12, 1, 1
	BRA         L__main376
	DECFSZ      R11, 1, 1
	BRA         L__main376
	NOP
;ThermoController.mpas,725 :: 		Ds1307_TimeDateStr(timedate,timestr,datestr);
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
;ThermoController.mpas,727 :: 		InitMenu;
	CALL        _InitMenu+0, 0
;ThermoController.mpas,728 :: 		LCD_OUT(1,1,'ddd');
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
;ThermoController.mpas,731 :: 		edit := false;
	CLRF        _edit+0 
;ThermoController.mpas,732 :: 		underscore := false;
	CLRF        _underscore+0 
;ThermoController.mpas,733 :: 		index := 1;
	MOVLW       1
	MOVWF       _index+0 
	MOVLW       0
	MOVWF       _index+1 
;ThermoController.mpas,736 :: 		OS_Init;
	CALL        _OS_Init+0, 0
;ThermoController.mpas,745 :: 		T_ReadTemp := OS_CreateTask(@ReadTemp, 2);
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
;ThermoController.mpas,746 :: 		T_ReadTime := OS_CreateTask(@ReadTime, 1);
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
;ThermoController.mpas,747 :: 		T_DisplayLED := OS_CreateTask(@DisplayLED, 1);
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
;ThermoController.mpas,748 :: 		T_ReadKeys := OS_CreateTask(@ReadKeys, 0);
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
;ThermoController.mpas,749 :: 		T_NavigateMenu := OS_CreateTask(@NavigateMenu, 3);
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
;ThermoController.mpas,750 :: 		T_SaveTime := OS_CreateTask(@SaveTime, 3);
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
;ThermoController.mpas,753 :: 		S_Display := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Display+0 
;ThermoController.mpas,754 :: 		S_Navigate := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_Navigate+0 
;ThermoController.mpas,755 :: 		S_SetTime := OS_CreateBinarySemaphore(False);
	CLRF        FARG_OS_CreateBinarySemaphore_InitialValue+0 
	CALL        _OS_CreateBinarySemaphore+0, 0
	MOVF        R0, 0 
	MOVWF       _S_SetTime+0 
;ThermoController.mpas,758 :: 		OS_StartTask(T_ReadTemp);
	MOVF        _T_ReadTemp+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,759 :: 		OS_StartTask(T_ReadTime);
	MOVF        _T_ReadTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,760 :: 		OS_StartTask(T_DisplayLED);
	MOVF        _T_DisplayLED+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,761 :: 		OS_StartTask(T_ReadKeys);
	MOVF        _T_ReadKeys+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,762 :: 		OS_StartTask(T_NavigateMenu);
	MOVF        _T_NavigateMenu+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,763 :: 		OS_StartTask(T_SaveTime);
	MOVF        _T_SaveTime+0, 0 
	MOVWF       FARG_OS_StartTask_TaskID+0 
	CALL        _OS_StartTask+0, 0
;ThermoController.mpas,766 :: 		T1CKPS0_bit := 1;
	BSF         T1CKPS0_bit+0, 4 
;ThermoController.mpas,767 :: 		T1CKPS1_bit := 0;
	BCF         T1CKPS1_bit+0, 5 
;ThermoController.mpas,768 :: 		TMR1CS_bit := 0; // internal clock
	BCF         TMR1CS_bit+0, 1 
;ThermoController.mpas,769 :: 		TMR1L := 0x40; // reset timer register
	MOVLW       64
	MOVWF       TMR1L+0 
;ThermoController.mpas,770 :: 		TMR1H := 0xA2;
	MOVLW       162
	MOVWF       TMR1H+0 
;ThermoController.mpas,771 :: 		OS_Timer_IE_bit := 0; // disable timebase interrupt, will be enabled in “OS_Run”
	BCF         TMR1IE_bit+0, 0 
;ThermoController.mpas,772 :: 		TMR1ON_bit := 1; // start timer
	BSF         TMR1ON_bit+0, 0 
;ThermoController.mpas,773 :: 		TMR1IF_bit := 0;
	BCF         TMR1IF_bit+0, 0 
;ThermoController.mpas,774 :: 		INTCON := 0xC0;
	MOVLW       192
	MOVWF       INTCON+0 
;ThermoController.mpas,776 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,777 :: 		UserLED := not UserLED;
	BTG         LATC+0, 2 
;ThermoController.mpas,781 :: 		OS_Run;
	CALL        _OS_Run+0, 0
;ThermoController.mpas,782 :: 		end.
	GOTO        $+0
; end of _main
