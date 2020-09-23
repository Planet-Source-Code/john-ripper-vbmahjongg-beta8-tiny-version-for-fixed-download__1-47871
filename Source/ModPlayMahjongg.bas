Attribute VB_Name = "ModPlayMahjongg"
'#######################################################
' Mahjongg "Main" Module
' This module contains Subs and functions for Mahjongg Game Mode
'#######################################################
Option Explicit

Public stSeconds    As Integer 'Time attack Seconds
Public Enum eMahjonggPlayEspecial
    TimeAttack = 0
    None = 999
End Enum
Public MahjonggPlayEspecial As eMahjonggPlayEspecial
Public TimeAttackLives As Integer

Public xImgTile As Integer
Public yImgTile As Integer
Public zImgTile As Integer
Public overImgTile As Boolean

Public TimeZZZ As Integer
Public zzzAnim As Integer

Public Type TileOnClick
    posX As Integer
    PosY As Integer
    posZ As Integer
    spriteFamily As String
    spriteIndex As Integer
    ImageControlIndex As Integer
End Type
Public FirstTileClick As TileOnClick
Public TFirstClick As Boolean
Public HinstVisibles As Boolean


Public FirstHintX As Integer
Public FirstHintY As Integer
Public FirstHintZ As Integer
Public SecondHintX As Integer
Public SecondHintY As Integer
Public SecondHintZ As Integer

Dim FreeT() As String
Dim FreeTHintsX() As Integer
Dim FreeTHintsY() As Integer
Dim FreeTHintsZ() As Integer

Public CounterHints As Integer

Public Type tUndoMove
    FirstX As Integer
    FirstY As Integer
    FirstZ As Integer
    FirstControlIndex As Integer
    sprInfoFirst As String
    SecondX As Integer
    SecondY As Integer
    SecondZ As Integer
    SecondControlIndex As Integer
    sprInfoSecond As String
End Type
Public UndoArray() As tUndoMove

Public OnlyOneCheckMusic As Boolean

'Create ImageBox controls On Run Time
'As other "Draw Rutines" the tiles are painting by this criteria:
'          15 11  7  4  2  1
'          19 16 12  8  5  3
'          22 20 17 13  9  6
'          24 23 21 18 14 10
'In other words, tiles are drawing in "diagonal", starting on upper-right corner, and form Level 1 to Level Max

Public Sub CreateTileControls()

Dim counterX        As Integer 'aux
Dim counterY        As Integer 'aux
Dim xBucle          As Integer 'aux
Dim yBucle          As Integer 'aux
Dim Z               As Integer 'Real Z
Dim ExitBucle       As Boolean
Dim LocalCount      As Integer 'Counter Tiles
Dim OriginLeft      As Integer 'aux
Dim OriginTop       As Integer 'aux
Dim WidthQuadrant   As Integer 'aux
Dim HeightQuadrant  As Integer 'aux
Dim xBucle2         As Integer 'Real X
Dim yBucle2         As Integer 'Real Y
Dim iTile           As Integer
    
    OriginLeft = CntDessingWidth - 1 '2
    OriginTop = 1 '2
    WidthQuadrant = OriginLeft
    HeightQuadrant = CntDessingHeight - 1 '2
    iTile = 0
    counterX = WidthQuadrant - 1
    counterY = 1
    Z = 0
    LocalCount = 0
    
    For Z = 1 To 6
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
                    
                    If DessingArray(xBucle2, yBucle2, Z) = 1 Then
                        iTile = iTile + 1
                        Load FrmMain.imgTile(iTile)
                        FrmMain.imgTile(iTile).left = xBucle2 * (GFXTileWidth \ 2) + (Z - 2) * ShadowPixels
                        FrmMain.imgTile(iTile).top = yBucle2 * (GFXTileHeight \ 2) + (Z - 1) * ShadowPixels - ((Z - 1) * 2 * ShadowPixels + PixelsVerticalOffset)
                        FrmMain.imgTile(iTile).Visible = True
                        FrmMain.imgTile(iTile).ZOrder 0
                        FrmMain.imgTile(iTile).Tag = "(" & Format(xBucle2, "00") & "," & Format(yBucle2, "00") & "," & Z & ")"
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
    FreeTiles = LocalCount

End Sub

Public Sub DrawTilesPlayMahjonng()
Dim counterX As Integer
Dim counterY As Integer
Dim xBucle As Integer
Dim yBucle As Integer
Dim Z As Integer
Dim ExitBucle As Boolean
Dim LocalCount As Integer
Dim OriginLeft As Integer
Dim OriginTop As Integer
Dim WidthQuadrant As Integer
Dim HeightQuadrant As Integer
Dim xBucle2 As Integer
Dim yBucle2 As Integer
Dim SprInfo As String


    OriginLeft = CntDessingWidth - 1 '2
    OriginTop = 1 '2
    WidthQuadrant = OriginLeft
    HeightQuadrant = CntDessingHeight - 1 '2
            
    MouseRead = False
    
    CleanMain

    counterX = WidthQuadrant - 1
    counterY = 1
    Z = 0
    
    LocalCount = 0
    FreeMoves = 0
    
    ReDim FreeT(0)
    ReDim FreeTHintsX(0)
    ReDim FreeTHintsY(0)
    ReDim FreeTHintsZ(0)
    
    For Z = 1 To 5 '6
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
                    
                    If DessingArray(xBucle2, yBucle2, Z) = 1 Then
                        
                        SprInfo = SpriteInformation(xBucle2, yBucle2, Z)
                        DrawTilePlay xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset, Z, SprInfo
                        
                        'PutTileText xBucle2 + 2, yBucle2 + 2, SprInfo
                        
                        If IsFreeTile(xBucle2, yBucle2, Z, DessingArray) = True Then
                            ReDim Preserve FreeT(UBound(FreeT) + 1)
                            FreeT(UBound(FreeT)) = SprInfo
                        
                            ReDim Preserve FreeTHintsX(UBound(FreeT))
                            ReDim Preserve FreeTHintsY(UBound(FreeT))
                            ReDim Preserve FreeTHintsZ(UBound(FreeT))
                            FreeTHintsX(UBound(FreeT)) = xBucle2
                            FreeTHintsY(UBound(FreeT)) = yBucle2
                            FreeTHintsZ(UBound(FreeT)) = Z
                        End If
                        
                            LocalCount = LocalCount + 1
                    End If
                End If
                        
                If TFirstClick = True Then
                    With FirstTileClick
                        If Z = .posZ And xBucle2 = .posX And yBucle2 = .PosY Then
                            DrawTileSel xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset
                        End If
                    End With
                End If

                If Params.Highlight <> 0 Then
                    If overImgTile = True Then
                        If Z = zImgTile And xBucle2 = xImgTile And yBucle2 = yImgTile Then
                            DrawTileSel xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset
                        End If
                    End If
                End If
                If HinstVisibles = True Then
                    If (xBucle2 = FirstHintX And yBucle2 = FirstHintY And Z = FirstHintZ) Or _
                        (xBucle2 = SecondHintX And yBucle2 = SecondHintY And Z = SecondHintZ) Then
                            DrawTileSel xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset
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
    
    FreeTiles = LocalCount
    FreeMoves = ReturnAvailableMoves(FreeT)
    FrmMain.lblCountTiles.Caption = LocalCount
    FrmMain.lblMoves.Caption = FreeMoves
    FrmMain.lblTime.Caption = Mid(TimeSerial(0, 0, ElapsedSeconds), 3)
    BlitMain
End Sub

'This function Make a Puzzle.
'The function checks if it is possible make a puzzle (some layouts are imposible to finished)
'In the easy mode, only free tiles are used to make the puzzle:
'   Took Randomly a Free Tile.----> A. Now, took randomly other free tile ----->B
'   Now, put the SAME srpite information on A and B.
'   "erase" A and B from the main Array. Begin the bucle until all tiles are completed

Public Function MakePuzzle() As Boolean

'Working with temporay array
Dim TempArray(CntDessingWidth, CntDessingHeight, 5) As Integer

Dim FreeX() As Integer
Dim FreeY() As Integer
Dim FreeZ() As Integer

Dim X As Integer
Dim Y As Integer
Dim Z As Integer

Dim LocalCounterTiles   As Long
Dim ActualSprTile       As Long
Dim rndSprite           As Integer
Dim lFreeTiles          As Long
Dim PairTile            As Long
Dim CorrectAssignament  As Boolean
 
Dim aa As Integer
    
    LocalCounterTiles = 0
    For X = 0 To CntDessingWidth
        For Y = 0 To CntDessingHeight
            For Z = 1 To 5
                TempArray(X, Y, Z) = DessingArray(X, Y, Z)
                If TempArray(X, Y, Z) = 1 Then
                    LocalCounterTiles = LocalCounterTiles + 1
                End If
            Next Z
        Next Y
    Next X

    MakePuzzle = True
    
    Select Case Params.MahjonggLevelDifficult
        Case 0 'easy puzzle
            ActualSprTile = 1
            Do While LocalCounterTiles > 0
                ReDim FreeX(0)
                ReDim FreeY(0)
                ReDim FreeZ(0)
                
                For Z = 5 To 1 Step -1
                    For X = 0 To CntDessingWidth
                        For Y = 0 To CntDessingHeight
                            
                            If TempArray(X, Y, Z) = 1 Then
                                If IsFreeTile(X, Y, Z, TempArray) = True Then
                                    ReDim Preserve FreeX(UBound(FreeX) + 1)
                                    FreeX(UBound(FreeX)) = X
                                    ReDim Preserve FreeY(UBound(FreeY) + 1)
                                    FreeY(UBound(FreeY)) = Y
                                    ReDim Preserve FreeZ(UBound(FreeZ) + 1)
                                    FreeZ(UBound(FreeZ)) = Z
                                End If
                            End If
                        Next Y
                    Next X
                Next Z
        
                lFreeTiles = UBound(FreeX)
                If lFreeTiles < 2 Then
                    ErrorDessing = NoSpace
                    MakePuzzle = False
                    Exit Function
                End If
                
                
                CorrectAssignament = True
                aa = 0
                Do
                    Randomize
                    If lFreeTiles = 2 Then
                        PairTile = 2
                    Else
                        PairTile = Int(((lFreeTiles - 1) * Rnd) + 2)
                        If FreeZ(PairTile) = 1 And TilesOnLevel(TempArray) = 2 Then
                            CorrectAssignament = False
                        End If
                    End If
                
                    aa = aa + 1
                    If aa >= 1000 Then
                        'MsgBox "Somethig wrong"
                        ErrorDessing = NoSpace
                        MakePuzzle = False
                        Exit Function
                    End If
                Loop Until CorrectAssignament = True
                
                TempArray(FreeX(1), FreeY(1), FreeZ(1)) = 0
                TempArray(FreeX(PairTile), FreeY(PairTile), FreeZ(PairTile)) = 0
        
                Randomize
                
                'Debug.Print "Ubound:" & UBound(TZorderSprites)
                rndSprite = Int((UBound(TZorderSprites) * Rnd) + 1)
                'rndSprite = aaa
                'Debug.Print "rnd:" & rndSprite
                'SpriteInformation(FreeX(1), FreeY(1), FreeZ(1)) = ReturnSPRTile(CInt(ActualSprTile))
                SpriteInformation(FreeX(1), FreeY(1), FreeZ(1)) = ReturnSPRTile(rndSprite)
                'SpriteInformation(FreeX(PairTile), FreeY(PairTile), FreeZ(PairTile)) = ReturnSPRTile(ActualSprTile)
                'SpriteInformation(FreeX(PairTile), FreeY(PairTile), FreeZ(PairTile)) = ReturnSPRTile(rndSprite)
                SpriteInformation(FreeX(PairTile), FreeY(PairTile), FreeZ(PairTile)) = SpriteInformation(FreeX(1), FreeY(1), FreeZ(1))
                'ActualSprTile = ActualSprTile + 2
                
                LocalCounterTiles = LocalCounterTiles - 2
            Loop
        
        Case 1 'Hard Puzzle
            
            
    End Select
    'Debug.Print "Puzzle Generation End"
    
    MemoryTile(1).Active = False
    MemoryTile(2).Active = False
    
    ElapsedSeconds = 0
    
    CounterHints = 0
    
    TimeAttackLives = 5
    
    stSeconds = 0
    
    viewStatusGameInfo
    
    InitOnMainHallFame
    
    ReDim UndoArray(0)
    NoMovesShow = False
    
    If Params.EnableMusic = True And Params.StartUpMusicOn = False Then
        If CanPlayMidi = True Then
            If OnlyOneCheckMusic = False Then
                OnlyOneCheckMusic = True
                StartSoundEngine
            End If
        End If
    End If
    Exit Function
End Function

'Return the number of total Tiles in Z level
Public Function TilesOnLevel(ByRef ArrayDataT() As Integer, Optional pLevel As Integer = 1) As Integer
Dim X As Integer
Dim Y As Integer
Dim aux As Integer
    aux = 0
    For X = 0 To CntDessingWidth
        For Y = 0 To CntDessingHeight
            If ArrayDataT(X, Y, pLevel) > 0 Then
                aux = aux + 1
            End If
    
        Next Y
    Next X
    TilesOnLevel = aux
End Function

'Returns the number of Free Tiles in Z Level
Public Function FreeOnLevel(ByRef arraydata() As Integer, Optional pLevel As Integer = 1) As Integer
Dim X As Integer
Dim Y As Integer
Dim aux As Integer
    aux = 0
    For Y = 1 To CntDessingHeight ' - 2
        For X = 1 To CntDessingWidth
            If arraydata(X, Y, pLevel) > 1 Then
                If IsFreeTile(X, Y, pLevel, arraydata) = True Then
                    aux = aux + 1
                End If
            End If
        Next X
    Next Y
    FreeOnLevel = aux
End Function

'Load and initializes DataArray from Laoyut files
Public Sub LoadDataFromFile(pFileName As String)
Dim nF As Integer
Dim MisDatos As String
Dim ByteDato As Integer
Dim contador As Integer
MisDatos = ""
Dim X As Integer
Dim Y As Integer
Dim Z As Integer

        CounterTiles = 0
        nF = FreeFile
        Open App.Path & "\Layouts\" & pFileName For Input As #nF
        Line Input #nF, MisDatos
        Line Input #nF, MisDatos
        Line Input #nF, MisDatos
    
    Close nF
    
    contador = 1
    For Z = 1 To 5
        For Y = 1 To CntDessingHeight ' - 2
            For X = 1 To CntDessingWidth
                ByteDato = Mid(MisDatos, contador, 1)
                DessingArray(X, Y, Z) = ByteDato

                contador = contador + 1
                If DessingArray(X, Y, Z) = 1 Then
                    CounterTiles = CounterTiles + 1
                End If
            Next X
        Next Y
    Next Z
'
    NeededTiles = 0
End Sub

'Return how many moves are available

Public Function ReturnAvailableMoves(ByRef arraydata() As String) As Integer
Dim aux As Integer
Dim kIndex As Integer
Dim I As Integer
Dim sFamilyA As String
Dim sIndexA As Integer
Dim sFamilyB As String
Dim sIndexB As Integer
    
    aux = 0
    kIndex = 1
    Do
    For I = 1 To UBound(arraydata)
        sFamilyA = Mid(arraydata(kIndex), 1, 1)
        sIndexA = Mid(arraydata(kIndex), 2, 1)
        
        If I <> kIndex Then
            sFamilyB = Mid(arraydata(I), 1, 1)
            sIndexB = Mid(arraydata(I), 2, 1)
        
            If (sFamilyA = sFamilyB) And (sFamilyA = "F" Or sFamilyA = "S") Then
                aux = aux + 1
            Else
                If (sFamilyA = sFamilyB) And (sIndexA = sIndexB) Then
                    aux = aux + 1
                End If
            End If
        End If
    Next I
    kIndex = kIndex + 1
    Loop Until kIndex > UBound(arraydata)
    ReturnAvailableMoves = aux / 2
End Function

Public Sub viewStatusGameInfo(Optional flagVisibiliy As Boolean = True)
    FrmMain.lblInfoCountTiles.Visible = True
    FrmMain.lblCountTiles.Visible = True
    FrmMain.lblInfoFreeTiles.Visible = Not flagVisibiliy
    FrmMain.lblFreeTiles.Visible = Not flagVisibiliy
'    If GameMode = PlayMemory Then
'        FrmMain.lblInfoMoves.Visible = False
'        FrmMain.lblMoves.Visible = False
'    Else
        FrmMain.lblInfoMoves.Visible = flagVisibiliy
        FrmMain.lblMoves.Visible = flagVisibiliy
'    End If
    FrmMain.lblInfoNeededTiles.Visible = Not flagVisibiliy
    FrmMain.lblNeededTiles.Visible = Not flagVisibiliy
    
    FrmMain.lblInfoTime.Visible = flagVisibiliy
    FrmMain.lblTime.Visible = flagVisibiliy
    FrmMain.lblDescLayout.Visible = Not flagVisibiliy
    FrmMain.txtDescLayout.Visible = Not flagVisibiliy


End Sub

'Display Hints. Penalty time!
Public Sub DisplayHint()
On Error GoTo ErrorHandler
Dim rndValue    As Integer
Dim lTFree      As Integer
Dim infoFirst   As String
Dim infoSecond  As String
Dim EndLoop     As Boolean
Dim I           As Integer

lTFree = UBound(FreeTHintsX)
If lTFree > 0 Then
    
    EndLoop = False
    Do Until EndLoop = True
        Randomize
        rndValue = Int((lTFree * Rnd) + 1)
        infoFirst = FreeT(rndValue)
        infoSecond = "NULL"
        For I = 1 To lTFree
            If I <> rndValue Then
                If FreeT(I) = infoFirst Then
                    infoSecond = FreeT(I)
                    FirstHintX = FreeTHintsX(rndValue)
                    FirstHintY = FreeTHintsY(rndValue)
                    FirstHintZ = FreeTHintsZ(rndValue)
                    SecondHintX = FreeTHintsX(I)
                    SecondHintY = FreeTHintsY(I)
                    SecondHintZ = FreeTHintsZ(I)
                  
                    
                    HinstVisibles = True
                    EndLoop = True
                    Exit For
                    
                End If
            
            End If
        Next I
        'Debug.Print "LOOP"
    Loop
    'Debug.Print "****"
    'Debug.Print "1:" & infoFirst
    'Debug.Print "2:" & infoSecond
    ElapsedSeconds = ElapsedSeconds + 30
    CounterHints = CounterHints + 1

End If
Exit Sub
ErrorHandler:
    HinstVisibles = False
End Sub
