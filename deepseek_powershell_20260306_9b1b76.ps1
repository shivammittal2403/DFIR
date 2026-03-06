Get-ScheduledTask
Get-ScheduledTask | Where-Object {$_.TaskPath -like "*Microsoft*"}
Get-ScheduledTask -TaskName *mal*
Get-ScheduledTaskInfo -TaskName \Microsoft\Windows\Update
Disable-ScheduledTask -TaskName "BadTask"
Unregister-ScheduledTask -TaskName "BadTask" -Confirm:$false
Export-ScheduledTask -TaskName "Task" | Out-File task.xml