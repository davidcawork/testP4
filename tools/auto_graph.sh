#!/bin/bash

# David Carrascal<david.carrascal@edu.uah.es>, GIST, University of Alcala, Spain.
#
# This tool was made to automate the creation of graphs of the p4c-graphs compiler.
#  
#
# Requirements: 
#			- p4c -> p4c-graphs 
#			- libboost-graph-dev
#			- graphviz
#
# Usage: 
#                       ./auto_graphs.sh <p4_program>.p4
#
# Note: It will create in your cwd the output directory
# 


requirements='libboost-graph-dev graphviz'
P4_PROG=$1

#To check requeriments
function requirements {
	echo "Checking requirements..."
	for deps in $requirements
	do
		dep=$(dpkg-query -W --showformat='${Status}\n' ${deps} || grep "${deps} found -> OK")
		echo Checking for ${deps}: $dep
		if [ "" == "$dep" ]; then
  			echo "Setting up ${deps}"
  			sudo apt-get --yes install ${deps}
		else
    			echo "${deps} found -> OK"		
		fi
	done


	if command -v  p4c-graphs >/dev/null 2>&1 ; then
    		echo "p4c-graphs found -> OK"
    		echo "$(p4c-graphs --version)"
	else
    		echo "p4c-graphs not found"
		exit
	fi
}

#Create the directory tree
function create_dir {
	echo "Creating directory tree..."
	mkdir -p graphs
	cd graphs
	mkdir -p dot
	cd ..
}

#To parse *.dot files into png files
function parser_png {
	echo "Parsing *.dot file into png format..."
	cd graphs	
	files=$(find . -maxdepth 1 -type f -not -path '*/\.*' | sed 's/^\.\///g' | sort)
	for dot_file in $files
	do	
		#echo $dot_file
  		dot $dot_file -Tpng >  ${dot_file%.*}.png

	done
	mv *.dot ./dot/
	cd ..

}

#Main function
function main {
	requirements
	create_dir
	p4c-graphs $P4_PROG --graphs-dir graphs
	parser_png
}

main
echo "Done!"
