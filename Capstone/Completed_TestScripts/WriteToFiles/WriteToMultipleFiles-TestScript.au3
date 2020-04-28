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
#include <File.au3>


$PATH="C:\NSU\capstone(AutoIt_Testing)\Completed_TestScripts\WriteToFiles\"
$EXE="ParallelArrays.exe"
$FILE1="studentIDs.txt"
$FILE2="grades.txt"


Run($EXE)

sleep(1000)


					 ;title of program window
If WinWaitActive($PATH & $EXE)Then

;automate data input
 Sleep(5000)


Send("{Enter}")


EndIf



;closes window after runtime is complete
WinKill($PATH)
Sleep(1000)

$i= _FileCountLines($PATH & $FILE1)
$z= _FileCountLines($PATH & $FILE2)

 MsgBox($MB_OK ," Test Complete ", " Number of StudentID's: " & $i )
 MsgBox($MB_OK," Test Complete ", "Number of Grades: " & $z)
