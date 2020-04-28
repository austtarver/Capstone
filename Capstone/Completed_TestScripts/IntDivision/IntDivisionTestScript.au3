#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Austin Tarver

 Script Function:
	This script is designed to automate a simple c++ program that takes 2 numbers and divides them,
	then outputs the answer.

	The script runs the VS 2019 program from inside the IDE as a solution

#ce ----------------------------------------------------------------------------


#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>

	  ; random input declaration
$input1=Random(0,100,1)
$input2=Random(1,100,1)

		 ;path to .exe file for program
Run("prac2.exe")

Sleep(1000)

					 ;Path to the executable
If WinWaitActive("C:\NSU\capstone(AutoIt_Testing)\Completed_TestScripts\IntDivision")Then


   Sleep(3000)

;automate data input

 Send($input1)
 Sleep(1000)
 Send("{Enter}")
Sleep(1000)
 Send($input2)
 Sleep(1000)
 Send("{Enter}")


 Sleep(3000)

 Send("{Enter}")

EndIf

;closes Executable after runtime is complete
WinKill("C:\NSU\capstone(AutoIt_Testing)\Completed_TestScripts\prac2.exe")
Sleep(1000)

MsgBox($MB_OK ," ","Test Complete" )
