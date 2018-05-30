<#
.SYNOPSIS
Provisions a example powershell function
.EXAMPLE
PS C:\> .\powershell.ps1 -Argument1 "hola soy un texto"
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory = $true, HelpMessage = "This argument is required")]
    [String]
    $textParameter
)

try {
    #almost every function is called like this:
    Write-Host "Initializing example function"
    Write-Host "The parameter is " $textParameter -ForegroundColor Red

    #this are variables
    $customArray = @(
        @{
            Id    = 1;
            Value = "I'm an option";
        },
        @{
            Id    = 2;
            Value = "Option No. 2";
        }
    )

    foreach ($option in $customArray) {
        Write-Host "Iterating options:" $option.Value
    }

    $collectionWithItems = New-Object System.Collections.ArrayList
    $temp = New-Object System.Object
    $temp | Add-Member -MemberType NoteProperty -Name "Title" -Value "Custom Object Title 1"
    $temp | Add-Member -MemberType NoteProperty -Name "Subject" -Value "Delegación del plan de acción [Folio_PlandeAccion]"
    $temp | Add-Member -MemberType NoteProperty -Name "Body" -Value "<div>This s a note example, with lots of text</div>
      <div> <br/>&#160;</div>
      <div>It happens to be in html format, but is just text the property couldnt't know<br/></div>
      <div><br/>&#160;<br/></div>
      <div>It's up for the one who uses me to render me correctly. <a href='/ligaPlanAccion'>Or not.</a></div>"
    $collectionWithItems.Add($temp) | Out-Null
    Write-Host "My collection has" $collectionWithItems.Count "item(s)" -ForegroundColor Green

    #Calling some other scripts. Sometimes its nice to have a "master" script and call subscripts with other functions / actions
    .\otherscript.ps1 "Parameter ?"
    .\thisonewithoutparams.ps1
}
catch {
    Write-Host -ForegroundColor Red "Exception Type: $($_.Exception.GetType().FullName)"
    Write-Host -ForegroundColor Red "Exception Message: $($_.Exception.Message)"
}
