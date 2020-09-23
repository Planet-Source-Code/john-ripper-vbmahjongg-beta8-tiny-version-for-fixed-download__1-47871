Attribute VB_Name = "ModDessingerLevel"
'#######################################################
' Dessigner Level Module of Mahjongg
'#######################################################
Option Explicit

Public Enum eErrorDessing
    NeededError = 0
    NoSpace = 1
End Enum
Public ErrorDessing As eErrorDessing

Public Sub DrawTilesDessing()
Dim counterX        As Integer
Dim counterY        As Integer
Dim xBucle          As Integer
Dim yBucle          As Integer
Dim Z               As Integer
Dim ExitBucle       As Boolean
Dim OriginLeft      As Integer
Dim OriginTop       As Integer
Dim WidthQuadrant   As Integer
Dim HeightQuadrant  As Integer
Dim xBucle2         As Integer
Dim yBucle2         As Integer
Dim PicHandle       As Long
Dim CursorPosition  As POINTAPI
    
    OriginLeft = CntDessingWidth - 1 '2
    OriginTop = 1 '2
    WidthQuadrant = OriginLeft
    HeightQuadrant = CntDessingHeight - 1 '2

    
    GetCursorPos CursorPosition

    PicHandle = WindowFromPoint(CursorPosition.x, CursorPosition.y)
    
    If PicHandle = FrmMain.PicMain.hwnd Then 'And MouseRead = True Then
                   
        MouseRead = False

        CleanMain
        
        counterX = WidthQuadrant - 1
        counterY = 1
        Z = 0
        
        FreeTiles = 0
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
                            DrawTile xBucle2 * (GFXTileWidth \ 2) + (Z - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (Z - 1) * ShadowPixels - PixelsVerticalOffset, Z
                      
                             If IsFreeTile(xBucle2, yBucle2, Z, DessingArray) = True Then
                                FreeTiles = FreeTiles + 1
                             End If
                        
                        End If
                    End If
                    If CursorX = xBucle2 And CursorY = yBucle2 Then
                        LookUnderDessingTile xBucle2, yBucle2
                        If Z = LevelHeight Then
                            DrawTile xBucle2 * (GFXTileWidth \ 2) + (LevelHeight - 1) * ShadowPixels, yBucle2 * (GFXTileHeight \ 2) - (LevelHeight - 1) * ShadowPixels - PixelsVerticalOffset, Z
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
        BlitMain
    End If
    FrmMain.lblFreeTiles.Caption = FreeTiles

End Sub

Public Sub MoveDessingLeft()
    Dim x        As Integer
    Dim y        As Integer
    Dim Z        As Integer
    Dim CanIMove As Boolean

    CanIMove = True
    
    For Z = 1 To 5
        For y = 1 To CntDessingHeight - 1
            x = 1
            If DessingArray(x, y, Z) <> 0 Then
                If CanIMove = True Then
                    CanIMove = False
                    Exit For
                End If
            End If
        Next y
    Next Z
    
    If CanIMove = True Then
        For Z = 1 To 5
            For y = 1 To CntDessingHeight - 1
                For x = 1 To CntDessingWidth - 1
                    DessingArray(x, y, Z) = DessingArray(x + 1, y, Z)
                Next x
            Next y
        Next Z
    End If
    
End Sub

Public Sub MoveDessingRight()
    Dim x        As Integer
    Dim y        As Integer
    Dim Z        As Integer
    Dim CanIMove As Boolean

    CanIMove = True
    
    For Z = 1 To 5
        For y = 1 To CntDessingHeight - 1
            x = CntDessingWidth - 1
            If DessingArray(x, y, Z) <> 0 Then
                If CanIMove = True Then
                    CanIMove = False
                    Exit For
                End If
            End If
        Next y
    Next Z
    
    If CanIMove = True Then
        For Z = 1 To 5
            For y = 1 To CntDessingHeight - 1
                For x = CntDessingWidth - 1 To 1 Step -1
                    DessingArray(x, y, Z) = DessingArray(x - 1, y, Z)
                Next x
            Next y
        Next Z
    End If
End Sub

Public Sub MoveDessingUp()
    Dim x        As Integer
    Dim y        As Integer
    Dim Z        As Integer
    Dim CanIMove As Boolean

    CanIMove = True
    
    For Z = 1 To 5
        y = 1
        For x = 1 To CntDessingWidth - 1
            If DessingArray(x, y, Z) <> 0 Then
                If CanIMove = True Then
                    CanIMove = False
                    Exit For
                End If
            End If
        Next x
    Next Z
    
    If CanIMove = True Then
        For Z = 1 To 5
            For y = 1 To CntDessingHeight - 1
                For x = 1 To CntDessingWidth - 1
                    DessingArray(x, y, Z) = DessingArray(x, y + 1, Z)
                Next x
            Next y
        Next Z
    End If
End Sub

Public Sub MoveDessingDown()
    Dim x        As Integer
    Dim y        As Integer
    Dim Z        As Integer
    Dim CanIMove As Boolean

    CanIMove = True
    
    For Z = 1 To 5
        y = CntDessingHeight - 1
        For x = 1 To CntDessingWidth - 1
            If DessingArray(x, y, Z) <> 0 Then
                If CanIMove = True Then
                    CanIMove = False
                    Exit For
                End If
            End If
        Next x
    Next Z
    
    If CanIMove = True Then
        For Z = 1 To 5
            For y = CntDessingHeight - 1 To 1 Step -1
                For x = 1 To CntDessingWidth - 1
                    DessingArray(x, y, Z) = DessingArray(x, y - 1, Z)
                Next x
            Next y
        Next Z
    End If

End Sub

Public Function IsCorrectDessing(lNeeded As Integer) As Boolean
    IsCorrectDessing = True
    If lNeeded <> 0 Then
        ErrorDessing = NeededError
        IsCorrectDessing = False
        
    End If
    
    If TilesOnLevel(DessingArray) = 1 Then
        ErrorDessing = NoSpace
        IsCorrectDessing = False
        
    End If
    'Debug.Print "XXX"
End Function

Public Sub ShowErrorDessing()
    Select Case ErrorDessing
        Case eErrorDessing.NeededError
            MsgBox InfosIDIOM(12), vbCritical, InfosIDIOM(7)
        Case eErrorDessing.NoSpace
            MsgBox InfosIDIOM(11), vbCritical, InfosIDIOM(7)
    End Select
End Sub

