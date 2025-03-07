EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C1
U 1 1 5C9C6C49
P 1400 1000
F 0 "C1" V 1652 1000 50  0000 C CNN
F 1 "100n" V 1561 1000 50  0000 C CNN
F 2 "NilsLib:Kondensator_Keramik" H 1438 850 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5C9C6CE9
P 1150 1250
F 0 "R1" H 1220 1296 50  0000 L CNN
F 1 "15k" H 1220 1205 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 1080 1250 50  0001 C CNN
F 3 "~" H 1150 1250 50  0001 C CNN
	1    1150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1000 1150 1000
Wire Wire Line
	1150 1100 1150 1000
Connection ~ 1150 1000
Wire Wire Line
	1150 1000 1050 1000
$Comp
L Device:R R2
U 1 1 5C9C6D6B
P 1800 1000
F 0 "R2" V 1593 1000 50  0000 C CNN
F 1 "30k" V 1684 1000 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1730 1000 50  0001 C CNN
F 3 "~" H 1800 1000 50  0001 C CNN
	1    1800 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1000 1600 1000
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 5C9C6E28
P 2450 1100
F 0 "U1" H 2450 1467 50  0000 C CNN
F 1 "TL074" H 2450 1376 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2400 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2500 1300 50  0001 C CNN
	1    2450 1100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 5 1 5C9C6E95
P 2450 1100
F 0 "U1" H 2408 1146 50  0000 L CNN
F 1 "TL074" H 2408 1055 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2400 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2500 1300 50  0001 C CNN
	5    2450 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1000 1950 1000
$Comp
L power:+12V #PWR0101
U 1 1 5C9C6F0B
P 2350 800
F 0 "#PWR0101" H 2350 650 50  0001 C CNN
F 1 "+12V" H 2365 973 50  0000 C CNN
F 2 "" H 2350 800 50  0001 C CNN
F 3 "" H 2350 800 50  0001 C CNN
	1    2350 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1400 1150 1500
$Comp
L power:-12V #PWR0102
U 1 1 5C9C6F5B
P 2350 1400
F 0 "#PWR0102" H 2350 1500 50  0001 C CNN
F 1 "-12V" H 2365 1573 50  0000 C CNN
F 2 "" H 2350 1400 50  0001 C CNN
F 3 "" H 2350 1400 50  0001 C CNN
	1    2350 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C9C6F9C
P 1150 1500
F 0 "#PWR0103" H 1150 1250 50  0001 C CNN
F 1 "GND" H 1155 1327 50  0000 C CNN
F 2 "" H 1150 1500 50  0001 C CNN
F 3 "" H 1150 1500 50  0001 C CNN
	1    1150 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C9C727D
P 1600 1250
F 0 "R3" H 1670 1296 50  0000 L CNN
F 1 "1M" H 1670 1205 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 1530 1250 50  0001 C CNN
F 3 "~" H 1600 1250 50  0001 C CNN
	1    1600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1100 1600 1000
Connection ~ 1600 1000
Wire Wire Line
	1600 1000 1550 1000
Wire Wire Line
	1600 1400 1600 1500
$Comp
L power:GND #PWR0104
U 1 1 5C9C7311
P 1600 1550
F 0 "#PWR0104" H 1600 1300 50  0001 C CNN
F 1 "GND" H 1605 1377 50  0000 C CNN
F 2 "" H 1600 1550 50  0001 C CNN
F 3 "" H 1600 1550 50  0001 C CNN
	1    1600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C9C7342
P 1850 1500
F 0 "R4" V 1643 1500 50  0000 C CNN
F 1 "100k" V 1734 1500 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1780 1500 50  0001 C CNN
F 3 "~" H 1850 1500 50  0001 C CNN
	1    1850 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 1500 1600 1500
Connection ~ 1600 1500
Wire Wire Line
	1600 1500 1600 1550
Wire Wire Line
	2000 1500 2100 1500
Wire Wire Line
	2100 1500 2100 1200
Wire Wire Line
	2100 1200 2150 1200
$Comp
L Device:R R5
U 1 1 5C9C7464
P 2750 1350
F 0 "R5" H 2820 1396 50  0000 L CNN
F 1 "100k" H 2820 1305 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 2680 1350 50  0001 C CNN
F 3 "~" H 2750 1350 50  0001 C CNN
	1    2750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1200 2750 1100
Wire Wire Line
	2750 1500 2750 1600
Wire Wire Line
	2750 1600 2100 1600
Wire Wire Line
	2100 1600 2100 1500
Connection ~ 2100 1500
$Comp
L Device:C C2
U 1 1 5C9C7642
P 2950 1100
F 0 "C2" V 3202 1100 50  0000 C CNN
F 1 "100n" V 3111 1100 50  0000 C CNN
F 2 "NilsLib:Kondensator_Keramik" H 2988 950 50  0001 C CNN
F 3 "~" H 2950 1100 50  0001 C CNN
	1    2950 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1100 2750 1100
Connection ~ 2750 1100
$Comp
L Amplifier_Operational:TL074 U1
U 2 1 5C9C7973
P 3550 1200
F 0 "U1" H 3550 1567 50  0000 C CNN
F 1 "TL074" H 3550 1476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3500 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3600 1400 50  0001 C CNN
	2    3550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1100 3100 1100
$Comp
L Device:R R6
U 1 1 5C9C7B89
P 3100 1350
F 0 "R6" H 3170 1396 50  0000 L CNN
F 1 "1M" H 3170 1305 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 3030 1350 50  0001 C CNN
F 3 "~" H 3100 1350 50  0001 C CNN
	1    3100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1200 3100 1100
Connection ~ 3100 1100
Wire Wire Line
	3100 1500 3100 1600
$Comp
L power:GND #PWR0105
U 1 1 5C9C7E6A
P 3100 1650
F 0 "#PWR0105" H 3100 1400 50  0001 C CNN
F 1 "GND" H 3105 1477 50  0000 C CNN
F 2 "" H 3100 1650 50  0001 C CNN
F 3 "" H 3100 1650 50  0001 C CNN
	1    3100 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C9C7E8D
P 3300 1600
F 0 "R7" V 3093 1600 50  0000 C CNN
F 1 "6.8k" V 3184 1600 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 3230 1600 50  0001 C CNN
F 3 "~" H 3300 1600 50  0001 C CNN
	1    3300 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 1600 3100 1600
Connection ~ 3100 1600
Wire Wire Line
	3100 1600 3100 1650
Wire Wire Line
	3450 1600 3450 1500
Wire Wire Line
	3450 1500 3250 1500
Wire Wire Line
	3250 1500 3250 1300
$Comp
L Device:R R8
U 1 1 5C9C828D
P 3900 1400
F 0 "R8" H 3970 1446 50  0000 L CNN
F 1 "33k" H 3970 1355 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 3830 1400 50  0001 C CNN
F 3 "~" H 3900 1400 50  0001 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1250 3900 1200
Wire Wire Line
	3900 1200 3850 1200
Wire Wire Line
	3900 1550 3900 1600
Wire Wire Line
	3900 1600 3450 1600
Connection ~ 3450 1600
$Comp
L Device:R R9
U 1 1 5C9C8844
P 4200 1200
F 0 "R9" V 3993 1200 50  0000 C CNN
F 1 "10k" V 4084 1200 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 4130 1200 50  0001 C CNN
F 3 "~" H 4200 1200 50  0001 C CNN
	1    4200 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1200 3900 1200
Connection ~ 3900 1200
$Comp
L Amplifier_Operational:TL074 U1
U 3 1 5C9C9191
P 4800 1300
F 0 "U1" H 4800 1667 50  0000 C CNN
F 1 "TL074" H 4800 1576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4750 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4850 1500 50  0001 C CNN
	3    4800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1200 4350 1200
Wire Wire Line
	4350 1200 4350 1450
Connection ~ 4350 1200
$Comp
L Device:C C3
U 1 1 5C9C99EF
P 4350 1600
F 0 "C3" H 4465 1646 50  0000 L CNN
F 1 "22n" H 4465 1555 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 4388 1450 50  0001 C CNN
F 3 "~" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1750 4350 1800
$Comp
L power:GND #PWR0106
U 1 1 5C9C9E55
P 4350 1800
F 0 "#PWR0106" H 4350 1550 50  0001 C CNN
F 1 "GND" H 4355 1627 50  0000 C CNN
F 2 "" H 4350 1800 50  0001 C CNN
F 3 "" H 4350 1800 50  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1400 4500 1700
Wire Wire Line
	4500 1700 5200 1700
Wire Wire Line
	5200 1700 5200 1300
Wire Wire Line
	5200 1300 5100 1300
$Comp
L Device:R R10
U 1 1 5C9CA5FE
P 5350 1300
F 0 "R10" V 5143 1300 50  0000 C CNN
F 1 "10k" V 5234 1300 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 5280 1300 50  0001 C CNN
F 3 "~" H 5350 1300 50  0001 C CNN
	1    5350 1300
	0    1    1    0   
$EndComp
Connection ~ 5200 1300
$Comp
L Device:R R11
U 1 1 5C9CA804
P 5800 1300
F 0 "R11" V 5593 1300 50  0000 C CNN
F 1 "10k" V 5684 1300 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 5730 1300 50  0001 C CNN
F 3 "~" H 5800 1300 50  0001 C CNN
	1    5800 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 1300 5550 1300
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 5C9CAD24
P 6350 1400
F 0 "U1" H 6350 1767 50  0000 C CNN
F 1 "TL074" H 6350 1676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 6300 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6400 1600 50  0001 C CNN
	4    6350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1300 5950 1300
Wire Wire Line
	5550 1300 5550 950 
Wire Wire Line
	5550 950  6400 950 
Connection ~ 5550 1300
Wire Wire Line
	5550 1300 5500 1300
$Comp
L Device:C C5
U 1 1 5C9CB81E
P 6550 950
F 0 "C5" V 6298 950 50  0000 C CNN
F 1 "22n" V 6389 950 50  0000 C CNN
F 2 "NilsLib:Kondensator_Keramik" H 6588 800 50  0001 C CNN
F 3 "~" H 6550 950 50  0001 C CNN
	1    6550 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 950  6800 950 
Wire Wire Line
	6800 950  6800 1400
Wire Wire Line
	6800 1400 6750 1400
$Comp
L Device:R R12
U 1 1 5C9CBF45
P 5850 1700
F 0 "R12" V 5643 1700 50  0000 C CNN
F 1 "10k" V 5734 1700 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 5780 1700 50  0001 C CNN
F 3 "~" H 5850 1700 50  0001 C CNN
	1    5850 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 1500 6050 1700
Wire Wire Line
	6050 1700 6000 1700
$Comp
L Device:C C4
U 1 1 5C9CC6E2
P 5550 1600
F 0 "C4" H 5665 1646 50  0000 L CNN
F 1 "22n" H 5665 1555 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 5588 1450 50  0001 C CNN
F 3 "~" H 5550 1600 50  0001 C CNN
	1    5550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1700 5700 1800
Wire Wire Line
	5700 1800 5550 1800
Wire Wire Line
	5550 1800 5550 1750
Wire Wire Line
	5550 1800 5550 1850
Connection ~ 5550 1800
$Comp
L power:GND #PWR0107
U 1 1 5C9CD83B
P 5550 1850
F 0 "#PWR0107" H 5550 1600 50  0001 C CNN
F 1 "GND" H 5555 1677 50  0000 C CNN
F 2 "" H 5550 1850 50  0001 C CNN
F 3 "" H 5550 1850 50  0001 C CNN
	1    5550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1450 5950 1450
Wire Wire Line
	5950 1450 5950 1300
Connection ~ 5950 1300
$Comp
L Device:R R13
U 1 1 5C9CE1D7
P 6750 1600
F 0 "R13" H 6820 1646 50  0000 L CNN
F 1 "15k" H 6820 1555 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 6680 1600 50  0001 C CNN
F 3 "~" H 6750 1600 50  0001 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1450 6750 1400
Connection ~ 6750 1400
Wire Wire Line
	6750 1400 6650 1400
Wire Wire Line
	6750 1750 6750 1800
Wire Wire Line
	6750 1800 6050 1800
Wire Wire Line
	6050 1800 6050 1700
Connection ~ 6050 1700
$Comp
L Device:C C6
U 1 1 5C9CF760
P 7100 1400
F 0 "C6" V 6848 1400 50  0000 C CNN
F 1 "22n" V 6939 1400 50  0000 C CNN
F 2 "NilsLib:Kondensator_Keramik" H 7138 1250 50  0001 C CNN
F 3 "~" H 7100 1400 50  0001 C CNN
	1    7100 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 1400 6800 1400
Connection ~ 6800 1400
$Comp
L Device:R R14
U 1 1 5C9D0320
P 7350 1650
F 0 "R14" H 7420 1696 50  0000 L CNN
F 1 "1M" H 7420 1605 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 7280 1650 50  0001 C CNN
F 3 "~" H 7350 1650 50  0001 C CNN
	1    7350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1500 7350 1400
Wire Wire Line
	7350 1400 7250 1400
Wire Wire Line
	7350 1800 7350 1900
$Comp
L power:GND #PWR0108
U 1 1 5C9D1C70
P 7350 1900
F 0 "#PWR0108" H 7350 1650 50  0001 C CNN
F 1 "GND" H 7355 1727 50  0000 C CNN
F 2 "" H 7350 1900 50  0001 C CNN
F 3 "" H 7350 1900 50  0001 C CNN
	1    7350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1400 7900 1400
Wire Wire Line
	7900 1400 7900 2200
Connection ~ 7350 1400
$Comp
L Amplifier_Operational:TL074 U2
U 3 1 5C9D2C98
P 1250 2250
F 0 "U2" H 1250 2617 50  0000 C CNN
F 1 "TL074" H 1250 2526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1200 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1300 2450 50  0001 C CNN
	3    1250 2250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5C9D2D93
P 1850 2250
F 0 "D1" H 1850 2034 50  0000 C CNN
F 1 "1N4148" H 1850 2125 50  0000 C CNN
F 2 "NilsLib:Diode_Horizontal" H 1850 2075 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 1850 2250 50  0001 C CNN
	1    1850 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 2250 1650 2250
$Comp
L Amplifier_Operational:TL074 U2
U 5 1 5C9D3CCF
P 1250 2250
F 0 "U2" H 1208 2296 50  0000 L CNN
F 1 "TL074" H 1208 2205 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1200 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1300 2450 50  0001 C CNN
	5    1250 2250
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0109
U 1 1 5C9D3D4B
P 1150 2550
F 0 "#PWR0109" H 1150 2650 50  0001 C CNN
F 1 "-12V" H 1165 2723 50  0000 C CNN
F 2 "" H 1150 2550 50  0001 C CNN
F 3 "" H 1150 2550 50  0001 C CNN
	1    1150 2550
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0110
U 1 1 5C9D3F9A
P 1150 1950
F 0 "#PWR0110" H 1150 1800 50  0001 C CNN
F 1 "+12V" H 1165 2123 50  0000 C CNN
F 2 "" H 1150 1950 50  0001 C CNN
F 3 "" H 1150 1950 50  0001 C CNN
	1    1150 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5C9D408D
P 1500 2800
F 0 "R15" V 1293 2800 50  0000 C CNN
F 1 "10k" V 1384 2800 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1430 2800 50  0001 C CNN
F 3 "~" H 1500 2800 50  0001 C CNN
	1    1500 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 2800 1650 2250
Connection ~ 1650 2250
Wire Wire Line
	1650 2250 1550 2250
Wire Wire Line
	1350 2800 900  2800
Wire Wire Line
	900  2800 900  2350
Wire Wire Line
	900  2350 950  2350
$Comp
L Device:R R16
U 1 1 5C9D62FD
P 2200 2250
F 0 "R16" V 1993 2250 50  0000 C CNN
F 1 "3k" V 2084 2250 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 2130 2250 50  0001 C CNN
F 3 "~" H 2200 2250 50  0001 C CNN
	1    2200 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 2250 2000 2250
$Comp
L Device:C C7
U 1 1 5C9D7747
P 2400 2550
F 0 "C7" H 2515 2596 50  0000 L CNN
F 1 "100n" H 2515 2505 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 2438 2400 50  0001 C CNN
F 3 "~" H 2400 2550 50  0001 C CNN
	1    2400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2400 2400 2250
Wire Wire Line
	2400 2250 2350 2250
Wire Wire Line
	2400 2700 2400 2800
$Comp
L power:GND #PWR0111
U 1 1 5C9DA1EF
P 2400 2800
F 0 "#PWR0111" H 2400 2550 50  0001 C CNN
F 1 "GND" H 2475 2675 50  0000 C CNN
F 2 "" H 2400 2800 50  0001 C CNN
F 3 "" H 2400 2800 50  0001 C CNN
	1    2400 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5C9DA284
P 2300 1900
F 0 "R17" V 2093 1900 50  0000 C CNN
F 1 "10M" V 2184 1900 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 2230 1900 50  0001 C CNN
F 3 "~" H 2300 1900 50  0001 C CNN
	1    2300 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 1900 1950 1900
Wire Wire Line
	1950 1900 1950 1800
$Comp
L power:+12V #PWR0112
U 1 1 5C9DBA50
P 1950 1800
F 0 "#PWR0112" H 1950 1650 50  0001 C CNN
F 1 "+12V" H 1965 1973 50  0000 C CNN
F 2 "" H 1950 1800 50  0001 C CNN
F 3 "" H 1950 1800 50  0001 C CNN
	1    1950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1900 2500 1900
Wire Wire Line
	2500 1900 2500 2250
Wire Wire Line
	2500 2250 2400 2250
Connection ~ 2400 2250
$Comp
L Device:R R18
U 1 1 5C9DD411
P 2750 2550
F 0 "R18" H 2820 2596 50  0000 L CNN
F 1 "100k" H 2820 2505 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 2680 2550 50  0001 C CNN
F 3 "~" H 2750 2550 50  0001 C CNN
	1    2750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2400 2750 2250
Wire Wire Line
	2750 2250 2500 2250
Connection ~ 2500 2250
Wire Wire Line
	2750 2700 2750 2850
$Comp
L power:GND #PWR0113
U 1 1 5C9E0B47
P 2750 2850
F 0 "#PWR0113" H 2750 2600 50  0001 C CNN
F 1 "GND" H 2755 2677 50  0000 C CNN
F 2 "" H 2750 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0001 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 4 1 5C9E0BAD
P 3200 2150
F 0 "U2" H 3200 2517 50  0000 C CNN
F 1 "TL074" H 3200 2426 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3150 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3250 2350 50  0001 C CNN
	4    3200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2250 2750 2250
Connection ~ 2750 2250
Wire Wire Line
	2900 2050 2900 2000
Wire Wire Line
	4100 1900 4100 2050
Wire Wire Line
	4100 2050 5450 2050
Wire Wire Line
	5450 2050 5450 2150
Wire Wire Line
	5450 2150 7700 2150
Wire Wire Line
	7700 2150 7700 2200
Wire Wire Line
	7700 2200 7900 2200
Wire Wire Line
	2900 1900 4100 1900
$Comp
L Diode:1N4148 D6
U 1 1 5C9E6E35
P 3700 2150
F 0 "D6" H 3700 1934 50  0000 C CNN
F 1 "1N4148" H 3700 2025 50  0000 C CNN
F 2 "NilsLib:Diode_Horizontal" H 3700 1975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 3700 2150 50  0001 C CNN
	1    3700 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 2150 3500 2150
Wire Wire Line
	2900 2000 2850 2000
Connection ~ 2900 2000
Wire Wire Line
	2900 2000 2900 1900
$Comp
L Device:R R28
U 1 1 5C9EB574
P 3450 2450
F 0 "R28" V 3243 2450 50  0000 C CNN
F 1 "100k" V 3334 2450 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 3380 2450 50  0001 C CNN
F 3 "~" H 3450 2450 50  0001 C CNN
	1    3450 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 2150 3900 2150
Wire Wire Line
	3900 2150 3900 2250
Wire Wire Line
	3900 2450 3600 2450
Wire Wire Line
	3300 2450 3150 2450
Wire Wire Line
	3150 2450 3150 2550
$Comp
L power:GND #PWR0114
U 1 1 5C9F06FD
P 3150 2550
F 0 "#PWR0114" H 3150 2300 50  0001 C CNN
F 1 "GND" H 3155 2377 50  0000 C CNN
F 2 "" H 3150 2550 50  0001 C CNN
F 3 "" H 3150 2550 50  0001 C CNN
	1    3150 2550
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4013 U5
U 1 1 5C9F0785
P 4400 2650
F 0 "U5" H 4400 3128 50  0000 C CNN
F 1 "4013" H 4400 3037 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4400 2650 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 4400 2650 50  0001 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2250 3900 2250
Wire Wire Line
	4400 2250 4400 2350
Connection ~ 3900 2250
Wire Wire Line
	3900 2250 3900 2450
$Comp
L 4xxx:4013 U5
U 3 1 5C9F33EE
P 8450 1100
F 0 "U5" H 8680 1146 50  0000 L CNN
F 1 "4013" H 8680 1055 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 8450 1100 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 8450 1100 50  0001 C CNN
	3    8450 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1500 8450 1600
Wire Wire Line
	8450 700  8450 650 
$Comp
L power:+12V #PWR0115
U 1 1 5C9F8FF5
P 8450 650
F 0 "#PWR0115" H 8450 500 50  0001 C CNN
F 1 "+12V" H 8465 823 50  0000 C CNN
F 2 "" H 8450 650 50  0001 C CNN
F 3 "" H 8450 650 50  0001 C CNN
	1    8450 650 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5C9F9138
P 8450 1600
F 0 "#PWR0116" H 8450 1350 50  0001 C CNN
F 1 "GND" H 8455 1427 50  0000 C CNN
F 2 "" H 8450 1600 50  0001 C CNN
F 3 "" H 8450 1600 50  0001 C CNN
	1    8450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2550 4050 2550
Wire Wire Line
	4050 2550 4050 2650
Wire Wire Line
	4050 2650 4100 2650
Wire Wire Line
	4050 2650 4050 2700
Connection ~ 4050 2650
$Comp
L power:GND #PWR0117
U 1 1 5C9FF470
P 4050 2700
F 0 "#PWR0117" H 4050 2450 50  0001 C CNN
F 1 "GND" H 4055 2527 50  0000 C CNN
F 2 "" H 4050 2700 50  0001 C CNN
F 3 "" H 4050 2700 50  0001 C CNN
	1    4050 2700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4013 U5
U 2 1 5CA02654
P 5300 2650
F 0 "U5" H 5300 3128 50  0000 C CNN
F 1 "4013" H 5300 3037 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 5300 2650 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 5300 2650 50  0001 C CNN
	2    5300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2550 4850 2650
Wire Wire Line
	4850 2650 5000 2650
Wire Wire Line
	4700 2550 4850 2550
Wire Wire Line
	5000 2350 5300 2350
Wire Wire Line
	5000 2350 5000 2250
Wire Wire Line
	5000 2250 4850 2250
Wire Wire Line
	4850 2250 4850 2300
$Comp
L power:GND #PWR0118
U 1 1 5CA0C7AD
P 4850 2300
F 0 "#PWR0118" H 4850 2050 50  0001 C CNN
F 1 "GND" H 4855 2127 50  0000 C CNN
F 2 "" H 4850 2300 50  0001 C CNN
F 3 "" H 4850 2300 50  0001 C CNN
	1    4850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2950 5300 3000
Wire Wire Line
	5300 3000 5750 3000
Wire Wire Line
	5750 3000 5750 2300
Wire Wire Line
	5750 2300 5300 2300
Wire Wire Line
	5300 2300 5300 2350
Connection ~ 5300 2350
Wire Wire Line
	5600 2750 5650 2750
Wire Wire Line
	5650 2750 5650 3050
Wire Wire Line
	5650 3050 4950 3050
Wire Wire Line
	4950 3050 4950 2550
Wire Wire Line
	4950 2550 5000 2550
Wire Wire Line
	4850 2650 4850 3150
Wire Wire Line
	4850 3150 5850 3150
Connection ~ 4850 2650
Wire Wire Line
	5600 2550 5850 2550
$Comp
L Device:R R30
U 1 1 5CA1CCFF
P 4400 3150
F 0 "R30" H 4470 3196 50  0000 L CNN
F 1 "100k" H 4470 3105 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 4330 3150 50  0001 C CNN
F 3 "~" H 4400 3150 50  0001 C CNN
	1    4400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3000 4400 2950
Wire Wire Line
	4400 3300 4400 3350
$Comp
L power:GND #PWR0119
U 1 1 5CA25718
P 4400 3350
F 0 "#PWR0119" H 4400 3100 50  0001 C CNN
F 1 "GND" H 4405 3177 50  0000 C CNN
F 2 "" H 4400 3350 50  0001 C CNN
F 3 "" H 4400 3350 50  0001 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3000 3800 3000
Connection ~ 4400 3000
$Comp
L Diode:1N4148 D5
U 1 1 5CA29E02
P 3650 3000
F 0 "D5" H 3650 2784 50  0000 C CNN
F 1 "1N4148" H 3650 2875 50  0000 C CNN
F 2 "NilsLib:Diode_Horizontal" H 3650 2825 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 3650 3000 50  0001 C CNN
	1    3650 3000
	-1   0    0    1   
$EndComp
Text GLabel 5850 2550 2    50   Input ~ 0
SUB
Text GLabel 5850 3150 2    50   Input ~ 0
PLS
$Comp
L Amplifier_Operational:TL074 U2
U 2 1 5CA2AD6A
P 1100 3300
F 0 "U2" H 1100 3667 50  0000 C CNN
F 1 "TL074" H 1100 3576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1050 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1150 3500 50  0001 C CNN
	2    1100 3300
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 5CA2ADF4
P 1650 3300
F 0 "D2" H 1650 3516 50  0000 C CNN
F 1 "1N4148" H 1650 3425 50  0000 C CNN
F 2 "NilsLib:Diode_Horizontal" H 1650 3125 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 1650 3300 50  0001 C CNN
	1    1650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3300 1400 3300
$Comp
L Device:R R20
U 1 1 5CA2F6EB
P 1350 3700
F 0 "R20" V 1143 3700 50  0000 C CNN
F 1 "10k" V 1234 3700 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1280 3700 50  0001 C CNN
F 3 "~" H 1350 3700 50  0001 C CNN
	1    1350 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 3700 1800 3700
Wire Wire Line
	1800 3700 1800 3300
Wire Wire Line
	1200 3700 700  3700
Wire Wire Line
	700  3700 700  3400
Wire Wire Line
	700  3400 800  3400
Wire Wire Line
	950  2150 600  2150
Wire Wire Line
	600  2150 600  3200
Wire Wire Line
	600  3200 800  3200
Connection ~ 600  3200
$Comp
L Device:R R22
U 1 1 5CA43E87
P 2000 3300
F 0 "R22" V 1793 3300 50  0000 C CNN
F 1 "3k" V 1884 3300 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1930 3300 50  0001 C CNN
F 3 "~" H 2000 3300 50  0001 C CNN
	1    2000 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 3300 1800 3300
Connection ~ 1800 3300
$Comp
L Device:C C9
U 1 1 5CA4F119
P 2350 3500
F 0 "C9" H 2465 3546 50  0000 L CNN
F 1 "100n" H 2465 3455 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 2388 3350 50  0001 C CNN
F 3 "~" H 2350 3500 50  0001 C CNN
	1    2350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3350 2350 3300
Wire Wire Line
	2150 3300 2350 3300
$Comp
L power:GND #PWR0120
U 1 1 5CA54E61
P 2350 3650
F 0 "#PWR0120" H 2350 3400 50  0001 C CNN
F 1 "GND" H 2355 3477 50  0000 C CNN
F 2 "" H 2350 3650 50  0001 C CNN
F 3 "" H 2350 3650 50  0001 C CNN
	1    2350 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5CA54ECA
P 2650 3600
F 0 "R26" H 2720 3646 50  0000 L CNN
F 1 "100k" H 2720 3555 50  0000 L CNN
F 2 "NilsLib:Widerstand_liegend" V 2580 3600 50  0001 C CNN
F 3 "~" H 2650 3600 50  0001 C CNN
	1    2650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3450 2650 3300
Wire Wire Line
	2650 3300 2350 3300
Connection ~ 2350 3300
Wire Wire Line
	2650 3750 2650 3800
$Comp
L power:GND #PWR0121
U 1 1 5CA60D65
P 2650 3800
F 0 "#PWR0121" H 2650 3550 50  0001 C CNN
F 1 "GND" H 2655 3627 50  0000 C CNN
F 2 "" H 2650 3800 50  0001 C CNN
F 3 "" H 2650 3800 50  0001 C CNN
	1    2650 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5CA61100
P 2400 3150
F 0 "R24" V 2400 3150 50  0000 C CNN
F 1 "10M" V 2284 3150 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 2330 3150 50  0001 C CNN
F 3 "~" H 2400 3150 50  0001 C CNN
	1    2400 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 3150 2650 3150
Wire Wire Line
	2650 3150 2650 3300
Connection ~ 2650 3300
Wire Wire Line
	2250 3150 2100 3150
Wire Wire Line
	2100 3150 2100 2950
Wire Wire Line
	2100 2950 2050 2950
$Comp
L power:-12V #PWR0122
U 1 1 5CA6E2B0
P 2050 2950
F 0 "#PWR0122" H 2050 3050 50  0001 C CNN
F 1 "-12V" H 2065 3123 50  0000 C CNN
F 2 "" H 2050 2950 50  0001 C CNN
F 3 "" H 2050 2950 50  0001 C CNN
	1    2050 2950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 1 1 5CA6E95E
P 3300 3400
F 0 "U2" H 3300 3767 50  0000 C CNN
F 1 "TL074" H 3300 3676 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 3250 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3350 3600 50  0001 C CNN
	1    3300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3500 3000 3500
Wire Wire Line
	2850 2000 2850 3500
Wire Wire Line
	3000 3300 2650 3300
Connection ~ 2850 3500
Wire Wire Line
	3600 3400 3700 3400
Wire Wire Line
	3700 3400 3700 3200
Wire Wire Line
	3700 3200 3450 3200
Wire Wire Line
	3450 3200 3450 3000
Wire Wire Line
	3450 3000 3500 3000
Wire Wire Line
	600  3200 600  4050
Wire Wire Line
	2850 4050 600  4050
Wire Wire Line
	2850 3500 2850 4050
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 5CC8CFC8
P 9900 1800
F 0 "J2" H 9950 2317 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 9950 2226 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 9900 1800 50  0001 C CNN
F 3 "~" H 9900 1800 50  0001 C CNN
	1    9900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1500 10400 1500
Wire Wire Line
	10400 1500 10400 1150
Wire Wire Line
	10400 1150 9400 1150
Wire Wire Line
	9400 1150 9400 1500
Wire Wire Line
	9400 1500 9500 1500
Wire Wire Line
	9700 1600 9700 1700
Wire Wire Line
	9700 1700 9700 1800
Connection ~ 9700 1700
Wire Wire Line
	9700 1800 10200 1800
Connection ~ 9700 1800
Wire Wire Line
	10200 1800 10200 1700
Connection ~ 10200 1800
Wire Wire Line
	10200 1700 10200 1600
Connection ~ 10200 1700
Wire Wire Line
	10750 1700 10750 1850
$Comp
L power:GND #PWR0134
U 1 1 5CCFFDBF
P 10750 1850
F 0 "#PWR0134" H 10750 1600 50  0001 C CNN
F 1 "GND" H 10755 1677 50  0000 C CNN
F 2 "" H 10750 1850 50  0001 C CNN
F 3 "" H 10750 1850 50  0001 C CNN
	1    10750 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1150 10600 1150
Wire Wire Line
	10600 1150 10600 1050
Connection ~ 10400 1150
Wire Wire Line
	10200 1900 9700 1900
Wire Wire Line
	9700 1900 9450 1900
Wire Wire Line
	9300 1900 9300 1950
Connection ~ 9700 1900
$Comp
L power:+12V #PWR0135
U 1 1 5CD33250
P 9300 1950
F 0 "#PWR0135" H 9300 1800 50  0001 C CNN
F 1 "+12V" V 9315 2078 50  0000 L CNN
F 2 "" H 9300 1950 50  0001 C CNN
F 3 "" H 9300 1950 50  0001 C CNN
	1    9300 1950
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR0136
U 1 1 5CD33453
P 10600 1050
F 0 "#PWR0136" H 10600 1150 50  0001 C CNN
F 1 "-12V" V 10615 1178 50  0000 L CNN
F 2 "" H 10600 1050 50  0001 C CNN
F 3 "" H 10600 1050 50  0001 C CNN
	1    10600 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10200 1700 10550 1700
NoConn ~ 10200 2000
NoConn ~ 10200 2100
NoConn ~ 10200 2200
NoConn ~ 9700 2200
NoConn ~ 9700 2100
NoConn ~ 9700 2000
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5CDAC3BC
P 9450 1900
F 0 "#FLG0101" H 9450 1975 50  0001 C CNN
F 1 "PWR_FLAG" H 9450 2074 50  0000 C CNN
F 2 "" H 9450 1900 50  0001 C CNN
F 3 "~" H 9450 1900 50  0001 C CNN
	1    9450 1900
	1    0    0    -1  
$EndComp
Connection ~ 9450 1900
Wire Wire Line
	9450 1900 9300 1900
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5CDAC542
P 10550 1700
F 0 "#FLG0102" H 10550 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 1874 50  0000 C CNN
F 2 "" H 10550 1700 50  0001 C CNN
F 3 "~" H 10550 1700 50  0001 C CNN
	1    10550 1700
	1    0    0    -1  
$EndComp
Connection ~ 10550 1700
Wire Wire Line
	10550 1700 10750 1700
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5CDAC5DF
P 9500 1500
F 0 "#FLG0103" H 9500 1575 50  0001 C CNN
F 1 "PWR_FLAG" H 9500 1674 50  0000 C CNN
F 2 "" H 9500 1500 50  0001 C CNN
F 3 "~" H 9500 1500 50  0001 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
Connection ~ 9500 1500
Wire Wire Line
	9500 1500 9700 1500
$Comp
L Device:C C14
U 1 1 5CDAC70C
P 8300 2650
F 0 "C14" H 8415 2696 50  0000 L CNN
F 1 "100n" H 8415 2605 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 8338 2500 50  0001 C CNN
F 3 "~" H 8300 2650 50  0001 C CNN
	1    8300 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5CDAC7F0
P 8300 3050
F 0 "C15" H 8415 3096 50  0000 L CNN
F 1 "100n" H 8415 3005 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 8338 2900 50  0001 C CNN
F 3 "~" H 8300 3050 50  0001 C CNN
	1    8300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2900 8300 2850
Wire Wire Line
	8300 2500 8300 2450
Wire Wire Line
	8300 3200 8300 3300
Wire Wire Line
	7850 2850 7850 3000
Wire Wire Line
	7850 2850 8050 2850
Connection ~ 8300 2850
Wire Wire Line
	8300 2850 8300 2800
$Comp
L power:GND #PWR0137
U 1 1 5CE06221
P 7850 3000
F 0 "#PWR0137" H 7850 2750 50  0001 C CNN
F 1 "GND" H 7855 2827 50  0000 C CNN
F 2 "" H 7850 3000 50  0001 C CNN
F 3 "" H 7850 3000 50  0001 C CNN
	1    7850 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0138
U 1 1 5CE063A8
P 8300 2300
F 0 "#PWR0138" H 8300 2150 50  0001 C CNN
F 1 "+12V" V 8315 2428 50  0000 L CNN
F 2 "" H 8300 2300 50  0001 C CNN
F 3 "" H 8300 2300 50  0001 C CNN
	1    8300 2300
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR0139
U 1 1 5CE06491
P 8300 3450
F 0 "#PWR0139" H 8300 3550 50  0001 C CNN
F 1 "-12V" V 8315 3578 50  0000 L CNN
F 2 "" H 8300 3450 50  0001 C CNN
F 3 "" H 8300 3450 50  0001 C CNN
	1    8300 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C16
U 1 1 5CE06736
P 8700 2650
F 0 "C16" H 8815 2696 50  0000 L CNN
F 1 "100n" H 8815 2605 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 8738 2500 50  0001 C CNN
F 3 "~" H 8700 2650 50  0001 C CNN
	1    8700 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5CE067E4
P 8700 3050
F 0 "C17" H 8815 3096 50  0000 L CNN
F 1 "100n" H 8815 3005 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 8738 2900 50  0001 C CNN
F 3 "~" H 8700 3050 50  0001 C CNN
	1    8700 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 5CE06A98
P 9050 3050
F 0 "C19" H 9165 3096 50  0000 L CNN
F 1 "100n" H 9165 3005 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 9088 2900 50  0001 C CNN
F 3 "~" H 9050 3050 50  0001 C CNN
	1    9050 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5CE06B5A
P 9050 2650
F 0 "C18" H 9165 2696 50  0000 L CNN
F 1 "100n" H 9165 2605 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 9088 2500 50  0001 C CNN
F 3 "~" H 9050 2650 50  0001 C CNN
	1    9050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2800 9050 2850
Wire Wire Line
	8700 2900 8700 2850
Wire Wire Line
	8700 2500 8700 2450
Wire Wire Line
	8700 2450 9050 2450
Wire Wire Line
	9050 2450 9050 2500
Wire Wire Line
	8700 2450 8300 2450
Connection ~ 8700 2450
Connection ~ 8300 2450
Wire Wire Line
	8300 2450 8300 2300
Wire Wire Line
	8700 2850 8300 2850
Connection ~ 8700 2850
Wire Wire Line
	8700 2850 8700 2800
Wire Wire Line
	8700 2850 9050 2850
Connection ~ 9050 2850
Wire Wire Line
	9050 2850 9050 2900
Wire Wire Line
	9050 3200 9050 3350
Wire Wire Line
	9050 3350 8700 3350
Wire Wire Line
	8700 3350 8700 3300
Wire Wire Line
	8700 3300 8300 3300
Connection ~ 8700 3300
Wire Wire Line
	8700 3300 8700 3200
Connection ~ 8300 3300
Wire Wire Line
	8300 3300 8300 3450
$Comp
L Device:CP C12
U 1 1 5CE9EA65
P 8050 2650
F 0 "C12" H 8168 2696 50  0000 L CNN
F 1 "33u" H 8168 2605 50  0000 L CNN
F 2 "NilsLib:Elko_D6.3mm_P2.50mm" H 8088 2500 50  0001 C CNN
F 3 "~" H 8050 2650 50  0001 C CNN
	1    8050 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 5CE9EBF5
P 8050 3050
F 0 "C13" H 8168 3096 50  0000 L CNN
F 1 "33u" H 8168 3005 50  0000 L CNN
F 2 "NilsLib:Elko_D6.3mm_P2.50mm" H 8088 2900 50  0001 C CNN
F 3 "~" H 8050 3050 50  0001 C CNN
	1    8050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3300 8050 3300
Wire Wire Line
	8050 3200 8050 3300
Wire Wire Line
	8300 2450 8050 2450
Wire Wire Line
	8050 2450 8050 2500
Wire Wire Line
	8050 2800 8050 2850
Connection ~ 8050 2850
Wire Wire Line
	8050 2850 8300 2850
Wire Wire Line
	8050 2850 8050 2900
$Comp
L Device:C C20
U 1 1 5CEF161B
P 9350 2650
F 0 "C20" H 9465 2696 50  0000 L CNN
F 1 "100n" H 9465 2605 50  0000 L CNN
F 2 "NilsLib:Kondensator_Keramik" H 9388 2500 50  0001 C CNN
F 3 "~" H 9350 2650 50  0001 C CNN
	1    9350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2500 9350 2450
Wire Wire Line
	9350 2450 9050 2450
Connection ~ 9050 2450
Wire Wire Line
	9350 2800 9350 2850
Wire Wire Line
	9050 2850 9350 2850
NoConn ~ 4700 2750
Text Notes 7200 6900 0    118  ~ 0
Harmonic Shaper V2.1\n(Based on MFOS Guitar Synth)
Text GLabel 1050 1000 0    47   Input ~ 0
Audio_In
Wire Wire Line
	1450 5825 1450 6025
$Comp
L Device:R R27
U 1 1 5ECF8036
P 1850 6275
F 0 "R27" V 1643 6275 50  0000 C CNN
F 1 "680k" V 1734 6275 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1780 6275 50  0001 C CNN
F 3 "~" H 1850 6275 50  0001 C CNN
	1    1850 6275
	0    1    1    0   
$EndComp
Wire Wire Line
	2375 6275 2375 5725
Wire Wire Line
	2375 5725 2325 5725
Wire Wire Line
	2000 6275 2375 6275
$Comp
L Device:R R19
U 1 1 5ED121FC
P 1175 5600
F 0 "R19" V 968 5600 50  0000 C CNN
F 1 "470k" V 1059 5600 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1105 5600 50  0001 C CNN
F 3 "~" H 1175 5600 50  0001 C CNN
	1    1175 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 5825 1450 5625
Wire Wire Line
	1450 5600 1325 5600
Connection ~ 1450 5825
Wire Wire Line
	1025 5600 900  5600
$Comp
L power:-12V #PWR02
U 1 1 5ED3A7C5
P 1925 6025
F 0 "#PWR02" H 1925 6125 50  0001 C CNN
F 1 "-12V" H 1825 6100 50  0000 C CNN
F 2 "" H 1925 6025 50  0001 C CNN
F 3 "" H 1925 6025 50  0001 C CNN
	1    1925 6025
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5ED3AB50
P 1925 5425
F 0 "#PWR01" H 1925 5275 50  0001 C CNN
F 1 "+12V" H 1940 5598 50  0000 C CNN
F 2 "" H 1925 5425 50  0001 C CNN
F 3 "" H 1925 5425 50  0001 C CNN
	1    1925 5425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 5725 2625 5725
Connection ~ 2375 5725
$Comp
L Device:C C8
U 1 1 5ED56F76
P 3325 5725
F 0 "C8" V 3577 5725 50  0000 C CNN
F 1 "2.2u" V 3486 5725 50  0000 C CNN
F 2 "NilsLib:Kondensator_Keramik" H 3363 5575 50  0001 C CNN
F 3 "~" H 3325 5725 50  0001 C CNN
	1    3325 5725
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 5ED5713D
P 2775 5725
F 0 "R29" V 2568 5725 50  0000 C CNN
F 1 "1k" V 2659 5725 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 2705 5725 50  0001 C CNN
F 3 "~" H 2775 5725 50  0001 C CNN
	1    2775 5725
	0    1    1    0   
$EndComp
Wire Wire Line
	2925 5725 3175 5725
Wire Wire Line
	3475 5725 3650 5725
Text GLabel 900  5600 0    47   Input ~ 0
A0_Out
$Comp
L Device:R R21
U 1 1 5ED73823
P 1175 5825
F 0 "R21" V 968 5825 50  0000 C CNN
F 1 "470k" V 1059 5825 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1105 5825 50  0001 C CNN
F 3 "~" H 1175 5825 50  0001 C CNN
	1    1175 5825
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 5825 1325 5825
Wire Wire Line
	1025 5825 900  5825
Text GLabel 900  5825 0    47   Input ~ 0
A1_Out
$Comp
L Device:R R23
U 1 1 5ED8204E
P 1175 6025
F 0 "R23" V 968 6025 50  0000 C CNN
F 1 "470k" V 1059 6025 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1105 6025 50  0001 C CNN
F 3 "~" H 1175 6025 50  0001 C CNN
	1    1175 6025
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 6025 1325 6025
Wire Wire Line
	1025 6025 900  6025
Text GLabel 900  6025 0    47   Input ~ 0
A2_Out
$Comp
L Device:R R25
U 1 1 5ED82057
P 1175 6250
F 0 "R25" V 968 6250 50  0000 C CNN
F 1 "470k" V 1059 6250 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 1105 6250 50  0001 C CNN
F 3 "~" H 1175 6250 50  0001 C CNN
	1    1175 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 6250 1325 6250
Wire Wire Line
	1025 6250 900  6250
Text GLabel 900  6250 0    47   Input ~ 0
A3_Out
Connection ~ 1450 6025
Wire Wire Line
	1450 6025 1450 6250
Text Notes 2550 6000 0    47   ~ 0
Mixer
Text Notes 6425 2500 0    47   ~ 0
Digitizer
$Comp
L Device:R R33
U 1 1 5EDA1C93
P 7825 5675
F 0 "R33" V 7618 5675 50  0000 C CNN
F 1 "330k" V 7709 5675 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 7755 5675 50  0001 C CNN
F 3 "~" H 7825 5675 50  0001 C CNN
	1    7825 5675
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 5675 8350 5125
Wire Wire Line
	8350 5125 8300 5125
Wire Wire Line
	7975 5675 8350 5675
$Comp
L Device:R R31
U 1 1 5EDA1C9C
P 7150 5000
F 0 "R31" V 6943 5000 50  0000 C CNN
F 1 "100k" V 7034 5000 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 7080 5000 50  0001 C CNN
F 3 "~" H 7150 5000 50  0001 C CNN
	1    7150 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	7425 5225 7425 5025
Wire Wire Line
	7425 5000 7300 5000
Wire Wire Line
	7000 5000 6875 5000
Wire Wire Line
	8350 5125 8600 5125
Connection ~ 8350 5125
$Comp
L Device:C C10
U 1 1 5EDA1CC2
P 9300 5125
F 0 "C10" V 9552 5125 50  0000 C CNN
F 1 "2.2u" V 9461 5125 50  0000 C CNN
F 2 "NilsLib:Kondensator_Keramik" H 9338 4975 50  0001 C CNN
F 3 "~" H 9300 5125 50  0001 C CNN
	1    9300 5125
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R34
U 1 1 5EDA1CC8
P 8750 5125
F 0 "R34" V 8543 5125 50  0000 C CNN
F 1 "1k" V 8634 5125 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 8680 5125 50  0001 C CNN
F 3 "~" H 8750 5125 50  0001 C CNN
	1    8750 5125
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 5125 9150 5125
Wire Wire Line
	9450 5125 9625 5125
Text GLabel 6875 5000 0    47   Input ~ 0
BlendClean
$Comp
L Device:R R32
U 1 1 5EDA1CD1
P 7150 5225
F 0 "R32" V 6943 5225 50  0000 C CNN
F 1 "100k" V 7034 5225 50  0000 C CNN
F 2 "NilsLib:Widerstand_liegend" V 7080 5225 50  0001 C CNN
F 3 "~" H 7150 5225 50  0001 C CNN
	1    7150 5225
	0    1    1    0   
$EndComp
Wire Wire Line
	7425 5225 7300 5225
Wire Wire Line
	7000 5225 6875 5225
Text GLabel 6875 5225 0    47   Input ~ 0
BlendMix
Text Notes 8525 5400 0    47   ~ 0
Blend-Mixer
Text GLabel 3950 750  2    47   Input ~ 0
Clean_Audio
Wire Notes Line
	5450 4500 5450 4850
Wire Notes Line
	5450 4850 5575 4850
Wire Notes Line
	5575 4850 5575 4500
Wire Notes Line
	5575 4500 5450 4500
Wire Notes Line
	5450 5350 5450 5725
Wire Notes Line
	5450 5725 5600 5725
Wire Notes Line
	5600 5725 5600 5350
Wire Notes Line
	5600 5350 5475 5350
Text Notes 4975 4450 0    47   ~ 0
Stereo 10K
Wire Notes Line
	5500 4500 5500 4200
Wire Notes Line
	5500 4200 5650 4200
Wire Notes Line
	5650 4200 5650 4250
Text Notes 5600 4350 0    47   ~ 0
GND
Text Notes 5475 6050 0    47   ~ 0
GND
Wire Notes Line
	5525 5725 5525 5975
Wire Notes Line
	5500 4850 5500 5000
Wire Notes Line
	5500 5000 5075 5000
Wire Notes Line
	5525 5350 5525 5250
Wire Notes Line
	5525 5250 5100 5250
Wire Notes Line
	5575 4675 5800 4675
Wire Notes Line
	5600 5550 5825 5550
Wire Notes Line
	5825 5550 5825 5575
Text GLabel 3650 5725 2    47   Input ~ 0
MIX_out
Text Notes 4825 5300 0    47   ~ 0
MixOut
Text Notes 4650 5025 0    47   ~ 0
CleanAudio
Text Notes 4875 4175 0    47   ~ 0
On FrontPanel:
Wire Wire Line
	3900 750  3950 750 
Wire Wire Line
	3900 750  3900 1200
Text Notes 5850 4700 0    47   ~ 0
BlendClean
Text Notes 5825 5575 0    47   ~ 0
BlendMixBlendMix
Text GLabel 9625 5125 2    47   Input ~ 0
AudioOut
Wire Wire Line
	1700 6275 1600 6275
Wire Wire Line
	1600 6275 1600 5825
Wire Wire Line
	1600 5825 1725 5825
Wire Wire Line
	1450 5625 1725 5625
Connection ~ 1450 5625
Wire Wire Line
	1450 5625 1450 5600
Wire Wire Line
	7675 5675 7600 5675
Wire Wire Line
	7600 5675 7600 5225
Wire Wire Line
	7600 5225 7700 5225
Connection ~ 7425 5025
Wire Wire Line
	7425 5025 7425 5000
Wire Wire Line
	7425 5025 7700 5025
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 5EECD060
P 6625 3750
F 0 "J3" H 6731 4228 50  0000 C CNN
F 1 "ToEssential" H 6731 4137 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6625 3750 50  0001 C CNN
F 3 "~" H 6625 3750 50  0001 C CNN
	1    6625 3750
	1    0    0    -1  
$EndComp
Text GLabel 6950 3550 2    47   Input ~ 0
Clean_Audio
Text GLabel 6950 3650 2    50   Input ~ 0
PLS
Text GLabel 6950 3750 2    47   Input ~ 0
A0_Out
Text GLabel 6950 3850 2    47   Input ~ 0
A1_Out
Text GLabel 6950 3950 2    47   Input ~ 0
A2_Out
Text GLabel 6950 4050 2    47   Input ~ 0
A3_Out
Wire Wire Line
	6825 4150 6900 4150
Wire Wire Line
	6900 4150 6900 4225
$Comp
L power:GND #PWR04
U 1 1 5EEDF687
P 6900 4225
F 0 "#PWR04" H 6900 3975 50  0001 C CNN
F 1 "GND" H 6905 4052 50  0000 C CNN
F 2 "" H 6900 4225 50  0001 C CNN
F 3 "" H 6900 4225 50  0001 C CNN
	1    6900 4225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3550 6825 3550
Wire Wire Line
	6825 3650 6950 3650
Wire Wire Line
	6950 3750 6825 3750
Wire Wire Line
	6825 3850 6950 3850
Wire Wire Line
	6950 3950 6825 3950
Wire Wire Line
	6825 4050 6950 4050
Text GLabel 4575 6600 2    47   Input ~ 0
Audio_In
Text GLabel 4575 6700 2    47   Input ~ 0
Line_SW
Text GLabel 2650 1600 3    47   Input ~ 0
Line_SW
Text GLabel 4575 6800 2    47   Input ~ 0
Mic_SW
Text GLabel 2750 1100 1    47   Input ~ 0
Mic_SW
Text GLabel 4575 6900 2    47   Input ~ 0
Clean_Audio
Text GLabel 4575 7000 2    47   Input ~ 0
MIX_out
Text GLabel 4575 7100 2    47   Input ~ 0
BlendClean
Text GLabel 4575 7200 2    47   Input ~ 0
BlendMix
Text GLabel 4575 7300 2    47   Input ~ 0
AudioOut
$Comp
L Connector:Conn_01x10_Male J1
U 1 1 5EF5F38C
P 4275 7000
F 0 "J1" H 4381 7578 50  0000 C CNN
F 1 "ToFrontPanel" H 4381 7487 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 4275 7000 50  0001 C CNN
F 3 "~" H 4275 7000 50  0001 C CNN
	1    4275 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4475 7300 4575 7300
Wire Wire Line
	4475 7200 4575 7200
Wire Wire Line
	4475 7100 4575 7100
Wire Wire Line
	4475 7000 4575 7000
Wire Wire Line
	4475 6900 4575 6900
Wire Wire Line
	4475 6800 4575 6800
Wire Wire Line
	4475 6700 4575 6700
Wire Wire Line
	4475 6600 4575 6600
Wire Wire Line
	4475 7500 4575 7500
Wire Wire Line
	4575 7500 4575 7575
$Comp
L power:GND #PWR03
U 1 1 5F0200FA
P 4575 7575
F 0 "#PWR03" H 4575 7325 50  0001 C CNN
F 1 "GND" H 4580 7402 50  0000 C CNN
F 2 "" H 4575 7575 50  0001 C CNN
F 3 "" H 4575 7575 50  0001 C CNN
	1    4575 7575
	1    0    0    -1  
$EndComp
Text GLabel 4600 7400 2    50   Input ~ 0
SUB
Wire Wire Line
	4600 7400 4475 7400
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 5F0358F6
P 2025 5725
F 0 "U3" H 2025 6092 50  0000 C CNN
F 1 "TL072" H 2025 6001 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 2025 5725 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2025 5725 50  0001 C CNN
	1    2025 5725
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 3 1 5F035BAD
P 2025 5725
F 0 "U3" H 1983 5771 50  0000 L CNN
F 1 "TL072" H 1983 5680 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 2025 5725 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2025 5725 50  0001 C CNN
	3    2025 5725
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 2 1 5F035DC2
P 8000 5125
F 0 "U3" H 8000 5492 50  0000 C CNN
F 1 "TL072" H 8000 5401 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 8000 5125 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8000 5125 50  0001 C CNN
	2    8000 5125
	1    0    0    -1  
$EndComp
NoConn ~ 6825 3450
$Comp
L Mechanical:MountingHole H2
U 1 1 5F04C205
P 1600 6775
F 0 "H2" H 1700 6821 50  0000 L CNN
F 1 "MountingHole" H 1700 6730 50  0000 L CNN
F 2 "NilsLib:MountHole" H 1600 6775 50  0001 C CNN
F 3 "~" H 1600 6775 50  0001 C CNN
	1    1600 6775
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F04C379
P 2400 6775
F 0 "H3" H 2500 6821 50  0000 L CNN
F 1 "MountingHole" H 2500 6730 50  0000 L CNN
F 2 "NilsLib:MountHole" H 2400 6775 50  0001 C CNN
F 3 "~" H 2400 6775 50  0001 C CNN
	1    2400 6775
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F04C455
P 2425 7250
F 0 "H4" H 2525 7296 50  0000 L CNN
F 1 "MountingHole" H 2525 7205 50  0000 L CNN
F 2 "NilsLib:MountHole" H 2425 7250 50  0001 C CNN
F 3 "~" H 2425 7250 50  0001 C CNN
	1    2425 7250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F04C51B
P 1550 7300
F 0 "H1" H 1650 7346 50  0000 L CNN
F 1 "MountingHole" H 1650 7255 50  0000 L CNN
F 2 "NilsLib:MountHole" H 1550 7300 50  0001 C CNN
F 3 "~" H 1550 7300 50  0001 C CNN
	1    1550 7300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
