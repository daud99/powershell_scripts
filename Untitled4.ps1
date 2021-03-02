function Get-PowerShellProcess
{
    Get-Process pwsh
}
function displayDate()
{
   return (Get-Date).day
}



function sum()
{
    $sum=$args[0]+$args[1]
    return $sum
}

$a=@(get-process opera)
#$a.Count


$p=@("h",1,2,8)
$p.Count

foreach($i in $p)
{
    echo $i
}
