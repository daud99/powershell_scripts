echo 'This is for loop output'
for($j=1;$j-le10;$j++)
{
 Write-Output "My name is daud $j"
}


echo 'This is While loop output'
$i=0
while($i-le 10)
{
    echo $i
    $i++
} 

echo 'This is foreach loop output'
foreach($f in get-childitem)
{
    Write-Host $f
}

function even
{
    $ans=$args[0]%2
    if($ans -eq 0)
    {
        echo 'even'
    }
    else
    {
        echo 'odd'
    }
    return $ans
}

echo even 4