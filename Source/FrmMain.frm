VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form FrmMain 
   BackColor       =   &H00000040&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   11145
   ClientLeft      =   45
   ClientTop       =   615
   ClientWidth     =   15270
   Icon            =   "FrmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   743
   ScaleMode       =   3  'Píxel
   ScaleWidth      =   1018
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrTimerAttack 
      Enabled         =   0   'False
      Interval        =   150
      Left            =   14760
      Top             =   9180
   End
   Begin VB.PictureBox MiPGBar 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   3120
      Picture         =   "FrmMain.frx":08CA
      ScaleHeight     =   225
      ScaleWidth      =   4440
      TabIndex        =   61
      Top             =   10620
      Visible         =   0   'False
      Width           =   4470
      Begin VB.PictureBox picBAK 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   0
         Picture         =   "FrmMain.frx":3658
         ScaleHeight     =   13
         ScaleMode       =   0  'Usuario
         ScaleWidth      =   147.5
         TabIndex        =   63
         Top             =   600
         Visible         =   0   'False
         Width           =   4425
      End
      Begin VB.PictureBox picCONSUMO 
         Appearance      =   0  'Flat
         AutoRedraw      =   -1  'True
         BackColor       =   &H80000001&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   0
         Picture         =   "FrmMain.frx":63E6
         ScaleHeight     =   13
         ScaleMode       =   0  'Usuario
         ScaleWidth      =   147.5
         TabIndex        =   62
         Top             =   420
         Visible         =   0   'False
         Width           =   4425
      End
      Begin VB.Label lblPGBarValue 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "0 %"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   5.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   120
         Left            =   2220
         TabIndex        =   64
         Top             =   0
         Visible         =   0   'False
         Width           =   210
      End
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   375
      Index           =   3
      Left            =   10080
      ScaleHeight     =   375
      ScaleWidth      =   3375
      TabIndex        =   25
      Top             =   0
      Width           =   3375
      Begin VB.Label lblToolExit 
         BackStyle       =   0  'Transparent
         Caption         =   "Salir"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Index           =   0
         Left            =   1500
         TabIndex        =   27
         Top             =   60
         Width           =   795
      End
      Begin VB.Image Image11 
         Height          =   240
         Left            =   1200
         Picture         =   "FrmMain.frx":8D98
         Top             =   60
         Width           =   240
      End
      Begin VB.Image Image9 
         Height          =   240
         Left            =   60
         Picture         =   "FrmMain.frx":9322
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolHelp 
         BackStyle       =   0  'Transparent
         Caption         =   "Ayuda"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   195
         Index           =   0
         Left            =   300
         TabIndex        =   26
         Top             =   60
         Width           =   1155
      End
      Begin VB.Label lblToolHelp 
         BackStyle       =   0  'Transparent
         Caption         =   "Ayuda"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   330
         TabIndex        =   38
         Top             =   90
         Width           =   1155
      End
      Begin VB.Label lblToolExit 
         BackStyle       =   0  'Transparent
         Caption         =   "Salir"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   1530
         TabIndex        =   39
         Top             =   90
         Width           =   795
      End
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   375
      Index           =   2
      Left            =   6720
      ScaleHeight     =   375
      ScaleWidth      =   3375
      TabIndex        =   16
      Top             =   0
      Width           =   3375
      Begin VB.Label lblToolHallFame 
         BackStyle       =   0  'Transparent
         Caption         =   "Hall"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Index           =   0
         Left            =   2820
         TabIndex        =   28
         Top             =   60
         Width           =   675
      End
      Begin VB.Image Image10 
         Height          =   240
         Left            =   2640
         Picture         =   "FrmMain.frx":98AC
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolMahjongg 
         BackStyle       =   0  'Transparent
         Caption         =   "VBMajongg..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Left            =   1440
         TabIndex        =   24
         Top             =   60
         Width           =   1155
      End
      Begin VB.Image Image8 
         Height          =   240
         Left            =   1200
         Picture         =   "FrmMain.frx":9E36
         Stretch         =   -1  'True
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolDessings 
         BackStyle       =   0  'Transparent
         Caption         =   "Diseños"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Index           =   0
         Left            =   360
         TabIndex        =   23
         Top             =   60
         Width           =   795
      End
      Begin VB.Image Image7 
         Height          =   240
         Left            =   60
         Picture         =   "FrmMain.frx":A700
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolDessings 
         BackStyle       =   0  'Transparent
         Caption         =   "Diseños"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   390
         TabIndex        =   35
         Top             =   90
         Width           =   795
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "VBMajongg..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Left            =   1470
         TabIndex        =   36
         Top             =   90
         Width           =   1155
      End
      Begin VB.Label lblToolHallFame 
         BackStyle       =   0  'Transparent
         Caption         =   "Hall"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   2850
         TabIndex        =   37
         Top             =   90
         Width           =   675
      End
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   375
      Index           =   1
      Left            =   3360
      ScaleHeight     =   375
      ScaleWidth      =   3375
      TabIndex        =   15
      Top             =   0
      Width           =   3375
      Begin VB.Label lblToolMusic 
         BackStyle       =   0  'Transparent
         Caption         =   "Musica"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Index           =   0
         Left            =   2580
         TabIndex        =   22
         Top             =   60
         Width           =   675
      End
      Begin VB.Image Image6 
         Height          =   240
         Left            =   2220
         Picture         =   "FrmMain.frx":AC8A
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolPause 
         BackStyle       =   0  'Transparent
         Caption         =   "Pausa"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Index           =   0
         Left            =   1440
         TabIndex        =   21
         Top             =   60
         Width           =   675
      End
      Begin VB.Image Image5 
         Height          =   240
         Left            =   1140
         Picture         =   "FrmMain.frx":B214
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolReorder 
         BackStyle       =   0  'Transparent
         Caption         =   "Mezcla"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   195
         Index           =   0
         Left            =   360
         TabIndex        =   20
         Top             =   60
         Width           =   675
      End
      Begin VB.Image Image4 
         Height          =   240
         Left            =   60
         Picture         =   "FrmMain.frx":B79E
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolReorder 
         BackStyle       =   0  'Transparent
         Caption         =   "Mezcla"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   390
         TabIndex        =   32
         Top             =   90
         Width           =   675
      End
      Begin VB.Label lblToolPause 
         BackStyle       =   0  'Transparent
         Caption         =   "Pausa"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   1470
         TabIndex        =   33
         Top             =   90
         Width           =   675
      End
      Begin VB.Label lblToolMusic 
         BackStyle       =   0  'Transparent
         Caption         =   "Musica"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   2610
         TabIndex        =   34
         Top             =   90
         Width           =   675
      End
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   375
      Index           =   0
      Left            =   0
      ScaleHeight     =   375
      ScaleWidth      =   3375
      TabIndex        =   14
      Top             =   0
      Width           =   3375
      Begin VB.Label lblToolHint 
         BackStyle       =   0  'Transparent
         Caption         =   "Pista"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Index           =   0
         Left            =   2400
         TabIndex        =   19
         Top             =   60
         Width           =   975
      End
      Begin VB.Image Image3 
         Height          =   240
         Left            =   2160
         Picture         =   "FrmMain.frx":BD28
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolBack 
         BackStyle       =   0  'Transparent
         Caption         =   "Atras"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Index           =   0
         Left            =   1320
         TabIndex        =   18
         Top             =   60
         Width           =   795
      End
      Begin VB.Image Image2 
         Height          =   240
         Left            =   1020
         Picture         =   "FrmMain.frx":C2B2
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolNew 
         BackStyle       =   0  'Transparent
         Caption         =   "Nuevo"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   195
         Index           =   0
         Left            =   300
         TabIndex        =   17
         Top             =   60
         Width           =   675
      End
      Begin VB.Image Image1 
         Height          =   240
         Left            =   60
         Picture         =   "FrmMain.frx":C83C
         Top             =   60
         Width           =   240
      End
      Begin VB.Label lblToolNew 
         BackStyle       =   0  'Transparent
         Caption         =   "Nuevo"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   330
         TabIndex        =   29
         Top             =   90
         Width           =   675
      End
      Begin VB.Label lblToolBack 
         BackStyle       =   0  'Transparent
         Caption         =   "Atras"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   1350
         TabIndex        =   30
         Top             =   90
         Width           =   795
      End
      Begin VB.Label lblToolHint 
         BackStyle       =   0  'Transparent
         Caption         =   "Pista"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   195
         Index           =   1
         Left            =   2430
         TabIndex        =   31
         Top             =   90
         Width           =   975
      End
   End
   Begin VB.Timer TimeZZZ 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   13980
      Top             =   0
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   13560
      Top             =   0
   End
   Begin VB.Timer TmrElapsedPlaying 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   14880
      Top             =   10020
   End
   Begin VB.Timer TmrMidi 
      Enabled         =   0   'False
      Interval        =   3000
      Left            =   14040
      Top             =   9180
   End
   Begin VB.Timer tmrDoDessing 
      Enabled         =   0   'False
      Left            =   14460
      Top             =   10020
   End
   Begin VB.Timer tmrDoPlay 
      Enabled         =   0   'False
      Left            =   14040
      Top             =   10020
   End
   Begin VB.FileListBox FileBox 
      Height          =   285
      Left            =   14040
      Pattern         =   "*.txt"
      TabIndex        =   1
      Top             =   9660
      Visible         =   0   'False
      Width           =   1155
   End
   Begin MSComDlg.CommonDialog CDialog1 
      Left            =   14760
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox PicMain 
      BorderStyle     =   0  'None
      Height          =   10155
      Left            =   0
      ScaleHeight     =   677
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   933
      TabIndex        =   0
      Top             =   390
      Width           =   13995
      Begin VB.Image imgTile 
         Height          =   1170
         Index           =   0
         Left            =   10260
         Picture         =   "FrmMain.frx":CDC6
         Top             =   0
         Visible         =   0   'False
         Width           =   960
      End
   End
   Begin VB.Timer tmrBitBlt 
      Left            =   14400
      Top             =   0
   End
   Begin VB.TextBox txtDescLayout 
      Height          =   375
      Left            =   6600
      MaxLength       =   25
      TabIndex        =   2
      Top             =   10620
      Visible         =   0   'False
      Width           =   3435
   End
   Begin VB.Label lblTimeAttackLives 
      BackStyle       =   0  'Transparent
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   9660
      TabIndex        =   66
      Top             =   10620
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label lblInfoTimeAttackLives 
      BackStyle       =   0  'Transparent
      Caption         =   "Time Attack Vidas:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   7680
      TabIndex        =   65
      Top             =   10620
      Visible         =   0   'False
      Width           =   1875
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   9
      Left            =   14520
      TabIndex        =   60
      Top             =   6360
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   9
      Left            =   14100
      TabIndex        =   59
      Top             =   6120
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   8
      Left            =   14520
      TabIndex        =   58
      Top             =   5820
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   8
      Left            =   14100
      TabIndex        =   57
      Top             =   5580
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   7
      Left            =   14520
      TabIndex        =   56
      Top             =   5280
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   7
      Left            =   14100
      TabIndex        =   55
      Top             =   5040
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   6
      Left            =   14520
      TabIndex        =   54
      Top             =   4740
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   6
      Left            =   14100
      TabIndex        =   53
      Top             =   4500
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   5
      Left            =   14520
      TabIndex        =   52
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   5
      Left            =   14100
      TabIndex        =   51
      Top             =   3960
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   4
      Left            =   14520
      TabIndex        =   50
      Top             =   3660
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   4
      Left            =   14100
      TabIndex        =   49
      Top             =   3420
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   3
      Left            =   14520
      TabIndex        =   48
      Top             =   3120
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   3
      Left            =   14100
      TabIndex        =   47
      Top             =   2880
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   2
      Left            =   14520
      TabIndex        =   46
      Top             =   2580
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   2
      Left            =   14100
      TabIndex        =   45
      Top             =   2340
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   1
      Left            =   14520
      TabIndex        =   44
      Top             =   2040
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   1
      Left            =   14100
      TabIndex        =   43
      Top             =   1800
      Width           =   1035
   End
   Begin VB.Label lblMainHFtime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Index           =   0
      Left            =   14520
      TabIndex        =   42
      Top             =   1500
      Width           =   615
   End
   Begin VB.Label lblMainHFplayer 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
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
      Index           =   0
      Left            =   14100
      TabIndex        =   41
      Top             =   1260
      Width           =   1035
   End
   Begin VB.Label lblMainFH 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "HALL OF FAME"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   555
      Left            =   14100
      TabIndex        =   40
      Top             =   480
      Width           =   1035
   End
   Begin VB.Label lblTime 
      BackStyle       =   0  'Transparent
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   4080
      TabIndex        =   13
      Top             =   10620
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Label lblInfoTime 
      BackStyle       =   0  'Transparent
      Caption         =   "Tiempo:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   3120
      TabIndex        =   12
      Top             =   10620
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblMoves 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   2700
      TabIndex        =   11
      Top             =   10620
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label lblInfoMoves 
      BackStyle       =   0  'Transparent
      Caption         =   "Movimientos:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   1440
      TabIndex        =   10
      Top             =   10620
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   3
      Visible         =   0   'False
      X1              =   -12
      X2              =   1028
      Y1              =   705
      Y2              =   705
   End
   Begin VB.Label lblDescLayout 
      BackStyle       =   0  'Transparent
      Caption         =   "Descripción:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   5340
      TabIndex        =   9
      Top             =   10620
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label lblNeededTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   4920
      TabIndex        =   8
      Top             =   10620
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label lblFreeTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   2700
      TabIndex        =   7
      Top             =   10620
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label lblCountTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   840
      TabIndex        =   6
      Top             =   10620
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label lblInfoNeededTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "Fichas Necesarias:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   3120
      TabIndex        =   5
      Top             =   10620
      Visible         =   0   'False
      Width           =   1755
   End
   Begin VB.Label lblInfoFreeTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "Fichas Vacias:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   1260
      TabIndex        =   4
      Top             =   10620
      Visible         =   0   'False
      Width           =   1395
   End
   Begin VB.Label lblInfoCountTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "Fichas:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   10620
      Visible         =   0   'False
      Width           =   795
   End
   Begin VB.Menu mnuDessingExit 
      Caption         =   "Salir"
      Visible         =   0   'False
      Begin VB.Menu mnuMDessingExit 
         Caption         =   "Guardar"
         Enabled         =   0   'False
         Index           =   0
      End
      Begin VB.Menu mnuMDessingExit 
         Caption         =   "Guardar como..."
         Index           =   1
      End
      Begin VB.Menu mnuMDessingExit 
         Caption         =   "Jugar!!!"
         Index           =   2
      End
      Begin VB.Menu mnuMDessingExit 
         Caption         =   "-"
         Index           =   3
      End
      Begin VB.Menu mnuMDessingExit 
         Caption         =   "Salir"
         Index           =   4
      End
   End
   Begin VB.Menu mnuMoveDessing 
      Caption         =   "Mueve Fondo"
      Visible         =   0   'False
      Begin VB.Menu mnuMMoveDessing 
         Caption         =   "Mueve Izquierda <"
         Index           =   0
      End
      Begin VB.Menu mnuMMoveDessing 
         Caption         =   "Mueve Derecha >"
         Index           =   1
      End
      Begin VB.Menu mnuMMoveDessing 
         Caption         =   "Mueve Arriba /\"
         Index           =   2
      End
      Begin VB.Menu mnuMMoveDessing 
         Caption         =   "Mueve Abajo \/"
         Index           =   3
      End
   End
   Begin VB.Menu mnuGame 
      Caption         =   "Juego"
      Begin VB.Menu mnuMGame 
         Caption         =   "Nuevo"
         Index           =   0
         Begin VB.Menu mnuMNewGame 
            Caption         =   "Último Juego"
            Enabled         =   0   'False
            Index           =   0
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "-"
            Index           =   1
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "Mahjongg"
            Index           =   2
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "Mahjongg Time Attack"
            Index           =   3
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "Mahjongg (2-players)"
            Enabled         =   0   'False
            Index           =   4
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "Mahjongg (Internet/Lan)"
            Enabled         =   0   'False
            Index           =   5
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "-"
            Index           =   6
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "Memory"
            Index           =   7
            Begin VB.Menu mnuMMemory 
               Caption         =   "Facil"
               Index           =   0
            End
            Begin VB.Menu mnuMMemory 
               Caption         =   "Dificil"
               Index           =   1
            End
            Begin VB.Menu mnuMMemory 
               Caption         =   "Extreme"
               Index           =   2
            End
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "-"
            Index           =   8
         End
         Begin VB.Menu mnuMNewGame 
            Caption         =   "Clicks"
            Enabled         =   0   'False
            Index           =   9
         End
      End
      Begin VB.Menu mnuMGame 
         Caption         =   "-"
         Index           =   1
      End
      Begin VB.Menu mnuMGame 
         Caption         =   "Diseños Aleatorios"
         Enabled         =   0   'False
         Index           =   2
      End
      Begin VB.Menu mnuMGame 
         Caption         =   "-"
         Index           =   3
      End
      Begin VB.Menu mnuMGame 
         Caption         =   "Carga Juego"
         Enabled         =   0   'False
         Index           =   4
      End
      Begin VB.Menu mnuMGame 
         Caption         =   "Guarda Juego"
         Enabled         =   0   'False
         Index           =   5
      End
      Begin VB.Menu mnuMGame 
         Caption         =   "-"
         Index           =   6
      End
      Begin VB.Menu mnuMGame 
         Caption         =   "Salir"
         Index           =   7
      End
   End
   Begin VB.Menu mnuView 
      Caption         =   "Ver"
      Begin VB.Menu mnuMView 
         Caption         =   "Muestra Numeros y letras en las Fichas"
         Index           =   0
      End
   End
   Begin VB.Menu mnuConfig 
      Caption         =   "Configuracion"
      Begin VB.Menu mnuMConfig 
         Caption         =   "Dificultad Mahjongg"
         Index           =   0
         Begin VB.Menu mnuLevelMahjongg 
            Caption         =   "Facil"
            Index           =   0
         End
         Begin VB.Menu mnuLevelMahjongg 
            Caption         =   "Dificil"
            Enabled         =   0   'False
            Index           =   1
         End
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "-"
         Index           =   1
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "Idioma"
         Index           =   2
         Begin VB.Menu mnuMLanguageConfig 
            Caption         =   "xxxx"
            Index           =   0
         End
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "-"
         Index           =   3
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "Formato Fecha"
         Index           =   4
         Begin VB.Menu mnuDateFormat 
            Caption         =   "DD/MM/YYYY"
            Index           =   0
         End
         Begin VB.Menu mnuDateFormat 
            Caption         =   "MM/DD/YYYY"
            Index           =   1
         End
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "-"
         Index           =   5
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "Destacar"
         Index           =   6
         Begin VB.Menu mnuHighlight 
            Caption         =   "Nada"
            Index           =   0
         End
         Begin VB.Menu mnuHighlight 
            Caption         =   "-"
            Index           =   1
         End
         Begin VB.Menu mnuHighlight 
            Caption         =   "Rectangulo Rojo"
            Index           =   2
         End
         Begin VB.Menu mnuHighlight 
            Caption         =   "Rectangulo Verde"
            Index           =   3
         End
         Begin VB.Menu mnuHighlight 
            Caption         =   "Rectangulo Azul"
            Index           =   4
         End
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "-"
         Index           =   7
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "Suena Musica Inicio"
         Index           =   8
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "Efectos Sonoros"
         Index           =   9
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "Habilitar Musica"
         Index           =   10
      End
      Begin VB.Menu mnuMConfig 
         Caption         =   "Cambio Res. Automatico"
         Index           =   11
      End
   End
   Begin VB.Menu mnuBackGround 
      Caption         =   "Fondo Escritorio"
      Begin VB.Menu mnuMBackGround 
         Caption         =   "Busqueda en diskett"
         Enabled         =   0   'False
         Index           =   0
      End
      Begin VB.Menu mnuMBackGround 
         Caption         =   "Color plano"
         Enabled         =   0   'False
         Index           =   1
      End
      Begin VB.Menu mnuMBackGround 
         Caption         =   "-"
         Index           =   2
      End
   End
   Begin VB.Menu mnuTiles 
      Caption         =   "Elige Ficha"
      Begin VB.Menu mnuMTiles 
         Caption         =   "Busqueda en diskett"
         Enabled         =   0   'False
         Index           =   0
      End
      Begin VB.Menu mnuMTiles 
         Caption         =   "Ver Fichas"
         Index           =   1
      End
      Begin VB.Menu mnuMTiles 
         Caption         =   "-"
         Index           =   2
      End
   End
   Begin VB.Menu mnuDessing 
      Caption         =   "Diseño"
      Begin VB.Menu mnuMDessing 
         Caption         =   "Seleccione Diseño"
         Index           =   0
      End
      Begin VB.Menu mnuMDessing 
         Caption         =   "Crear Nuevo Diseño"
         Index           =   1
      End
      Begin VB.Menu mnuMDessing 
         Caption         =   "Editar Diseño"
         Index           =   2
      End
      Begin VB.Menu mnuMDessing 
         Caption         =   "Favoritos"
         Enabled         =   0   'False
         Index           =   3
      End
      Begin VB.Menu mnuMDessing 
         Caption         =   "-"
         Index           =   4
      End
   End
   Begin VB.Menu mnuMusic 
      Caption         =   "Musica"
      Begin VB.Menu mnuMMusic 
         Caption         =   "Musica Aleatoria"
         Index           =   0
      End
      Begin VB.Menu mnuMMusic 
         Caption         =   "-"
         Index           =   1
      End
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "Ayuda"
   End
End
Attribute VB_Name = "FrmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#######################################################
' "Main" Form. Core of the Program.
'#######################################################
Option Explicit

Const IntervalTimers = 50 'Interval in ms of Bliting Timer
Dim yesPaint As Boolean
Dim NoMovesSkinAnime As Boolean
Dim blnLoop As Boolean


Private Sub DoShell(DataExecute As String)
On Error GoTo ErrorHandler
Dim retval
        retval = Shell(DataExecute)
        Exit Sub
ErrorHandler:
    MsgBox "Error:" & Err.Number & ":" & Err.Description, vbCritical, "Error"

End Sub

Private Sub ResetAllTimers()
    tmrDoPlay.Enabled = False
    tmrDoDessing.Enabled = False
    TmrElapsedPlaying.Enabled = False
    TimeZZZ.Enabled = False
    tmrTimerAttack.Enabled = False
End Sub

Private Sub Form_Load()
    Dim Ret As Long
    
    Unload frmInitialize
    Unload frmChangeVideo
    
    DisableClose Me.hwnd

    If App.LogMode <> 1 Then
        ApplicationOnIde = True
    Else
        ApplicationOnIde = False
    End If
    
    ReadConfig
    InitializeValuesDessing
    OSInfo.dwOSVersionInfoSize = Len(OSInfo)
    'Get the Windows version
    Ret = GetVersionEx(OSInfo)
    WinVersion = Str$(OSInfo.dwMajorVersion) + "." + LTrim(Str(OSInfo.dwMinorVersion))

End Sub

Private Sub ReadConfig()
Dim aux As Long
    
    InitParams          'Read and initialize params
    
    AddMnuLanguages
    
    AddMnuBackGround
    
    AddMnuMusic
    
    AddMnuTileset
    
    Picture1(0).Picture = LoadPicture(App.Path & "\Skins\Wood.jpg")
    Picture1(1).Picture = LoadPicture(App.Path & "\Skins\Wood.jpg")
    Picture1(2).Picture = LoadPicture(App.Path & "\Skins\Wood.jpg")
    Picture1(3).Picture = LoadPicture(App.Path & "\Skins\Wood.jpg")
    
    
    FrmSprites.PicNumbers.Picture = LoadPicture(App.Path & "\MiscGFX\Numbers.gif")
    FrmSprites.PicTileSet.Picture = LoadPicture(App.Path & "\Tilesets\" & Params.TileSet & ".jpg")
    FrmSprites.PicPause.Picture = LoadPicture(App.Path & "\MiscGFX\Pause.gif")
    
    FrmSprites.PicBackTileSet.Picture = LoadPicture(App.Path & "\MiscGFX\Backface1.gif")
    FrmSprites.PicShadow.Picture = LoadPicture(App.Path & "\MiscGFX\Shadow1.gif")
    FrmSprites.PicPrevTiles.Picture = LoadPicture(App.Path & "\MiscGFX\BackfaceP1.gif")
    FrmSprites.PicAnime1.Picture = LoadPicture(App.Path & "\MiscGFX\PicAnime1.gif")
    FrmSprites.PicAnimeZZZ(0).Picture = LoadPicture(App.Path & "\MiscGFX\PicAnime2.gif")
    FrmSprites.PicAnimeZZZ(1).Picture = LoadPicture(App.Path & "\MiscGFX\PicAnime3.gif")
    
    mnuMView(0).Checked = Params.DisplayTextOnTiles

    If Params.MahjonggLevelDifficult = 0 Then
        mnuLevelMahjongg(0).Checked = True
        mnuLevelMahjongg(1).Checked = False
    Else
        mnuLevelMahjongg(0).Checked = False
        mnuLevelMahjongg(1).Checked = True
    End If
    
    If Params.DateFormat = "DD/MM/YYYY" Then
        mnuDateFormat(0).Checked = True
    Else
        mnuDateFormat(1).Checked = True
    End If
    
    mnuHighlight(Params.Highlight).Checked = True
    If Params.Highlight <> 0 Then
        Select Case Params.Highlight
            Case 2  'Highlight Red
                FrmSprites.PicSel.Picture = LoadPicture(App.Path & "\MiscGFX\RedHlight.gif")
            Case 3  'Highlight Green
                FrmSprites.PicSel.Picture = LoadPicture(App.Path & "\MiscGFX\GreenHlight.gif")
            Case 4  'Highlight Blue
                FrmSprites.PicSel.Picture = LoadPicture(App.Path & "\MiscGFX\BlueHlight.gif")
        End Select
    
    End If
    
    mnuMConfig(8).Checked = Params.StartUpMusicOn
    mnuMConfig(9).Checked = Params.EnableFX
    mnuMConfig(10).Checked = Params.EnableMusic
    mnuMConfig(11).Checked = Params.ChangeAutoVideo
    
    ChangeLanguage Me, Params.Language
    
    Me.Caption = "vbMahjonggFX v" & App.Major & "." & App.Minor
    
    InitMenus Me, FrmSprites.Image1
    
    aux = CanPlaySound
    If aux = AUDIO_NONE Then
        CanPlayMidi = False
        CanPlayWave = False
    End If

    If aux = AUDIO_WAVE Then
        CanPlayMidi = True
        CanPlayWave = False
    End If

    If aux = AUDIO_MIDI Then
        CanPlayMidi = False
        CanPlayWave = True
        If Params.StartUpMusicOn = True Then
            StartSoundEngine
        End If
    End If

    If aux = AUDIO_BOTH Then
        CanPlayMidi = True
        CanPlayWave = True
        If Params.StartUpMusicOn = True Then
            StartSoundEngine
        End If
    End If

    Timer1.Enabled = True

End Sub

'Add MIDI files form \MUSIC folder to Music menu
Private Sub AddMnuMusic()
Dim I As Integer
Dim sName As String
Dim Counter As Integer
    FileBox.Pattern = "*.mid"
    FileBox.Path = App.Path & "\Musics"
    Counter = 0
    For I = 0 To FileBox.ListCount - 1
        'Debug.Print "X" & File1.List(i)
        sName = Mid(FileBox.List(I), 1, Len(FileBox.List(I)) - 4)
        
            'Debug.Print sName
            Load mnuMMusic(Counter + 2)
            mnuMMusic(Counter + 2).Caption = sName
            mnuMMusic(Counter + 2).Enabled = True
            If Params.RandomMusic = True Then
                mnuMMusic(0).Checked = True
                mnuMMusic(Counter + 2).Checked = False
            Else
                If sName = Params.MusicFile Then
                    mnuMMusic(Counter + 2).Checked = True
                End If
            End If
            Counter = Counter + 1
        
    Next I
End Sub

'Add TileSet form \TILESETS Folder to TileSets Menu
Private Sub AddMnuTileset()
Dim I       As Integer
Dim sName   As String
Dim Counter As Integer
    
    FileBox.Pattern = "*.jpg"
    FileBox.Path = App.Path & "\Tilesets"
    Counter = 0
    For I = 0 To FileBox.ListCount - 1
        'Debug.Print "X" & File1.List(i)
        sName = Mid(FileBox.List(I), 1, Len(FileBox.List(I)) - 4)
        
            'Debug.Print sName
            Load mnuMTiles(Counter + 3)
            mnuMTiles(Counter + 3).Caption = sName
            mnuMTiles(Counter + 3).Enabled = True
            If sName = Params.TileSet Then
                mnuMTiles(Counter + 3).Checked = True
            End If
            Counter = Counter + 1
    Next I
End Sub

'Add BackGround Pictures from \BACKGROUND Folder to Background Menu
Private Sub AddMnuBackGround()
Dim I       As Integer
Dim sName   As String
Dim Counter As Integer
    
    FileBox.Pattern = "*.jpg"
    FileBox.Path = App.Path & "\Backgrounds"
    Counter = 0
    For I = 0 To FileBox.ListCount - 1
        'Debug.Print "X" & File1.List(i)
        sName = Mid(FileBox.List(I), 1, Len(FileBox.List(I)) - 4)
        If Mid(sName, 1, 4) <> "PREV" Then
            'Debug.Print sName
            Load mnuMBackGround(Counter + 3)
            mnuMBackGround(Counter + 3).Caption = sName
            mnuMBackGround(Counter + 3).Enabled = True
            If sName = Params.BackGround Then
                mnuMBackGround(Counter + 3).Checked = True
            End If
            Counter = Counter + 1
        End If
    Next I
    
    FrmClean.PicClean.Picture = LoadPicture(App.Path & "\BackGrounds\" & Params.BackGround & ".jpg")
    PicMain.Picture = LoadPicture(App.Path & "\BackGrounds\" & Params.BackGround & ".jpg")
End Sub

'Add Language Files from \LANGUAGE Folder to Language Menu
Private Sub AddMnuLanguages()
Dim I As Integer
Dim sName As String

    FileBox.Pattern = "*.txt"
    FileBox.Path = App.Path & "\Languages"
    For I = 0 To FileBox.ListCount - 1
        'Debug.Print "X" & File1.List(i)
        sName = Mid(FileBox.List(I), 1, Len(FileBox.List(I)) - 4)
        'Debug.Print sName
        Load mnuMLanguageConfig(I + 1)
        mnuMLanguageConfig(I + 1).Caption = sName
        If sName = Params.Language Then
            mnuMLanguageConfig(I + 1).Checked = True
        End If
    Next I
    mnuMLanguageConfig(0).Visible = False
End Sub


Private Sub Form_Paint()
    
    SkinDebugInfo Me, FrmSprites.PicSkin
    SkinHallFame Me, FrmSprites.PicSkin
    'Debug.Print Time
    If NoMovesSkinAnime = True Then
        NoMovesSkinAnime = False
        SkinAnime Me, FrmSprites.PicSkin
        DrawAnime 1
    End If
End Sub


Private Sub Form_Unload(Cancel As Integer)
    If Val(WinVersion) >= "5,1" Then
        DoShell "taskkill /f /im " & App.EXEName & ".exe"
    End If
End Sub

'In this sub check for "correct" pairs of tiles, and remove them from puzzle
Private Sub imgTile_Click(Index As Integer)
Dim SecondClickSpriteFamily As String
Dim SecondClickSpriteIndex  As Integer

TimeZZZ.Enabled = False
TimeZZZ.Enabled = True
SkinAnime Me, FrmSprites.PicSkin
DrawAnime 1
zzzAnim = 0
HinstVisibles = False
Dim retval As Long
    
    Select Case GameMode
        '######################### Mahjongg
        Case eGameModes.PlayMahjonng
            If IsFreeTile(xImgTile, yImgTile, zImgTile, DessingArray) = True Then
                If TFirstClick = False Then 'First Tile Clicked YES
                    TFirstClick = True
                    With FirstTileClick
                        .posX = xImgTile
                        .PosY = yImgTile
                        .posZ = zImgTile
                        .spriteFamily = Mid(SpriteInformation(.posX, .PosY, .posZ), 1, 1)
                        .spriteIndex = Mid(SpriteInformation(.posX, .PosY, .posZ), 2, 1)
                        .ImageControlIndex = Index
                    End With
                    
                    If CanPlayWave = True And Params.EnableFX = True Then
                        retval = PlaySound(App.Path & "\select.wav", 0, SND_FILENAME Or SND_ASYNC)
                    End If
                Else    'Second Tile Clicked? YES
                    
                    'The same as First?
                    If xImgTile = FirstTileClick.posX And _
                        yImgTile = FirstTileClick.PosY And _
                        zImgTile = FirstTileClick.posZ Then
                        TFirstClick = False
                        If CanPlayWave = True And Params.EnableFX = True Then
                            retval = PlaySound(App.Path & "\select.wav", 0, SND_FILENAME Or SND_ASYNC)
                        End If
                    Else 'Not the same
                        SecondClickSpriteFamily = Mid(SpriteInformation(xImgTile, yImgTile, zImgTile), 1, 1)
                        SecondClickSpriteIndex = Mid(SpriteInformation(xImgTile, yImgTile, zImgTile), 2, 1)
                        
                        'Same "Family"?
                        If SecondClickSpriteFamily <> FirstTileClick.spriteFamily Then
                            TFirstClick = False
                            If CanPlayWave = True And Params.EnableFX = True Then
                                retval = PlaySound(App.Path & "\NoFree.wav", 0, SND_FILENAME Or SND_ASYNC)
                            End If
        
                        Else  'YES, The same Family. Check for "erase"
                            If SecondClickSpriteFamily = "S" Or SecondClickSpriteFamily = "F" Then
                                DessingArray(xImgTile, yImgTile, zImgTile) = 0
                                DessingArray(FirstTileClick.posX, FirstTileClick.PosY, FirstTileClick.posZ) = 0
                                imgTile(FirstTileClick.ImageControlIndex).Visible = False
                                imgTile(Index).Visible = False
                                TFirstClick = False
                                CounterTiles = CounterTiles - 2
                                
                                If CanPlayWave = True And Params.EnableFX = True Then
                                    retval = PlaySound(App.Path & "\Remove.wav", 0, SND_FILENAME Or SND_ASYNC)
                                End If
        
                                stSeconds = 0
                                
                                ReDim Preserve UndoArray(UBound(UndoArray) + 1)
                                UndoArray(UBound(UndoArray)).FirstX = FirstTileClick.posX
                                UndoArray(UBound(UndoArray)).FirstY = FirstTileClick.PosY
                                UndoArray(UBound(UndoArray)).FirstZ = FirstTileClick.posZ
                                UndoArray(UBound(UndoArray)).FirstControlIndex = FirstTileClick.ImageControlIndex
                                UndoArray(UBound(UndoArray)).sprInfoFirst = FirstTileClick.spriteFamily & FirstTileClick.spriteIndex
                            
                                UndoArray(UBound(UndoArray)).SecondX = xImgTile
                                UndoArray(UBound(UndoArray)).SecondY = yImgTile
                                UndoArray(UBound(UndoArray)).SecondZ = zImgTile
                                UndoArray(UBound(UndoArray)).SecondControlIndex = Index
                                UndoArray(UBound(UndoArray)).sprInfoSecond = SecondClickSpriteFamily & SecondClickSpriteIndex
                            
                            Else
                                'The same "Index" ?
                                If SecondClickSpriteIndex <> FirstTileClick.spriteIndex Then
                                    TFirstClick = False
                                    If CanPlayWave = True And Params.EnableFX = True Then
                                        retval = PlaySound(App.Path & "\NoFree.wav", 0, SND_FILENAME Or SND_ASYNC)
                                    End If
                                Else 'YES, The Same Index
                                    DessingArray(xImgTile, yImgTile, zImgTile) = 0
                                    DessingArray(FirstTileClick.posX, FirstTileClick.PosY, FirstTileClick.posZ) = 0
                                    imgTile(FirstTileClick.ImageControlIndex).Visible = False
                                    imgTile(Index).Visible = False
                                    
                                    TFirstClick = False
                                    CounterTiles = CounterTiles - 2
                                    If CanPlayWave = True And Params.EnableFX = True Then
                                        retval = PlaySound(App.Path & "\Remove.wav", 0, SND_FILENAME Or SND_ASYNC)
                                    End If
                                    stSeconds = 0
                                    ReDim Preserve UndoArray(UBound(UndoArray) + 1)
                                    UndoArray(UBound(UndoArray)).FirstX = FirstTileClick.posX
                                    UndoArray(UBound(UndoArray)).FirstY = FirstTileClick.PosY
                                    UndoArray(UBound(UndoArray)).FirstZ = FirstTileClick.posZ
                                    UndoArray(UBound(UndoArray)).FirstControlIndex = FirstTileClick.ImageControlIndex
                                    UndoArray(UBound(UndoArray)).sprInfoFirst = FirstTileClick.spriteFamily & FirstTileClick.spriteIndex
                            
                                    UndoArray(UBound(UndoArray)).SecondX = xImgTile
                                    UndoArray(UBound(UndoArray)).SecondY = yImgTile
                                    UndoArray(UBound(UndoArray)).SecondZ = zImgTile
                                    UndoArray(UBound(UndoArray)).SecondControlIndex = Index
                                    UndoArray(UBound(UndoArray)).sprInfoSecond = SecondClickSpriteFamily & SecondClickSpriteIndex
                                
                                
                                End If
                                
                            End If
                        
                        End If
                        
                    End If
                End If
            Else
                TFirstClick = False
                If CanPlayWave = True And Params.EnableFX = True Then
                    retval = PlaySound(App.Path & "\NoFree.wav", 0, SND_FILENAME Or SND_ASYNC)
                End If
            
            End If
        
        '######################### Memory
        Case eGameModes.PlayMemory
            If MemoryTile(1).Active = False Then
                MemoryTile(1).Active = True
                MemoryTile(1).X = xImgTile
                MemoryTile(1).Y = yImgTile
                MemoryTile(1).Z = zImgTile
                MemoryTile(1).SprInfo = SpriteInformation(xImgTile, yImgTile, zImgTile)
                MemoryTile(1).ControlIndex = Index
            Else
                If MemoryTile(1).X = xImgTile And MemoryTile(1).Y = yImgTile Then
                    MemoryTile(1).Active = False
                    Exit Sub
                End If
                If MemoryTile(2).Active = False Then
                    MemoryTile(2).Active = True
                    MemoryTile(2).X = xImgTile
                    MemoryTile(2).Y = yImgTile
                    MemoryTile(2).Z = zImgTile
                    MemoryTile(2).SprInfo = SpriteInformation(xImgTile, yImgTile, zImgTile)
                    MemoryTile(2).ControlIndex = Index
                    
                    If MemoryTile(1).SprInfo = MemoryTile(2).SprInfo Then
                        DessingArray(MemoryTile(1).X, MemoryTile(1).Y, MemoryTile(1).Z) = 0
                        DessingArray(MemoryTile(2).X, MemoryTile(2).Y, MemoryTile(2).Z) = 0
                        imgTile(MemoryTile(1).ControlIndex).Visible = False
                        imgTile(Index).Visible = False
                        CounterTiles = CounterTiles - 2
                        If CanPlayWave = True And Params.EnableFX = True Then
                            retval = PlaySound(App.Path & "\Remove.wav", 0, SND_FILENAME Or SND_ASYNC)
                        End If
                        MemoryTile(1).Active = False
                        MemoryTile(2).Active = False
                    Else
                        MemoryTile(2).Active = False
                        MemoryTile(1).Active = True
                        MemoryTile(1).X = xImgTile
                        MemoryTile(1).Y = yImgTile
                        MemoryTile(1).Z = zImgTile
                        MemoryTile(1).SprInfo = SpriteInformation(xImgTile, yImgTile, zImgTile)
                        MemoryTile(1).ControlIndex = Index
                    End If
                End If
            
            End If
            
    End Select
End Sub

Private Sub imgTile_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim I As Integer

    overImgTile = True
    xImgTile = Mid(imgTile(Index).Tag, 2, 2)
    yImgTile = Mid(imgTile(Index).Tag, 5, 2)
    zImgTile = Mid(imgTile(Index).Tag, 8, 1)

End Sub


'Make "Undo" Move
Private Sub lblToolBack_Click(Index As Integer)
Dim I As Integer
'First Tile
Dim FTx As Integer
Dim FTy As Integer
Dim FTz As Integer
Dim FTimgControl As Integer
Dim FTspr As String

'Second Tile
Dim STx As Integer
Dim STy As Integer
Dim STz As Integer
Dim STimgControl As Integer
Dim STspr As String

    If GameMode <> PlayMahjonng Then
        Exit Sub
    End If
    
    If tmrDoPlay.Enabled = True And UBound(UndoArray) > 0 Then
        For I = UBound(UndoArray) To 1 Step -1
            
            If UndoArray(I).FirstX <> -1 Then
                FTx = UndoArray(I).FirstX
                FTy = UndoArray(I).FirstY
                FTz = UndoArray(I).FirstZ
                FTimgControl = UndoArray(I).FirstControlIndex
                FTspr = UndoArray(I).sprInfoFirst
                
                STx = UndoArray(I).SecondX
                STy = UndoArray(I).SecondY
                STz = UndoArray(I).SecondZ
                STimgControl = UndoArray(I).SecondControlIndex
                STspr = UndoArray(I).sprInfoSecond
                
                SpriteInformation(FTx, FTy, FTz) = FTspr
                SpriteInformation(STx, STy, STz) = STspr
                
                imgTile(FTimgControl).Visible = True
                imgTile(STimgControl).Visible = True
                
                DessingArray(FTx, FTy, FTz) = 1
                DessingArray(STx, STy, STz) = 1
                
                UndoArray(I).FirstX = -1
                NoMovesShow = False
                CounterTiles = CounterTiles + 2
                Exit For
            End If
        Next I
    End If
End Sub

Private Sub lblToolDessings_Click(Index As Integer)
    mnuMDessing_Click 0
End Sub

Private Sub lblToolExit_Click(Index As Integer)
    mnuMGame_Click 7
End Sub

Private Sub lblToolHallFame_Click(Index As Integer)
    EditHallFame = False
    frmHallFame.Show vbModal
End Sub

'Display Hint
Private Sub lblToolHint_Click(Index As Integer)
    If GameMode = PlayMahjonng Then
        
        DisplayHint
        
        If MahjonggPlayEspecial = TimeAttack Then
            stSeconds = stSeconds + 30
        End If
    End If
End Sub

Private Sub lblToolMahjongg_Click()
    frmAbout.Show vbModal
End Sub

Private Sub lblToolMusic_Click(Index As Integer)
Static DoOrPlay As Integer
    If DoOrPlay = 0 Then
        If CanPlayMidi = True Then
            StopMidi
        End If
        DoOrPlay = 1
    Else
        DoOrPlay = 0
        If CanPlayMidi = True Then
            StartSoundEngine
        End If
    End If
End Sub

Private Sub LblToolNew_Click(Index As Integer)
    mnuMNewGame_Click 2
End Sub
Private Sub doPauseEfect()
' Credits for This routine are for:

'Code by Kailash Nadh , India
'kailash@bnsoft.net , http://bnsoft.net



Dim z1 As Integer
Dim z2 As Integer
Dim k1 As Integer
Dim k2 As Integer
Dim m1 As Integer
Dim m2 As Integer
Dim intX As Integer, intY As Integer
Dim intI As Integer, intJ As Integer
z1 = 1: z2 = 1: k1 = 128: k2 = 128
m1 = 20: m2 = 20
Randomize
Call BitBlt(FrmWork.PicWork.hdc, 0, 0, XPicMain, YPicMain, PicMain.hdc, 0, 0, vbSrcCopy)

Do While blnLoop = True
intX = (PicMain.ScaleWidth - 128) * Rnd
intY = (PicMain.ScaleHeight - 128) * Rnd
intI = m1 * Rnd - z1 ' The changes in values of m1 & m2 decides the effect
intJ = m2 * Rnd - z2
'Call BitBlt(PicMain.hdc, intX + intI, intY + intJ, k1, k2, PicMain.hdc, intX, intY, vbSrcCopy)
Call BitBlt(FrmWork.PicWork.hdc, intX + intI, intY + intJ, k1, k2, FrmWork.PicWork.hdc, intX, intY, vbSrcCopy)

 'BitBlt PicMain.hdc, 40, 40, 360, 52, FrmSprites.PicPause.hdc, 0, 53, SRCAND
 'BitBlt PicMain.hdc, 40, 40, 360, 52, FrmSprites.PicPause.hdc, 0, 0, SRCCOPY 'SRCPAINT
  BitBlt FrmWork.PicWork.hdc, 40, 40, 360, 52, FrmSprites.PicPause.hdc, 0, 53, SRCAND 'SRCPAINT
 BitBlt FrmWork.PicWork.hdc, 40, 40, 360, 52, FrmSprites.PicPause.hdc, 0, 0, SRCPAINT 'SRCPAINT
 'Sleep 5
 BlitMain
 
 DoEvents
Loop

End Sub
Private Sub lblToolPause_Click(Index As Integer)
Static sMode As eGameModes
    sMode = GameMode
    ResetAllTimers
    If sMode = PlayMahjonng Or sMode = PlayMemory And tmrDoPlay.Enabled = True Then
        If blnLoop = False Then
            blnLoop = True
            doPauseEfect
        Else
            blnLoop = False
            Select Case sMode
                Case eGameModes.PlayMahjonng
                    TimeZZZ.Enabled = True
                    TmrElapsedPlaying.Enabled = True
                    tmrDoPlay.Interval = IntervalTimers
                    tmrDoPlay.Enabled = True
                    
                    If MahjonggPlayEspecial = TimeAttack Then
                        tmrTimerAttack.Enabled = True
                    End If
                Case eGameModes.PlayMemory
                    TimeZZZ.Enabled = True
                    TmrElapsedPlaying.Enabled = True
                    tmrDoPlay.Interval = IntervalTimers
                    tmrDoPlay.Enabled = True
            End Select
        End If
    End If
End Sub

Private Sub mnuDateFormat_Click(Index As Integer)
    mnuDateFormat(0).Checked = False
    mnuDateFormat(1).Checked = False
    mnuDateFormat(Index).Checked = True
    Params.DateFormat = mnuDateFormat(Index).Caption
    SaveParams
End Sub

Private Sub mnuHighlight_Click(Index As Integer)
    Dim I As Integer
    
    For I = 0 To mnuHighlight.Count - 1
        If mnuHighlight(I).Checked = True Then
            mnuHighlight(I).Checked = False
            Exit For
        End If
    Next I
    mnuHighlight(Index).Checked = True
    Params.Highlight = Index
    SaveParams
    If Params.Highlight <> 0 Then
        Select Case Params.Highlight
            Case 2  'Highlight Red
                FrmSprites.PicSel.Picture = LoadPicture(App.Path & "\MiscGFX\RedHlight.gif")
            Case 3  'Highlight Green
                FrmSprites.PicSel.Picture = LoadPicture(App.Path & "\MiscGFX\GreenHlight.gif")
            Case 4  'Highlight Blue
                FrmSprites.PicSel.Picture = LoadPicture(App.Path & "\MiscGFX\BlueHlight.gif")
        End Select
    End If
End Sub

Private Sub mnuLevelMahjongg_Click(Index As Integer)
    If Index = 0 Then
        mnuLevelMahjongg(0).Checked = True
        mnuLevelMahjongg(1).Checked = False
        Params.MahjonggLevelDifficult = 0
    Else
        mnuLevelMahjongg(0).Checked = False
        mnuLevelMahjongg(1).Checked = True
        Params.MahjonggLevelDifficult = 1
    End If
    SaveParams
End Sub

Private Sub mnuMBackGround_Click(Index As Integer)
Dim I As Integer
    If Index < 2 Then
    Else
    For I = 0 To mnuMBackGround.Count - 1
        If mnuMBackGround(I).Checked = True Then mnuMBackGround(I).Checked = False
    Next I
    mnuMBackGround(Index).Checked = True
    FrmClean.PicClean.Picture = LoadPicture(App.Path & "\BackGrounds\" & mnuMBackGround(Index).Caption & ".jpg")
    PicMain.Picture = LoadPicture(App.Path & "\BackGrounds\" & mnuMBackGround(Index).Caption & ".jpg")
    Params.BackGround = mnuMBackGround(Index).Caption
    SaveParams
    End If
End Sub


Private Sub mnuMConfig_Click(Index As Integer)
    Select Case Index
        Case 8  'StartUpMusicOn
            Params.StartUpMusicOn = Not Params.StartUpMusicOn
            mnuMConfig(Index).Checked = Params.StartUpMusicOn
        Case 9  'Enable FX
            Params.EnableFX = Not Params.EnableFX
            mnuMConfig(Index).Checked = Params.EnableFX
        Case 10 'Enable Music
            Params.EnableMusic = Not Params.EnableMusic
            mnuMConfig(Index).Checked = Params.EnableMusic
            If Params.EnableMusic = False Then
                If CanPlayMidi = True Then
                    StopMidi
                End If
            Else
                If CanPlayMidi = True Then
                    StartSoundEngine
                End If
            End If
        Case 11 'Auto Change resolution
            Params.ChangeAutoVideo = Not Params.ChangeAutoVideo
            mnuMConfig(Index).Checked = Params.ChangeAutoVideo
    End Select
    SaveParams
End Sub

Private Sub mnuMDessing_Click(Index As Integer)
Dim X As Integer
Dim BackStatus As String
    blnLoop = False
    Select Case Index
        Case 0 ' select dessing
            BackStatus = ""
            If tmrDoDessing.Enabled = True Then
                BackStatus = "Dessing"
            End If
            If tmrDoPlay.Enabled = True Then
                BackStatus = "Playing"
            End If
            
            ResetAllTimers
            frmLoadLays.Show vbModal
        Case 1 ' Create New Dessing
            Params.MahjonggPreviusLayout = Params.MahjonggLayout
            Params.MahjonggLayout = "Temporary.lay"
            InitializeValuesDessing
            If FrmMain.imgTile.Count > 1 Then
                For X = 1 To FrmMain.imgTile.Count - 1
                    Unload FrmMain.imgTile(X)
                Next X
            End If
            lRetFrmPrev = PrevNew
            Params.MahjonggLayoutDescription = "New Dessing"
            txtDescLayout.Text = Params.MahjonggLayoutDescription
            txtDescLayout.Visible = True
        Case 2 ' Edit current dessing
            lRetFrmPrev = PrevEdit 'PrevNew
            'txtDescLayout.Text = Params.MahjonggLayoutDescription
    End Select

    Select Case lRetFrmPrev
    

        Case eRetFrmPrev.PrevPlay
            
            If MakePuzzle = False Then
                ShowErrorDessing
                Exit Sub
            End If
            CreateTileControls
            
            GameMode = PlayMahjonng
            
            ResetAllTimers
            TimeZZZ.Enabled = True
            TmrElapsedPlaying.Enabled = True
            tmrDoPlay.Interval = IntervalTimers
            tmrDoPlay.Enabled = True
            Exit Sub
        Case eRetFrmPrev.PrevEdit, eRetFrmPrev.PrevNew
            If txtDescLayout.Visible = False Then
                txtDescLayout.Text = Params.MahjonggLayoutDescription '"New Dessing"
                LoadDataFromFile Params.MahjonggLayout
                txtDescLayout.Visible = True
            End If
            If FrmMain.imgTile.Count > 1 Then
                For X = 1 To FrmMain.imgTile.Count - 1
                    Unload FrmMain.imgTile(X)
                Next X
            End If
            mnuDessingExit.Visible = True
            If lRetFrmPrev = PrevEdit Then
                If Params.MahjonggLayout <> "Temporary.lay" Then
                    mnuMDessingExit(0).Enabled = True
                End If
            Else
                mnuMDessingExit(0).Enabled = False
            End If
            mnuMoveDessing.Visible = True
            mnuGame.Visible = False
            mnuView.Visible = False
            mnuConfig.Visible = False
            mnuBackGround.Visible = False
            mnuTiles.Visible = False
            mnuDessing.Visible = False
            mnuMusic.Visible = False
            mnuHelp.Visible = False
            
            viewStatusGameInfo False
            
            MiPGBar.Visible = False
            lblInfoTimeAttackLives.Visible = False
            lblTimeAttackLives.Visible = False
            
            GameMode = DessigMahjonng
            
            ResetAllTimers
            DoReset = True
            
            InitMenus Me, FrmSprites.Image1
            DoReset = False
            
            tmrDoDessing.Interval = IntervalTimers
            tmrDoDessing.Enabled = True
            Exit Sub
        Case eRetFrmPrev.PrevCancel
            If BackStatus = "Dessing" Then
                tmrDoDessing.Enabled = True
            End If
            
            If BackStatus = "Playing" Then
                TimeZZZ.Enabled = True
                TmrElapsedPlaying.Enabled = True
                tmrDoPlay.Enabled = True
                If MahjonggPlayEspecial = TimeAttack Then
                    tmrTimerAttack.Enabled = True
                End If
            End If
    End Select
End Sub

Private Sub VisibleDessingInfo(FlagVisible As Boolean)
    
    txtDescLayout.Visible = FlagVisible
    lblInfoCountTiles.Visible = FlagVisible
    lblCountTiles.Visible = FlagVisible
    lblInfoFreeTiles.Visible = FlagVisible
    lblFreeTiles.Visible = FlagVisible
    lblInfoNeededTiles.Visible = FlagVisible
    lblNeededTiles.Visible = FlagVisible
    lblDescLayout.Visible = FlagVisible

End Sub

Private Sub ActObjects()
Dim X As Integer
    VisibleDessingInfo False
    viewStatusGameInfo True
    
    mnuDessingExit.Visible = False
    mnuMoveDessing.Visible = False
    mnuGame.Visible = True
    mnuView.Visible = True
    mnuConfig.Visible = True
    mnuBackGround.Visible = True
    mnuTiles.Visible = True
    mnuDessing.Visible = True
    mnuMusic.Visible = True
    mnuHelp.Visible = True
    If FrmMain.imgTile.Count > 1 Then
        For X = 1 To FrmMain.imgTile.Count - 1
            Unload FrmMain.imgTile(X)
        Next X
    End If
    DoReset = True
    InitMenus Me, FrmSprites.Image1
    DoReset = False
End Sub
Private Sub mnuMDessingExit_Click(Index As Integer)
On Error Resume Next
Dim nFile As String
    
    If Index <> 4 Then  'exit
        If IsCorrectDessing(NeededTiles) = False Or MakePuzzle = False Then
            ShowErrorDessing
            Exit Sub
        End If
    End If
    nFile = ""
    Select Case Index
        Case 0 'Save

            If Trim(txtDescLayout.Text) = "" Then
                MsgBox InfosIDIOM(9), vbExclamation, InfosIDIOM(7)
                txtDescLayout.SetFocus
                Exit Sub
            End If

            SaveLayout App.Path & "\Layouts\" & Params.MahjonggLayout, Trim(txtDescLayout.Text)
            Params.MahjonggLayoutDescription = Trim(txtDescLayout.Text)
            SaveParams
            
            ActObjects

            CreateTileControls
            GameMode = PlayMahjonng
            
            ResetAllTimers
            TimeZZZ.Enabled = True
            TmrElapsedPlaying.Enabled = True
            tmrDoPlay.Interval = IntervalTimers
            tmrDoPlay.Enabled = True
            Exit Sub
                
        Case 1  'Save as...
        

            If Trim(txtDescLayout.Text) = "" Then
                MsgBox InfosIDIOM(9), vbExclamation, InfosIDIOM(7)
                txtDescLayout.SetFocus
                Exit Sub
            End If
            CDialog1.DialogTitle = InfosIDIOM(8)
            CDialog1.InitDir = App.Path & "\Layouts"
            CDialog1.Filter = "Dessing Layout (*.lay)|*.lay"
            CDialog1.CancelError = True
            CDialog1.ShowSave
            nFile = CDialog1.filename
            If nFile = "" Then
                'ActObjects
                'MakePuzzle
                'CreateTileControls
                'GameMode = PlayMahjonng
                'ResetAllTimers
                'tmrDoPlay.Interval = IntervalTimers
                'tmrDoPlay.Enabled = True
                'DrawTilesPlayMahjonng
                'Exit Sub
            Else
                If FileExists(nFile) Then
                    If MsgBox(InfosIDIOM(1) & " " & nFile & " " & InfosIDIOM(2) & vbCrLf & InfosIDIOM(3), vbQuestion + vbYesNo, InfosIDIOM(7)) = vbNo Then
                        Exit Sub
                    End If
                    Kill nFile
                End If
                SaveLayout nFile, Trim(txtDescLayout.Text)
                ActObjects
                CreateTileControls
                'MakePuzzle
                GameMode = PlayMahjonng
                ResetAllTimers
                TimeZZZ.Enabled = True
                TmrElapsedPlaying.Enabled = True
                tmrDoPlay.Interval = IntervalTimers
                tmrDoPlay.Enabled = True
                'DrawTilesPlayMahjonng
                Exit Sub
            
            End If
        Case 2 'Play

                If Params.MahjonggLayout = "Temporary.lay" Then
                    MsgBox InfosIDIOM(10), vbInformation, InfosIDIOM(7)
                    If Trim(txtDescLayout.Text) = "" Then
                        Params.MahjonggLayoutDescription = "New Dessing"
                    Else
                        Params.MahjonggLayoutDescription = Trim(txtDescLayout.Text)
                    End If
                    SaveLayout App.Path & "\Layouts\" & Params.MahjonggLayout, Params.MahjonggLayoutDescription
                    
                    
                    SaveParams
                    
                End If
                ActObjects
                'MakePuzzle
                CreateTileControls
                GameMode = PlayMahjonng
                ResetAllTimers
                TimeZZZ.Enabled = True
                TmrElapsedPlaying.Enabled = True
                tmrDoPlay.Interval = IntervalTimers
                tmrDoPlay.Enabled = True
                'DrawTilesPlayMahjonng
                Exit Sub
        Case 4 'exit
            ActObjects
            ResetAllTimers
            Params.MahjonggLayout = Params.MahjonggPreviusLayout
    End Select
End Sub

Private Sub mnuMGame_Click(Index As Integer)
    Select Case Index
    
        Case 7  'Exit Application
            GameMode = ExitMode
            ResetAllTimers
            TmrMidi.Enabled = False
            If CanPlayMidi = True Then
                StopMidi
            End If
    
            If ResolutionHasBeenChanged = True Then
                ChangeScreenResolution OriginalScreenWidth, OriginalScreenHeight, OriginalBPP, OriginalREFRESH
                ShowTaskbar
            End If
            If ApplicationOnIde = False Then
                stopODMenus Me
            End If
            If Val(WinVersion) >= "5,1" Then
                DoShell "taskkill /f /im mahjonggV2.exe"
            End If
            End
    End Select
End Sub

Private Sub mnuMLanguageConfig_Click(Index As Integer)
Dim I As Integer
    For I = 0 To mnuMLanguageConfig.Count - 1
        If mnuMLanguageConfig(I).Checked = True Then
            mnuMLanguageConfig(I).Checked = False
        End If
    Next I
    mnuMLanguageConfig(Index).Checked = True
    Params.Language = mnuMLanguageConfig(Index).Caption
    
    SaveParams
    
    ChangeLanguage Me, Params.Language
End Sub

Private Sub mnuMMemory_Click(Index As Integer)
Dim X As Integer
    Select Case Index
        Case 0
            MemoryLevel = Easy
            LoadDataFromFile "Memory easy.lay"
        Case 1
            MemoryLevel = Hard
            LoadDataFromFile "Memory Hard.lay"
        Case 2
            MemoryLevel = Extreme
            LoadDataFromFile "Memory Hard.lay"
            'FrmSprites.PicTileSetMemoryExtreme.Picture = LoadPicture(App.Path & "\Tilesets\StarTrek.jpg")
            FrmSprites.PicTileSetMemoryExtreme.Picture = FrmSprites.PicTileSet.Picture
            FlushBackFaceExtreme
    End Select
    
    MiPGBar.Visible = False
    lblInfoTimeAttackLives.Visible = False
    lblTimeAttackLives.Visible = False
            
    GameMode = PlayMemory
    
    If MakePuzzle = False Then
        ShowErrorDessing
        Exit Sub
    End If
    
    FrmMain.lblInfoMoves.Visible = False
    FrmMain.lblMoves.Visible = False
    
    
    If FrmMain.imgTile.Count > 1 Then
        For X = 1 To FrmMain.imgTile.Count - 1
            Unload FrmMain.imgTile(X)
        Next X
    End If
    
    CreateTileControls
    
    GameMode = PlayMemory
    
    ResetAllTimers
    TimeZZZ.Enabled = True
    TmrElapsedPlaying.Enabled = True
    tmrDoPlay.Interval = IntervalTimers
    tmrDoPlay.Enabled = True
End Sub

Private Sub mnuMMoveDessing_Click(Index As Integer)
    Select Case Index
        Case 0  'Move Left
            MoveDessingLeft
        Case 1  'Move Right
            MoveDessingRight
        Case 2  'Move Up
            MoveDessingUp
        Case 3  'Move Down
            MoveDessingDown
    End Select
End Sub

Private Sub mnuMMusic_Click(Index As Integer)
Dim I As Integer
    For I = 0 To mnuMMusic.Count - 1
        If mnuMMusic(I).Checked = True Then
            mnuMMusic(I).Checked = False
            Exit For
        End If
    Next I
    mnuMMusic(Index).Checked = True
    
    Select Case Index
        Case 0
            Params.RandomMusic = True
            SaveParams
            StartSoundEngine
        Case Else
            Params.RandomMusic = False
            Params.MusicFile = mnuMMusic(Index).Caption
            SaveParams
            StartSoundEngine
            
    End Select
End Sub

Private Sub InitPlayMahjongg()
Dim X As Integer

    If FrmMain.imgTile.Count > 1 Then
        For X = 1 To FrmMain.imgTile.Count - 1
            Unload FrmMain.imgTile(X)
        Next X
    End If
    
    CreateTileControls
    
    GameMode = PlayMahjonng
    
    ResetAllTimers
    TimeZZZ.Enabled = True
    TmrElapsedPlaying.Enabled = True
    tmrDoPlay.Interval = IntervalTimers
    tmrDoPlay.Enabled = True

End Sub
Private Sub mnuMNewGame_Click(Index As Integer)
    blnLoop = False
    Select Case Index
        Case 2 'Play Mahjongg
            MahjonggPlayEspecial = None
            LoadDataFromFile Params.MahjonggLayout
            If MakePuzzle = False Then
                ShowErrorDessing
                Exit Sub
            End If
            MiPGBar.Visible = False
            lblInfoTimeAttackLives.Visible = False
            lblTimeAttackLives.Visible = False
            InitPlayMahjongg
        
        Case 3 'Play Mahjongg Time Attack
            MahjonggPlayEspecial = TimeAttack
            LoadDataFromFile Params.MahjonggLayout
            If MakePuzzle = False Then
                ShowErrorDessing
                Exit Sub
            End If
            MiPGBar.Visible = True
            ProcesaMiPGBar 0, MiPGBar, Me
            lblInfoTimeAttackLives.Visible = True
            lblTimeAttackLives.Visible = True
            lblTimeAttackLives.Caption = TimeAttackLives
            InitPlayMahjongg
            
            tmrTimerAttack.Enabled = True
    End Select
End Sub

Private Sub mnuMTiles_Click(Index As Integer)
Dim I As Integer
    If Index <= 2 Then
        If Index = 0 Then
            
        Else
            frmViewTilesets.Show vbModal
        End If
    Else
    
    For I = 0 To mnuMTiles.Count - 1
        If mnuMTiles(I).Checked = True Then mnuMTiles(I).Checked = False
    Next I
    
    mnuMTiles(Index).Checked = True
    Params.TileSet = mnuMTiles(Index).Caption
    
    SaveParams
    
    FrmSprites.PicTileSet.Picture = LoadPicture(App.Path & "\Tilesets\" & Params.TileSet & ".jpg")
    FrmSprites.PicTileSetMemoryExtreme.Picture = FrmSprites.PicTileSet.Picture

    End If
End Sub

Private Sub mnuMView_Click(Index As Integer)
    Select Case Index
        Case 0 ' Display numbers and text on Tiles
            Params.DisplayTextOnTiles = Not Params.DisplayTextOnTiles
            mnuMView(Index).Checked = Params.DisplayTextOnTiles
    End Select
    
    SaveParams
    
End Sub

Private Sub PicMain_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim localNeed As Long
    
    Select Case Button
        Case 2  'Right Mouse Button = Erase Tile
            Select Case GameMode
                Case eGameModes.DessigMahjonng
                    If DessingArray(CursorX, CursorY, LevelHeight - 1) <> 0 Then
                        If LevelHeight - 1 > 0 Then
                            CounterTiles = CounterTiles - 1
                        End If
                    End If
                    DessingArray(CursorX, CursorY, LevelHeight - 1) = 0
            End Select
        Case 1  'Left Mouse Button = Put New Tile
            Select Case GameMode
                Case eGameModes.DessigMahjonng
                    If LevelHeight <= 5 Then
                        DessingArray(CursorX, CursorY, LevelHeight) = 1
                        CounterTiles = CounterTiles + 1
                    End If
                Case eGameModes.PlayMahjonng
'                    If DessingArray(CursorX, CursorY, LevelHeight - 1) = 1 Then
'                        MsgBox "SI hay PIEZA"
'                    Else
'                        MsgBox "NO hay PIEZA"
'                    End If
            End Select
    End Select
    
    If GameMode = DessigMahjonng Then
        
        lblCountTiles.Caption = CounterTiles
        localNeed = CounterTiles Mod 4
    
        Select Case localNeed
            Case 0
                NeededTiles = 0
            Case 1
                NeededTiles = 3
            Case 2
                NeededTiles = 2
            Case 3
                NeededTiles = 1
        End Select
    
        If CounterTiles = 0 Then
            NeededTiles = 4
        End If
    
        lblNeededTiles.Caption = NeededTiles
        
    End If
    
    MouseRead = True
End Sub

Private Sub PicMain_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Select Case GameMode
        Case eGameModes.DessigMahjonng
            CursorX = CInt((X) / (GFXTileWidth / 2))
            CursorY = CInt((Y) / (GFXTileHeight / 2))
            
            If CursorX < 1 Then CursorX = 1
            If CursorX > CntDessingWidth - 1 Then CursorX = CntDessingWidth - 1
            If CursorY < 1 Then CursorY = 1
            If CursorY > CntDessingHeight - 1 Then CursorY = CntDessingHeight - 1
        Case eGameModes.PlayMahjonng
            overImgTile = False
    End Select
    
    MouseRead = True
    
End Sub

Private Sub Timer1_Timer()

    Timer1.Enabled = False
    PaintMosaicToForm Me, FrmSprites.PicSkin
    DrawAnime 1
    
End Sub

Private Sub TimeZZZ_Timer()
    SkinAnime Me, FrmSprites.PicSkin
    DrawAnime zzzAnim, True
    zzzAnim = zzzAnim + 1
    If zzzAnim > 1 Then zzzAnim = 0
End Sub

'Private Sub tmrBitBlt_Timer()
'    Dim PicHandle As Long
'    Dim CursorPosition As POINTAPI
'
'    GetCursorPos CursorPosition
'
'    PicHandle = WindowFromPoint(CursorPosition.x, CursorPosition.y)
'
'    If PicHandle = PicMain.hwnd Then
'        Select Case GameMode
'            Case eGameModes.DessigMahjonng
'                DrawTilesDessing
'            Case eGameModes.PlayMahjonng
'                DrawTilesPlayMahjonng
'        End Select
'
'    End If
'    'ShowFPS lblFPS
'    'ShowTicks lblTicks
'    DoEvents
'
'End Sub

Private Sub tmrDoDessing_Timer()
    DrawTilesDessing
    'DoEvents
End Sub

Private Sub tmrDoPlay_Timer()
    Select Case GameMode
        Case eGameModes.PlayMahjonng
            
            DrawTilesPlayMahjonng
            
            If FreeMoves = 0 And CounterTiles > 0 Then
                If NoMovesShow = False Then
                    NoMovesShow = True
                    MsgBox InfosIDIOM(13), vbExclamation, InfosIDIOM(7)
                    'SkinAnime Me, FrmSprites.PicSkin
                    'DrawAnime 1
                    NoMovesSkinAnime = True
                End If
            End If
            If CounterTiles = 0 Then
                ResetAllTimers
                ReadTimesForShorting
                frmPrevHallFame.Show vbModal
        
            End If
        
        Case eGameModes.PlayMemory
            DrawTilesPlayMemory
            If CounterTiles = 0 Then
            
                ResetAllTimers
                
                Dim mMemory As String
                Select Case MemoryLevel
                    Case tMemoryLevel.Easy
                        mMemory = "Memory Easy"
                    Case tMemoryLevel.Hard
                        mMemory = "Memory Hard"
                    Case tMemoryLevel.Extreme
                        mMemory = "Memory Hard"
                End Select
                ReadTimesForShorting mMemory
                frmPrevHallFame.Show vbModal
        
            End If
    End Select
End Sub

Private Sub TmrElapsedPlaying_Timer()
    ElapsedSeconds = ElapsedSeconds + 1

    If GameMode = PlayMemory Then
        If MemoryLevel = Extreme Then
            If ElapsedSeconds Mod 10 = 0 Then
                'ChangeTileSetExtreme = True
                FlushBackFaceExtreme
            End If
        End If
    End If
End Sub

Private Sub TmrMidi_Timer()
Dim lRet As Long
    
Dim MCIStatusLen As Integer

    Dim MCIStatus As String

    ' check status of background music

    If IsMusicOn = True Then

        ' see if the music is still playing

        MCIStatusLen = 15

        MCIStatus = String(MCIStatusLen + 1, " ")

        lRet = mciSendString("STATUS midi MODE", MCIStatus, MCIStatusLen, 0)

        If UCase(left$(MCIStatus, 7)) = "STOPPED" Then

            StartSoundEngine
            
        End If

    End If
 
End Sub


Private Sub tmrTimerAttack_Timer()

    ProcesaMiPGBar stSeconds, MiPGBar, Me
    stSeconds = stSeconds + 2
    If stSeconds > 100 Then
        TimeAttackLives = TimeAttackLives - 1
        lblTimeAttackLives.Caption = TimeAttackLives
        stSeconds = 0
        Dim retval As Long
        If CanPlayWave = True And Params.EnableFX = True Then
            retval = PlaySound(App.Path & "\NoFree.wav", 0, SND_FILENAME Or SND_ASYNC)
        End If
        If TimeAttackLives = 0 Then
            ResetAllTimers
            MsgBox "Time Attack Lives=0"
        End If
    End If

End Sub
