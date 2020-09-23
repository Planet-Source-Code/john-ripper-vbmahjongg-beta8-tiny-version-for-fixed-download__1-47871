Attribute VB_Name = "ModAPI"
Option Explicit
'############# OS VERSION INFO
Public Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long
Public Type OSVERSIONINFO
    dwOSVersionInfoSize As Long
    dwMajorVersion As Long
    dwMinorVersion As Long
    dwBuildNumber As Long
    dwPlatformId As Long
    szCSDVersion As String * 128
End Type

Public OSInfo As OSVERSIONINFO, PId As String
Public WinVersion As String
'-------------

'############# INI FILES
' Leer una sección completa
Public Declare Function GetPrivateProfileSection Lib "kernel32" Alias "GetPrivateProfileSectionA" _
    (ByVal lpAppName As String, ByVal lpReturnedString As String, _
    ByVal nSize As Long, ByVal lpFileName As String) As Long

' Leer una clave de un fichero INI
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" _
    (ByVal lpApplicationName As String, ByVal lpKeyName As Any, _
     ByVal lpDefault As String, ByVal lpReturnedString As String, _
     ByVal nSize As Long, ByVal lpFileName As String) As Long

' Escribir una clave de un fichero INI (también para borrar claves y secciones)
Public Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" _
    (ByVal lpApplicationName As String, ByVal lpKeyName As Any, _
     ByVal lpString As Any, ByVal lpFileName As String) As Long
'-------------

'############# BLIT API
Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal x As Long, ByVal y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long

Public Const SRCAND = &H8800C6
Public Const SRCCOPY = &HCC0020
Public Const SRCPAINT = &HEE0086
'-------------

'############# To show or hide Cursor
Public Type POINTAPI
        x As Long
        y As Long
End Type

Public Declare Function WindowFromPoint Lib "user32" (ByVal xPoint As Long, ByVal yPoint As Long) As Long
Public Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Public Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long
'-------------

'############# To manipulate device video card Resolutions
Public Const DM_BITSPERPEL As Long = &H40000
Public Const DM_PELSWIDTH As Long = &H80000
Public Const DM_PELSHEIGHT As Long = &H100000
Public Const CDS_FORCE As Long = &H80000000
Public Const CCDEVICENAME As Long = 32
Public Const CCFORMNAME As Long = 32

Public Type DEVMODE
    dmDeviceName As String * CCDEVICENAME
    dmSpecVersion As Integer
    dmDriverVersion As Integer
    dmSize As Integer
    dmDriverExtra As Integer
    dmFields As Long
    dmOrientation As Integer
    dmPaperSize As Integer
    dmPaperLength As Integer
    dmPaperWidth As Integer
    dmScale As Integer
    dmCopies As Integer
    dmDefaultSource As Integer
    dmPrintQuality As Integer
    dmColor As Integer
    dmDuplex As Integer
    dmYResolution As Integer
    dmTTOption As Integer
    dmCollate As Integer
    dmFormName As String * CCFORMNAME
    dmUnusedPadding As Integer
    dmBitsPerPel As Long
    dmPelsWidth As Long
    dmPelsHeight As Long
    dmDisplayFlags As Long
    dmDisplayFrequency As Long
End Type

Public Const HORZRES = 8
Public Const VERTRES = 10
Public Const BitsPixel = 12
Public Const VREFRESH As Long = 116

Public Declare Function EnumDisplaySettings Lib "user32" Alias _
    "EnumDisplaySettingsA" (ByVal lpszDeviceName As Long, _
    ByVal modeIndex As Long, lpDevMode As Any) As Boolean
Public Declare Function ChangeDisplaySettings Lib "user32" Alias _
    "ChangeDisplaySettingsA" (lpDevMode As Any, ByVal dwFlags As Long) As Long
Public Declare Function GetDeviceCaps Lib "gdi32.dll" (ByVal hdc As Long, ByVal nIndex As Long) As Long
'-------------


'############# MISC
Public Declare Sub Sleep Lib "kernel32" (ByVal milliseconds As Long)
Public Declare Function timeGetTime Lib "winmm.dll" () As Long
Public Declare Function SetWindowPos Lib "user32.dll" (ByVal hwnd As Long, _
    ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, _
    ByVal cy As Long, ByVal wFlags As Long) As Long
Public Const MF_BYPOSITION = &H400&

Public Declare Function RemoveMenu Lib "user32" (ByVal hMenu As Long, _
    ByVal nPosition As Long, ByVal wFlags As Long) As Long

Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" ( _
                 ByVal lpClassName As String, _
                 ByVal lpWindowName As String) As Long

'-------------

'############# For MIDI FILES
Public Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" _
    (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, _
    ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long

Public Declare Function mciSendCommand Lib "winmm.dll" Alias "mciSendCommandA" _
    (ByVal wDeviceID As Long, ByVal uMessage As Long, ByVal dwParam1 As _
     Long, dwParam2 As Any) As Long


'Constantes para Device Type
Global Const MCI_STRING_OFFSET = 512
'Wav
'Const MCI_DEVTYPE_WAVEFORM_AUDIO = (MCI_STRING_OFFSET + 10)
'MDI
Global Const MCI_DEVTYPE_SEQUENCER = (MCI_STRING_OFFSET + 11)
' Constantes de estado del dispositivo
Global Const MCI_MODE_STOP = (MCI_STRING_OFFSET + 13)

Public Type MCI_OPEN_PARMS
        dwCallback As Long
        wDeviceID As Long
        lpstrDeviceType As String
        lpstrElementName As String
        lpstrAlias As String
End Type

Public Type MCI_STATUS_PARMS
    dwCallback As Long
    dwReturn As Long
    dwItem As Long
    dwTrack As Long
End Type
Global Const MCI_STATUS_MODE = &H4&
Global Const MCI_STATUS_ITEM = &H100&

Global Const MCI_OPEN_ELEMENT = &H200&
Global Const MCI_OPEN_ALIAS = &H400&
Global Const MCI_OPEN = &H803
Global Const MCI_CLOSE = &H804
Global Const MCI_PLAY = &H806
Global Const MCI_SEEK = &H807
Global Const MCI_STOP = &H808
Global Const MCI_STATUS = &H814

'Const MCI_OPEN_TYPE_ID = &H1000&
Global Const MCI_OPEN_TYPE = &H2000&

Global Const MCI_SEEK_TO_START = &H100&

'Id del dispositivo
Public IdMIDI As Long

Public Declare Function waveOutGetNumDevs Lib "winmm" () As Long
Public Declare Function midiOutGetNumDevs Lib "winmm" () As Integer


Public Declare Function PlaySound Lib "winmm.dll" Alias "PlaySoundA" (ByVal lpszName As String, ByVal hModule As Long, ByVal dwFlags As Long) As Long
Global Const SND_ALIAS = &H10000
'lpszName is a string identifying the name of the system event sound to play.
Global Const SND_ALIAS_ID = &H110000
'lpszName is a string identifying the name of the predefined sound identifier to play.
Global Const SND_APPLICATION = &H80
'lpszName is a string identifying the application-specific event association sound to play.
Global Const SND_ASYNC = &H1
'Play the sound asynchronously -- return immediately after beginning to play the sound and have it play in the background.
Global Const SND_FILENAME = &H20000
'lpszName is a string identifying the filename of the .wav file to play.
Global Const SND_LOOP = &H8
'Continue looping the sound until this function is called again ordering the looped playback to stop. SND_ASYNC must also be specified.
Global Const SND_MEMORY = &H4
'lpszName is a numeric pointer refering to the memory address of the image of the waveform sound loaded into RAM.
Global Const SND_NODEFAULT = &H2
'If the specified sound cannot be found, terminate the function with failure instead of playing the SystemDefault sound. If this flag is not specified, the SystemDefault sound will play if the specified sound cannot be located and the function will return with success.
Global Const SND_NOSTOP = &H10
'If a sound is already playing, do not prematurely stop that sound from playing and instead return with failure. If this flag is not specified, the playing sound will be terminated and the sound specified by the function will play instead.
Global Const SND_NOWAIT = &H2000
'If a sound is already playing, do not wait for the currently playing sound to stop and instead return with failure.
Global Const SND_PURGE = &H40
'Stop playback of any waveform sound. lpszName must be an empty string.
Global Const SND_RESOURCE = &H4004
'lpszName is the numeric resource identifier of the sound stored in an application. hModule must be specified as that application's module handle.
Global Const SND_SYNC = &H0
'Play the sound synchronously -- do not return until the sound has finished playing.

Private Const MAX_PATH& = 260

Public Declare Function apiGetShortPathName Lib "kernel32" _
    Alias "GetShortPathNameA" _
    (ByVal lpszLongPath As String, _
    ByVal lpszShortPath As String, _
    ByVal cchBuffer As Long) _
    As Long
'-------------

Public Function fGetShortName(ByVal stLongPath As String) As String
'[ opposite of fGetLongName() ]
'Usage Examples:
'?fGetShortName("D:\Internet Explorer 4.0 Setup\This folder is safe to delete.txt")
'D:\INTERN~1.0SE\THISFO~1.TXT
'
'?fGetShortName(currentdb.Name)
'C:\PROGRA~1\MICROS~2\Office\Samples\SOLUTI~1.MDB
'
    Dim stShortPath As String
    Dim lngBuffer As Long, lngRet As Long
    stShortPath = String$(MAX_PATH, 0)
    lngBuffer = Len(stShortPath)
    lngRet = apiGetShortPathName(stLongPath, stShortPath, lngBuffer)
    fGetShortName = left(stShortPath, lngRet)
End Function

Public Sub DisableClose(hwnd As Long)
    Dim hMenu As Long
    hMenu = GetSystemMenu(hwnd, 0)
    RemoveMenu hMenu, 6, MF_BYPOSITION
    RemoveMenu hMenu, 5, MF_BYPOSITION
End Sub

Public Function GetTaskbarHWND() As Long
    GetTaskbarHWND = FindWindow("shell_traywnd", "")
End Function

Public Sub HideTaskbar()
Dim hWin    As Long
Dim retour  As Long
    hWin = GetTaskbarHWND()
    retour = SetWindowPos(hWin, 0, 0, 0, 0, 0, &H80)
End Sub

Public Sub ShowTaskbar()
Dim hWin    As Long
Dim retour  As Long
    hWin = GetTaskbarHWND()
    retour = SetWindowPos(hWin, 0, 0, 0, 0, 0, &H40)
End Sub

