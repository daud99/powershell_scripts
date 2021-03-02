for($i=0;$i-lt4;$i++)
{
    Write-Output $i
}
foreach($file in get-childitem)
{
    write-host 'FILES AND FOLDERS IN CURRENT DIRECTORY'+$file
}
function get-processfunc()
{
    get-process|out-host
}
get-processfunc

function get-time()
{
    return (get-date).TimeOfDay
}
get-time