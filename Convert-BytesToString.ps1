Function Convert-BytesToString
{
    Param(
        [Parameter(Mandatory=$True)]
        [array]$Bytes,

        [ValidateSet("UTF7","UTF8","UTF32","ASCII","Unicode","Default","BigEndianUnicode")]
        [string]$Encoding = "UTF8"
    )

    return [System.Text.Encoding]::$Encoding.GetString($Bytes)
}