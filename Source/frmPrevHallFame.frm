VERSION 5.00
Begin VB.Form frmPrevHallFame 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2670
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   4065
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2670
   ScaleWidth      =   4065
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdprevHFAction 
      Caption         =   "Gracias!"
      Height          =   435
      Left            =   1320
      TabIndex        =   0
      Top             =   2100
      Width           =   1515
   End
   Begin VB.Label lblprevHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   315
      Left            =   2280
      TabIndex        =   5
      Top             =   1620
      Width           =   975
   End
   Begin VB.Label lblprevHFcongratulations 
      BackStyle       =   0  'Transparent
      Caption         =   "Tu tiempo es...."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   315
      Index           =   3
      Left            =   420
      TabIndex        =   4
      Top             =   1620
      Width           =   1755
   End
   Begin VB.Label lblprevHFcongratulations 
      BackStyle       =   0  'Transparent
      Caption         =   "Entre en el Hall of Fame !"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   2
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Width           =   3075
   End
   Begin VB.Label lblprevHFcongratulations 
      BackStyle       =   0  'Transparent
      Caption         =   "Acabo en buen lugar !"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   1
      Left            =   60
      TabIndex        =   2
      Top             =   840
      Width           =   3555
   End
   Begin VB.Label lblprevHFcongratulations 
      BackStyle       =   0  'Transparent
      Caption         =   "Felicitaciones!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Index           =   0
      Left            =   60
      TabIndex        =   1
      Top             =   180
      Width           =   3915
   End
End
Attribute VB_Name = "frmPrevHallFame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdprevHFAction_Click()
    If lblprevHFcongratulations(2).Visible = False Then
        EditHallFame = False
        Unload Me
    Else
        EditHallFame = True
        frmHallFame.Show vbModal
    End If
End Sub

Private Sub Form_Load()
    ChangeLanguage Me, Params.Language
    If ElapsedSeconds < InfoTimeIni(9) Then 'And InfoTimeIni(9) = 32762 Then
        lblprevHFcongratulations(2).Visible = True
    Else
        lblprevHFcongratulations(2).Visible = False
    End If
    lblprevHFtime.Caption = FrmMain.lblTime.Caption
End Sub

Private Sub Form_Paint()
    PaintMosaicToForm Me, FrmSprites.PicSkin
End Sub
