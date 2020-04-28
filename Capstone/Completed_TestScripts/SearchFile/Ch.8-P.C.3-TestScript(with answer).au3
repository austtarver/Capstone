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


$PATH="C:\NSU\capstone(AutoIt_Testing)\Completed_TestScripts\SearchFile\"
$EXE="Ch.8-P.C.3.exe"
$FILE="winningNumbers.txt"

$Random1=Random(1,9,1)
$Random2=Random(1,9,1)
$Random3=Random(1,9,1)
$Random4=Random(1,9,1)
$Random5=Random(1,9,1)
$Answer="13579"


Run($EXE)

sleep(1000)


					 ;title of program window
If WinWaitActive($PATH & $EXE)Then

;automate data input
; Send($Random1)
 ; Send($Random2)
  ; Send($Random3)
   ; Send($Random4)
	; Send($Random5)
	 Sleep(1000)
	 Send($Answer)
	 Sleep(1000)
	 Send("{Enter}")

Sleep(5000)
Send("{Enter}")


EndIf



;closes window after runtime is complete
WinKill($PATH)
Sleep(1000)
 MsgBox($MB_OK ,"", " Test Complete" )
