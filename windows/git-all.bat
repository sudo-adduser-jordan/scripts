@REM  ╭─────────────────────────────────────.★..─╮
@REM             *Git Clone All Script*
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
@REM                   *Clone*
@REM  ╰─..★.─────────────────────────────────────╯

call git clone https://github.com/sudo-adduser-jordan/Scripts.git 
call git clone https://github.com/sudo-adduser-jordan/Markdown-Notes.git 
call git clone https://github.com/sudo-adduser-jordan/Config-Files.git 
call git clone https://github.com/sudo-adduser-jordan/Portfolio-Website.git 
call git clone https://github.com/sudo-adduser-jordan/C-SHARP-Projects.git 
call git clone https://github.com/sudo-adduser-jordan/Nasa-Api-Explorer.git 
call git clone https://github.com/sudo-adduser-jordan/Diagrams.git 
call git clone https://github.com/sudo-adduser-jordan/sudo-adduser-jordan.git 
call git clone https://github.com/sudo-adduser-jordan/Personal-Assets.git 
call git clone https://github.com/sudo-adduser-jordan/Toolchain.git 
call git clone https://github.com/sudo-adduser-jordan/Password-Creator.git 
call git clone https://github.com/sudo-adduser-jordan/Algorithm-Visualizer.git 
call git clone https://github.com/sudo-adduser-jordan/NASA-Background.git 
call git clone https://github.com/sudo-adduser-jordan/Hyperskill-Projects.git 
call git clone https://github.com/sudo-adduser-jordan/Next-Template.git 
call git clone https://github.com/sudo-adduser-jordan/Code-Fragments.git 
call git clone https://github.com/sudo-adduser-jordan/Recipes.git 
call git clone https://github.com/sudo-adduser-jordan/Recycle-Bin.git 


@REM  ╭─────────────────────────────────────.★..─╮
@REM                    *End*
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
)
exit /B