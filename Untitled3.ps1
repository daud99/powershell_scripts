$ftpServer = "ftp://ftp.dlptest.com/"
$fileName="sp16bcs067.txt" 
$fileDir="E:\uploads\" 
$uri = New-Object System.Uri($ftpServer+$fileName) 
$filePath=$fileDir+$fileName
Write-Output $filePath
$webclient.UploadFile($uri,$filePath) 
Write-Output 'File uploaded successfully'