#!/bin/sh

#Task: Crate new folder with desired files
#The task will only work on the files that are in the working directory

#Help function will explain to someone what they need to do and how to program works
Help (){
	echo "This package creates a new folder and moves the files you'd like to the folder"
	echo 
	echo "When prompted, enter the commands as follows: "
	echo 
	echo [new_dir_name] [list of files to move]
}

#if the user gives the '-h' option, run the help function 
while getopts ":h" option; do
	case $option in h)
		Help
		exit;;
	esac
done

#find all the files in the existing folder
files=$(ls -p | grep -v /)

#function to create a directory and move the desired files
Move_Files (){
	#if the new directory name already exists, don't create the directory 
	if [[ -d $1 ]]; then 
		echo "Folder exists"
		exit 1
	#if the new directory name is a file, don't make the directory 
	elif [[ -f $1 ]]; then
		echo "The passed in directory name is an existing file"
		exit 1
	else
		mkdir "$1"
		for i in "$@"; do
			#check if the next name is the directory name 
			if [ "$i" == "$1" ]; then 
				continue
			#check if the file to move is the script file
			elif [ "$i" == "$0" ]; then
				echo "Can't move the script to new directory"
				continue
			#after checks move the file
			else
				cp $i $1
			fi;
		done
		exit 1
	fi 
}

#print the found files that can be potential moved. Directories are ignored 
echo "Potential files to sort: "
for x in  $files; do echo $x; done
echo $'\n'

#wait for the user to input a command, an empty entry will just cancel the program 
read -p "List new folder name and file to move then press ENTER: " dir
if [[ -z "$dir" ]];
then 
	echo "Need to enter something";
	exit 1
else 
	Move_Files $dir
fi 
