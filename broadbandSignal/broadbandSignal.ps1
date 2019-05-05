
param(
    [ValidateRange(1,100)]
    [int] $LowSignalStrength = 50,
    [ValidateRange(1,365)]
    [int] $NumberOfDays
)

#NetshApp = netsh interface ipv4 show ipstats 2>&1
#$NetshApp


function Get-MockBroadbandSignal{

    [Cmdletbinding()]
    param()

    $state = Get-Random ('Connected', 'Disconnected')
    return [ordered]@{
        Timestamp       = (Get-Date -Format 'yyyy-MM-dd')
        State           = $state
        ProviderName    = 'Vodafone'
        Strength        = if($State -eq 'Disconnected'){0}else{Get-Random -InputObject (10,20,30,40,50,60,70,80,90,100)}
    }
}

Function Get-Average
{
    param(
        [Parameter(Mandatory=$True)]
        [System.Array] $Array,

        [ValidateRange(1,28)]
        [int]$DigitRounding = 2
    )

    $Sum = 0;
    foreach($i in $array){
        $Sum += $i
    }
    return ([math]::round([decimal]($sum) / [decimal]($array.Length),$DigitRounding));
}

$TimeStamp = (Get-Date -Format 'yyyy-MM-dd')
$BroadBand = Get-MockBroadbandSignal
$LogItem   = ("{0};{1};{2};{3}" -f $BroadBand.Timestamp, $BroadBand.State, $BroadBand.Strength, $BroadBand.ProviderName)

$LogRootPath = "C:\temp\log\"
$LogFile     = Join-Path -Path $LogRootPath -ChildPath "broadband-daily-$Timestamp.log"
If(-Not (Test-Path $LogRootPath)){ New-Item -Path $LogRootPath -ItemType Directory }

Add-Content -Path $LogFile -Value $LogItem -Force

$LogSummary = ConvertFrom-Csv -InputObject $(Get-Content -path $LogFile -Raw) -Delimiter ';' -Header "Time","State","Strength","Provider"
$LogSummary


$TotalCount        = ($LogSummary.State).count
$DisconnectedCount = ($LogSummary.State -eq 'Disconnected').count
$AvarageSignalRate = Get-Average -array $LogSummary.Strength
$LowSignalCount    = ($LogSummary.Strength -lt $LowSignalStrength).count
$LogItemSummary    = ("{0};{1};{2};{3}" -f $DisconnectedCount,$AvarageSignalRate,$LowSignalCount,$TotalCount)

Write-Output $LogItemSummary
