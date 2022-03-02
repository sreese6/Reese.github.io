Get-ComputerInfo | Out-File -Append -FilePath .\Process.txt
Get-WmiObject -Class Win32_Process | Out-File -Append -FilePath .\Process.txt
Get-WmiObject -Class Win32_Bios | Format-List -Property * | Out-File -Append -FilePath .\Process.txt
Get-Service | Where-Object {$_.Status -eq "Running"} | Out-File -Append -FilePath .\Process.txt
Get-EventLog -List | Out-File -Append -FilePath .\Process.txt
Get-EventLog -LogName System | Out-File -Append -FilePath .\Process.txt
Get-ComputerInfo | Out-File -Append -FilePath .\Process.txt
Get-WmiObject -Class Win32_Process | Out-File -Append -FilePath .\Process.txt
Get-WmiObject -Class Win32_Bios | Format-List -Property * | Out-File -Append -FilePath .\Process.txt
Get-Service | Where-Object {$_.Status -eq "Running"} | Out-File -Append -FilePath .\Process.txt
Get-EventLog -List | Out-File -Append -FilePath .\Process.txt
Get-EventLog -LogName System | Out-File -Append -FilePath .\Process.txt