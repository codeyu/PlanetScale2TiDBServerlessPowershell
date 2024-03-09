# Loop through all files ending with '-schema.sql' in the current directory
Get-ChildItem *-schema.sql | ForEach-Object {
    # Execute MySQL command to run the SQL script
    $StrCmd = "mysql --comments -u [username] -h gateway01.ap-northeast-1.prod.aws.tidbcloud.com -P 4000 -D [database] --ssl-mode=VERIFY_IDENTITY --ssl-ca=[cert file path] -p[password] < $_"
    &cmd /c $StrCmd
}
