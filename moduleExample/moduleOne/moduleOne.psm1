function functionOne {

        # Parameter help description
        [Parameter(Mandatory=$True)]
        [String] $InputString="Hello, I am function called One :P"

        $OutputString=$InputString
        write-output $OutputString
}