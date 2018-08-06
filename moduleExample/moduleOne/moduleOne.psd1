#
# Module manifest for module 'TemplateModule'
#

@{
    ModuleToProcess = 'moduleOne.psm1'

    # Version number of this module.
    ModuleVersion = '1.0'
    
    # ID used to uniquely identify this module
    GUID = ''
    
    # Author of this module
    Author = 'Peter Weiss'
    
    # Company or vendor of this module
    CompanyName = 'Peter Weiss'
    
    # Copyright statement for this module
    Copyright = ''
    
    # Description of the functionality provided by this module
    Description = 'This module is just for demonstration of using modules and exports function from psd1 manifest.'
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @(
        'functionOneA'
        'functionOneB'
    )
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = @()
    
    # Variables to export from this module
    VariablesToExport = @()
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = @()
    
    # List of all files packaged with this module
    # FileList = @()
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            Extensions = @(
                @{
                    Module = "moduleOne"
                    MinimumVersion = "1.0.0"
                }
            )
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
    }
    
    