#import modules
Import-Module  ".\moduleOne",".\moduleTwo"


#run function from those imported modules
functionOneA
functionOneB
functionTwoA
#functionTwoB

#list commands from imported modules 
Get-Command -Module "moduleOne", "moduleTwo"

#unload modules
Get-module -Name "moduleOne", "moduleTwo" | Remove-Module