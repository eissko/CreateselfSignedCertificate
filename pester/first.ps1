function Get-Hello {

    return $false
}

function Get-CurrentYear {

    #write-output "Currently is year: "
    return (get-date -format yyyy)
}

function Get-CurrentUser {

    [cmdletbinding()]
    Param()
    
    return (& $(Get-Command -CommandType Application -Name Whoami))
}

