[io.file]::Create("$env:temp\reallybigfile-deleteme.txt").SetLength((gwmi Win32_LogicalDisk -Filter "DeviceID='C:'").FreeSpace - 0.1mb).Close

