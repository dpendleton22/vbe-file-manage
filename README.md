# vbe-file-manage 🗄️ 📁 📂

This is a Value By Error 🦆 File Manager project to help others get more familiar with the terminal and with Bash!

The current code is simply meant as a starting point for you to add more onto the project. Maybe we can even added your code to the original project as an open-source contribution!

Please feel free to let me know if there are any questions for concerns!

## How to run the code
Use the command: 
```bash
bash ./sort_files.sh
```

The user will then be prompoted to give a new directory name (use hashes or under scores for spaces):

**List new folder name and file to move then press ENTER: [new_directory_name] file1 file2 file3....**

## Need help??
Use the command:
```bash
bash ./sort_files.sh -h
```

This will give a print out of the expected input 

## How it works
The program 'currently' only works in the folder the 'sort_files.sh' folder is in. It will create a new directory and move the files you specify to the new directory

## Ideas/Suggestions to improve the program 
- Give an easier input for specifying the files to move instead of typing everything out. Maybe a numbering system 
- Give the script the ability to remove old files if the user wants to remove them
  - Added a --remove option (similar to the -h help option)
- Add the ability to call the script anywhere in the computer system (adding the sort_files.sh script to /usr/bin/ should do this but I haven't tested it yet)
