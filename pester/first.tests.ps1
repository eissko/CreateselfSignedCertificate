$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Get-Hello" {
    It "does something useful" {
        Get-Hello | Should -Be $false
    }
}

Describe "Get-CurrentYear"{
    It "Function returns current year 2019"{
        Get-CurrentYear | Should -be "2019"
    }   
    It "returned object is string" {
        Get-CurrentYear | Should -BeOfType [string]
     }
    It "shoud not throw an error"{
        {get-command  -Name "Get-CurrentYear" -ErrorAction SilentlyContinue} | Should -Not -Throw
    }
}


Describe "Get-CurrentUser" {
    It "return current user"{
        Get-CurrentUser | Should -be (-join($env:COMPUTERNAME,"\",$env:USERNAME))
    }
}

