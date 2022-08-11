EESchema Schematic File Version 4
EELAYER 30 0
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
Text GLabel 2750 2550 0    50   Input ~ 0
IN2
Text GLabel 2750 2650 0    50   Input ~ 0
IN1
Text GLabel 2750 2750 0    50   Input ~ 0
ENA
$Comp
L power:GND #PWR0102
U 1 1 61A779B6
P 3500 3400
F 0 "#PWR0102" H 3500 3150 50  0001 C CNN
F 1 "GND" H 3505 3227 50  0000 C CNN
F 2 "" H 3500 3400 50  0001 C CNN
F 3 "" H 3500 3400 50  0001 C CNN
	1    3500 3400
	1    0    0    -1  
$EndComp
Text GLabel 5200 1900 2    50   Input ~ 0
Trig3
Text GLabel 5200 2000 2    50   Input ~ 0
Echo3
$Comp
L power:GND #PWR0105
U 1 1 61ABE21C
P 5150 2200
F 0 "#PWR0105" H 5150 1950 50  0001 C CNN
F 1 "GND" H 5155 2027 50  0000 C CNN
F 2 "" H 5150 2200 50  0001 C CNN
F 3 "" H 5150 2200 50  0001 C CNN
	1    5150 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 2100 5150 2200
Wire Wire Line
	5150 2100 5050 2100
Wire Wire Line
	5200 1900 5050 1900
Wire Wire Line
	5200 2000 5050 2000
Text GLabel 5850 2900 2    50   Input ~ 0
SRx
Text GLabel 5200 2800 2    50   Input ~ 0
STx
$Comp
L power:GND #PWR0106
U 1 1 61ADE741
P 5700 3350
F 0 "#PWR0106" H 5700 3100 50  0001 C CNN
F 1 "GND" H 5705 3177 50  0000 C CNN
F 2 "" H 5700 3350 50  0001 C CNN
F 3 "" H 5700 3350 50  0001 C CNN
	1    5700 3350
	-1   0    0    -1  
$EndComp
Text GLabel 5850 2500 2    50   Input ~ 0
5v
Wire Wire Line
	5850 2500 5700 2500
Wire Wire Line
	5200 2800 5050 2800
Wire Wire Line
	2900 2750 2750 2750
Wire Wire Line
	2750 2650 2900 2650
Wire Wire Line
	2900 2550 2750 2550
Wire Wire Line
	3400 3150 3400 3200
Wire Wire Line
	3400 3200 3500 3200
Wire Wire Line
	3500 3200 3500 3150
Wire Wire Line
	3500 3400 3500 3200
Connection ~ 3500 3200
Wire Wire Line
	4050 2650 3900 2650
Wire Wire Line
	4050 2550 3900 2550
Text GLabel 4050 2550 2    50   Input ~ 0
Echo1
Text GLabel 4050 2650 2    50   Input ~ 0
Trig1
$Comp
L Device:R R1
U 1 1 61BBC0F7
P 5700 2700
F 0 "R1" H 5770 2746 50  0000 L CNN
F 1 "1k" H 5770 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 2700 50  0001 C CNN
F 3 "~" H 5700 2700 50  0001 C CNN
	1    5700 2700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61BBED8A
P 5700 3100
F 0 "R2" H 5770 3146 50  0000 L CNN
F 1 "2.2k" H 5770 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5630 3100 50  0001 C CNN
F 3 "~" H 5700 3100 50  0001 C CNN
	1    5700 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 2850 5700 2900
Wire Wire Line
	5850 2900 5700 2900
Connection ~ 5700 2900
Wire Wire Line
	5700 2900 5700 2950
Wire Wire Line
	5700 3250 5700 3300
Wire Wire Line
	5700 3300 5100 3300
Connection ~ 5700 3300
Wire Wire Line
	5700 3300 5700 3350
Wire Wire Line
	5700 2500 5700 2550
Wire Wire Line
	5700 2500 5100 2500
Wire Wire Line
	5100 2500 5100 2600
Wire Wire Line
	5100 2600 5050 2600
Connection ~ 5700 2500
Wire Wire Line
	5100 2700 5050 2700
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 61AD497A
P 4850 2700
F 0 "J7" H 4930 2692 50  0000 L CNN
F 1 "HC-06" H 4930 2601 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4850 2700 50  0001 C CNN
F 3 "~" H 4850 2700 50  0001 C CNN
	1    4850 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 2700 5100 3300
Wire Wire Line
	5700 2900 5050 2900
Connection ~ 5150 2100
Wire Wire Line
	1750 1700 1750 1950
Wire Wire Line
	1700 1600 1850 1600
Text GLabel 4050 2350 2    50   Input ~ 0
Trig2
Text GLabel 4050 2450 2    50   Input ~ 0
Echo2
Text GLabel 4050 2250 2    50   Input ~ 0
Trig3
Text GLabel 4050 2150 2    50   Input ~ 0
Echo3
Wire Wire Line
	4050 2150 3900 2150
Wire Wire Line
	4050 2250 3900 2250
Wire Wire Line
	4050 2350 3900 2350
Wire Wire Line
	4050 2450 3900 2450
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 61B1ACE7
P 3400 2150
F 0 "A1" H 3400 1061 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 3400 970 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3400 2150 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 3400 2150 50  0001 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1650 2900 1650
Wire Wire Line
	2750 1550 2900 1550
Wire Wire Line
	3600 1050 3600 1150
Wire Wire Line
	3300 1050 3300 1150
Wire Wire Line
	2750 2450 2900 2450
Wire Wire Line
	2900 2350 2750 2350
Wire Wire Line
	2750 2250 2900 2250
Wire Wire Line
	2900 2150 2750 2150
Wire Wire Line
	2750 2050 2900 2050
Wire Wire Line
	2900 1950 2750 1950
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 61AD0DA9
P 4850 1900
F 0 "J6" H 4930 1892 50  0000 L CNN
F 1 "HC-SR04c" H 4930 1801 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4850 1900 50  0001 C CNN
F 3 "~" H 4850 1900 50  0001 C CNN
	1    4850 1900
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 61ACFF50
P 4850 1500
F 0 "J5" H 4930 1492 50  0000 L CNN
F 1 "HC-SR04b" H 4930 1401 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4850 1500 50  0001 C CNN
F 3 "~" H 4850 1500 50  0001 C CNN
	1    4850 1500
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 61ACE4B6
P 4850 1100
F 0 "J4" H 4930 1092 50  0000 L CNN
F 1 "HC-SR04a" H 4930 1001 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4850 1100 50  0001 C CNN
F 3 "~" H 4850 1100 50  0001 C CNN
	1    4850 1100
	-1   0    0    -1  
$EndComp
Connection ~ 5100 1400
Wire Wire Line
	5100 1800 5100 1400
Wire Wire Line
	5050 1800 5100 1800
Wire Wire Line
	5100 1000 5050 1000
Connection ~ 5100 1000
Wire Wire Line
	5100 1400 5100 1000
Wire Wire Line
	5050 1400 5100 1400
Wire Wire Line
	5050 1600 5200 1600
Wire Wire Line
	5200 1500 5050 1500
Wire Wire Line
	5150 1700 5150 2100
Connection ~ 5150 1700
Wire Wire Line
	5050 1700 5150 1700
Wire Wire Line
	5150 1300 5150 1700
Wire Wire Line
	5150 1300 5050 1300
Wire Wire Line
	5200 1200 5050 1200
Wire Wire Line
	5200 1000 5100 1000
Text GLabel 5200 1000 2    50   Input ~ 0
5v
Wire Wire Line
	5200 1100 5050 1100
Text GLabel 5200 1600 2    50   Input ~ 0
Echo2
Text GLabel 5200 1500 2    50   Input ~ 0
Trig2
Text GLabel 5200 1200 2    50   Input ~ 0
Echo1
Text GLabel 5200 1100 2    50   Input ~ 0
Trig1
Wire Wire Line
	1850 3100 1750 3100
Wire Wire Line
	1850 2900 1750 2900
Wire Wire Line
	1850 2700 1750 2700
Wire Wire Line
	1850 2500 1750 2500
Wire Wire Line
	1750 3000 1850 3000
Wire Wire Line
	1750 2800 1850 2800
Wire Wire Line
	1750 2600 1850 2600
Wire Wire Line
	1750 2400 1850 2400
Wire Wire Line
	1750 2300 1850 2300
Text GLabel 1750 2900 0    50   Input ~ 0
ENC
Text GLabel 1750 3000 0    50   Input ~ 0
IN5
Text GLabel 1750 3100 0    50   Input ~ 0
IN6
Text GLabel 1750 2300 0    50   Input ~ 0
ENA
Text GLabel 1750 2400 0    50   Input ~ 0
IN1
Text GLabel 1750 2500 0    50   Input ~ 0
IN2
Text GLabel 1750 2600 0    50   Input ~ 0
IN3
Text GLabel 1750 2700 0    50   Input ~ 0
IN4
Text GLabel 1750 2800 0    50   Input ~ 0
ENB
Wire Wire Line
	1850 1700 1750 1700
$Comp
L power:GND #PWR0104
U 1 1 61A8DE93
P 1750 1950
F 0 "#PWR0104" H 1750 1700 50  0001 C CNN
F 1 "GND" H 1755 1777 50  0000 C CNN
F 2 "" H 1750 1950 50  0001 C CNN
F 3 "" H 1750 1950 50  0001 C CNN
	1    1750 1950
	1    0    0    -1  
$EndComp
Text GLabel 1700 1600 0    50   Input ~ 0
Vbat
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 61A8A8AF
P 2050 1700
F 0 "J2" H 2130 1692 50  0000 L CNN
F 1 "L298N" H 2130 1601 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 2050 1700 50  0001 C CNN
F 3 "~" H 2050 1700 50  0001 C CNN
	1    2050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1150 1750 1250
Wire Wire Line
	1850 1150 1750 1150
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 61A8617A
P 2050 1050
F 0 "J1" H 2130 1042 50  0000 L CNN
F 1 "Battery" H 2130 951 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2050 1050 50  0001 C CNN
F 3 "~" H 2050 1050 50  0001 C CNN
	1    2050 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J3
U 1 1 61A7F967
P 2050 2700
F 0 "J3" H 2130 2742 50  0000 L CNN
F 1 "Motores" H 2130 2651 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x09_P2.54mm_Vertical" H 2050 2700 50  0001 C CNN
F 3 "~" H 2050 2700 50  0001 C CNN
	1    2050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1050 1350 1050
Wire Wire Line
	1750 1050 1850 1050
$Comp
L power:GND #PWR0101
U 1 1 61A752D5
P 1750 1250
F 0 "#PWR0101" H 1750 1000 50  0001 C CNN
F 1 "GND" H 1755 1077 50  0000 C CNN
F 2 "" H 1750 1250 50  0001 C CNN
F 3 "" H 1750 1250 50  0001 C CNN
	1    1750 1250
	1    0    0    -1  
$EndComp
Text GLabel 1350 1050 0    50   Input ~ 0
Vbat
$Comp
L Diode:1N5404 D1
U 1 1 61A723B8
P 1600 1050
F 0 "D1" H 1600 1266 50  0000 C CNN
F 1 "1N5404" H 1600 1175 50  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" H 1600 875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 1600 1050 50  0001 C CNN
	1    1600 1050
	1    0    0    -1  
$EndComp
Text GLabel 3300 1050 1    50   Input ~ 0
Vin
Text GLabel 3600 1050 1    50   Input ~ 0
5v
Text GLabel 2750 1550 0    50   Input ~ 0
STx
Text GLabel 2750 1650 0    50   Input ~ 0
SRx
Text GLabel 2750 2150 0    50   Input ~ 0
ENC
Text GLabel 2750 2050 0    50   Input ~ 0
IN5
Text GLabel 2750 1950 0    50   Input ~ 0
IN6
Text GLabel 2750 2450 0    50   Input ~ 0
IN3
Text GLabel 2750 2350 0    50   Input ~ 0
IN4
Text GLabel 2750 2250 0    50   Input ~ 0
ENB
Text GLabel 1700 1800 0    50   Input ~ 0
Vin
Wire Wire Line
	1700 1800 1850 1800
$EndSCHEMATC
