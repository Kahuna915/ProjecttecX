cd 'C:\Users\noahs\OneDrive\Documents\PowerShell practicew'
$file = Read-Host -Prompt "What is the file name you would like to push?"
$password = Read-Host -AsSecureString "Enter the password for server"
$password = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($password))
$servername = "52.147.167.157:"
$username = "noah"
$rdir = "/home/noah"
echo y | pscp.exe -P '22' -pw $password $file $username@$servername$rdir

