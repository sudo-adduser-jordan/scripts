call winget upgrade --all
for %%x in (

    Microsoft.GetHelp_8wekyb3d8bbwe
    Microsoft.MixedReality.Portal_8wekyb3d8bbwe
    Microsoft.SkypeApp_kzf8qxf38zg5c
    Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe
    Microsoft.YourPhone_8wekyb3d8bbwe
    Microsoft.ZuneVideo_8wekyb3d8bbwe
    Microsoft.549981C3F5F10_8wekyb3d8bbwe
    Microsoft.WindowsMaps_8wekyb3d8bbwe
    Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe
    Microsoft.Office.OneNote_8wekyb3d8bbwe
    Microsoft.Getstarted_8wekyb3d8bbwe
    Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe
    microsoft.windowscommunicationsapps_8wekyb3d8bbwe
    Microsoft.WindowsAlarms_8wekyb3d8bbwe
    Microsoft.People_8wekyb3d8bbwe
    Disney.37853FC22B2CE_6rarf9sa4v8jt
    SpotifyAB.SpotifyMusic_zpdnekdrzrea0
    Microsoft.OneDrive

) do (
    call winget remove %%x --accept-source-agreements
    @REM pause
)
