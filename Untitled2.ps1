


$destinationPath = "ftp://ftp.dlptest.com/FTP.txt/"
$filename="E:\uploads\sp16bcs067.txt" 
$user = "dlpuser@dlptest.com" 
$pass = "e73jzTRTNqCN9PYAAjjn"  
$webclient = New-Object System.Net.WebClient 
$webclient.Credentials = New-Object System.Net.NetworkCredential($user,$pass) 
$read=$WebClient.openRead("$destinationPath")
Set-Content -Path 'C:\file.txt' -Value $read