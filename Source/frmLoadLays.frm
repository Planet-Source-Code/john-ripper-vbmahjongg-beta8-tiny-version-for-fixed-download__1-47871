VERSION 5.00
Begin VB.Form frmLoadLays 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Seleccion de Diseños"
   ClientHeight    =   6405
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7365
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   427
   ScaleMode       =   3  'Píxel
   ScaleWidth      =   491
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox lstFavoritesLayouts 
      Height          =   2205
      Left            =   120
      TabIndex        =   15
      Top             =   4020
      Width           =   3435
   End
   Begin VB.CommandButton cmdCancelPrev 
      Caption         =   "Cancele"
      Height          =   435
      Left            =   6060
      TabIndex        =   14
      Top             =   3300
      Width           =   975
   End
   Begin VB.CommandButton cmdNewPrev 
      Caption         =   "Nuevo"
      Height          =   435
      Left            =   4980
      TabIndex        =   13
      Top             =   3300
      Width           =   975
   End
   Begin VB.CommandButton cmdEditPrev 
      Caption         =   "Edite"
      Height          =   435
      Left            =   3900
      TabIndex        =   12
      Top             =   3300
      Width           =   975
   End
   Begin VB.CommandButton cmdViewPrev 
      Caption         =   "Ver >>"
      Enabled         =   0   'False
      Height          =   435
      Left            =   5520
      TabIndex        =   11
      Top             =   2820
      Width           =   1515
   End
   Begin VB.CommandButton cmdPlayPrev 
      Caption         =   "Jugar este."
      Height          =   435
      Left            =   3900
      TabIndex        =   10
      Top             =   2820
      Width           =   1575
   End
   Begin VB.CheckBox chkPrevSelectBackGND 
      Height          =   255
      Left            =   3900
      TabIndex        =   9
      Top             =   2520
      Value           =   1  'Checked
      Width           =   195
   End
   Begin VB.FileListBox File1 
      Height          =   285
      Left            =   4440
      Pattern         =   "*.lay"
      TabIndex        =   4
      Top             =   5880
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.ListBox lstDescriptionFile 
      BackColor       =   &H0080C0FF&
      Height          =   3180
      Left            =   120
      Sorted          =   -1  'True
      TabIndex        =   3
      Top             =   180
      Width           =   3375
   End
   Begin VB.PictureBox PicMainPrev 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00008000&
      Height          =   2295
      Left            =   3900
      ScaleHeight     =   149
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   209
      TabIndex        =   0
      Top             =   180
      Width           =   3195
   End
   Begin VB.PictureBox PicWorkPrev 
      AutoRedraw      =   -1  'True
      Height          =   2295
      Left            =   3900
      ScaleHeight     =   149
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   209
      TabIndex        =   1
      Top             =   180
      Width           =   3195
   End
   Begin VB.PictureBox PicCleanPrev 
      AutoRedraw      =   -1  'True
      Height          =   2295
      Left            =   3900
      ScaleHeight     =   149
      ScaleMode       =   3  'Píxel
      ScaleWidth      =   209
      TabIndex        =   2
      Top             =   180
      Width           =   3195
   End
   Begin VB.Label lblPrevSelectBackGND 
      BackStyle       =   0  'Transparent
      Caption         =   "Seleccione con el fondo actual"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   4140
      TabIndex        =   18
      Top             =   2520
      Width           =   2895
   End
   Begin VB.Label lblCapPrevFav02 
      BackStyle       =   0  'Transparent
      Caption         =   $"frmLoadLays.frx":0000
      ForeColor       =   &H00FFFFFF&
      Height          =   1035
      Left            =   3900
      TabIndex        =   17
      Top             =   4500
      Width           =   3135
   End
   Begin VB.Label lblCapPrevFav01 
      BackStyle       =   0  'Transparent
      Caption         =   "<< Favoritos"
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
      Left            =   3900
      TabIndex        =   16
      Top             =   4140
      Width           =   2475
   End
   Begin VB.Label lblFreePrevTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "999"
      ForeColor       =   &H00FF80FF&
      Height          =   255
      Left            =   3120
      TabIndex        =   8
      Top             =   3480
      Width           =   375
   End
   Begin VB.Label lblNumPrevTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "999"
      ForeColor       =   &H00FF80FF&
      Height          =   255
      Left            =   1380
      TabIndex        =   7
      Top             =   3480
      Width           =   375
   End
   Begin VB.Label lblCapFreePrevTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "Fichas Libres:"
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
      Left            =   1800
      TabIndex        =   6
      Top             =   3480
      Width           =   1275
   End
   Begin VB.Label lblCapNumPrevTiles 
      BackStyle       =   0  'Transparent
      Caption         =   "Nº de Fichas:"
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
      Left            =   120
      TabIndex        =   5
      Top             =   3480
      Width           =   1215
   End
End
Attribute VB_Name = "frmLoadLays"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#######################################################
' Preview Puzzles form.
'#######################################################
Option Explicit
Private NoClickList  As Boolean
Private NoClickCheck As Boolean


Private Sub DrawPrevLayout()
Dim counterX  As Integer
Dim counterY  As Integer
Dim xBucle    As Integer
Dim yBucle    As Integer
Dim Z         As Integer
Dim ExitBucle As Boolean

Dim LocalCount As Integer
Dim LocalFree  As Integer
Dim OriginLeft As Integer
Dim OriginTop  As Integer
Dim WidthQuadrant  As Integer
Dim HeightQuadrant As Integer
Dim xBucle2 As Integer
Dim yBucle2 As Integer

    OriginLeft = CntDessingWidth - 1 '2
    OriginTop = 1 '2
    WidthQuadrant = OriginLeft
    HeightQuadrant = CntDessingHeight - 1 '2


    If chkPrevSelectBackGND.Value = vbUnchecked Then
        PicCleanPrev.Picture = LoadPicture(App.Path & "\BackGrounds\Blank.bmp")
    Else
        PicCleanPrev.Picture = LoadPicture(App.Path & "\BackGrounds\PREV" & Params.BackGround & ".jpg")
    End If
        
    CleanMainPrev
    counterX = WidthQuadrant - 1
    counterY = 1
    Z = 0
    
    CounterTiles = 0
    LocalFree = 0
    For Z = 1 To 5
        ExitBucle = False
        counterX = CntDessingWidth - 1
        counterY = 1
        Do
            xBucle = counterX
            For yBucle = counterY To HeightQuadrant

                xBucle = xBucle + 1
                If xBucle > WidthQuadrant Then
                    yBucle = OriginTop
                    counterX = counterX - 1
                    Exit For
                Else

                    xBucle2 = xBucle + (OriginLeft - WidthQuadrant)
                    yBucle2 = yBucle + (OriginTop - 1)
                    If pDessingArray(xBucle2, yBucle2, Z) = 1 Then
                        DrawTilePrev xBucle2 * (pGFXTileWidth \ 2) + (Z - 1) * pShadowPixels, yBucle2 * (pGFXTileHeight \ 2) - (Z - 1) * pShadowPixels, Z
                        CounterTiles = CounterTiles + 1
                        If IsFreeTile(xBucle2, yBucle2, Z, pDessingArray) = True Then
                            LocalFree = LocalFree + 1
                        End If
                    End If
                End If
            Next yBucle
            If xBucle <= WidthQuadrant Then
                yBucle = 1
                If counterX <= 0 Then
                    counterX = 1
                    If counterY >= HeightQuadrant Then
                        ExitBucle = True
                    Else
                        counterY = counterY + 1
                        counterX = 0
                    End If
                Else
                    counterX = counterX - 1
                End If
            End If
        Loop Until ExitBucle = True
    Next Z
    BlitMainPrev
    lblNumPrevTiles.Caption = CounterTiles 'LocalCount
    lblFreePrevTiles.Caption = LocalFree

End Sub

Private Sub chkPrevSelectBackGND_Click()
    If NoClickCheck = True Then
        Exit Sub
    End If
    If chkPrevSelectBackGND.Value = vbChecked Then
        Params.PrevWithBackGround = True
    Else
        Params.PrevWithBackGround = False
    End If
    SaveParams
    LoadPreview lstDescriptionFile.Text
End Sub

Private Sub cmdCancelPrev_Click()
    lRetFrmPrev = PrevCancel
    Unload Me
End Sub

Private Sub ActParamsLayouts(Description As String)
Dim x           As Integer
Dim DataFileLay As String
Dim nF          As Integer
    
    For x = 1 To File1.ListCount
        nF = FreeFile
        Open App.Path & "\Layouts\" & File1.List(x - 1) For Input As #nF
        Line Input #nF, DataFileLay
        Line Input #nF, DataFileLay
        If DataFileLay = Description Then
            Params.MahjonggLayout = File1.List(x - 1)
            Params.MahjonggLayoutDescription = DataFileLay
            Exit For
            Close #nF
        End If
        Close #nF
    Next x
End Sub

Private Sub cmdEditPrev_Click()
    Dim x As Integer
    Dim y As Integer
    Dim Z As Integer
  
    For x = 0 To CntDessingWidth
        For y = 0 To CntDessingHeight
            For Z = 1 To 5
                DessingArray(x, y, Z) = pDessingArray(x, y, Z)
            Next Z
        Next y
    Next x
    
    For x = 0 To CntDessingWidth
        For y = 0 To CntDessingHeight
            DessingArray(x, y, 0) = -1
        Next y
    Next x
    

    If FrmMain.imgTile.Count > 1 Then
        For x = 1 To FrmMain.imgTile.Count - 1
            Unload FrmMain.imgTile(x)
        Next x
    End If
    
    ActParamsLayouts lstDescriptionFile.Text
    lRetFrmPrev = PrevEdit
    FrmMain.txtDescLayout.Text = Params.MahjonggLayoutDescription
    FrmMain.txtDescLayout.Visible = True
    CounterTiles = lblNumPrevTiles.Caption
    NeededTiles = 0
    FrmMain.lblCountTiles.Caption = CounterTiles
    FreeTiles = lblFreePrevTiles.Caption
    FrmMain.lblNeededTiles.Caption = 0
    Unload Me
End Sub

Private Sub cmdNewPrev_Click()
Dim x As Integer

    InitializeValuesDessing
    If FrmMain.imgTile.Count > 1 Then
        For x = 1 To FrmMain.imgTile.Count - 1
            Unload FrmMain.imgTile(x)
        Next x
    End If
    CounterTiles = 0
    FrmMain.lblCountTiles.Caption = CounterTiles
    FreeTiles = 0
    FrmMain.lblFreeTiles.Caption = FreeTiles
    lRetFrmPrev = PrevNew
    Params.MahjonggLayoutDescription = "New Dessing"
    Unload Me
End Sub

Private Sub cmdPlayPrev_Click()
    Dim x As Integer
    Dim y As Integer
    Dim Z As Integer
  
    For x = 0 To CntDessingWidth
        For y = 0 To CntDessingHeight
            For Z = 1 To 5
                DessingArray(x, y, Z) = pDessingArray(x, y, Z)
            Next Z
        Next y
    Next x
    
    For x = 0 To CntDessingWidth
        For y = 0 To CntDessingHeight
            DessingArray(x, y, 0) = -1
        Next y
    Next x
    

    If FrmMain.imgTile.Count > 1 Then
        For x = 1 To FrmMain.imgTile.Count - 1
            Unload FrmMain.imgTile(x)
        Next x
    End If
    ActParamsLayouts lstDescriptionFile.Text
    SaveParams
    lRetFrmPrev = PrevPlay
    Unload Me
End Sub

Private Sub Form_Load()
Dim x As Integer
Dim y As Integer
Dim Z As Integer
Dim DataFileLay As String
Dim nF As Integer
    
    ChangeLanguage Me, Params.Language
    NoClickCheck = True
    If Params.PrevWithBackGround = True Then
        chkPrevSelectBackGND.Value = vbChecked
    Else
        chkPrevSelectBackGND.Value = vbUnchecked
    End If
    NoClickCheck = False
    For x = 0 To CntDessingWidth
        For y = 0 To CntDessingHeight
            For Z = 1 To 5
                pDessingArray(x, y, Z) = 0
            Next Z
        Next y
    Next x
    
    For x = 0 To CntDessingWidth
        For y = 0 To CntDessingHeight
            pDessingArray(x, y, 0) = -1
        Next y
    Next x

    NoClickList = True

    File1.Path = App.Path & "\Layouts"
    If File1.ListCount = 0 Then
        MsgBox "No Path layout found", vbCritical, App.EXEName
        Exit Sub
    End If
    
    For x = 1 To File1.ListCount
      nF = FreeFile
      Open App.Path & "\Layouts\" & File1.List(x - 1) For Input As #nF
      Line Input #nF, DataFileLay
      Line Input #nF, DataFileLay
      Close #nF
      lstDescriptionFile.AddItem DataFileLay
    Next x

    'Display Dessing
    LoadPreview lstDescriptionFile.List(0)
    
    lstDescriptionFile.ListIndex = 0
    
    NoClickList = False
End Sub

Private Sub LoadPreview(Description As String)
Dim nF As Integer
Dim MisDatos As String
Dim ByteDato As Integer
Dim contador As Integer
MisDatos = ""
Dim x As Integer
Dim y As Integer
Dim Z As Integer
Dim NombreFichero As String


    For x = 1 To File1.ListCount
        nF = FreeFile
        Open App.Path & "\Layouts\" & File1.List(x - 1) For Input As #nF
        Line Input #nF, MisDatos
        Line Input #nF, MisDatos
        If MisDatos = Description Then
            NombreFichero = App.Path & "\Layouts\" & File1.List(x - 1)
            Close #nF
            Exit For
        End If
        Close #nF
    Next x
    
    nF = FreeFile
    Open NombreFichero For Input As nF
        Line Input #nF, MisDatos
        Line Input #nF, MisDatos
        Line Input #nF, MisDatos
    
    Close nF
    
    contador = 1
    For Z = 1 To 5
        For y = 1 To CntDessingHeight ' - 2
            For x = 1 To CntDessingWidth
                ByteDato = Mid(MisDatos, contador, 1)
                pDessingArray(x, y, Z) = ByteDato
                contador = contador + 1
            Next x
        Next y
    Next Z

    DrawPrevLayout
    
    PicMainPrev.Refresh
    
End Sub

Private Sub Form_Paint()
    PaintMosaicToForm Me, FrmSprites.PicSkin
End Sub

Private Sub lstDescriptionFile_Click()
    If NoClickList = True Then
    Else
        LoadPreview lstDescriptionFile.Text
    End If
End Sub
