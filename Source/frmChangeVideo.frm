VERSION 5.00
Begin VB.Form frmChangeVideo 
   ClientHeight    =   2385
   ClientLeft      =   60
   ClientTop       =   60
   ClientWidth     =   4680
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   Moveable        =   0   'False
   ScaleHeight     =   2385
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdVideoChanYES 
      Caption         =   "YES"
      Height          =   495
      Left            =   720
      TabIndex        =   1
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton cmdVideoChanNO 
      Caption         =   "Probar otra resolucion"
      Height          =   495
      Left            =   2220
      TabIndex        =   0
      Top             =   960
      Width           =   1815
   End
   Begin VB.CheckBox chkVideoAuto 
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   300
      TabIndex        =   2
      Top             =   1740
      Value           =   1  'Checked
      Width           =   195
   End
   Begin VB.Label lblChangedResolution 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   255
      Left            =   60
      TabIndex        =   5
      Top             =   420
      Width           =   4515
   End
   Begin VB.Label lblVideoAuto 
      BackStyle       =   0  'Transparent
      Caption         =   "Realizar el cambio de la configuracion de video de forma automatica para la proxima vez."
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   540
      TabIndex        =   4
      Top             =   1680
      Width           =   3735
   End
   Begin VB.Label lblInfoVideoChange 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "¿Se ve correctamente esta pantalla?"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   120
      Width           =   4155
   End
End
Attribute VB_Name = "frmChangeVideo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#######################################################
' Test For Video/Mode resolution form.
'#######################################################
Option Explicit

Private Sub cmdVideoChanNO_Click()

    ChangeScreenResolution OriginalScreenWidth, OriginalScreenHeight, OriginalBPP, OriginalREFRESH
    ShowTaskbar
    frmInitialize.Show vbModal

End Sub

Private Sub cmdVideoChanYES_Click()
    If chkVideoAuto.Value = vbChecked Then
        Params.ChangeAutoVideo = True
        Params.VideoAutoBPP = ChangedToBpp
        Params.VideoAutoHZ = ChangedToHz
    Else
        Params.ChangeAutoVideo = False
    End If
    
    SaveParams
    
    FrmMain.Show vbModal
End Sub

Private Sub Form_Load()
    
Dim ImpossibleChanged       As Boolean
    
    Unload frmInitialize
    
    lblChangedResolution.Caption = "1024 x 768 " & ChangedToBpp & " bpp @ " & ChangedToHz & " Hz"
    ChangeLanguage Me, Params.Language
        
    If ChangeScreenResolution(1024, 768, ChangedToBpp, ChangedToHz) = False Then
        ImpossibleChanged = True
        Debug.Print "impossible change 1024x768 " & ChangedToBpp & " bpp @ " & ChangedToHz & " Hz"
    Else
        ImpossibleChanged = False
        ResolutionHasBeenChanged = True
        
        HideTaskbar
    End If

    If ImpossibleChanged = True Then
        cmdVideoChanYES.Visible = False
        MsgBox "impossible change 1024x768 " & ChangedToBpp & " bpp @ " & ChangedToHz & " Hz", vbCritical, "Error"
        
    End If
        
End Sub

Private Sub Form_Paint()
    PaintMosaicToForm Me, FrmSprites.PicSkin
End Sub


