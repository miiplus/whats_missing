::directly run in cmd
::for /L %i in (10 1 12) do if not exist MLI.z%i echo MLI.z%i missing on %date% %time% >> log.txt

::run bat (cmd> start check.bat)
for /L %%i in (10 1 12) do if not exist MLI.z%%i echo MLI.z%%i missing on %date% %time% >> log.txt
pause

::批次檔中只要是利用括弧()分成多行撰寫的指令，實際上都看成一行，
::在括弧()裡面取用變數時都會遇到需要開啟用延遲環境變數擴充功能，
::開啟用變數延遲展開功能(SETLOCAL ENABLEDELAYEDEXPANSION)之後，
::取用變數的方式要由 %var% 更改為 !var!
::SETLOCAL ENABLEDELAYEDEXPANSION
::@echo off
::for /L %%i (10 1 12) do (
::    set file = MLI.z%%i
::    ::set dir = c:\folder\log
::    ::set dir >> set file path
::
::    if not exist !file!
::    echo !file! missing on !date! !time! >> log.txt
::)
::pause


