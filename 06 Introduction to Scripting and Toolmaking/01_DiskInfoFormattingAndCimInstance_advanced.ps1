<#
.Synopsis
This is the short explaination
.Description
This is the long description
.Parameter ComputerName
This is for remote computers
.Example
DiskInfo -computername remote
This is for a remote computer
#>

[CmdletBinding()] # Let you use command attributes, make things mandatory.
param(
    [Parameter(Mandatory=$false)]
    [string[]]$computername,
    [string[]]$device = 'c:' # Whenever you see syntax like device[] it means it can take multiple values.
)

write-output "Compinfo loaded! (C)IKT Spesialisten, Skauvik"
function Get-Compinfo {
Get-CimInstance Win32_LogicalDisk -ComputerName $computername | select DeviceID, @{n='TotalSize';e={$_.size / 1gb -as [int]}}, @{n='FreeGB';e={$_.freespace / 1gb -as [int]}}
}