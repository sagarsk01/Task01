function getFilesLT5KB{
Param($FilePath)
cd $FilePath
Write-Output "Navigating to $FilePath folder"
gci -Recurse | Where-Object -FilterScript{$_.Length -lt 5120} |select name
}

getFilesLT5KB -FilePath 