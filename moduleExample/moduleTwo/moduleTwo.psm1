function functionTwo {

    # Parameter help description
    [Parameter(Mandatory=$True)]
    [String] $InputString="Hello, I am function called Two :P"

    $OutputString=$InputString
    write-output $OutputString
}