<#

Author: Mike Pfeiffer

Sample DSC Extention Script

Disclaimers

!!!!!!!!!!
This script is provided as an example and is not directly intended to be run as-is.
!!!!!!!!!!

This example code is provided without copyright and AS IS.  It is free for you to use and modify.
Note: These demos should not be run as a script. These are the commands that I use in the 
demonstrations and would need to be modified for your environment.

#>

$resourceGroup = 'Servers'
$location = 'westus2'
$vmName = 'Srv1'
$storageName = '41480434'

Publish-AzureRmVMDscConfiguration -ConfigurationPath .\WindowsWebServer.ps1 `
-ResourceGroupName $resourceGroup `
-StorageAccountName $storageName -force

Set-AzureRmVmDscExtension -Version 2.21 `
-ResourceGroupName $resourceGroup `
-VMName $vmName `
-ArchiveStorageAccountName $storageName `
-ArchiveBlobName WindowsWebServer.ps1.zip `
-AutoUpdate:$true `
-ConfigurationName IIS