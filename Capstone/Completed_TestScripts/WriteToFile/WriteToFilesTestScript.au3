#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#include <File.au3>

$PATH="C:\NSU\capstone(AutoIt_Testing)\Completed_TestScripts\WriteToFile\"
$EXE="Write100RandomNumToFile.exe"

		 ;path to .exe file
Run($EXE)

sleep(3000)

$progName= "Write100RandomNumToFile"
$progPath="C:\capstoneStuff\Write100RandomNumToFile\"
$input1="testFile.txt"


					 ;path of executable
If WinWaitActive($PATH)Then

;automate data input

 Send($input1)
 Sleep(1000)

 Send("{Enter}")
 Sleep(3000)

 Send("{Enter}")
 Sleep(2000)

EndIf


;closes window after runtime is complete

WinKill($PATH)
Sleep(1000)


 $i= _FileCountLines($PATH & $input1)

MsgBox($MB_OK ," ","Amount of random numbers in file: "& $i )
