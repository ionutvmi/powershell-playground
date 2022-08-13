
$priceMap = @{
    "robot"  = 100
    "car"    = 500
    "tomato" = 50
}

Write-Output "The cost of the robot is $($priceMap["robot"])"

$priceMap.Remove("tomato")

$priceMap["apple"] = 9

Write-Output "`n>> With .Keys"
foreach ($key in $priceMap.Keys) {
    Write-Output "$key has the price $($priceMap[$key])"
}

Write-Output "`n>> With enumerator"
foreach ($item in $priceMap.GetEnumerator()) {
    Write-Output "$($item.Key) has the price $($item.Value)"
}

Write-Output $("{0}.{1}" -f $priceMap.GetType().Namespace, $priceMap.GetType().Name)


