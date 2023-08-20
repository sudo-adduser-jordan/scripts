for %%x in (
    Advent-of-Code 
    Algorithm-Visualizer 
    Scripts 
    Markdown-Notes 
    Config-Files 
    Portfolio-Website 
    Text-Editor 
    Nasa-Api-Explorer 
    Diagrams 
    sudo-adduser-jordan 
    Personal-Assets 
    Toolchain 
    Password-Creator
    NASA-Background
    Hyperskill-Projects
    Next-Template
    Code-Fragments
    Recipes 
    Recycle-Bin
    go-basicAuth-pgx-postgres
    Remote-File-Storage
) do (
    call git clone https://github.com/sudo-adduser-jordan/%%x.git 
    @REM pause
)