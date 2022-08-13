using namespace System.Collections

# Use this block to define a local scope
& {
    Set-StrictMode -Version 3
    [ArrayList]$myList = @(1, 2, 3)


    $myList.Add(4) > $null
    $myList.Add(5) > $null
    $myList.Add(6) > $null
    $myList.Add(99) > $null

    $myList.RemoveAt(2)

    $myList.Reverse()

    $myList.AddRange(@(101, 102, 103))

    foreach ($item in $myList) {
        Write-Output "Found $item"
    }

    [ArrayList]$newList = $myList.Clone()
    $newList.Add(555)

    Write-Output "`n>> My list  $($myList)"
    Write-Output "`n>> New list $($newList)"

    Write-Output "`n>> Join $($newList -join "_")"

    # Get each character
    [string]$name = "Mihai"
    [ArrayList]$chars = $name.ToCharArray()

    Write-Output "`n>> name $($name)"
    Write-Output ">> Chars count $($chars.Count)"
    Write-Output ">> Chars [$($chars)]"
    Write-Output ">> Chars join $($chars -join "_")"
    
    [string]$nums = "4,5,6"
    Write-Output "`n>> nums $($nums)"
    Write-Output ">> nums split $($nums.Split(","))"

}
