VERSION 5.00
Begin VB.Form FrmSprites 
   Caption         =   "Form1"
   ClientHeight    =   8220
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12870
   LinkTopic       =   "Form1"
   ScaleHeight     =   8220
   ScaleWidth      =   12870
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox PicNumbers 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   345
      Left            =   0
      ScaleHeight     =   19
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   505
      TabIndex        =   11
      Top             =   0
      Width           =   7635
   End
   Begin VB.PictureBox PicPause 
      AutoRedraw      =   -1  'True
      Height          =   1620
      Left            =   6000
      ScaleHeight     =   104
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   360
      TabIndex        =   10
      Top             =   300
      Width           =   5460
   End
   Begin VB.PictureBox PicTileSetMemoryExtreme 
      AutoRedraw      =   -1  'True
      Height          =   5235
      Left            =   4200
      ScaleHeight     =   345
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   493
      TabIndex        =   9
      Top             =   60
      Width           =   7455
   End
   Begin VB.PictureBox PicAnimeZZZ 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   4710
      Index           =   1
      Left            =   3720
      ScaleHeight     =   314
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   81
      TabIndex        =   8
      Top             =   1320
      Width           =   1215
   End
   Begin VB.PictureBox PicAnimeZZZ 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   4710
      Index           =   0
      Left            =   3180
      ScaleHeight     =   314
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   81
      TabIndex        =   7
      Top             =   2400
      Width           =   1215
   End
   Begin VB.PictureBox PicAnime1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   4710
      Left            =   1080
      ScaleHeight     =   314
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   81
      TabIndex        =   6
      Top             =   1140
      Width           =   1215
   End
   Begin VB.PictureBox PicSkin 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   3375
      Left            =   6960
      ScaleHeight     =   225
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   225
      TabIndex        =   5
      Top             =   4140
      Width           =   3375
   End
   Begin VB.PictureBox PicTileSet 
      AutoRedraw      =   -1  'True
      Height          =   5235
      Left            =   960
      ScaleHeight     =   345
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   493
      TabIndex        =   4
      Top             =   2160
      Width           =   7455
   End
   Begin VB.PictureBox PicPrevTiles 
      AutoRedraw      =   -1  'True
      Height          =   1035
      Left            =   2160
      ScaleHeight     =   65
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   89
      TabIndex        =   3
      Top             =   1380
      Width           =   1395
   End
   Begin VB.PictureBox PicSel 
      AutoRedraw      =   -1  'True
      Height          =   1215
      Left            =   9240
      ScaleHeight     =   77
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   69
      TabIndex        =   2
      Top             =   420
      Width           =   1095
   End
   Begin VB.PictureBox PicShadow 
      AutoRedraw      =   -1  'True
      Height          =   2475
      Left            =   3540
      ScaleHeight     =   161
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   389
      TabIndex        =   1
      Top             =   60
      Width           =   5895
   End
   Begin VB.PictureBox PicBackTileSet 
      AutoRedraw      =   -1  'True
      Height          =   1755
      Left            =   180
      ScaleHeight     =   113
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   113
      TabIndex        =   0
      Top             =   0
      Width           =   1755
   End
   Begin VB.Image Image1 
      Height          =   3375
      Left            =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   3375
   End
End
Attribute VB_Name = "FrmSprites"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


