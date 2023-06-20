# Rename-FASTA-Headers
shell script for shortening genome sequence header names in FASTA files

before running, 
1. replace the 'filePath' variable with the 
   path to the '.fna' file you want to alter.

2. replace the 'filePath2' variable with the
   name you want the output '.fna' file to
   have.

*NOTES:*
* *the '.ps1' file performs the function in Windows Powershell, and the '.sh' file performs the function in a Bash shell*
* *before you can run a powershell script, you must open a Powershell command prompt as administrator and set the execution policy to 'Unrestricted*

To run on Windows,
1. Open a powershell terminal
2. Navigate to the location of the '.ps1' file
3. Type '.\rename_headers_PWRSHL.ps1' and hit ENTER
4. A new copy of the file with the altered headers will
   appear in the location you specified for 'filePath2'

To run on Linux/MacOS,
1. Open a terminal
2. Navigate to the location of the '.sh' file
3. Type './rename_headers_BASH.sh' and hit ENTER
4. A new copy of the file with the altered headers will
   appear in the location you specified for 'filePath2'
