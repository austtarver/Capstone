#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
#include <Misc.au3>


$PATH="C:\NSU\capstone(AutoIt_Testing)\Completed_TestScripts\ReadFile\"
$EXE="Ch.7-P.C.5.exe"
$FILE="monkeyFood.txt"



Run($EXE)

sleep(1000)

$progName= "Ch.7-P.C.14"
$progPath="C:\capstoneStuff\Ch.7-P.C.14\"


					 ;title of program window
If WinWaitActive($PATH & $EXE)Then

;automate data input
 Sleep(10000)
 ShellExecute("notepad.exe",$FILE)
 Sleep(10000)
 WinKill($FILE)

Send("{Enter}")


EndIf



;closes window after runtime is complete
WinKill($PATH)
Sleep(1000)
 MsgBox($MB_OK ,"", " Test Complete" )
