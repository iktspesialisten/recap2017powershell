# Scripting and toolmaking.
# I have divided theese scripts into Simple and Advanced.
# Thanks to jefry snover who inspired me!

# This script will format the bytes of free space to GB of free space.
# Advanced.
param(
    [string]$device = 'c:'
)


Get-CimInstance Win32_LogicalDisk | select DeviceID=$device, @{n='TotalSize';e={$_.size / 1gb -as [int]}}, @{n='FreeGB';e={$_.freespace / 1gb -as [int]}}
