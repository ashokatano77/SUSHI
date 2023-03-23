@echo off
set /p x= "intorduce un numero "
set /p y= "intorduce otro numero "
set /a z= %z%=%x%+%y%


::actividad 2
@echo off
set /p nombre="intorduce nombre"
if exist "myname.txt" (echo %nombre% >> "myname.txt")
else (echo %nombre% >"myname.txt")
pause 

::actividad 3
@echo off
:menu
echo 1 para ver el nombre de oredeanro, 2 user,3 time, 4"
choice/c 1234
if %errorlevel%  EQU 1 goto computer
if %errorlevel%  EQU 2 goto user
if %errorlevel%  EQU 3 goto time
if %errorlevel%  EQU 4 goto goto :eof


:computer
echo %computername%
goto menu


:user 
echo %username%
goto menu
 :: revisa estos dos ultimos porq no estan bien
:time 
echo %date% %time%
goto menu

:eof
echo %:eof%
goto : menu

 :: 4

 @echo off
 



