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


$PATH="C:\NSU\capstone(AutoIt_Testing)\Completed_TestScripts\Ch.7-P.C.14"
$EXE="Ch.7-P.C.14.exe"
$TEST="Ch.7-P.C.14(lottery)-TestScript.exe"


$randomInput1=Random(0,9,1)
$randomInput2=Random(0,9,1)
$randomInput3=Random(0,9,1)
$randomInput4=Random(0,9,1)
$randomInput5=Random(0,9,1)


Run($EXE)

sleep(1000)

$progName= "Ch.7-P.C.14"
$progPath="C:\capstoneStuff\Ch.7-P.C.14\"


					 ;title of program window
If WinWaitActive($PATH)Then

;automate data input
 Send($randomInput1)
 Sleep(1000)
 Send("{Enter}")
 Sleep(1000)

 Send($randomInput2)
 Sleep(1000)
 Send("{Enter}")
 Sleep(1000)

 Send($randomInput3)
 Sleep(1000)
 Send("{Enter}")
 Sleep(1000)

 Send($randomInput4)
 Sleep(1000)
 Send("{Enter}")
 Sleep(1000)

 Send($randomInput5)
 Sleep(1000)
 Send("{Enter}")
 Sleep(5000)

 Send("{Enter}")

EndIf


;closes window after runtime is complete
WinKill($PATH)
Sleep(1000)
 MsgBox($MB_OK ,"", "Test Complete" )


