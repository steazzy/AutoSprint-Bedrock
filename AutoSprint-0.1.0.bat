@echo off
color 02

:ChooseVersion
echo.
echo.
echo.
echo.
echo.
echo.
Echo                                                       Choose your Version:
Echo.
Echo                                                           1 - Latest
Echo                                                           2 - 1.1.5 
echo.
Set /p choice=".                                                    Your version: "
if not defined choice goto ChooseVersion

if "%choice%"=="1" (
  goto ChooseSetting
) else if "%choice%"=="2" (
  goto ChooseSetting
) else (
  cls
  echo                                                        Wrong Version!
  goto ChooseVersion
)

:ChooseSetting
cls
echo.
echo.
echo.
echo.
echo.
echo.
Echo                                                       Choose setting:
Echo.
Echo                                                      1 - AutoSprint
Echo                                                      2 - Default Settings (AutoSprint settings will reset)  
echo.
Set /p setting=".                                                    Your choice: "
if not defined setting goto ChooseSetting

if "%setting%"=="1" (
  goto AutoSprint
) else if "%setting%"=="2" (
  goto Default
) else (
  cls
  echo                                                        Wrong setting!
  goto ChooseSetting
)

:AutoSprint
cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftpe\
if "%choice%"=="1" (
  powershell -Command "(gc options.txt) -replace 'keyboard_type_1_key.sprint:17', 'keyboard_type_1_key.sprint:87' | Out-File -encoding ASCII options.txt"
) else (
  powershell -Command "(gc options.txt) -replace 'key_key.sprint:17', 'key_key.sprint:87' | Out-File -encoding ASCII options.txt"
)
goto Bye

:Default
cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftpe\
if "%choice%"=="1" (
  powershell -Command "(gc options.txt) -replace 'keyboard_type_1_key.sprint:87', 'keyboard_type_1_key.sprint:17' | Out-File -encoding ASCII options.txt"
) else (
  powershell -Command "(gc options.txt) -replace 'key_key.sprint:87', 'key_key.sprint:17' | Out-File -encoding ASCII options.txt"
)
goto Bye

:Bye
cls
echo                                                      Successful!
echo.
echo.
echo.
echo.
echo.                                             * * * * * * * * * * * * * *
echo                                              *                         *
echo                                              *                         *
echo                                              *    Script by @xlingy    *
echo                                              *                         *
echo                                              *                         *
echo.                                             * * * * * * * * * * * * * *
echo.
echo.     
echo.
echo.                                 GitHub: https://github.com/xlingyy/AutoSprint-Bedrock
echo.
echo.
echo.
echo.
echo.
echo.
timeout /t 15
exit

