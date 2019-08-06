$span = New-TimeSpan -Hours 2 -Minutes 1
Register-ScheduledJob -Name "CatFacts" -FilePath "./catfacts.ps1" -Trigger $T -RunEvery $span
