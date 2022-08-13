
function Format-Numbers {
    param(
        [Parameter(Mandatory = $true)]
        [ValidateCount(1, 4)]
        [Alias("n")]
        [int[]]$number
    )

    $result = $number -join "::"
    Write-Output $result
}

function Format-PhoneNumber {
    param(
        [Parameter(Mandatory = $true)]
        [ValidatePattern("\d{10}")]
        [Alias("n")]
        [string[]]$number
    )

    $pattern = [regex]'(\d{4})(\d{3})(\d{3})'

    foreach ($item in $number) {
        $match = $pattern.Matches($item).Groups
        $formattedNumber = "{0}-{1}-{2}" -f $match[1].Value, $match[2].Value, $match[3].Value
        Write-Output $formattedNumber
    }
}

Format-PhoneNumber -number 0700111111
Format-PhoneNumber -number 0700456789

