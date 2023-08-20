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