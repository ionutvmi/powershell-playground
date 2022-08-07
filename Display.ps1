<# 
.DESCRIPTION
    Some documentation about the Show-Params function here.
    Notice the the dot before the description name.
#>
function Show-Params (
    # The parameters passed to this function. This will show up in help.
    [parameter(ValueFromRemainingArguments = $true)]
    [string[]] $params
) {

    foreach ($item in $params) {
        Write-Host $item
    }
}

<#
.SYNOPSIS
    Shows a formatted message.
    The inline parameters descriptions will only show up if this description exists.
#> 
function Show-MyMsg (
    # The message that will be displayed
    [string] $msg,

    # The prefix used in front of the message. 
    # The validate set values work with the tab completion
    [ValidateSet("DEBUG", "INFO", "WARN", "ERROR", "FATAL")]
    [string] $prefix = "DEBUG"
) {
    Write-Host "[$($prefix)] - $($msg)"
}


<#
.SYNOPSIS
    Shows a description about an item
#>
function Show-MyInfo (
    # The item that should be displayed
    [parameter(Mandatory = $true)]
    [string] $item
) {
    Write-Host "You have selected $($item)"
}

# Runs once when you press tab for completion
function Get-MyInfoItems ([string] $word) {
    $word = $word.Trim()

    $result = @()

    foreach ($item in 1..10) {
        $result += "Item-$($word)-$($item)"
    }

    return $result
}


Register-ArgumentCompleter `
    -CommandName Show-MyInfo `
    -ParameterName item `
    -ScriptBlock {`
        param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameters) `
        Get-MyInfoItems $wordToComplete`
}

