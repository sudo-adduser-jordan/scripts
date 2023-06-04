@REM  ╭─────────────────────────────────────.★..─╮
@REM               *Uninstall Script*
@REM  ╰─..★.─────────────────────────────────────╯


@REM          _.-'78o``"`--._
@REM      ,o888o.  .o888o,   ''-.
@REM    ,88888P  `78888P..______.]
@REM   /_..__..----""        __.'
@REM   `-._       /""| _..-''
@REM       "`-----\  `\
@REM               |   ;.-""--..
@REM               | ,8o.  o88. `.
@REM               `;888P  `788P  :
@REM         .o""-.|`-._         ./
@REM        J88 _.-/    ";"-P----'
@REM        `--'\`|     /  /
@REM            | /     |  |
@REM            \|     /   |akn
@REM             `-----`---'

@REM  "A byte of time is a byte of gold,
@REM   but you can’t buy that byte of time,
@REM   with a byte of gold.”

@REM  (∩｀-´)⊃━ ☆ﾟ.*･｡ﾟ

@REM  ╭─────────────────────────────────────.★..─╮
@REM                   *Uninstall*
@REM  ╰─..★.─────────────────────────────────────╯

call winget remove Microsoft.GetHelp_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.MixedReality.Portal_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.SkypeApp_kzf8qxf38zg5c --accept-source-agreements
call winget remove Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.YourPhone_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.ZuneVideo_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.549981C3F5F10_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.WindowsMaps_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.Office.OneNote_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.Getstarted_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe --accept-source-agreements
call winget remove microsoft.windowscommunicationsapps_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.WindowsAlarms_8wekyb3d8bbwe --accept-source-agreements
call winget remove Microsoft.People_8wekyb3d8bbwe --accept-source-agreements
call winget remove Disney.37853FC22B2CE_6rarf9sa4v8jt --accept-source-agreements
call winget remove SpotifyAB.SpotifyMusic_zpdnekdrzrea0 --accept-source-agreements
@REM taskkill /f /im OneDrive.exe
call winget remove Microsoft.OneDrive --accept-source-agreements

@REM  ╭─────────────────────────────────────.★..─╮
@REM                   *End*
@REM  ╰─..★.─────────────────────────────────────╯

@echo off
goto :BEGIN

:::art. 
:::art.          _.-'78o``"`--._
:::art.      ,o888o.  .o888o,   ''-.
:::art.    ,88888P  `78888P..______.]
:::art.   /_..__..----""        __.'
:::art.   `-._       /""| _..-''
:::art.       "`-----\  `\
:::art.               |   ;.-""--..
:::art.               | ,8o.  o88. `.
:::art.               `;888P  `788P  :
:::art.         .o""-.|`-._         ./
:::art.        J88 _.-/    ";"-P----'
:::art.        `--'\`|     /  /
:::art.            | /     |  |
:::art.            \|     /   |akn
:::art.             `-----`---'
:::art. 
:::art.  "A byte of time is a byte of gold,
:::art.   but you can’t buy that byte of time,
:::art.   with a byte of gold.”
:::art. 
:::art.  (∩｀-´)⊃━ ☆ﾟ.*･｡ﾟ
:::art. 

:BEGIN
set "BATCH=%~f0"

call :SUB "art"
> nul pause

:SUB "name"
for /F "delims=" %%L in ('
    findstr /L /I /B /C:":::%~1." "%BATCH%"
') do (
    set "LINE=%%L"
    setlocal EnableDelayedExpansion
    echo(!LINE:*.=!
    endlocal
)
exit /B