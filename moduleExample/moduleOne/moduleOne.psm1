function functionOneA {

        # Parameter help description
        [Parameter(Mandatory=$True)]
        [String] $InputString="Hello, I am function called One A :P"

        $OutputString=$InputString
        write-output $OutputString
}

function functionOneB {

    # Parameter help description
    [Parameter(Mandatory=$True)]
    [String] $InputString="Hello, I am function called One B :P"

    $OutputString=$InputString
    write-output $OutputString
}