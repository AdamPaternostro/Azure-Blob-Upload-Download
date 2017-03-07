$StorageAccountKey="<<REMOVED>>"
$StorageAccountName = "<<REMOVED e.g. mystoragename (not the full DNS name)>>"
$ContainerName="<<REMOVED lowercasecontainername>>"
$DestinationFolder="C:\temp"

$Ctx = New-AzureStorageContext –StorageAccountName $StorageAccountName -StorageAccountKey $StorageAccountKey

# List all blobs in a container.
# $blobs = Get-AzureStorageBlob -Container $ContainerName -Context $Ctx

# Download blobs from a container.
New-Item -Path $DestinationFolder -ItemType Directory -Force | Out-Null
$blobs | Get-AzureStorageBlobContent -Destination $DestinationFolder -Context $Ctx -Force