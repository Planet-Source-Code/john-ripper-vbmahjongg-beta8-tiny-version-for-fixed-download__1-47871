Attribute VB_Name = "ModVideoModes"
'#######################################################
' Video Memory Module
' This module contains API Calls to change the screen Resolution.
'#######################################################
Option Explicit

Public OriginalScreenWidth  As Long 'Stores the actual Screen Resolution, Bits per Pixel
Public OriginalScreenHeight As Long 'and Vertical Refresh (Hz) in orden to restore original
Public OriginalBPP          As Long 'configuration when MahjonggFX are Unload
Public OriginalREFRESH      As Long

Public ResolutionHasBeenChanged As Boolean  'Flag
Public AvailableResolution      As Boolean
Public Ncolors                  As Integer  'Ncolors to Change
Public MaxRefresh               As Long  'Max Refresh to change
Public ImpossibleChanged        As Boolean 'impossible to change to 1024x768-Ncolors @ MaxRefresh. Hardware Failure?
Public NBitsPP(4)               As Long '8bpp, 16bpp, 24 bpp or 32 bpp

Public Type tAvailableRes
    BitsPerPixel    As Long
    Frecuency       As Long
End Type
Public AvailableRes() As tAvailableRes

Public ChangedToBpp As Long
Public ChangedToHz  As Long

'Returns TRUE if Changed Screen resolution its done (VB2Max Original Source)
Function ChangeScreenResolution(ByVal Width As Long, ByVal Height As Long, _
    ByVal NumColors As Long, Optional Frequency As Long) As Boolean
    Dim lpDevMode As DEVMODE
    Dim index As Long
    
    ' set the DEVMODE flags and structure size
    lpDevMode.dmSize = Len(lpDevMode)
    lpDevMode.dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT Or DM_BITSPERPEL
    
    ' retrieve info on the Nth display mode, exit if no more
    Do While EnumDisplaySettings(0, index, lpDevMode) > 0
        ' check whether this is the mode we're looking for
        'If lpDevMode.dmPelsWidth = Width And lpDevMode.dmPelsHeight = Height _
            And 2 ^ lpDevMode.dmBitsPerPel = NumColors Then
        If lpDevMode.dmPelsWidth = Width And lpDevMode.dmPelsHeight = Height _
            And lpDevMode.dmBitsPerPel = NumColors Then
            
            ' check that the frequency is also the one we're looking for
            If Frequency = 0 Or Frequency = lpDevMode.dmDisplayFrequency Then
                ' try changing the resolution
                If ChangeDisplaySettings(lpDevMode, CDS_FORCE) = 0 Then
                    ' zero means success
                    Debug.Print Time & ":changed scr res to " & Width & "x" & Height & "x" & NumColors & " colors at " & Frequency & " Hz."
                    ChangeScreenResolution = True
                    Exit Do
                End If
            End If
        End If
        ' skip to next screen mode
        index = index + 1
    Loop

End Function

'Returns TRUE if video mode its available
Public Function IsScreenAvailable(ScreenWidth As Long, ScreenNColors As Long) As Boolean
    Dim lpDevMode As DEVMODE
    Dim index As Long
    Dim displayCount As Long
    Dim iWidth As Long
    Dim iBPP As Long
    Dim myFlag As Boolean

    lpDevMode.dmSize = Len(lpDevMode)
    lpDevMode.dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT Or DM_BITSPERPEL
    
    'How many video modes we have?
    Do While EnumDisplaySettings(0, displayCount, lpDevMode) > 0
        displayCount = displayCount + 1
    Loop
    
    myFlag = False
    For index = 0 To displayCount - 1

        EnumDisplaySettings 0, index, lpDevMode
        iWidth = lpDevMode.dmPelsWidth
        'iBPP = IIf(lpDevMode.dmBitsPerPel > 24, 24, _
            lpDevMode.dmBitsPerPel)
        iBPP = IIf(lpDevMode.dmBitsPerPel > 32, 32, _
            lpDevMode.dmBitsPerPel)
        
        
        Debug.Print index & ": Width:"; iWidth & ", bpp:" & iBPP & " HZ:" & lpDevMode.dmDisplayFrequency
        If iWidth = ScreenWidth And ScreenNColors = iBPP Then
            myFlag = True
            Exit For
        End If
    Next

    IsScreenAvailable = myFlag
End Function

'Returns TRUE if screen its actually in 1024 width.
Public Function ScreenResolution1024() As Boolean
    Dim I As Integer
    Dim BitsPerPixel As Single 'Long

    NBitsPP(1) = 8
    NBitsPP(2) = 16
    NBitsPP(3) = 24
    NBitsPP(4) = 32


    'BitsPerPixel = GetDeviceCaps(frmMain.hDC, BITSPIXEL)
    OriginalBPP = GetDeviceCaps(frmInitialize.hdc, BitsPixel)
    'OriginalBPP = 1
    'For i = 1 To BitsPerPixel
    '    OriginalBPP = OriginalBPP * 2
    'Next
    
    OriginalScreenWidth = GetDeviceCaps(frmInitialize.hdc, HORZRES)
    OriginalScreenHeight = GetDeviceCaps(frmInitialize.hdc, VERTRES)
    OriginalREFRESH = GetDeviceCaps(frmInitialize.hdc, VREFRESH)
    If OriginalScreenWidth >= 1024 Then
        ScreenResolution1024 = True
    Else
        ScreenResolution1024 = False
    End If

End Function

'Load ListBox with all 1024 x "X" resolutions Available
Public Sub LoadListResolution1024(DestLstControl As ListBox, BitsPixel As Long)

    Dim lpDevMode       As DEVMODE
    Dim index           As Long
    Dim displayCount    As Long
    Dim iWidth          As Long
    Dim iHeight         As Long
    Dim iBPP            As Long
    Dim iRefresh        As Long

    
    lpDevMode.dmSize = Len(lpDevMode)
    lpDevMode.dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT Or DM_BITSPERPEL
    
    'How many video modes we have?
    Do While EnumDisplaySettings(0, displayCount, lpDevMode) > 0
        displayCount = displayCount + 1
    Loop
    
    Debug.Print "--- Hz ---"
    For index = 0 To displayCount - 1

        EnumDisplaySettings 0, index, lpDevMode
        iWidth = lpDevMode.dmPelsWidth
        iHeight = lpDevMode.dmPelsHeight
        
        iBPP = IIf(lpDevMode.dmBitsPerPel > 32, 32, _
            lpDevMode.dmBitsPerPel)
        
        iRefresh = lpDevMode.dmDisplayFrequency
        'Debug.Print index & ": Width:"; iWidth & ", bpp:" & iBPP & " HZ:" & iRefresh
        If iWidth = 1024 And iHeight = 768 And BitsPixel = iBPP Then
            Debug.Print index & ": Width:"; iWidth & ", bpp:" & iBPP & " HZ:" & iRefresh
            'Store Vrefresh Value on array
            DestLstControl.AddItem "1024 x 768 - " & BitsPixel & " bpp @ " & iRefresh & " Hz"
            AvailableRes(UBound(AvailableRes)).BitsPerPixel = BitsPixel
            AvailableRes(UBound(AvailableRes)).Frecuency = iRefresh
            ReDim Preserve AvailableRes(UBound(AvailableRes) + 1)
        End If
    Next

End Sub
