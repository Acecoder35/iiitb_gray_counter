 # iiitb_gray_counter - Gray Counter
This is a Gray Counter model which provides the gray count and the corresponding BCD count.

# Table of Contents

[Description](https://github.com/DantuNandiniDevi/iiitb_freqdiv#description)<br>
<br>
[Tools Used](https://github.com/DantuNandiniDevi/iiitb_freqdiv#tools-used)<br>
* [Icarus Verilog (iverilog) GTKWave installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#icarus-verilog-iverilog-gtkwave-installation)<br>
* [Yosys installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#yosys-installation)<br>
* [Python installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#python-installation)<br>
* [Docker installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#docker-installation)<br>
* [Openlane installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#openlane-installation)<br>
* [Magic installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#magic-installation)<br>
    - [installing csh](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-csh)<br>
    - [installing x11/xorg](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-x11xorg)<br>
    - [installing GCC](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-gcc)<br>
    - [installing Build Essentials](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-build-essential)<br>
    - [installing OpenGL](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-opengl)<br>
    - [installing tcl/tk](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-tcltk)
    - [installing magic](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-magic)<br>
 * [ngspice installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#ngspice-installation)<br>
 
[PreSynthesis](https://github.com/DantuNandiniDevi/iiitb_freqdiv#presynthesis)<br>
 <br>
[PostSynthesis](https://github.com/DantuNandiniDevi/iiitb_freqdiv#postsynthesis)<br>
 <br>
 
 [Creating a Custom Cell](https://github.com/DantuNandiniDevi/iiitb_freqdiv/edit/main/README.md#creating-a-custom-inverter-cell)
 
[Layout](https://github.com/DantuNandiniDevi/iiitb_freqdiv#layout)<br>
 * [Preparation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#preparation)<br>
 * [Synthesis](https://github.com/DantuNandiniDevi/iiitb_freqdiv#synthesis)<br>
     - [Synthesis Reports](https://github.com/DantuNandiniDevi/iiitb_freqdiv#synthesis-reports)<br>
 * [Floorplan](https://github.com/DantuNandiniDevi/iiitb_freqdiv#floorplan)<br>
     - [Floorplan Reports](https://github.com/DantuNandiniDevi/iiitb_freqdiv#floorplan-reports)<br>
 * [Placement](https://github.com/DantuNandiniDevi/iiitb_freqdiv#placement)<br>
     - [placement Reports](https://github.com/DantuNandiniDevi/iiitb_freqdiv#placement-reports)<br>
 * [Clock Tree Synthesis](https://github.com/DantuNandiniDevi/iiitb_freqdiv#clock-tree-synthesis)<br>
 * [Routing](https://github.com/DantuNandiniDevi/iiitb_freqdiv#routing)<br>
     - [Routing Reports](https://github.com/DantuNandiniDevi/iiitb_freqdiv#routing-reports)<br>


 [Note](https://github.com/DantuNandiniDevi/iiitb_freqdiv#note)<br>
 <br>

[Results Post Layout](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#results-post-layout) <br>
* [1. Post layout synthesis gate count](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#1-post-layout-synthesis-gate-count)<br>
* [2. Area (box command)](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#2-area-box-command)<br>
* [3. Performance](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#3-performance)<br>
* [4. Flop/Standard cell ratio](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#4-flopstandard-cell-ratio)<br>
* [5. Power (internal,switching,leakage and total)](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#5-power-internal-switching-leakage-and-total)<br>

 
 [References](https://github.com/DantuNandiniDevi/iiitb_freqdiv#reference)<br>
 <br>
 
# Description

This document is a model and analysis of a Gray counter. This model will contain a 4 bit number gray counter and its corresponding BCD count too. A reset can be triggered to start the gray counter from 0 again. It is simulated using verilog.

A gray counter changes 1-bit only during one state to another state transition. The counter is same like the normal incremental counter. The only difference is in binary representation. Today gray code is widely used in the digital world. It will be helpful for error correction and signal transmission. The Gray counter is also useful in design and verification in the VLSI domain. Gray codes are widely used to prevent spurious output from electromechanical switches and to facilitate error correction in digital communications such as digital terrestrial television and some cable TV systems.

This design code has clock and reset signals and two 4 bit outputs that will generate BCD count and its respective gray count. 


<p align="center">
<img src="https://user-images.githubusercontent.com/45118517/208323221-1df3f8f9-65be-409e-a55b-5b3efcb972a9.png"> <br>
Fig 1: Basic I/O diagram
</p>

# Tools Used
The installtion commands are given by taking ubuntu as the operating system.

For installating various softwares used in this project, open the terminal by right clicking on an empty space and type the respective commands in the terminal: <br>

<b> Note: If any of the commands that do not have sudo in the prefix doesnot go through, please add a prefix of sudo and try running it. </b>

## Icarus Verilog (iverilog) GTKWave installation

```
$ sudo apt-get update

$ sudo apt-get install iverilog gtkwave 
```

This can be installed on windows as well by directly downloading and installing the .exe file of icarus

## Yosys installation

Open the terminal by right clicking on am empty space in the directory u want to install and type the following commands:

```
$ git clone https://github.com/YosysHQ/yosys.git

$ cd yosys-master

$ sudo apt install make (If make is not installed please install it)

$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev

$ make

$ sudo make install
```

## Python Installation
```
$ sudo apt install -y build-essential python3 python3-venv python3-pip
```

## Docker Installation
```
$ sudo apt-get remove docker docker-engine docker.io containerd runc (removes older version of docker if installed)

$ sudo apt-get update

$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
$ sudo mkdir -p /etc/apt/keyrings

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
$ sudo apt-get update

$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

$ apt-cache madison docker-ce (copy the version string you want to install)

$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io docker-compose-plugin (paste the version string copies in place of <VERSION_STRING>)

$ sudo docker run hello-world (If the docker is successfully installed u will get a success message here)
```

## OpenLane Installation
```
$ git clone https://github.com/The-OpenROAD-Project/OpenLane.git

$ cd OpenLane/

$ make

$ make test
```

## Magic Installation

For Magic to be installed and work properly the following softwares have to be installed first:

### Installing csh
```
$ sudo apt-get install csh
```

### Installing x11/xorg
```
$ sudo apt-get install x11

$ sudo apt-get install xorg

$ sudo apt-get install xorg openbox
```

### Installing GCC
```
$ sudo apt-get install gcc
```

### Installing build-essential
```
$ sudo apt-get install build-essential
```

### Installing OpenGL
```
$ sudo apt-get install freeglut3-dev
```

### Installing tcl/tk
```
$ sudo apt-get install tcl-dev tk-dev
```
### Installing magic
After all the softwares are installed, run the following commands for installing magic:

```
$ git clone https://github.com/RTimothyEdwards/magic

$ cd magic

$ ./configure

$ make

$ make install
```


## ngspice Installation

```
$ sudo apt-get install ngspice
```
   

# PreSynthesis

To clone the repository, download the netlist files and simulate the results, Enter the following commands in your terminal:

```
 $ git clone https://github.com/Acecoder35/iiitb_gray_cntr

 $ cd iiitb_gray_cntr 
 
 $ iverilog -o iiitb_gray_cntr_out.out iiitb_gray_cntr.v iiitb_gray_cntr_tb.v
 
 $ ./iiitb_gray_cntr_out.out
 
 $ gtkwave iiitb_gray_cntr_vcd.vcd
```

<p align="center">
<img src="https://user-images.githubusercontent.com/45118517/208324480-e162ddbb-a84d-4697-aa80-9f85c6068a4b.png"> <br>
</p>

# PostSynthesis

```
$ yosys

yosys> read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> read_verilog iiitb_gray_cntr.v

yosys> synth -top iiitb_gray_cntr

yosys> dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> stat

yosys> show

yosys> write_verilog iiitb_gray_cntr_netlist.v

$ iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 ../verilog_model/primitives.v ../verilog_model/sky130_fd_sc_hd.v iiitb_gray_cntr_netlist.v iiitb_gray_cntr_tb.v

$ ./a.out

$ gtkwave iiitb_gray_cntr_vcd.vcd
```
<p align="center">
<img src="https://user-images.githubusercontent.com/45118517/208324829-075fb7a6-bdc5-458b-a541-9e5fe2bfd62b.png"> <br>
</p>


<p align="center">
<img src="https://user-images.githubusercontent.com/45118517/208325024-7e975040-d635-4e8e-864a-3c64aede566c.png"> <br>
</p>




# Creating a Custom Inverter Cell

Open Terminal in the folder you want to create the custom inverter cell.

```
$ git clone https://github.com/nickson-jose/vsdstdcelldesign.git

$ cd vsdstdcelldesign

$  cp ./libs/sky130A.tech sky130A.tech

$ magic -T sky130A.tech sky130_inv.mag &
```
<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/187424346-c798a1a0-3e8b-43c8-a14a-7fc75e51ef2a.png"> 
<br>

The above layout will open. The design can be verified and various layers can be seen and examined by selecting the area of examination and type `what` in the tcl window.

To extract Spice netlist, Type the following commands in tcl window.

```
% extract all

% ext2spice cthresh 0 rthresh 0

% ext2spice
```
`cthresh 0 rthresh 0` is used to extract parasitic capacitances from the cell.<br>

![2](https://user-images.githubusercontent.com/62461290/187435606-af09735d-64bf-4623-a4bf-e3bae9a2bd56.png)

The spice netlist has to be edited to add the libraries we are using, The final spice netlist should look like the following:

```
* SPICE3 file created from sky130_inv.ext - technology: sky130A

.option scale=0.01u
.include ./libs/pshort.lib
.include ./libs/nshort.lib


M1001 Y A VGND VGND nshort_model.0 ad=1435 pd=152 as=1365 ps=148 w=35 l=23
M1000 Y A VPWR VPWR pshort_model.0 ad=1443 pd=152 as=1517 ps=156 w=37 l=23
VDD VPWR 0 3.3V
VSS VGND 0 0V
Va A VGND PULSE(0V 3.3V 0 0.1ns 0.1ns 2ns 4ns)
C0 Y VPWR 0.08fF
C1 A Y 0.02fF
C2 A VPWR 0.08fF
C3 Y VGND 0.18fF
C4 VPWR VGND 0.74fF


.tran 1n 20n
.control
run
.endc
.end
```

Open the terminal in the directory where ngspice is stored and type the following command, ngspice console will open:

```
$ ngspice sky130_inv.spice 
```
 
 ![Screenshot from 2022-12-19 05-01-00](https://user-images.githubusercontent.com/45118517/208325216-202b2e14-39a0-45ad-b4a8-24dad1f46b72.png)<br>

Now you can plot the graphs for the designed inverter model.

```
-> plot y vs time a
```

![4](https://user-images.githubusercontent.com/62461290/187437163-988dac40-0bd4-4ef6-abba-8528bad54659.png)<br>

Four timing parameters are used to characterize the inverter standard cell:<br>

1. Rise time: Time taken for the output to rise from 20% of max value to 80% of max value<br>
        `Rise time = (2.23843 - 2.17935) = 59.08ps`
2. Fall time- Time taken for the output to fall from 80% of max value to 20% of max value<br>
        `Fall time = (4.09291 - 4.05004) = 42.87ps`
3. Cell rise delay = time(50% output rise) - time(50% input fall)<br>
        `Cell rise delay = (2.20636 - 2.15) = 56.36ps`  
4. Cell fall delay  = time(50% output fall) - time(50% input rise)<br>
        `Cell fall delay = (4.07479 - 4.05) = 24.79ps`
        
To get a grid and to ensure the ports are placed correctly we can use
```
% grid 0.46um 0.34um 0.23um 0.17um
```

![5](https://user-images.githubusercontent.com/62461290/187439583-b2226424-4db2-419f-8e6b-ff1e4d365adb.png)


To save the file with a different name, use the folllowing command in tcl window
```
% save sky130_vsdinv.mag
```

Now open the sky130_vsdinv.mag using the magic command in terminal
```
$ magic -T sky130A.tech sky130_vsdinv.mag
```
In the tcl command type the following command to generate sky130_vsdinv.lef
```
$ lef write
```
A sky130_vsdinv.lef file will be created.


# Layout

## Preparation
The layout is generated using OpenLane. To run a custom design on openlane, Navigate to the openlane folder and run the following commands:<br>
```
$ cd designs

$ mkdir iiitb_gray_cntr

$ cd iiitb_gray_cntr

$ mkdir src

$ touch config.json

$ cd src

$ touch iiitb_gray_cntr.v
```

The iiitb_gray_cntr.v file should contain the verilog RTL code you have used and got the post synthesis simulation for. <br>

Copy  `sky130_fd_sc_hd__fast.lib`, `sky130_fd_sc_hd__slow.lib`, `sky130_fd_sc_hd__typical.lib` and `sky130_vsdinv.lef` files to `src` folder in your design. <br>

The final src folder should look like this: <br>

![Screenshot from 2022-12-19 05-06-39](https://user-images.githubusercontent.com/45118517/208325435-5ebce6ad-8963-407b-ad56-115b6c72c9cb.png) <br>

The contents of the config.json are as follows. this can be modified specifically for your design as and when required. <br>

As mentioned by kunal sir dont use defined `DIE_AREA` and `FP_SIZING : absolute`, use `FP_SIZING : relative`
```
{
    "DESIGN_NAME": "iiitb_gray_cntr",
    "VERILOG_FILES": "dir::src/iiitb_gray_cntr.v",
    "CLOCK_PORT": "clkin",
    "CLOCK_NET": "clkin",
    "GLB_RESIZER_TIMING_OPTIMIZATIONS": true,
    "CLOCK_PERIOD": 10,
    "PL_TARGET_DENSITY": 0.7,
    "FP_SIZING" : "relative",
    "pdk::sky130*": {
        "FP_CORE_UTIL": 30,
        "scl::sky130_fd_sc_hd": {
            "FP_CORE_UTIL": 20
        }
    },
    
    "LIB_SYNTH": "dir::src/sky130_fd_sc_hd__typical.lib",
    "LIB_FASTEST": "dir::src/sky130_fd_sc_hd__fast.lib",
    "LIB_SLOWEST": "dir::src/sky130_fd_sc_hd__slow.lib",
    "LIB_TYPICAL": "dir::src/sky130_fd_sc_hd__typical.lib",  
    "TEST_EXTERNAL_GLOB": "dir::../iiitb_freqdiv/src/*"


}
```



Save all the changes made above and Navigate to the openlane folder in terminal and give the following command :<br>

```
$ make mount (if this command doesnot go through prefix it with sudo)
```
![Screenshot from 2022-12-19 05-11-04](https://user-images.githubusercontent.com/45118517/208325628-1c436aad-3949-4b94-b306-ba56c871198e.png)

After entering the openlane container give the following command:<br>
```
$ ./flow.tcl -interactive
```
 
![Screenshot from 2022-12-19 05-12-31](https://user-images.githubusercontent.com/45118517/208325668-5abf27cd-2f52-442e-b728-dc89c3d898b2.png)

This command will take you into the tcl console. In the tcl console type the following commands:<br>

```
% package require openlane 0.9
```
![Screenshot from 2022-12-19 05-14-25](https://user-images.githubusercontent.com/45118517/208325756-a6f7aa0a-f3a2-4b61-9ec9-b4b408fbca88.png) <br>
```
% prep -design iiitb_gray_cntr
```
![Screenshot from 2022-12-19 05-16-36](https://user-images.githubusercontent.com/45118517/208325886-93a6af1a-9dd9-4bfd-9beb-853a9c286990.png) <br>

The following commands are to merge external the lef files to the merged.nom.lef. In our case sky130_vsdiat is getting merged to the lef file <br>
```
set lefs [glob $::env(DESIGN_DIR)/src/*.lef]
add_lefs -src $lefs
```
<br>
The contents of the merged.nom.lef file should contain the Macro definition of sky130_vsdinv <br>


## Flow


### NOTE
We can run the whole flow at once instead of step by step process by giving the following command in openlane container<br>
```
$ ./flow.tcl -design iiitb_gray_cntr
```

All the steps will be automated and all the files will be generated.<br>

we can open the mag file and view the layout after the whole process by the following command, you can follow the path. <br>

```
$ magic -T /home/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech iiitb_freqdiv.mag &
```

# Results post-layout

### 1. Post Layout synthesis gate count

![Screenshot from 2022-12-19 05-35-04](https://user-images.githubusercontent.com/45118517/208326814-543c16b0-1f68-4874-9513-adb066c976f5.png) <br>

<b><I> Gate Count = 25 </b></I> <br>
<b><I> As seen from above report, Flop ratio = 7/25 = 0.28 </b></I> <br>

### 2. Area (box command)

 ![Screenshot from 2022-12-19 05-35-40](https://user-images.githubusercontent.com/45118517/208326947-1baa1315-a796-4075-af58-8428188f3de8.png) <br>


<b><I> Area = 2933.573 um2</b></I> <br>


### 3. Performance

```
$ sta <br>

OpenSTA> read_liberty -max /home/nandu/OpenLane/designs/iiitb_freqdiv/src/sky130_fd_sc_hd__fast.lib <br>

OpenSTA> read_liberty -min /home/nandu/OpenLane/designs/iiitb_freqdiv/src/sky130_fd_sc_hd__slow.lib <br>

OpenSTA> read_verilog /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/routing/iiitb_freqdiv.resized.v <br>

OpenSTA> link_design iiitb_freqdiv <br>

OpenSTA> read_sdc /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/cts/iiitb_freqdiv.sdc <br>

OpenSTA> read_spef /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/routing/iiitb_freqdiv.nom.spef <br>

OpenSTA> set_propagated_clock [all_clocks] <br>

OpenSTA> report_checks <br>
```

![image](https://user-images.githubusercontent.com/62461290/192555217-b263a4e2-cad6-44e3-8682-bb0b70840aa5.png)<br>

![image](https://user-images.githubusercontent.com/62461290/192554957-5c3adff3-850e-4f62-b842-7279bf1ebd6d.png)<br>

<b><I> Performance = 1/(clock period - slack) = 1/(10 - 1.70)ns = 120.482Mhz </b></I><br>

### 4. Flop/standard cell ratio

![image](https://user-images.githubusercontent.com/62461290/192561408-44f38899-38d3-4b34-89f5-1b25cb59a143.png) <br>


<b><I>Flop Ratio = Ratio of total number of flip flops / Total number of cells present in the design = 8/71 = 0.1125 </b></I><br>

### 5. Power (internal, switching, leakage and total)

![image](https://user-images.githubusercontent.com/62461290/192557539-51cbc494-67f6-4a8f-9b39-cd5da92613b5.png) <br>

<b><I> Internal Power = 97.9 uW (74.4%) </b></I><br>
<b><I> Switching Power = 33.7 uW (25.6%) </b></I><br>
<b><I> Leakage Power = 0.459 nW (0.00%) </b></I><br>
<b><I> Total Power = 132 uW (100%) </b></I><br>



# Reference

- http://pgandhi189.blogspot.com/2014/11/universal-frequency-dividor.html ,Verilog code and testbench was taken from here

- https://en.wikipedia.org/wiki/Frequencydivider 

- https://eng.libretexts.org/Bookshelves/ElectricalEngineering/Electronics/Microwave and RF Design IV%3A Modules (Steer)/06%3A Mixer and Source Modules/6.08%3A Frequency Divider,some content and fig.1. was taken from here..

# Author
- Dantu Nandini Devi
