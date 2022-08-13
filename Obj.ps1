
& {
    Set-StrictMode -Version 3

    $someProps = @{
        "name" = "Mihai"
        "yob"  = 1990
    }

    $p1 = New-Object psobject -Property $someProps

    $p2 = New-Object psobject -Property @{
        "name" = "Alex"
        "yob"  = 1990
    }

    $p3 = [PSCustomObject]@{
        "name" = "George"
        "yob"  = 1990
    }

    Write-Output $p1
    Write-Output $p2
    Write-Output $p3
    Write-Output $($p3 | ConvertTo-Json)
}
