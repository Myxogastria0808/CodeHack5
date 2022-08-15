chcp 65001
@echo off

:A
set input_strong =

echo -----------------------------------------------------------------------------------------------
echo For edit web contents, type [edit].
echo.
echo For web updates, type [replace].
echo.
echo *caution* Make sure you are connected to the Internet when launching this batch file.
echo -----------------------------------------------------------------------------------------------

color b0
set /P input_strong="input:"
echo %input_strong%

pause

if %input_strong%==edit (
    start sample.txt
)
if %input_strong%==replace (
    git add .
    git commit -m "commit"
    git push origin master
) else (
    goto :A
)

exit