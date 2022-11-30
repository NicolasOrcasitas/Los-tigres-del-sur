## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

################################################################################
## Clock signal                                                             # cambiar "CLK_in"
#set_property -dict {PACKAGE_PIN W5  IOSTANDARD LVCMOS33}          [get_ports {CLK_in}]; # reloj 100MHz
#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK_in}]; # reloj 100MHz


################################################################################
## Switches                                                         # cambiar "in"
#set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[0]
#set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[1]
#set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[2]
#set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[3]
#set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[4]
#set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[5]
#set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[6]
#set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[7]
#set_property -dict {PACKAGE_PIN V2  IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[8]
#set_property -dict {PACKAGE_PIN T3  IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[9]
#set_property -dict {PACKAGE_PIN T2  IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[10]
#set_property -dict {PACKAGE_PIN R3  IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[11]
#set_property -dict {PACKAGE_PIN W2  IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[12]
#set_property -dict {PACKAGE_PIN U1  IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[13]
#set_property -dict {PACKAGE_PIN T1  IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[14]
#set_property -dict {PACKAGE_PIN R2  IOSTANDARD LVCMOS33} [get_ports {in}];     ## sw[15]


################################################################################
##Buttons                                                           # cambiar "in"
#set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {in}];     ## btn center
#set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {in}];     ## btn up
#set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {in}];     ## btn left
#set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {in}];     ## btn right
#set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {in}];     ## btn down


################################################################################
## LEDs                                                             # cambiar "out"
#set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[0]
#set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[1]
#set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[2]
#set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[3]
#set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[4]
#set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[5]
#set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[6]
#set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[7]
#set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[8]
#set_property -dict {PACKAGE_PIN V3  IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[9]
#set_property -dict {PACKAGE_PIN W3  IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[10]
#set_property -dict {PACKAGE_PIN U3  IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[11]
#set_property -dict {PACKAGE_PIN P3  IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[12]
#set_property -dict {PACKAGE_PIN N3  IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[13]
#set_property -dict {PACKAGE_PIN P1  IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[14]
#set_property -dict {PACKAGE_PIN L1  IOSTANDARD LVCMOS33} [get_ports {out}];    ## led[15]


################################################################################
## Common Anode 7-segment displays                                  # cambiar "out"
#set_property -dict {PACKAGE_PIN W7  IOSTANDARD LVCMOS33} [get_ports {out}];    ## cathode A
#set_property -dict {PACKAGE_PIN W6  IOSTANDARD LVCMOS33} [get_ports {out}];    ## cathode B
#set_property -dict {PACKAGE_PIN U8  IOSTANDARD LVCMOS33} [get_ports {out}];    ## cathode C
#set_property -dict {PACKAGE_PIN V8  IOSTANDARD LVCMOS33} [get_ports {out}];    ## cathode D
#set_property -dict {PACKAGE_PIN U5  IOSTANDARD LVCMOS33} [get_ports {out}];    ## cathode E
#set_property -dict {PACKAGE_PIN V5  IOSTANDARD LVCMOS33} [get_ports {out}];    ## cathode F
#set_property -dict {PACKAGE_PIN U7  IOSTANDARD LVCMOS33} [get_ports {out}];    ## cathode G

#set_property -dict {PACKAGE_PIN V7  IOSTANDARD LVCMOS33} [get_ports {out}];    ## point

#set_property -dict {PACKAGE_PIN U2  IOSTANDARD LVCMOS33} [get_ports {out}];    ## anode[0]
#set_property -dict {PACKAGE_PIN U4  IOSTANDARD LVCMOS33} [get_ports {out}];    ## anode[1]
#set_property -dict {PACKAGE_PIN V4  IOSTANDARD LVCMOS33} [get_ports {out}];    ## anode[2]
#set_property -dict {PACKAGE_PIN W4  IOSTANDARD LVCMOS33} [get_ports {out}];    ## anode[3]


################################################################################
##Pmod Headers   ----- ----- ----- ----- ----- -----
##              | 3V3 | GND |  4  |  3  |  2  |  1  |
##               ----- ----- ----- ----- ----- -----
##              | 3v3 | GND | 10  |  9  |  8  |  7  |
##               ----- ----- ----- ----- ----- ------

##Pmod Header JA                                                    # cambiar "in_out"
#set_property -dict {PACKAGE_PIN J1  IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JA 1
#set_property -dict {PACKAGE_PIN L2  IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JA 2
#set_property -dict {PACKAGE_PIN J2  IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JA 3
#set_property -dict {PACKAGE_PIN G2  IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JA 4
#set_property -dict {PACKAGE_PIN H1  IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JA 7
#set_property -dict {PACKAGE_PIN K2  IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JA 8
#set_property -dict {PACKAGE_PIN H2  IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JA 9
#set_property -dict {PACKAGE_PIN G3  IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JA 10

##Pmod Header JB
#set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JB 1
#set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JB 2
#set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JB 3
#set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JB 4
#set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JB 7
#set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JB 8
#set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JB 9
#set_property -dict {PACKAGE_PIN C16 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JB 10

##Pmod Header JC
#set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JC 1
#set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JC 2
#set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JC 3
#set_property -dict {PACKAGE_PIN P18 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JC 4
#set_property -dict {PACKAGE_PIN L17 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JC 7
#set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JC 8
#set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JC 9
#set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {in_out}]; ## JC 10


################################################################################
##Pmod Header JXADC
#set_property -dict {PACKAGE_PIN J3  IOSTANDARD LVCMOS33} [get_ports {XADC1_P}]; ## XA1_P  #1
#set_property -dict {PACKAGE_PIN L3  IOSTANDARD LVCMOS33} [get_ports {XADC2_P}]; ## XA2_P  #2
#set_property -dict {PACKAGE_PIN M2  IOSTANDARD LVCMOS33} [get_ports {XADC3_P}]; ## XA3_P  #3
#set_property -dict {PACKAGE_PIN N2  IOSTANDARD LVCMOS33} [get_ports {XADC4_P}]; ## XA4_P  #4
#set_property -dict {PACKAGE_PIN K3  IOSTANDARD LVCMOS33} [get_ports {XADC1_N}]; ## XA1_N  #7
#set_property -dict {PACKAGE_PIN M3  IOSTANDARD LVCMOS33} [get_ports {XADC2_N}]; ## XA2_N  #8
#set_property -dict {PACKAGE_PIN M1  IOSTANDARD LVCMOS33} [get_ports {XADC3_N}]; ## XA3_N  #9
#set_property -dict {PACKAGE_PIN N1  IOSTANDARD LVCMOS33} [get_ports {XADC4_N}]; ## XA4_N  #10


################################################################################
##VGA Connector
#set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS33} [get_ports {vga_Red[0]}];
#set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports {vga_Red[1]}];
#set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {vga_Red[2]}];
#set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS33} [get_ports {vga_Red[3]}];
#set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports {vga_Blue[0]}];
#set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports {vga_Blue[1]}];
#set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {vga_Blue[2]}];
#set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {vga_Blue[3]}];
#set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports {vga_Green[0]}];
#set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {vga_Green[1]}];
#set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {vga_Green[2]}];
#set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports {vga_Green[3]}];
#set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports Hsync];
#set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports Vsync];


################################################################################
##USB-RS232 Interface
#set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports RsRx];
#set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports RsTx];


################################################################################
##USB HID (PS/2)
#set_property PACKAGE_PIN C17 [get_ports PS2Clk];
    #set_property IOSTANDARD LVCMOS33 [get_ports PS2Clk];
    #set_property PULLUP true [get_ports PS2Clk];
#set_property PACKAGE_PIN B17 [get_ports PS2Data];
    #set_property IOSTANDARD LVCMOS33 [get_ports PS2Data];
    #set_property PULLUP true [get_ports PS2Data];


################################################################################
##Quad SPI Flash
##Note that CCLK_0 cannot be placed in 7 series devices. You can access it using the
##STARTUPE2 primitive.
#set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {QspiDB[0]}];
#set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports {QspiDB[1]}];
#set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports {QspiDB[2]}];
#set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports {QspiDB[3]}];
#set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports QspiCSn];


################################################################################
## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design];
set_property CFGBVS VCCO [current_design];