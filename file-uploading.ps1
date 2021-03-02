$Dir="E:\uploads\"    
 
#ftp server 
$ftp = "ftp://ftp.dlptest.com/" 
$user = "dlpuser@dlptest.com" 
$pass = "e73jzTRTNqCN9PYAAjjn"  
 
$webclient = New-Object System.Net.WebClient 
 
$webclient.Credentials = New-Object System.Net.NetworkCredential($user,$pass)  
 
#select file ff.txt from the directory

 foreach($item in (dir $Dir "*.*"))
 {
 if($item.Name.Equals( "sp16bcs067.txt"))
 { 
   
    $uri = New-Object System.Uri($ftp+$item.Name) 
    $webclient.UploadFile($uri, $item.FullName)
    Write-Output $item.FullName 
    write-output "Script has run"
 } 
 }