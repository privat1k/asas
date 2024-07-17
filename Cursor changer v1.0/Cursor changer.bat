@echo off
mode 100
color 2f
title Cursor changer v1.0 (%date%, licence number: %random%%random%)
echo Hello, %username%! Do you want to change the cursor?
echo Press any key to continue...
pause>nul
:: reg query "HKEY_CURRENT_USER\Control Panel\Cursors" /t REG_EXPAND_SZ
call :SetCursor Arrow "%cd%\cursors\main.ani">nul
call :SetCursor Help "%cd%\cursors\help.ani">nul
call :SetCursor Wait "%cd%\cursors\wait.ani">nul
call :SetCursor AppStarting "%cd%\cursors\wait.ani">nul
call :SetCursor IBeam "%cd%\cursors\text.ani">nul
call :SetCursor Hand "%cd%\cursors\pointer.cur">nul
call :SetCursor NWPen "%cd%\cursors\pointer.cur">nul
call :SetCursor Crosshair "%cd%\cursors\pointer.cur">nul
call :SetCursor No "%cd%\cursors\no.ani">nul
call :SetCursor UpArrow "%cd%\cursors\alternate.ani">nul
call :SetCursor SizeAll "%cd%\cursors\move.ani">nul
call :SetCursor SizeNS "%cd%\cursors\vertical.ani">nul
call :SetCursor SizeWE "%cd%\cursors\horizontal.ani">nul
call :SetCursor SizeNWSE "%cd%\cursors\diagonal1.ani">nul
call :SetCursor SizeNESW "%cd%\cursors\diagonal2.ani">nul
echo Operation completed!
echo Enjoy your new custom cursor!
echo Press any key to apply changed cursors (it will restart your PC)
pause>nul
shutdown /r /f -t 0
 
:SetCursor
    reg add "HKCU\Control Panel\Cursors" /v "%~1" /d "%~2" /t REG_EXPAND_SZ /f
goto :eof
