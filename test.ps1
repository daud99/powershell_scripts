
$a = @("a","b")
$a.count
$i =0
while ($i -lt 3)
{
Write-output $i
$i++
}

foreach ($file in get-childitem)
{
write-host $file
}
