$port = (80)
$network = (192.168.0)
$range = (1..254)
$ErrorActionPreference= 'silentlycontinue'
$(Foreach ($add in $range)
{#ip = "{0}.{1}" -F $network,$add
Write-Progress "Scanning Network" $ip -PercentComplete (($add/$range.count)*100)
If(Test-Connection -BufferSize 32 -Count 1 -quiet -ComputerName $ip)
{$socket = new-obkect System.Net.Sockets.TcpClient($ip, $port)
If($socket.Connected) {"ip port $port open"
$socket.Close() }
else {"$ip port $port nmot open " }
}
}) | Out-File C:\reports\portscan.csv