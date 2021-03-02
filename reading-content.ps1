$user = "dlpuser@dlptest.com" 
$pass = "e73jzTRTNqCN9PYAAjjn" 
$fileFullpath="E:\read\sp16bcs067.txt" 
$WebClient=New-Object net.webclient
$webclient.Credentials = New-Object System.Net.NetworkCredential($user,$pass) 
$value=$WebClient.DownloadString("ftp://ftp.dlptest.com/sp16bcs067.txt")

If (Test-Path $fileFullpath) {
    Remove-Item $fileFullpath
}

New-Item $fileFullpath -type file
Write-Output $value
Add-Content -Path $fileFullpath -Value $value
