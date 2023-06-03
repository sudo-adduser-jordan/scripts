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
call winget install -e --id Microsoft.WindowsTerminal
call winget install -e --id Microsoft.PowerToys

call winget install -e --id Mozilla.Firefox
call winget install -e --id Google.Chrome

call winget install -e --id Git.Git
call winget install -e --id GitHub.GitHubDesktop

@REM call winget install -e --id Microsoft.VisualStudio.2022.Community.Preview
call winget install -e --id Microsoft.VisualStudioCode
call winget install -e --id JetBrains.IntelliJIDEA.Community
@REM call winget install -e --id SublimeHQ.SublimeText.4
call winget install -e --id JackieLiu.NotepadsApp

call winget install -e --id Docker.DockerDesktop
call winget install -e --id Oracle.VirtualBox

call winget install -e --id Oracle.JavaRuntimeEnvironment
call winget install -e --id Python.Python.3.11
call winget install -e --id GoLang.Go.1.20
call winget install -e --id OpenJS.NodeJS.LTS

call winget install -e --id Yarn.Yarn
call winget install -e --id pnpm.pnpm

call winget install -e --id GnuPG.GnuPG
call winget install -e --id AntibodySoftware.WizTree
call winget install -e --id Balena.Etcher
@REM call winget install -e --id ventoy.Ventoy

@REM call winget install -e --id RuneLite.RuneLite
call winget install -e --id Piriform.CCleaner
call winget install -e --id Logitech.GHUB
call winget install -e --id Malwarebytes.Malwarebytes

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
exit /B