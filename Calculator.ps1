
<#
.SYNOPSIS
    Calculates the sum of the provided numbers.

.EXAMPLE
    PS> Add 1 2
    3

#>
function Add () {
    $result = 0

    foreach ($item in $args) {
        $result += $item
    }

    return $result
}
