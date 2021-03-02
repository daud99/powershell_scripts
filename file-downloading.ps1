
#ftp server 
$ftp = "ftp://ftp.dlptest.com/" 
$user = "dlpuser@dlptest.com" 
$pass = "e73jzTRTNqCN9PYAAjjn"  

$File = "C:\downloads\ff.txt"
$ftp = "ftp://ftp.dlptest.com/ff.txt"

"ftp url: $ftp"

$webclient = New-Object System.Net.WebClient
$webclient.Credentials = New-Object System.Net.NetworkCredential($user,$pass)  
 
$uri = New-Object System.Uri($ftp)

"Downloading $File..."

$webclient.DownloadFile($uri, $File)

write-output "Done successfully"