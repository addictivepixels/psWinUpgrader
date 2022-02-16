#Original script by Warwick Burns
#Added tidy-up bit to assist with some devices that had issues with the script or didn't cleanup previously.
#tidy up old version - if there
Remove-Item 'C:\_Windows_FU\' -Recurse -Force -WarningAction SilentlyContinue
$dir = 'C:\_Windows_FU\packages'
mkdir $dir
$webClient = New-Object System.Net.WebClient
$url = 'https://go.microsoft.com/fwlink/?LinkID=799445'
$file = "$($dir)\Win10Upgrade.exe"
$webClient.DownloadFile($url,$file)
Start-Process -FilePath $file -ArgumentList '/quietinstall /skipeula /auto upgrade /copylogs $dir'
