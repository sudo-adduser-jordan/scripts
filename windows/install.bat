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
for %%x in (

    -e --id Microsoft.WindowsTerminal
    -e --id Microsoft.PowerToys

    -e --id Mozilla.Firefox
    -e --id Google.Chrome

    -e --id Git.Git
    -e --id GitHub.GitHubDesktop

    @REM  -e --id Microsoft.VisualStudio.2022.Community.Preview
    -e --id Microsoft.VisualStudioCode
    -e --id JetBrains.IntelliJIDEA.Community
    @REM  -e --id SublimeHQ.SublimeText.4
    -e --id JackieLiu.NotepadsApp

    -e --id Docker.DockerDesktop
    @REM  -e --id Oracle.VirtualBox

    -e --id PostgreSQL.pgAdmin

    -e --id Oracle.JavaRuntimeEnvironment
    -e --id Python.Python.3.11
    -e --id GoLang.Go.1.20
    -e --id OpenJS.NodeJS.LTS

    -e --id Yarn.Yarn
    -e --id pnpm.pnpm

    -e --id GnuPG.GnuPG
    -e --id AntibodySoftware.WizTree
    -e --id Balena.Etcher
    @REM  -e --id ventoy.Ventoy

    @REM  -e --id RuneLite.RuneLite
    -e --id Piriform.CCleaner
    -e --id Logitech.GHUB
    @REM -e --id Malwarebytes.Malwarebytes

) do (
    call winget install %%x --accept-package-agreements --accept-source-agreements
    @REM pause
)

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