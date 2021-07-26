#!/bin/sh

#Task: Crate new folder with desired files
#The task will only work on the files that are in the working directory

Help (){
	echo "This package creates a new folder and moves the files you'd like to the folder"
	echo 
	echo "When prompted, enter the commands as follows: "
	echo 
	echo [new_dir_name] [list of files to move]
}

while getopts ":h" option; do
	case $option in h)
		Help
		exit;;
	esac
done
files=$(ls -p | grep -v /)

Move_Files (){
	if [[ -d $1 ]]; then 
		echo "File exists"
		exit 1
	elif [[ -f $1 ]]; then
		echo "The passed in directory is an existing file"
		exit 1
	else
		mkdir "$1"
		exit 1
	fi 
}

echo "Potential files to sort: "
for x in  $files; do echo $x; done
echo $'\n'

read -p "List new folder name and file to move then press ENTER: " dir
if [[ -z "$dir" ]];
then 
	echo "Need to enter something";
	exit 1
else 
	Move_Files $dir
fi 
