set DT_ENV=

if exist %~dp0env.bat (
    call %~dp0env.bat
)

if exist %cd%\env.bat (
    call %cd%\env.bat
)
