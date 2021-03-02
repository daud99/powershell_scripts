$user = "dlpuser@dlptest.com" 
$pass = "e73jzTRTNqCN9PYAAjjn"  
$ftpTargetFile = "ftp://ftp.dlptest.com/sp16bcs067.txt"
$ftpclient = [System.Net.FtpWebRequest]::create("$ftpTargetFile")
$ftpclient.Credentials =  New-Object System.Net.NetworkCredential($user,$pass)
$ftpclient.Method = [System.Net.WebRequestMethods+Ftp]::DeleteFile
$ftpclient.GetResponse()

