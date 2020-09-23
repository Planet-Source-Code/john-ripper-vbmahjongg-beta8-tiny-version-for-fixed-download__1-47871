VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "VBMahjongg"
   ClientHeight    =   5055
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6480
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5055
   ScaleWidth      =   6480
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdOk 
      Caption         =   "OK"
      Height          =   435
      Left            =   5400
      TabIndex        =   1
      Top             =   4440
      Width           =   915
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Visit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   780
      TabIndex        =   6
      Top             =   4560
      Width           =   555
   End
   Begin VB.Label lblURL 
      BackStyle       =   0  'Transparent
      Caption         =   "http://www.geocities.com/vbmahjongg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   1380
      TabIndex        =   5
      Top             =   4560
      Width           =   3735
   End
   Begin VB.Label lblVersionInfo 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   720
      Width           =   1395
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "VBMahjongg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0FFC0&
      Height          =   615
      Left            =   60
      TabIndex        =   3
      Top             =   60
      Width           =   2955
   End
   Begin VB.Label lblCredits 
      BackStyle       =   0  'Transparent
      Caption         =   "Greetz:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   60
      TabIndex        =   2
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label lblSTATUS 
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
      ForeColor       =   &H00FFFFFF&
      Height          =   675
      Left            =   60
      TabIndex        =   0
      Top             =   3660
      Width           =   6315
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim TextBanner As String

Private Sub cmdOk_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    TextBanner = "René-Gilles     G. D. Sever     Kailash  Nadh     Vegard  Krog  Petersen     Eric  Natale     e-jose     Ed^Wood     [ZeroCool]     [MaxPa|n3]     c0d3rM4st3R     Ni0be25"
    lblSTATUS = TextBanner
    lblVersionInfo.Caption = "v." & App.Major & "." & App.Minor
    'tmrBanner.Interval = 250
    'tmrBanner.Enabled = True
End Sub

Private Sub tmrBanner_Timer()
    TextBanner = Mid(TextBanner, 2) & left(TextBanner, 1)
    lblSTATUS = TextBanner
End Sub
Private Sub Form_Paint()
    PaintMosaicToForm Me, FrmSprites.PicSkin
End Sub
