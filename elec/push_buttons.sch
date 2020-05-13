EESchema Schematic File Version 4
LIBS:push_buttons-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Device:R R4
U 1 1 5DC84FC3
P 6350 1300
F 0 "R4" H 6420 1346 50  0000 L CNN
F 1 "2k" H 6420 1255 50  0000 L CNN
F 2 "" V 6280 1300 50  0001 C CNN
F 3 "~" H 6350 1300 50  0001 C CNN
	1    6350 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DC85A54
P 7200 1300
F 0 "R5" H 7270 1346 50  0000 L CNN
F 1 "2k" H 7270 1255 50  0000 L CNN
F 2 "" V 7130 1300 50  0001 C CNN
F 3 "~" H 7200 1300 50  0001 C CNN
	1    7200 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DC85A88
P 8050 1300
F 0 "R6" H 8120 1346 50  0000 L CNN
F 1 "2k" H 8120 1255 50  0000 L CNN
F 2 "" V 7980 1300 50  0001 C CNN
F 3 "~" H 8050 1300 50  0001 C CNN
	1    8050 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DC85ADE
P 5450 1300
F 0 "R3" H 5520 1346 50  0000 L CNN
F 1 "2k" H 5520 1255 50  0000 L CNN
F 2 "" V 5380 1300 50  0001 C CNN
F 3 "~" H 5450 1300 50  0001 C CNN
	1    5450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DC85B0C
P 4600 1300
F 0 "R2" H 4670 1346 50  0000 L CNN
F 1 "2k" H 4670 1255 50  0000 L CNN
F 2 "" V 4530 1300 50  0001 C CNN
F 3 "~" H 4600 1300 50  0001 C CNN
	1    4600 1300
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG417BR U2
U 1 1 5DC89C11
P 4600 2600
F 0 "U2" V 4646 2730 50  0000 L CNN
F 1 "ADG417BR" V 4555 2730 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4600 2500 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 4600 2600 50  0001 C CNN
	1    4600 2600
	0    -1   -1   0   
$EndComp
$Comp
L Analog_Switch:ADG417BR U3
U 1 1 5DC89F06
P 5450 2600
F 0 "U3" V 5496 2730 50  0000 L CNN
F 1 "ADG417BR" V 5405 2730 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 2500 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 5450 2600 50  0001 C CNN
	1    5450 2600
	0    -1   -1   0   
$EndComp
$Comp
L Analog_Switch:ADG417BR U4
U 1 1 5DC89F3E
P 6350 2600
F 0 "U4" V 6396 2730 50  0000 L CNN
F 1 "ADG417BR" V 6305 2730 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6350 2500 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 6350 2600 50  0001 C CNN
	1    6350 2600
	0    -1   -1   0   
$EndComp
$Comp
L Analog_Switch:ADG417BR U5
U 1 1 5DC89F78
P 7200 2600
F 0 "U5" V 7246 2730 50  0000 L CNN
F 1 "ADG417BR" V 7155 2730 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7200 2500 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 7200 2600 50  0001 C CNN
	1    7200 2600
	0    -1   -1   0   
$EndComp
$Comp
L Analog_Switch:ADG417BR U6
U 1 1 5DC89FB0
P 8050 2600
F 0 "U6" V 8096 2730 50  0000 L CNN
F 1 "ADG417BR" V 8005 2730 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8050 2500 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/ADG417.pdf" H 8050 2600 50  0001 C CNN
	1    8050 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC926CA
P 6350 750
F 0 "#PWR?" H 6350 500 50  0001 C CNN
F 1 "GND" H 6350 600 50  0000 C CNN
F 2 "" H 6350 750 50  0000 C CNN
F 3 "" H 6350 750 50  0000 C CNN
	1    6350 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 1150 4600 850 
Wire Wire Line
	5450 1150 5450 850 
Wire Wire Line
	6350 1150 6350 850 
Wire Wire Line
	7200 1150 7200 850 
Wire Wire Line
	8050 1150 8050 850 
Wire Wire Line
	4600 850  5450 850 
Connection ~ 6350 850 
Connection ~ 5450 850 
Wire Wire Line
	5450 850  6350 850 
Wire Wire Line
	6350 850  7200 850 
Connection ~ 7200 850 
Wire Wire Line
	7200 850  8050 850 
Wire Wire Line
	4600 2900 4600 3100
Wire Wire Line
	4600 3100 5450 3100
Wire Wire Line
	8050 3100 8050 2900
Wire Wire Line
	5450 2900 5450 3100
Connection ~ 5450 3100
Wire Wire Line
	5450 3100 6350 3100
Wire Wire Line
	6350 2900 6350 3100
Connection ~ 6350 3100
Wire Wire Line
	6350 3100 7200 3100
Wire Wire Line
	7200 2900 7200 3100
Connection ~ 7200 3100
Wire Wire Line
	7200 3100 8050 3100
$Comp
L power:+12V #PWR?
U 1 1 5DCA3840
P 6350 3200
F 0 "#PWR?" H 6350 3050 50  0001 C CNN
F 1 "+12V" H 6350 3400 50  0000 C CNN
F 2 "" H 6350 3200 50  0000 C CNN
F 3 "" H 6350 3200 50  0000 C CNN
	1    6350 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 3100 6350 3200
Wire Wire Line
	6350 850  6350 750 
Wire Wire Line
	5450 1450 5450 1850
Wire Wire Line
	6350 1450 6350 1850
Wire Wire Line
	7200 1450 7200 1850
Wire Wire Line
	8050 1450 8050 1850
Text Label 5200 1850 0    60   ~ 0
3
Wire Wire Line
	4600 1450 4600 1850
Text Label 4400 1850 0    60   ~ 0
2
Text Label 6100 1850 0    60   ~ 0
4
Text Label 6950 1850 0    60   ~ 0
5
Text Label 7750 1850 0    60   ~ 0
6
Wire Wire Line
	4400 1850 4600 1850
Connection ~ 4600 1850
Wire Wire Line
	4600 1850 4600 2300
Wire Wire Line
	5200 1850 5450 1850
Connection ~ 5450 1850
Wire Wire Line
	5450 1850 5450 2300
Wire Wire Line
	6100 1850 6350 1850
Connection ~ 6350 1850
Wire Wire Line
	6350 1850 6350 2300
Wire Wire Line
	6950 1850 7200 1850
Connection ~ 7200 1850
Wire Wire Line
	7200 1850 7200 2300
Wire Wire Line
	7750 1850 8050 1850
Connection ~ 8050 1850
Wire Wire Line
	8050 1850 8050 2300
Text Notes 4150 2000 0    50   ~ 0
DigitalPin
Text Notes 5050 2000 0    50   ~ 0
DigitalPin
Text Notes 5900 2000 0    50   ~ 0
DigitalPin
Text Notes 6750 2000 0    50   ~ 0
DigitalPin
Text Notes 7600 2000 0    50   ~ 0
DigitalPin
$EndSCHEMATC
