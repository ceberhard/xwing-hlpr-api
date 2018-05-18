
$dbpath = $PSScriptRoot + "\..\xwing.db"
$ddlpath = "'" + $PSScriptRoot + "\..\database\DDL.sql'"
$dmlpath = "'" + $PSScriptRoot + "\..\database\DML.sql'"
$testdatapath = "'" + $PSScriptRoot + "\..\database\TestData.sql'"

$ddlcmd = "sqlite3 " + $dbpath + " "".read " + $ddlpath + """"
Invoke-Expression $ddlcmd

$dmlcmd = "sqlite3 " + $dbpath + " "".read " + $dmlpath + """"
Invoke-Expression $dmlcmd

$testdatacmd = "sqlite3 " + $dbpath + " "".read " + $testdatapath + """"
Invoke-Expression $testdatacmd
