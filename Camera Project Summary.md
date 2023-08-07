Height control camera thermal management project

# Summary
- Assess and characterize overheating problem on the the height control camera during maximum power continuous deposition.  
- Design and implement a minimum-complexity thermal management solution. 
- Validate solution performance under nominal conditions.

Secondary goal:
- Design enclosure for new IR raspberry pi camera
- Validate thermal performance under nominal conditions

# Resources to Start
- [height control methodology overview]("\ARMS_LAB\Publishing\2021\2021 Height Controller CIRP\CIRP 2021 - Soshi et al.pdf")
- [Vivian's thesis, details about camera mount design]("\ARMS_LAB\Forms and Documents\Thesises Dissertations\Vivian_Zhou_MSI_Thesis_2021.pdf")
- any heat transfer textbook for reference
- [visual height camera datasheet just the board](http://www.elpcctv.com/low-illumination-hd-usb-camera-module-aptina-ar0130-color-sensor-p-232.html)
- [visual height camera datasheet product](http://www.webcamerausb.com/elp-4mm-manual-focus-lens-aluminum-industrial-box-housing-960p-industrial-camera-p-214.html)

# Suggested To-Do List
1. Read Vivian's thesis, understand the thermal management problem
2. Create basic heat transfer model 
	1. Estimate clad irradiance 
	2. Estimate air cooling on enclosure
	3. Find expected lens and sensor equilibrium temperature
3. Instrument camera and design heating experiment
	1. Determine how to set temperature limits
4. Compare results to model
5. Determine cooling load required to not exceed required temperature
6. Begin solution design phase