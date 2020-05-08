# list free space on drive
$drive=$args[0]

if($args.Count -eq 1)
{
    Write-Output "${drive}: Drive harddisk space"
    $disk = Get-WmiObject Win32_LogicalDisk -Filter "DeviceId='${drive}:'" | Select-Object Size, FreeSpace
    
    Write-Host ("{0}GB total" -f [math]::truncate($disk.Size / 1GB))
    Write-Host ("{0}GB free" -f [math]::truncate($disk.FreeSpace / 1GB))
}
else {
    Write-Output "Requires hard disk letter to be identified"
}
