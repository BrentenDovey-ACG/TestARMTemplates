$pw = ConvertTo-SecureString $adminCreds.userPassword -AsPlainText -Force
Import-Module ADDSDeployment
Install-ADDSForest `
-SafeModeAdministratorPassword $pw `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName "coolcloudgurus.com" `
-DomainNetbiosName "COOLCLOUDGURUS" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
