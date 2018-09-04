Install-WindowsFeature web-server

New-Item -ItemType file -Name index.aspx -Path c:\inetpub\wwwroot\ -Value "<h1>WEB1</h1>" -Force