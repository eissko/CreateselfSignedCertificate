function functionTwoA {

    # Parameter help description
    [Parameter(Mandatory=$True)]
    [String] $InputString="Hello, I am function called Two A :P"

    $OutputString=$InputString
    write-output $OutputString
}

function functionTwoB {

    # Parameter help description
    [Parameter(Mandatory=$True)]
    [String] $InputString="Hello, I am function called Two B :P"

    $OutputString=$InputString
    write-output $OutputString
}

#when it is not defined Export-ModuleMember it exports all functions
#in order to limit the exported function, you just need to use this Export-ModuleMember
Export-ModuleMember -Function functionTwoA
