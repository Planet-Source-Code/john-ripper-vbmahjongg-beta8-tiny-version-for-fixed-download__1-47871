VERSION 5.00
Begin VB.Form frmViewTilesets 
   BackColor       =   &H00000040&
   Caption         =   "Form1"
   ClientHeight    =   5610
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9795
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   Moveable        =   0   'False
   ScaleHeight     =   5610
   ScaleWidth      =   9795
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox PicWorkDragons2 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   8040
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   53
      TabIndex        =   23
      Top             =   3780
      Width           =   795
   End
   Begin VB.PictureBox PicWorkDragons1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   8040
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   113
      TabIndex        =   22
      Top             =   2760
      Width           =   1695
   End
   Begin VB.PictureBox PicWorkWinds2 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   8040
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   113
      TabIndex        =   21
      Top             =   1380
      Width           =   1695
   End
   Begin VB.PictureBox PicWorkWinds1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   8040
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   113
      TabIndex        =   20
      Top             =   360
      Width           =   1695
   End
   Begin VB.PictureBox PicWorkSeasons 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   4500
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   229
      TabIndex        =   19
      Top             =   4500
      Width           =   3435
   End
   Begin VB.PictureBox PicWorkFlowers 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   60
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   229
      TabIndex        =   18
      Top             =   4500
      Width           =   3435
   End
   Begin VB.PictureBox PicWorkDots 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   60
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   525
      TabIndex        =   17
      Top             =   3120
      Width           =   7875
   End
   Begin VB.PictureBox PicWorkBamboos 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   60
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   525
      TabIndex        =   16
      Top             =   1740
      Width           =   7875
   End
   Begin VB.PictureBox PicWorkCracks 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000040&
      BorderStyle     =   0  'None
      Height          =   1035
      Left            =   60
      ScaleHeight     =   69
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   525
      TabIndex        =   1
      Top             =   360
      Width           =   7875
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Ok"
      Height          =   555
      Left            =   8880
      TabIndex        =   0
      Top             =   4920
      Width           =   795
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      X1              =   7980
      X2              =   7980
      Y1              =   120
      Y2              =   5520
   End
   Begin VB.Label lblDragons 
      BackStyle       =   0  'Transparent
      Caption         =   "[4 fichas]"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   8700
      TabIndex        =   15
      Top             =   2460
      Width           =   1035
   End
   Begin VB.Label lblDragons 
      BackStyle       =   0  'Transparent
      Caption         =   "Dragons"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   8040
      TabIndex        =   14
      Top             =   2460
      Width           =   675
   End
   Begin VB.Label lblWinds 
      BackStyle       =   0  'Transparent
      Caption         =   "[4 fichas]"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   8520
      TabIndex        =   13
      Top             =   60
      Width           =   1215
   End
   Begin VB.Label lblWinds 
      BackStyle       =   0  'Transparent
      Caption         =   "Winds"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   8040
      TabIndex        =   12
      Top             =   60
      Width           =   495
   End
   Begin VB.Label lblSeasons 
      BackStyle       =   0  'Transparent
      Caption         =   "[Una pareja]"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   5220
      TabIndex        =   11
      Top             =   4200
      Width           =   1515
   End
   Begin VB.Label lblSeasons 
      BackStyle       =   0  'Transparent
      Caption         =   "Seasons"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   4500
      TabIndex        =   10
      Top             =   4200
      Width           =   675
   End
   Begin VB.Label lblFlowers 
      BackStyle       =   0  'Transparent
      Caption         =   "[Una pareja]"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   660
      TabIndex        =   9
      Top             =   4200
      Width           =   1515
   End
   Begin VB.Label lblFlowers 
      BackStyle       =   0  'Transparent
      Caption         =   "Flowers"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   60
      TabIndex        =   8
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label lblDots 
      BackStyle       =   0  'Transparent
      Caption         =   "[4 fichas]"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   420
      TabIndex        =   7
      Top             =   2820
      Width           =   1515
   End
   Begin VB.Label lblDots 
      BackStyle       =   0  'Transparent
      Caption         =   "Dots"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   60
      TabIndex        =   6
      Top             =   2820
      Width           =   375
   End
   Begin VB.Label lblBamboos 
      BackStyle       =   0  'Transparent
      Caption         =   "[4 fichas]"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   780
      TabIndex        =   5
      Top             =   1440
      Width           =   1515
   End
   Begin VB.Label lblBamboos 
      BackStyle       =   0  'Transparent
      Caption         =   "Bamboos"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   60
      TabIndex        =   4
      Top             =   1440
      Width           =   735
   End
   Begin VB.Label lblCracks 
      BackStyle       =   0  'Transparent
      Caption         =   "[4 fichas]"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   600
      TabIndex        =   3
      Top             =   60
      Width           =   1515
   End
   Begin VB.Label lblCracks 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Cracks"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   60
      TabIndex        =   2
      Top             =   60
      Width           =   555
   End
End
Attribute VB_Name = "frmViewTilesets"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdSalir_Click()
    Unload Me
End Sub

Private Sub Form_Load()
Dim I As Integer
Dim lSDC As Long
Dim lDDC As Long

    ChangeLanguage Me, Params.Language
    
    For I = 0 To 8
        lSDC = FrmSprites.PicTileSet.hdc
        lDDC = Me.PicWorkCracks.hdc
        
        BitBlt lDDC, (I * GFXTileWidth) + (5 * I), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, GFXTileHeight * 2, SRCCOPY

        lDDC = Me.PicWorkBamboos.hdc
        BitBlt lDDC, (I * GFXTileWidth) + (5 * I), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, GFXTileHeight, SRCCOPY
    
        lDDC = Me.PicWorkDots.hdc
        BitBlt lDDC, (I * GFXTileWidth) + (5 * I), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, 0, SRCCOPY
    Next I

    For I = 0 To 3
        lSDC = FrmSprites.PicTileSet.hdc
        lDDC = Me.PicWorkFlowers.hdc
        
        BitBlt lDDC, (I * GFXTileWidth) + (5 * I), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, GFXTileHeight * 4, SRCCOPY
        
        lDDC = Me.PicWorkSeasons.hdc
        BitBlt lDDC, (I * GFXTileWidth) + (5 * I), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, GFXTileHeight * 3, SRCCOPY
    Next I


    For I = 4 To 5
        lSDC = FrmSprites.PicTileSet.hdc
        lDDC = Me.PicWorkWinds1.hdc
        
        BitBlt lDDC, ((I - 4) * GFXTileWidth) + (5 * (I - 4)), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, GFXTileHeight * 3, SRCCOPY
        
    Next I

    For I = 6 To 7
        lSDC = FrmSprites.PicTileSet.hdc
        lDDC = Me.PicWorkWinds2.hdc
        
        BitBlt lDDC, ((I - 6) * GFXTileWidth) + (5 * (I - 6)), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, GFXTileHeight * 3, SRCCOPY
        
    Next I


    For I = 4 To 5
        lSDC = FrmSprites.PicTileSet.hdc
        lDDC = Me.PicWorkDragons1.hdc
        
        BitBlt lDDC, ((I - 4) * GFXTileWidth) + (5 * (I - 4)), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, GFXTileHeight * 4, SRCCOPY

    Next I

    For I = 6 To 6
        lSDC = FrmSprites.PicTileSet.hdc
        lDDC = Me.PicWorkDragons2.hdc
        
        BitBlt lDDC, ((I - 6) * GFXTileWidth) + (5 * (I - 6)), 0, GFXTileWidth, GFXTileHeight, lSDC, I * GFXTileWidth, GFXTileHeight * 4, SRCCOPY

    Next I


End Sub

Private Sub Form_Paint()
    PaintMosaicToForm Me, FrmSprites.PicSkin
End Sub
