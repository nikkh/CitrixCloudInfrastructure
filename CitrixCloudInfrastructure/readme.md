# Create a new Environment with 3 VMs

This template creates three new Azure VMs, each with a public IP address and load balancer and a VNet, it configures one VM to be an AD DC for a new Forest and Domain, one with SQL Server domain joined and a third VM with an IIS Web Server, all VMs have public facing RDP

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https://raw.githubusercontent.com/nikkh/CitrixCloudInfrastructure/master/CitrixCloudInfrastructure/Templates/BuildResourceLocation.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https://raw.githubusercontent.com/nikkh/CitrixCloudInfrastructure/master/CitrixCloudInfrastructure/Templates/BuildResourceLocation.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
