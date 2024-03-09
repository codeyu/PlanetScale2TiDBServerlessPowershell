<#
.DESCRIPTION
This script replaces '0900_ai_ci' with 'bin' in all files with the pattern '*-schema.sql' using PowerShell.
bash: for f in *-schema.sql; do sed -i -e 's/0900_ai_ci/bin/' $f; done;
.NOTES
File Name: replace.ps1
Author   : [Your Name]
Date     : [Current Date]
#>

# Get all files matching the pattern '*-schema.sql'
$files = Get-ChildItem -Filter "*-schema.sql"

# Loop through each file and replace '0900_ai_ci' with 'bin'
foreach ($file in $files) {
    (Get-Content $file.FullName) | ForEach-Object {
        $_ -replace '0900_ai_ci', 'bin'
    } | Set-Content $file.FullName
}