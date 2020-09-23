Attribute VB_Name = "ModMenuSubClassing"
Option Explicit
Public ApplicationOnIde As Boolean
Public FirstTime As Boolean
Public DoReset As Boolean

Public Sub InitMenus(DestinationForm As Form, PictureSkin As Image, Optional WidthTexture As Boolean = True)
    If ApplicationOnIde = True Then
        Exit Sub
    End If
    'Dim aForm As Form
    gbCustomTexture = WidthTexture
    If gbCustomTexture Then Set gMenuBG = PictureSkin.Picture
    'For Each aForm In Forms
        If DoReset = True Then
            stopODMenus DestinationForm
            'stopODMenus FrmMain.ToolInfo
        End If
        
        DrawMenuBar DestinationForm.hwnd
        'aForm.Controls("Toolbar1").Refresh
        'FrmMain.ToolInfo.Refresh
        'FrmMain.changeToolbarColors True
        'aForm.Check3_Click
    'Next aForm
    'If FirstTime = True Then
'        If DoReset = True Then
'            stopODMenus DestinationForm
'        End If
        startODMenus DestinationForm, True
        'startODMenus FrmMain.ToolInfo, True
        
        
        On Local Error Resume Next
        gMenuBmps.Add Array(101, 102), "Nuevo" ' IDs in resource... 101 = pic, 102 = mask
        gMenuBmps.Add Array(103, 104), "Salir" ' IDs in resource... 103 = pic, 104 = mask
        On Error GoTo 0
    'End If
End Sub


Public Function getAppColor(aKey As String) As Long

    ' This is a dummy function until we release the code for our custom
    '  "theme resource" file, which stores colors and bitmaps


    Select Case LCase(aKey)
        Case "body"
            getAppColor = RGB(58, 110, 165)
        Case "selected"
            If gbCustomTexture Then
                getAppColor = RGB(200, 165, 165) 'RGB(242, 162, 153)
            Else
                getAppColor = RGB(186, 186, 204)
            End If
        Case "selectedtext"
            getAppColor = vbRed
        Case "generaltext"
            getAppColor = RGB(255, 128, 64)
        Case "bordercolor"
            If gbCustomTexture Then
                getAppColor = RGB(0, 72, 72) 'RGB(240, 72, 72)
            Else
                getAppColor = RGB(85, 85, 118)
            End If
        Case "table1bg"
            getAppColor = vbWhite 'RGB(223, 223, 223)
        Case "table2bg"
            getAppColor = RGB(241, 241, 241)
        Case "headingbg"
            getAppColor = RGB(128, 128, 166)
        Case "headingtext"
            getAppColor = RGB(231, 231, 255)
        Case "menubg"
            getAppColor = RGB(58, 110, 165)
        Case "menutext"
            getAppColor = vbGreen 'vbWhite
    End Select


End Function


