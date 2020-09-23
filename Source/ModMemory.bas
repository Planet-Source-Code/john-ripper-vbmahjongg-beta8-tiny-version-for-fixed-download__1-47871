Attribute VB_Name = "ModMemory"
'#######################################################
' Memory Game Module
'#######################################################
Option Explicit

'Game levels
Public Enum tMemoryLevel
    Easy = 0
    Hard = 1
    Extreme = 2
End Enum
Public MemoryLevel As tMemoryLevel

'Type of tile games on Memory game
Public Type tMemoryTile
    Active As Boolean       'Removed?
    x As Integer            'Position X on Array
    y As Integer            'Position Y on Array
    Z As Integer            'Position Z on Array
    SprInfo As String       'Sprite Info
    ControlIndex As Integer 'Index of image control
End Type
Public MemoryTile(2) As tMemoryTile 'First and second (1), (2)

'Change backface tiles on Extreme Level
Public Sub FlushBackFaceExtreme()
    Dim rndSprite As Integer
    Dim x         As Integer
    Dim y         As Integer
        
        ReDim TZorderSprites(72)
        For x = 0 To CntDessingWidth
            For y = 0 To CntDessingHeight
                
                Randomize
                rndSprite = Int((UBound(TZorderSprites) * Rnd) + 1) 'Randon Sprite info
                SpriteBackInfo(x, y, 1) = ReturnSPRTile(rndSprite)  'Store "new" backface Sprite info

            Next y
        Next x
End Sub

'Draw Tiles on Memory Game
'As other "Draw Rutines" the tiles are painting by this criteria:
'          15 11  7  4  2  1
'          19 16 12  8  5  3
'          22 20 17 13  9  6
'          24 23 21 18 14 10
'In other words, tiles are drawing in "diagonal", starting on upper-right corner, and form Level 1 to Level Max

Public Sub DrawTilesPlayMemory()
Dim counterX        As Integer  'aux
Dim counterY        As Integer  'aux
Dim xBucle          As Integer  'aux
Dim yBucle          As Integer  'aux
Dim Z               As Integer  'Real Z Array
Dim ExitBucle       As Boolean  'for exit routine
Dim LocalCount      As Integer  'counts Actual Array Tiles
Dim OriginLeft      As Integer  'aux
Dim OriginTop       As Integer  'aux
Dim WidthQuadrant   As Integer  'aux
Dim HeightQuadrant  As Integer  'aux
Dim xBucle2         As Integer  'Real X Array
Dim yBucle2         As Integer  'Real Y Array
Dim SprInfoBack     As String   'BackFace Sprite Info
Dim SprInfo         As String   'Tilw e Info

    OriginLeft = CntDessingWidth - 1
    OriginTop = 1
    WidthQuadrant = OriginLeft
    HeightQuadrant = CntDessingHeight - 1
    MouseRead = False
            
    CleanMain
            
    counterX = WidthQuadrant - 1
    counterY = 1
    
    Z = 0
            
            
    LocalCount = 0


    For Z = 1 To 1 '5   'Originally, Memory Game only have 1 Z Level
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
                        'Draws backface:
                        If MemoryLevel <> Extreme Then
                            DrawTile xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset, Z
                        Else
                            SprInfoBack = SpriteBackInfo(xBucle2, yBucle2, Z)
                            DrawTilePlay xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset, Z, SprInfoBack, , , , , , True
                        End If
                        LocalCount = LocalCount + 1
                    End If
                End If
                        
                'Draw Selected Tile
                If MemoryTile(1).Active = True Then
                    If Z = MemoryTile(1).Z And xBucle2 = MemoryTile(1).x And yBucle2 = MemoryTile(1).y Then
                        SprInfo = SpriteInformation(xBucle2, yBucle2, Z)
                        DrawTilePlay xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset, Z, SprInfo
                    End If
                End If

                If MemoryTile(2).Active = True Then
                    If Z = MemoryTile(2).Z And xBucle2 = MemoryTile(2).x And yBucle2 = MemoryTile(2).y Then
                        SprInfo = SpriteInformation(xBucle2, yBucle2, Z)
                        DrawTilePlay xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset, Z, SprInfo
                    End If
                End If

                        
                'Finally, Draw Selected square
                
                If Params.Highlight <> 0 Then
                    If overImgTile = True Then
                        If Z = zImgTile And xBucle2 = xImgTile And yBucle2 = yImgTile Then
                            DrawTileSel xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset
                        End If
                    End If
                End If
                
                'Draw Other "Active" Tiles
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
    
    FrmMain.lblCountTiles.Caption = LocalCount
    FrmMain.lblTime.Caption = Mid(TimeSerial(0, 0, ElapsedSeconds), 3)
    
    BlitMain
            
End Sub


