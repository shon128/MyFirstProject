# Install Packages
install.packages("AzureStor", dependencies = TRUE)

#load library
library(AzureStor)

#Make connection to Azure Blob
endp <- storage_endpoint("https://sdsblobstorage01.blob.core.windows.net", sas ="?sv=2018-03-28&si=bizpln-RW&sr=c&sig=Z4S2L9aXmx6gcys8B4FseKgp4A%2FaTchnjLCPKtYKyEk%3D")

#Connect to bizpln
cont <- storage_container(endp, "bizpln")

#Upload a file from local to directory in Blob
storage_upload(cont,"C:\\Users\\v-saym\\Documents\\x.xlsx","BPF_DB/RFACTS/x.xlsx")

#Download a file from Blob to Local
storage_download(cont, "BPF_DB/RFACTS/x.xlsx", "C:\\Users\\v-saym\\Documents\\x2.xlsx",overwrite = TRUE)
