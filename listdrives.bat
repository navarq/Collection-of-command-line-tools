REM on windows list all drives
wmic logicaldisk get caption,description,volumename,access
SET /A Result = 12 + 4