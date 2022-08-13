Set-StrictMode -Version 3

class Person {
    static [int]$MIN_AGE = 18

    [ValidateNotNullOrEmpty()][string]$name
    [int]$yob

    # Parameter less constructor to allow for hashmap -> person
    # conversion of types
    Person() {}

    Person([string]$name, [int]$yob) {
        # Write-Output doesn't work because only the return values are sent 
        # to the pipeline. To display anything we need to use Write-Host
        Write-Host "Type of `$yob = $($yob.GetType().Name)"
        $this.name = $name
        $this.yob = $yob
    }

    [int] GetAge() {
        return 2022 - $this.yob
    }

}

$p1 = [Person]::new("Mihai", 1990)

Write-Output $p1.GetAge()

$minAge = [Person]::MIN_AGE

Write-Output "`$minAge = $minAge"
Write-Output $([Person]::MIN_AGE)

# [Person]::new("", 1990)

$p2 = [Person]@{
    "name" = "George"
    "yob"  = 1986
}

Write-Output "`n `$p2 =" 
Write-Output $p2

