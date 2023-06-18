@REM  ╭─────────────────────────────────────.★..─╮
@REM               *Install Script*
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
@REM                   *Install*
@REM  ╰─..★.─────────────────────────────────────╯

call winget upgrade --all
call winget install -e --id Microsoft.WindowsTerminal --accept-package-agreements --accept-source-agreements
call winget install -e --id Microsoft.PowerToys --accept-package-agreements --accept-source-agreements

call winget install -e --id Mozilla.Firefox --accept-package-agreements --accept-source-agreements
call winget install -e --id Google.Chrome --accept-package-agreements --accept-source-agreements

call winget install -e --id Git.Git --accept-package-agreements --accept-source-agreements
call winget install -e --id GitHub.GitHubDesktop --accept-package-agreements --accept-source-agreements

@REM call winget install -e --id Microsoft.VisualStudio.2022.Community.Preview --accept-package-agreements --accept-source-agreements
call winget install -e --id Microsoft.VisualStudioCode --accept-package-agreements --accept-source-agreements
call winget install -e --id JetBrains.IntelliJIDEA.Community --accept-package-agreements --accept-source-agreements
@REM call winget install -e --id SublimeHQ.SublimeText.4 --accept-package-agreements --accept-source-agreements
call winget install -e --id JackieLiu.NotepadsApp --accept-package-agreements --accept-source-agreements

call winget install -e --id Docker.DockerDesktop --accept-package-agreements --accept-source-agreements
@REM call winget install -e --id Oracle.VirtualBox --accept-package-agreements --accept-source-agreements

call winget install -e --id PostgreSQL.pgAdmin

call winget install -e --id Oracle.JavaRuntimeEnvironment --accept-package-agreements --accept-source-agreements
call winget install -e --id Python.Python.3.11 --accept-package-agreements --accept-source-agreements
call winget install -e --id GoLang.Go.1.20 --accept-package-agreements --accept-source-agreements
call winget install -e --id OpenJS.NodeJS.LTS --accept-package-agreements --accept-source-agreements

call winget install -e --id Yarn.Yarn --accept-package-agreements --accept-source-agreements
call winget install -e --id pnpm.pnpm --accept-package-agreements --accept-source-agreements

call winget install -e --id GnuPG.GnuPG --accept-package-agreements --accept-source-agreements
call winget install -e --id AntibodySoftware.WizTree --accept-package-agreements --accept-source-agreements
call winget install -e --id Balena.Etcher --accept-package-agreements --accept-source-agreements
@REM call winget install -e --id ventoy.Ventoy --accept-package-agreements --accept-source-agreements

@REM call winget install -e --id RuneLite.RuneLite --accept-package-agreements --accept-source-agreements
call winget install -e --id Piriform.CCleaner --accept-package-agreements --accept-source-agreements
call winget install -e --id Logitech.GHUB --accept-package-agreements --accept-source-agreements
call winget install -e --id Malwarebytes.Malwarebytes --accept-package-agreements --accept-source-agreements

@REM  ╭─────────────────────────────────────.★..─╮
@REM                    *End*
@REM  ╰─..★.─────────────────────────────────────╯

@echo off
goto :BEGIN

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
)
exit /B