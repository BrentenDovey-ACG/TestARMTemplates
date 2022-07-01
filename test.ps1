# New-Item C:\temp\test\test.txt
New-Item C:\temp\test\sanityCheck.txt
# Set-Content C:\temp\test\test.txt "$(adminCreds.adminPassword)"
Set-Content C:\temp\test\sanityCheck.txt 'If you see this I promise you are sane!'
