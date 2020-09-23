Attribute VB_Name = "ModVariables"
'#######################################################
' Variables Module
' This module contains "Main" Variables and initializations
'#######################################################
Option Explicit

Public NoMovesShow      As Boolean
Public MouseRead        As Boolean
Public NoRender         As Boolean
Public PicBackGround    As String

Public Enum eRetFrmPrev
    PrevPlay = 0
    PrevEdit = 1
    PrevNew = 2
    PrevCancel = 3
End Enum
Public lRetFrmPrev As eRetFrmPrev

Public Enum eGameModes
    DessigMahjonng = 0
    PlayMahjonng = 1
    PlayMemory = 2
    ExitMode = 99
End Enum
Public GameMode As eGameModes

Public Const CntDessingWidth = 34
Public Const CntDessingHeight = 20
Public pDessingArray(CntDessingWidth, CntDessingHeight, 6) As Integer

Public Const pGFXTileHeight = 14
Public Const pGFXTileWidth = 12
Public Const pGFXTileShadowHeight = 16
Public Const pGFXTileShadowWidth = 14
Public Const pShadowPixels = 2

Public Const GFXTileHeight = 68
Public Const GFXTileWidth = 54
Public Const GFXTileShadowHeight = 78
Public Const GFXTileShadowWidth = 64
Public Const ShadowPixels = 10

Public CursorX As Long
Public CursorY As Long

Public SDC As Long 'Source DC
Public DDC As Long 'Destination DC



Public DessingArray(CntDessingWidth, CntDessingHeight, 6)       As Integer
Public SpriteInformation(CntDessingWidth, CntDessingHeight, 5)  As String
Public SpriteBackInfo(CntDessingWidth, CntDessingHeight, 1)     As String
Public TZorderSprites() As Integer

Public Const PixelsVerticalOffset = 20


Public XFace             As Integer
Public YFace             As Integer

Public LevelHeight       As Integer

Public CounterTiles      As Integer
Public NeededTiles       As Integer
Public FreeTiles         As Integer

Public XPicMain          As Long
Public YPicMain          As Long

Public CanPlayMidi       As Boolean
Public CanPlayWave       As Boolean
Public TilesSPRarray     As String
Public ElapsedSeconds    As Long
Public FreeMoves         As Integer

Public Sub InitializeValuesDessing()

Dim X       As Integer
Dim Y       As Integer
Dim Z       As Integer
Dim aux     As Integer
Dim SumAux  As Integer
    
    XPicMain = FrmMain.PicMain.ScaleWidth
    YPicMain = FrmMain.PicMain.ScaleHeight
    
    For X = 0 To CntDessingWidth
        For Y = 0 To CntDessingHeight
            For Z = 1 To 5
                DessingArray(X, Y, Z) = 0
            Next Z
        Next Y
    Next X
        
    For X = 0 To CntDessingWidth
        For Y = 0 To CntDessingHeight
                DessingArray(X, Y, 0) = -1
        Next Y
    Next X

    LevelHeight = 1
    CounterTiles = 0
    FreeTiles = 0
    NeededTiles = 4


    'Ax = Cracks
    'Vx = Bamboos
    'Rx = Dots
    'Fx = Flowers
    'Sx = Seasons
    'Wx = Winds
    'Dx = Dragons

    TilesSPRarray = ",A1,A1,A2,A2,A3,A3,A4,A4,A5,A5,A6,A6,A7,A7,A8,A8,A9,A9" _
               & ",V1,V1,V2,V2,V3,V3,V4,V4,V5,V5,V6,V6,V7,V7,V8,V8,V9,V9" _
               & ",R1,R1,R2,R2,R3,R3,R4,R4,R5,R5,R6,R6,R7,R7,R8,R8,R9,R9" _
              & ",F1,F2,F3,F4" _
              & ",S1,S2,S3,S4" _
              & ",W1,W2,W3,W4" _
              & ",D1,D1,D2,D2,D3,D3"

    ReDim TZorderSprites(72)

    For X = 1 To 72
        TZorderSprites(X) = X
    Next X
    
End Sub
