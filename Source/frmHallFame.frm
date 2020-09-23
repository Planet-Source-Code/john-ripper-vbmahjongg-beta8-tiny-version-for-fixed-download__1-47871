VERSION 5.00
Begin VB.Form frmHallFame 
   BackColor       =   &H00008080&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   5370
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   8160
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5370
   ScaleWidth      =   8160
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cboHF 
      Height          =   315
      Left            =   2280
      Style           =   2  'Dropdown List
      TabIndex        =   65
      Top             =   420
      Visible         =   0   'False
      Width           =   3315
   End
   Begin VB.FileListBox File1 
      Height          =   285
      Left            =   6120
      TabIndex        =   63
      Top             =   2760
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.CommandButton cmdHallFameErase 
      Caption         =   "Borrar Puntuaciones"
      Height          =   435
      Left            =   5820
      TabIndex        =   58
      Top             =   3960
      Width           =   1875
   End
   Begin VB.TextBox txtHallFamePlayerName 
      Height          =   315
      Left            =   6060
      MaxLength       =   10
      TabIndex        =   0
      Top             =   780
      Width           =   1335
   End
   Begin VB.CommandButton cmdHallFameOk 
      Caption         =   "Ok"
      Height          =   435
      Left            =   6240
      TabIndex        =   1
      Top             =   4500
      Width           =   1095
   End
   Begin VB.Label lblHFSelectBoard 
      BackStyle       =   0  'Transparent
      Caption         =   "Seleccione un Tablero"
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   420
      TabIndex        =   64
      Top             =   420
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Index           =   10
      Left            =   6060
      TabIndex        =   62
      Top             =   1920
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   255
      Index           =   10
      Left            =   6600
      TabIndex        =   61
      Top             =   1680
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   255
      Index           =   10
      Left            =   5820
      TabIndex        =   60
      Top             =   1680
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   255
      Index           =   10
      Left            =   5940
      TabIndex        =   59
      Top             =   1440
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Left            =   4380
      TabIndex        =   57
      Top             =   4620
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   8
      Left            =   4380
      TabIndex        =   56
      Top             =   4260
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   7
      Left            =   4380
      TabIndex        =   55
      Top             =   3900
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   6
      Left            =   4380
      TabIndex        =   54
      Top             =   3540
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   5
      Left            =   4380
      TabIndex        =   53
      Top             =   3180
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   4
      Left            =   4380
      TabIndex        =   52
      Top             =   2820
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   3
      Left            =   4380
      TabIndex        =   51
      Top             =   2460
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   2
      Left            =   4380
      TabIndex        =   50
      Top             =   2100
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   1
      Left            =   4380
      TabIndex        =   49
      Top             =   1740
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHlFDate 
      BackStyle       =   0  'Transparent
      Caption         =   "11/7/2003"
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
      Height          =   315
      Index           =   0
      Left            =   4380
      TabIndex        =   48
      Top             =   1380
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   255
      Index           =   9
      Left            =   3300
      TabIndex        =   47
      Top             =   4620
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   8
      Left            =   3300
      TabIndex        =   46
      Top             =   4260
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   7
      Left            =   3300
      TabIndex        =   45
      Top             =   3900
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   6
      Left            =   3300
      TabIndex        =   44
      Top             =   3540
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   5
      Left            =   3300
      TabIndex        =   43
      Top             =   3180
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   4
      Left            =   3300
      TabIndex        =   42
      Top             =   2820
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   3
      Left            =   3300
      TabIndex        =   41
      Top             =   2460
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   2
      Left            =   3300
      TabIndex        =   40
      Top             =   2100
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   1
      Left            =   3300
      TabIndex        =   39
      Top             =   1740
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   255
      Index           =   9
      Left            =   2520
      TabIndex        =   38
      Top             =   4620
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   8
      Left            =   2520
      TabIndex        =   37
      Top             =   4260
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   7
      Left            =   2520
      TabIndex        =   36
      Top             =   3900
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   6
      Left            =   2520
      TabIndex        =   35
      Top             =   3540
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   5
      Left            =   2520
      TabIndex        =   34
      Top             =   3180
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   4
      Left            =   2520
      TabIndex        =   33
      Top             =   2820
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   3
      Left            =   2520
      TabIndex        =   32
      Top             =   2460
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   2
      Left            =   2520
      TabIndex        =   31
      Top             =   2100
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   1
      Left            =   2520
      TabIndex        =   30
      Top             =   1740
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFMalus 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   0
      Left            =   3300
      TabIndex        =   29
      Top             =   1380
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFTime 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H008080FF&
      Height          =   315
      Index           =   0
      Left            =   2520
      TabIndex        =   28
      Top             =   1380
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   255
      Index           =   9
      Left            =   1320
      TabIndex        =   27
      Top             =   4620
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   8
      Left            =   1320
      TabIndex        =   26
      Top             =   4260
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   7
      Left            =   1320
      TabIndex        =   25
      Top             =   3900
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   6
      Left            =   1320
      TabIndex        =   24
      Top             =   3540
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   5
      Left            =   1320
      TabIndex        =   23
      Top             =   3180
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   4
      Left            =   1320
      TabIndex        =   22
      Top             =   2820
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   3
      Left            =   1320
      TabIndex        =   21
      Top             =   2460
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   2
      Left            =   1320
      TabIndex        =   20
      Top             =   2100
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   1
      Left            =   1320
      TabIndex        =   19
      Top             =   1740
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblHFPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Player1"
      ForeColor       =   &H00FFC0C0&
      Height          =   315
      Index           =   0
      Left            =   1320
      TabIndex        =   18
      Top             =   1380
      Visible         =   0   'False
      Width           =   1155
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "10"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0FF&
      Height          =   255
      Index           =   9
      Left            =   540
      TabIndex        =   17
      Top             =   4620
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   8
      Left            =   540
      TabIndex        =   16
      Top             =   4260
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   7
      Left            =   540
      TabIndex        =   15
      Top             =   3900
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   6
      Left            =   540
      TabIndex        =   14
      Top             =   3540
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   5
      Left            =   540
      TabIndex        =   13
      Top             =   3180
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   4
      Left            =   540
      TabIndex        =   12
      Top             =   2820
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
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
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   3
      Left            =   540
      TabIndex        =   11
      Top             =   2460
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   2
      Left            =   540
      TabIndex        =   10
      Top             =   2100
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   1
      Left            =   540
      TabIndex        =   9
      Top             =   1740
      Width           =   255
   End
   Begin VB.Label lblNRanking 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0FF&
      Height          =   315
      Index           =   0
      Left            =   540
      TabIndex        =   8
      Top             =   1380
      Width           =   255
   End
   Begin VB.Line Line7 
      BorderColor     =   &H00808080&
      X1              =   5760
      X2              =   6000
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Line Line6 
      BorderColor     =   &H00808080&
      X1              =   5760
      X2              =   5760
      Y1              =   1320
      Y2              =   480
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00FFFFFF&
      X1              =   7680
      X2              =   5760
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FFFFFF&
      X1              =   7680
      X2              =   7680
      Y1              =   1320
      Y2              =   480
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00808080&
      X1              =   7440
      X2              =   7680
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label lblHallFameInputPlayerName 
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre..Jugador"
      ForeColor       =   &H00C0C0FF&
      Height          =   315
      Left            =   6060
      TabIndex        =   7
      Top             =   360
      Width           =   1335
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      X1              =   180
      X2              =   7920
      Y1              =   5160
      Y2              =   5160
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      X1              =   7920
      X2              =   7920
      Y1              =   240
      Y2              =   5160
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00808080&
      Height          =   4935
      Left            =   180
      Top             =   240
      Width           =   7755
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00808080&
      FillColor       =   &H00C0C0C0&
      Height          =   3615
      Left            =   420
      Top             =   1320
      Width           =   5175
   End
   Begin VB.Label lblHallFameDate 
      Alignment       =   2  'Center
      BackColor       =   &H00000080&
      Caption         =   "Fecha"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Left            =   4320
      TabIndex        =   6
      Top             =   1020
      Width           =   1275
   End
   Begin VB.Label lblHallFameMalus 
      BackColor       =   &H00000080&
      Caption         =   "Malus"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Left            =   3600
      TabIndex        =   5
      Top             =   1020
      Width           =   735
   End
   Begin VB.Label lblHallFameInfoTime 
      BackColor       =   &H00000080&
      Caption         =   "Tiempo"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Left            =   2760
      TabIndex        =   4
      Top             =   1020
      Width           =   855
   End
   Begin VB.Label lblHallFameInfoPlayerName 
      BackColor       =   &H00000080&
      Caption         =   "Jugador..Nombre"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Left            =   1260
      TabIndex        =   3
      Top             =   1020
      Width           =   1515
   End
   Begin VB.Label lblHallFameInfoRanking 
      BackColor       =   &H00000080&
      Caption         =   "Ranking"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080C0FF&
      Height          =   255
      Left            =   420
      TabIndex        =   2
      Top             =   1020
      Width           =   855
   End
End
Attribute VB_Name = "frmHallFame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#######################################################
' HallFame Form.
'#######################################################
Option Explicit
Dim NewRanking As Integer

Private Sub cboHF_Click()
    DisplayEditHallFame cboHF.Text, False
End Sub

Private Sub cmdHallFameErase_Click()
Dim lRet As Long
    lRet = MsgBox(InfosIDIOM(15), vbYesNo + vbQuestion, InfosIDIOM(7))
    If lRet = vbYes Then
        If EditHallFame = True Then
        
            EditHallFame = False
            DeleteHallFame Params.MahjonggLayoutDescription
            Unload Me
        Else
            DeleteHallFame cboHF.Text
            Unload Me
        End If
    End If
End Sub

Private Sub cmdHallFameOk_Click()
    If EditHallFame = True Then
        If Trim(txtHallFamePlayerName.Text) = "" Then
            MsgBox InfosIDIOM(16), vbOKOnly + vbExclamation, InfosIDIOM(7)
            Exit Sub
        End If
        EditHallFame = False
        UpdateHallFameBoard
    End If
    Unload Me
End Sub

Private Sub Form_Load()
Dim I As Integer
    ChangeLanguage Me, Params.Language
    If EditHallFame = True Then
        
        Unload frmPrevHallFame
        'EditHallFame = False
        For I = 0 To 9
            If ElapsedSeconds < InfoTimeIni(I) Then
                NewRanking = I
                Exit For
            End If
        Next I
        If GameMode = PlayMahjonng Then
            DisplayEditHallFame Params.MahjonggLayoutDescription, True, NewRanking
        ElseIf GameMode = PlayMemory Then
            If MemoryLevel = Easy Then
                DisplayEditHallFame "Memory Easy", True, NewRanking
            Else
                DisplayEditHallFame "Memory Hard", True, NewRanking
            End If
        End If
        lblHallFameInputPlayerName.Visible = True
        txtHallFamePlayerName.Visible = True
        Line3.Visible = True
        Line4.Visible = True
        Line5.Visible = True
        Line6.Visible = True
        Line7.Visible = True
    Else
        lblHallFameInputPlayerName.Visible = False
        txtHallFamePlayerName.Visible = False
        Line3.Visible = False
        Line4.Visible = False
        Line5.Visible = False
        Line6.Visible = False
        Line7.Visible = False
        
        LoadCombo
        cboHF.ListIndex = 0
        lblHFSelectBoard.Visible = True
        cboHF.Visible = True
    End If

End Sub

Private Sub LoadCombo()
Dim nF  As Integer
Dim x   As Integer
Dim DataFileLay As String

    File1.Path = App.Path & "\Layouts"
    
    For x = 1 To File1.ListCount
      nF = FreeFile
      Open App.Path & "\Layouts\" & File1.List(x - 1) For Input As #nF
      Line Input #nF, DataFileLay
      Line Input #nF, DataFileLay
      Close #nF
      cboHF.AddItem DataFileLay
    Next x
End Sub

Private Sub Form_Paint()
    PaintMosaicToForm Me, FrmSprites.PicSkin
End Sub

Private Sub txtHallFamePlayerName_Change()
    lblHFPlayerName(NewRanking).Caption = txtHallFamePlayerName.Text
End Sub
