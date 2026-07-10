' ============================================================
'  Auto-Pulse launcher
'  Double-click this to start Auto-Pulse.
'  It runs the script if AutoHotkey v2 is installed; if not, it
'  shows a reminder (with an OK button) telling you to install
'  AutoHotkey first. (auto-pulse.ahk can't show this itself,
'  because it needs AutoHotkey in order to run at all.)
' ============================================================

Option Explicit

Dim fso, shell, scriptDir, target, paths, p, ahk, q

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")

scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)
target = scriptDir & "\auto-pulse.ahk"

' Usual AutoHotkey v2 install locations (system-wide and per-user).
paths = Array( _
    shell.ExpandEnvironmentStrings("%ProgramFiles%") & "\AutoHotkey\v2\AutoHotkey64.exe", _
    shell.ExpandEnvironmentStrings("%ProgramFiles%") & "\AutoHotkey\v2\AutoHotkey32.exe", _
    shell.ExpandEnvironmentStrings("%LOCALAPPDATA%") & "\Programs\AutoHotkey\v2\AutoHotkey64.exe", _
    shell.ExpandEnvironmentStrings("%LOCALAPPDATA%") & "\Programs\AutoHotkey\v2\AutoHotkey32.exe" _
)

ahk = ""
For Each p In paths
    If fso.FileExists(p) Then
        ahk = p
        Exit For
    End If
Next

If ahk <> "" Then
    If Not fso.FileExists(target) Then
        MsgBox "Couldn't find auto-pulse.ahk next to this launcher." & vbCrLf & vbCrLf & _
               "Keep 'Launch Auto-Pulse.vbs' and 'auto-pulse.ahk' in the same folder.", _
               vbExclamation Or vbOKOnly, "Auto-Pulse"
    Else
        ' Launch Auto-Pulse (quote both paths in case of spaces).
        q = Chr(34)
        shell.Run q & ahk & q & " " & q & target & q, 1, False
    End If
Else
    MsgBox "Auto-Pulse needs AutoHotkey v2, which doesn't appear to be installed." & vbCrLf & vbCrLf & _
           "Install it (free) from:" & vbCrLf & "https://www.autohotkey.com/" & vbCrLf & vbCrLf & _
           "Then run Auto-Pulse again.", _
           vbInformation Or vbOKOnly, "Auto-Pulse - AutoHotkey required"
End If
