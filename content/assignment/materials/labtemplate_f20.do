/*		labtemplate_f20.do

Last updated 08 September 2020 by Emily Beam


This file is a template for Stata lab. This file is set up to work with my home computer AND to work with my computer lab computer.  

That way, you can test out your do-files at home, and you'll be ready to go in the lab. 

Please adapt this template so it works on your own computer and file directory.

You can use this template to get started with any other files.  


To make this work, you'll need the following: 

1. A folder where you want to store all your materials -- you'll need to know the file path for that folder
2. Your data file, saved into that folder. 

*/ 


****************************************
*1.   First, let's change the directory. Only ONE line of code should be "active" (not commented) at a time 
****************************************


* cd means "change directory." it changes your working directory to whereever your files are. 

*cd "C:\My Documents\EC200\Lab"							// Sample lab directory for a Windows machine. Put your data file there. 

cd "/Users/emilybeam/Dropbox/EC200 - Stata"			// Sample lab directory for a Mac. This is my "home" directory. Note that you MUST use forward slashes (/) for a Mac. 


* When it comes to file paths ... 
	* Backwards slashes \\\\\ --> windows only 
	* Forward slashes --> works for all computers!




*2. Now,  open the data file. We don't have to list the file path anymore because we are in the right folder. 

* use: open this data file.  the "clear" option erases any previous file from the memory 
use "acs2014_all.dta",clear



*3. Now, let's open a log file. The log file will save to whatever our "working directory" is 

* capture:  ignore this command if it doesn't work 
* log close: close any opening lots 
* together, this command will close any open logs. Stata can only run one log at a time. 

capture log close 
* log: start a new log.  the "replace" option replaces any previous file with the same name 

log using "log_lab2.log",replace


*4. Perform your analysis 


							// <-- add commands here



*5. Close your log

log close 


