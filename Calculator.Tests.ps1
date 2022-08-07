BeforeAll {
    # . "./Calculator.ps1"
    . $PSCommandPath.Replace('.Tests.ps1','.ps1')
}

Describe "Add numbers" {

    Context "two parameters" {
        It "should add two numbers" {
            $sum = Add 2 3
            $sum | Should -Be 5
        }
    }
    
    Describe "two parameters" {
        It "should add three numbers" {
            $sum = Add 2 3 4
            $sum | Should -Be 9
        }
    }

    #region This is foldable in the editor
    Describe "Comparisons" {
        It "should compare strings" {
            "ana" | Should -Be "Ana" # WHAT ?
            "ana" | Should -Not -BeExactly "Ana" # TIL
        }
    }

#endregion

}