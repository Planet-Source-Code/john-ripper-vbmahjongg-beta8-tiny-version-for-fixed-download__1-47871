VERSION 5.00
Begin VB.Form frmInitialize 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "vbMahjonggFX v2.1 Start Up Video-Config"
   ClientHeight    =   5670
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5670
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox LstVideoModes 
      Height          =   1035
      Left            =   480
      TabIndex        =   10
      Top             =   2580
      Width           =   3735
   End
   Begin VB.CommandButton cmdEXITInitialize 
      Caption         =   "Salir"
      Height          =   375
      Left            =   2340
      TabIndex        =   9
      Top             =   4740
      Width           =   1875
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   4080
      Top             =   4140
   End
   Begin VB.CommandButton cmdOkInitialize 
      Caption         =   "Cambiar Resolucion"
      Height          =   375
      Left            =   300
      TabIndex        =   4
      Top             =   4740
      Width           =   1875
   End
   Begin VB.Label lblInfoVersion 
      BackStyle       =   0  'Transparent
      Caption         =   "v.Beta8"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   60
      TabIndex        =   11
      Top             =   0
      Width           =   1815
   End
   Begin VB.Label lblInitVideoSkiping 
      BackStyle       =   0  'Transparent
      Caption         =   "Omitiendo..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1080
      TabIndex        =   8
      Top             =   5220
      Visible         =   0   'False
      Width           =   2535
   End
   Begin VB.Label lblInfoNotAvailableRes 
      Alignment       =   2  'Center
      BackColor       =   &H008080FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Label1"
      ForeColor       =   &H000000C0&
      Height          =   915
      Left            =   480
      TabIndex        =   7
      Top             =   2580
      Visible         =   0   'False
      Width           =   3735
   End
   Begin VB.Label lblInitializeInfo 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   $"frmInitialize.frx":0000
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   975
      Index           =   3
      Left            =   480
      TabIndex        =   6
      Top             =   3720
      Width           =   3675
   End
   Begin VB.Label lblInitializeInfo 
      BackStyle       =   0  'Transparent
      Caption         =   "Lista Resuluciones Disponibles:"
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   4
      Left            =   480
      TabIndex        =   5
      Top             =   2220
      Width           =   2595
   End
   Begin VB.Label lblInitializeInfo 
      BackStyle       =   0  'Transparent
      Caption         =   "vbMahjongg va a intentar cambiar el modo de video a la resolucion adecuada.:"
      ForeColor       =   &H00FFFFFF&
      Height          =   435
      Index           =   2
      Left            =   480
      TabIndex        =   3
      Top             =   1740
      Width           =   3675
   End
   Begin VB.Label lblInitializeInfo 
      BackStyle       =   0  'Transparent
      Caption         =   "Es necesario una resolucion minima de 1024x768 pixels para poder ejecutar este programa"
      ForeColor       =   &H00FFFFFF&
      Height          =   435
      Index           =   1
      Left            =   480
      TabIndex        =   2
      Top             =   1260
      Width           =   3675
   End
   Begin VB.Label lblInfoVideoMode 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "800 x 600"
      ForeColor       =   &H00FFFFC0&
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   900
      Width           =   3675
   End
   Begin VB.Label lblInitializeInfo 
      BackStyle       =   0  'Transparent
      Caption         =   "vbMahjongg ha dectectado que su configuración actual de video es:"
      ForeColor       =   &H00FFFFFF&
      Height          =   435
      Index           =   0
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   3675
   End
End
Attribute VB_Name = "frmInitialize"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#######################################################
' Initialize Video/Mode form.
'#######################################################
Option Explicit

Private Sub cmdEXITInitialize_Click()
    End
End Sub

Private Sub cmdOkInitialize_Click()
    If AvailableResolution = False Then
        End
    End If
'       frmChangeVideo.Show vbModal
'    End If

    Debug.Print "---"
    Debug.Print "Bpp:" & AvailableRes(LstVideoModes.ListIndex).BitsPerPixel
    Debug.Print "Frecuency:" & AvailableRes(LstVideoModes.ListIndex).Frecuency
    Debug.Print "---"
    ChangedToBpp = AvailableRes(LstVideoModes.ListIndex).BitsPerPixel
    ChangedToHz = AvailableRes(LstVideoModes.ListIndex).Frecuency
    frmChangeVideo.Show vbModal

End Sub

Private Sub Form_Load()
    Dim CommandArg As String
    Dim CheckVideo As Boolean
    Dim I          As Integer
    
    FrmSprites.PicSkin.Picture = LoadPicture(App.Path & "\Skins\Wood.jpg")
    FrmSprites.Image1.Picture = LoadPicture(App.Path & "\Skins\Wood.jpg")
    
    Unload frmChangeVideo
    CommandArg = Command()
    
    'Use Param "-NoVideoCheck" to bypass video Mode Checking
    
    If UCase(CommandArg) = UCase("-NoVideoCheck") Then
        CheckVideo = False
    Else
        CheckVideo = True
    End If
    
    AvailableResolution = False
    ResolutionHasBeenChanged = False
       
    
    InitParams
    ChangeLanguage Me, Params.Language
    
    'Change Screen resolution to 1024x768 (32, 24, 16 or 8 bpp) with the max. Vertical Refresh
    If CheckVideo = False Then
        lblInitializeInfo(0).Visible = False
        lblInitializeInfo(1).Visible = False
        lblInitializeInfo(2).Visible = False
        lblInitializeInfo(3).Visible = False
        lblInitializeInfo(4).Visible = False
        lblInfoVideoMode.Visible = False
        cmdOkInitialize.Visible = False
        cmdEXITInitialize.Visible = False
        LstVideoModes.Visible = False
        lblInitVideoSkiping.Visible = True
        Timer1.Enabled = True
    Else
        If ScreenResolution1024 = False Then
            lblInfoVideoMode.Caption = OriginalScreenWidth & " x " _
                                      & OriginalScreenHeight & " - " _
                                      & OriginalBPP & " bpp @ " _
                                      & OriginalREFRESH & " Hz"
            
            For I = 1 To UBound(NBitsPP)
                If IsScreenAvailable(1024, NBitsPP(I)) = True Then
                    AvailableResolution = True
                    Ncolors = NBitsPP(I)
                End If
            Next I
            
            If AvailableResolution = False Then
                lblInitializeInfo(3).Visible = False
                lblInfoNotAvailableRes.Visible = True
                LstVideoModes.Visible = False
                cmdOkInitialize.Caption = InfosIDIOM(14)
            Else
                If Params.ChangeAutoVideo = True Then
                    lblInitializeInfo(0).Visible = False
                    lblInitializeInfo(1).Visible = False
                    lblInitializeInfo(2).Visible = False
                    lblInitializeInfo(3).Visible = False
                    lblInitializeInfo(4).Visible = False
                    lblInfoVideoMode.Visible = False
                    cmdOkInitialize.Visible = False
                    cmdEXITInitialize.Visible = False
                    LstVideoModes.Visible = False
                    lblInitVideoSkiping.Visible = True
                    ChangedToBpp = Params.VideoAutoBPP
                    ChangedToHz = Params.VideoAutoHZ
                    
                    If ChangeScreenResolution(1024, 768, ChangedToBpp, ChangedToHz) = False Then
                        ImpossibleChanged = True
                        Debug.Print "impossible change 1024x768 " & ChangedToBpp & " bpp @ " & ChangedToHz & " Hz"
                        MsgBox "Hardware ERROR!!!"
                    Else
                        ImpossibleChanged = False
                        ResolutionHasBeenChanged = True
                        HideTaskbar
                        Timer1.Enabled = True
                    End If
                    
                Else
                    LstVideoModes.Clear
                    ReDim AvailableRes(0)
                    For I = 1 To UBound(NBitsPP)
                        LoadListResolution1024 LstVideoModes, NBitsPP(I)
                    Next I
            
                    LstVideoModes.ListIndex = LstVideoModes.ListCount - 1
                End If
            
            End If
        Else
            lblInitializeInfo(0).Visible = False
            lblInitializeInfo(1).Visible = False
            lblInitializeInfo(2).Visible = False
            lblInitializeInfo(3).Visible = False
            lblInitializeInfo(4).Visible = False
            lblInfoVideoMode.Visible = False
            cmdOkInitialize.Visible = False
            cmdEXITInitialize.Visible = False
            LstVideoModes.Visible = False
            lblInitVideoSkiping.Visible = True
            Timer1.Enabled = True
        End If
    End If
End Sub

Private Sub Form_Paint()
    PaintMosaicToForm Me, FrmSprites.PicSkin
End Sub

Private Sub Timer1_Timer()
    Timer1.Enabled = False
    FrmMain.Show vbModal
    Unload Me
End Sub
