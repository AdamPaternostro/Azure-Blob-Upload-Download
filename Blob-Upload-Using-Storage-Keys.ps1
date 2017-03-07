$StorageAccountKey="<<REMOVED>>"
$StorageAccountName = "<<REMOVED e.g. mystoragename (not the full DNS name)>>"
$ContainerName="<<REMOVED lowercasecontainername>>"
$filename="C:\Users\guest\Desktop\Invoice.zip"
$blobName="Invoice.zip"

$Ctx = New-AzureStorageContext –StorageAccountName $StorageAccountName -StorageAccountKey $StorageAccountKey
Set-AzureStorageBlobContent -File $filename -Container $ContainerName -Blob $blobName -Context $Ctx -Force

