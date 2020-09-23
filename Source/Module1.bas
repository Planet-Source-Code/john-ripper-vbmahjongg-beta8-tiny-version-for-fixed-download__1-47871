Attribute VB_Name = "Module1"
'#######################################################
' Misc Module
' This module contains "bliting" Subs and other commond Subs
'#######################################################
Option Explicit

'Blits background Pic on Dessing Form
Public Sub BlitMainPrev()
    SDC = frmLoadLays.PicWorkPrev.hdc
    DDC = frmLoadLays.PicMainPrev.hdc
    BitBlt DDC, 0, 0, frmLoadLays.PicMainPrev.ScaleWidth, frmLoadLays.PicMainPrev.ScaleHeight, SDC, 0, 0, SRCCOPY
End Sub

'Clear background Pic on Dessing Form
Public Sub CleanMainPrev()
    SDC = frmLoadLays.PicCleanPrev.hdc
    DDC = frmLoadLays.PicWorkPrev.hdc
    BitBlt DDC, 0, 0, frmLoadLays.PicMainPrev.ScaleWidth, frmLoadLays.PicMainPrev.ScaleHeight, SDC, 0, 0, SRCCOPY
End Sub

'Main Blit
Public Sub BlitMain()
    SDC = FrmWork.PicWork.hdc
    DDC = FrmMain.PicMain.hdc
    BitBlt DDC, 0, 0, XPicMain, YPicMain, SDC, 0, 0, SRCCOPY
End Sub

'Main Clear
Public Sub CleanMain()
    SDC = FrmClean.PicClean.hdc
    DDC = FrmWork.PicWork.hdc
    BitBlt DDC, 0, 0, XPicMain, YPicMain, SDC, 0, 0, SRCCOPY
End Sub

Public Sub PutTileText(X As Integer, Y As Integer, SpriteInfoType As String, SpriteInfoIndex As Integer)

Dim Xtext As Long    'variable to read the "apropiate" text Tile



    Select Case UCase(SpriteInfoType)
        Case "A", "V", "R"
            Xtext = SpriteInfoIndex - 1
        Case "S"
            Xtext = 9 + (SpriteInfoIndex - 1)
        Case "W"
            Xtext = 13 + (SpriteInfoIndex - 1)
        Case "F"
            Xtext = 17 + (SpriteInfoIndex - 1)
        Case "D"
            Xtext = 21 + (SpriteInfoIndex - 1)
    End Select
    DDC = FrmWork.PicWork.hdc

    SDC = FrmSprites.PicNumbers.hdc
    
    BitBlt DDC, X, Y, 20, 8, SDC, (Xtext * 21) + 1, 1, SRCAND
    'BitBlt DDC, X, Y, 20, 8, SDC, 1, 10, SRCCOPY

End Sub

'Draw Tile with "apropiate" sprite (sprite info)
Public Sub DrawTilePlay(XFace As Integer, YFace As Integer, Zlevel As Integer, SpriteInfo As String, Optional TFaceHeight = GFXTileHeight, Optional TFaceWidth = GFXTileWidth, _
                    Optional TShadowHeight = GFXTileShadowHeight, Optional TShadowWidth = GFXTileShadowWidth, _
                    Optional ShaPixels = ShadowPixels, Optional MemoryExtreme As Boolean = False)


'Sprites has two "master Keys"
'   -Type: Seassons, Flowers, Winds, Cracks, Dots, Dragons, etc
'   -Index: 1,2,3,4....

Dim TypeTile        As String   'Sprite Info "Type"
Dim IndexTypeTile   As Integer  'Sprite Info "Index"

Dim SourceX         As Long 'Variables for read "apropiate" tile on File Tile
Dim SourceY         As Long

    TypeTile = Mid(SpriteInfo, 1, 1)
    IndexTypeTile = Mid(SpriteInfo, 2, 1)
    
    Select Case UCase(TypeTile)
        Case "A"
            SourceX = (IndexTypeTile - 1) * TFaceWidth
            SourceY = 2 * TFaceHeight
        Case "R"
            SourceX = (IndexTypeTile - 1) * TFaceWidth
            SourceY = 0
        Case "V"
            SourceX = (IndexTypeTile - 1) * TFaceWidth
            SourceY = 1 * TFaceHeight
        Case "F"
            SourceX = (IndexTypeTile - 1) * TFaceWidth
            SourceY = 4 * TFaceHeight
        Case "S"
            SourceX = (IndexTypeTile - 1) * TFaceWidth
            SourceY = 3 * TFaceHeight
        Case "W"
            SourceX = (4 + (IndexTypeTile - 1)) * TFaceWidth
            SourceY = 3 * TFaceHeight
        Case "D"
            SourceX = (4 + (IndexTypeTile - 1)) * TFaceWidth
            SourceY = 4 * TFaceHeight
    End Select
    DDC = FrmWork.PicWork.hdc


    'First, Draw Shadow

    SDC = FrmSprites.PicShadow.hdc
    
    BitBlt DDC, XFace - ShaPixels, YFace, TShadowWidth, TShadowHeight, SDC, 0, TShadowHeight, SRCAND
    BitBlt DDC, XFace - ShaPixels, YFace, TShadowWidth, TShadowHeight, SDC, (Zlevel * TShadowWidth) - TShadowWidth, 0, SRCPAINT

    'and last, Draw Face

    If MemoryExtreme = False Then
        SDC = FrmSprites.PicTileSet.hdc
    Else
        SDC = FrmSprites.PicTileSetMemoryExtreme.hdc
    End If
    
    BitBlt DDC, XFace, YFace, TFaceWidth, TFaceHeight, SDC, SourceX, SourceY, SRCCOPY
    
    If Params.DisplayTextOnTiles = True Then
        PutTileText XFace + 2, YFace + 2, TypeTile, IndexTypeTile
    End If
End Sub

'Draw BackFace Tile. This is for "dessing mode"
Public Sub DrawTile(XFace As Integer, YFace As Integer, Zlevel As Integer, Optional TFaceHeight = GFXTileHeight, Optional TFaceWidth = GFXTileWidth, _
                    Optional TShadowHeight = GFXTileShadowHeight, Optional TShadowWidth = GFXTileShadowWidth, _
                    Optional ShaPixels = ShadowPixels)

    DDC = FrmWork.PicWork.hdc

    'First, Draw Shadow

    SDC = FrmSprites.PicShadow.hdc
    
    BitBlt DDC, XFace - ShaPixels, YFace, TShadowWidth, TShadowHeight, SDC, 0, TShadowHeight, SRCAND
    BitBlt DDC, XFace - ShaPixels, YFace, TShadowWidth, TShadowHeight, SDC, (Zlevel * TShadowWidth) - TShadowWidth, 0, SRCPAINT
    
    'and last, Draw Face

    SDC = FrmSprites.PicBackTileSet.hdc
    
    BitBlt DDC, XFace, YFace, TFaceWidth, TFaceHeight, SDC, 0, 0, SRCCOPY
    

End Sub

'Draw TileMap on Dessing Form. "Little View" of a layou
Public Sub DrawTilePrev(XFace As Integer, YFace As Integer, Zlevel As Integer, Optional TFaceHeight = pGFXTileHeight, Optional TFaceWidth = pGFXTileWidth, _
                    Optional TShadowHeight = pGFXTileShadowHeight, Optional TShadowWidth = pGFXTileShadowWidth, _
                    Optional ShaPixels = pShadowPixels)

    DDC = frmLoadLays.PicWorkPrev.hdc

    'First, Draw Shadow

    SDC = FrmSprites.PicPrevTiles.hdc
    
    BitBlt DDC, XFace - ShaPixels, YFace, TShadowWidth, TShadowHeight, SDC, 0, 30, SRCAND
    BitBlt DDC, XFace - ShaPixels, YFace, TShadowWidth, TShadowHeight, SDC, (Zlevel * TShadowWidth) - TShadowWidth, 14, SRCPAINT
    
    'and last, Draw Face

    'SDC = FrmSprites.PicBackTileSet.hDC
    
    BitBlt DDC, XFace, YFace, TFaceWidth, TFaceHeight, SDC, (Zlevel * TFaceWidth) - TFaceWidth, 0, SRCCOPY
    
End Sub

'Draw square Red, Green, or Blue in order to indicate that a Tile its Selected or under mouse
Public Sub DrawTileSel(XFace As Integer, YFace As Integer, Optional TFaceHeight = GFXTileHeight, Optional TFaceWidth = GFXTileWidth)
    DDC = FrmWork.PicWork.hdc
    SDC = FrmSprites.PicSel.hdc
    BitBlt DDC, XFace, YFace, TFaceWidth, TFaceHeight, SDC, 0, 0, SRCAND
    
End Sub

'This Sub, Elevates or Decreases Tile Height automatically on Dessing Mode
Public Sub LookUnderDessingTile(posX As Integer, PosY As Integer, Optional OnlyDown As Boolean = False)
    Dim localHeight     As Integer
    
    LevelHeight = 1
    For localHeight = 5 To 0 Step -1
        If DessingArray(posX, PosY, localHeight) > 0 Then
            LevelHeight = localHeight + 1
            Exit For
        End If
        If OnlyDown = False Then
            If DessingArray(posX - 1, PosY, localHeight) > 0 Then
                LevelHeight = localHeight + 1
                Exit For
            End If
            If DessingArray(posX + 1, PosY, localHeight) > 0 Then
                LevelHeight = localHeight + 1
                Exit For
            End If
            If DessingArray(posX - 1, PosY - 1, localHeight) > 0 Then
                LevelHeight = localHeight + 1
                Exit For
            End If
            If DessingArray(posX + 1, PosY - 1, localHeight) > 0 Then
                LevelHeight = localHeight + 1
                Exit For
            End If
            If DessingArray(posX - 1, PosY + 1, localHeight) > 0 Then
                LevelHeight = localHeight + 1
                Exit For
            End If
            If DessingArray(posX + 1, PosY + 1, localHeight) > 0 Then
                LevelHeight = localHeight + 1
                Exit For
            End If
            If DessingArray(posX, PosY + 1, localHeight) > 0 Then
                LevelHeight = localHeight + 1
                Exit For
            End If
            If DessingArray(posX, PosY - 1, localHeight) > 0 Then
                LevelHeight = localHeight + 1
                Exit For
            End If
        End If
    Next localHeight

End Sub

'This functions Returs true or false if a tile on position x,y,z its free
'by the rules of classic mahjonng, a tile its free when:
'Side left OR side right are completly free AND not have any tile above

Public Function IsFreeTile(posX As Integer, PosY As Integer, Zlevel As Integer, ByRef arraydata() As Integer) As Boolean
Dim lFree As Boolean    'left Free
Dim rFree As Boolean    'Right free
Dim zFree As Boolean
    
    lFree = True
    rFree = True
    zFree = True
    
    If posX = 1 Then
        lFree = True
    End If
    If posX = CntDessingWidth - 1 Then
        rFree = True
    End If
    
    If posX <> 1 Then
        If arraydata(posX - 2, PosY, Zlevel) > 0 Then
            lFree = False
        End If
    End If
    
    If posX <> CntDessingWidth - 1 Then
        If arraydata(posX + 2, PosY, Zlevel) > 0 Then
            rFree = False
        End If
    End If
    If posX <> 1 Then
        If arraydata(posX - 2, PosY - 1, Zlevel) > 0 Then
            lFree = False
        End If
    End If
    If posX <> 1 Then
        If arraydata(posX - 2, PosY + 1, Zlevel) > 0 Then
            lFree = False
        End If
    End If
    If posX <> CntDessingWidth - 1 Then
        If arraydata(posX + 2, PosY - 1, Zlevel) > 0 Then
            rFree = False
        End If
    End If
    If posX <> CntDessingWidth - 1 Then
        If arraydata(posX + 2, PosY + 1, Zlevel) > 0 Then
            rFree = False
        End If
    End If

    If Zlevel < 5 Then
    
        If posX <> 1 Then
            If arraydata(posX, PosY, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
        
        If posX <> 1 Then
            If arraydata(posX, PosY - 1, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
        
        If posX <> 1 Then
            If arraydata(posX, PosY + 1, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
        If posX <> 1 Then
            If arraydata(posX - 1, PosY, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
        
        If posX <> CntDessingWidth - 1 Then
            If arraydata(posX + 1, PosY, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
        If posX <> 1 Then
            If arraydata(posX - 1, PosY - 1, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
        If posX <> 1 Then
            If arraydata(posX - 1, PosY + 1, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
        If posX <> CntDessingWidth - 1 Then
            If arraydata(posX + 1, PosY - 1, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
        If posX <> CntDessingWidth - 1 Then
            If arraydata(posX + 1, PosY + 1, Zlevel + 1) > 0 Then
                zFree = False
            End If
        End If
    
    End If


    If zFree = True And (rFree = True Or lFree = True) Then
        IsFreeTile = True
    Else
        IsFreeTile = False
    End If
End Function

'Save Dessing Layout. Compatible with Kyodai format.
Public Sub SaveLayout(NombreFichero As String, NombreInterno As String)
Dim nF          As Integer
Dim MisDatos    As String   'Layout data

MisDatos = ""
Dim X As Integer
Dim Y As Integer
Dim Z As Integer

    For Z = 1 To 5
        For Y = 1 To CntDessingHeight ' - 2
            For X = 1 To CntDessingWidth
                MisDatos = MisDatos & DessingArray(X, Y, Z)
            Next X
        Next Y
    Next Z
    nF = FreeFile
    Open NombreFichero For Output As nF
        Print #nF, "VbMahjongg 2.1"
        Print #nF, NombreInterno
        Print #nF, MisDatos
    
    Close nF
End Sub

'This function Returns the sprite information stored in tile
Function ReturnSPRTile(Index As Integer) As String

Dim rIndex       As Integer
Dim I            As Integer
Dim aux          As Long
Dim TempZorder() As Integer

'    If Index > 144 Then
'        rIndex = Index Mod 144
'        If rIndex = 0 Then
'            rIndex = 144
'        End If
'    Else
'        rIndex = Index
'    End If
    
    rIndex = TZorderSprites(Index)
    'Debug.Print "-----(" & Index & ")->" & rIndex
    aux = 0
    For I = 1 To Len(TilesSPRarray)
        If Mid(TilesSPRarray, I, 1) = "," Then
            aux = aux + 1
            If aux = rIndex Then
           
                ReturnSPRTile = Mid(TilesSPRarray, I + 1, 2)
                Exit For
            End If
        End If
    Next I


    TZorderSprites(Index) = -1
'    For i = 1 To UBound(TZorderSprites)
'        Debug.Print "(" & i & "):" & TZorderSprites(i)
'    Next i
    GenericQuickSort TZorderSprites, 1, UBound(TZorderSprites)

    ReDim TempZorder(UBound(TZorderSprites) - 1)
    For I = 2 To UBound(TZorderSprites)
        TempZorder(I - 1) = TZorderSprites(I)
    Next I
    ReDim TZorderSprites(UBound(TempZorder))
    
    For I = 1 To UBound(TempZorder)
        TZorderSprites(I) = TempZorder(I)
    Next I

    If UBound(TZorderSprites) = 0 Then
        ReDim TZorderSprites(72)
        For I = 1 To 72
            TZorderSprites(I) = I
        Next I
    End If
    'Debug.Print "New:" & UBound(TZorderSprites)
End Function

'Generic QuickSort for "fast" shorting
Public Sub GenericQuickSort(ByRef vntArr() As Integer, _
    lngLeft As Long, lngRight As Long)

    Dim I As Long
    Dim j As Long
    Dim lngMid As Long
    Dim vntTestVal As Variant
    Dim vntTemp As Integer
    
    If lngLeft < lngRight Then
        lngMid = (lngLeft + lngRight) \ 2
        vntTestVal = vntArr(lngMid)
        I = lngLeft
        j = lngRight
        Do
            Do While vntArr(I) < vntTestVal
                I = I + 1
            Loop
            Do While vntArr(j) > vntTestVal
                j = j - 1
            Loop
            If I <= j Then
                vntTemp = vntArr(j)
                vntArr(j) = vntArr(I)
                vntArr(I) = vntTemp
                I = I + 1
                j = j - 1
            End If
        Loop Until I > j

        ' Optimize sort by sorting smaller segment first
        If j <= lngMid Then
            Call GenericQuickSort(vntArr, lngLeft, j)
            Call GenericQuickSort(vntArr, I, lngRight)
        Else
            Call GenericQuickSort(vntArr, I, lngRight)
            Call GenericQuickSort(vntArr, lngLeft, j)
        End If
    End If
End Sub

' SKIN SUBS

Public Sub SkinAnime(FormDestino As Form, PictureMosaico As PictureBox)
Dim X As Integer
Dim Y As Integer
Dim scrW As Long 'Form Width
Dim scrH As Long 'Form Heigh
Dim picW As Long 'Picture Width
Dim picH As Long 'Picture Heigh
Dim TotX As Long 'Nº de mosaicos horizontales
Dim TotY As Long 'Nº de mosaicos verticales
    
    
    scrW = FormDestino.ScaleWidth
    scrH = FormDestino.ScaleHeight
    
    picW = PictureMosaico.ScaleWidth
    picH = PictureMosaico.ScaleHeight
    
    TotX = scrW \ picW
    TotY = scrH \ picH
    
    SDC = PictureMosaico.hdc
    DDC = FormDestino.hdc
    For Y = TotY - 1 To TotY
    
        For X = TotX To TotX
            BitBlt DDC, X * picW, Y * picH, picW, picH, SDC, 0, 0, SRCCOPY
        Next X
    Next Y
End Sub

Public Sub SkinHallFame(FormDestino As Form, PictureMosaico As PictureBox)
Dim X As Integer
Dim Y As Integer
Dim scrW As Long 'Form Width
Dim scrH As Long 'Form Heigh
Dim picW As Long 'Picture Width
Dim picH As Long 'Picture Heigh
Dim TotX As Long 'Nº de mosaicos horizontales
Dim TotY As Long 'Nº de mosaicos verticales
    
    scrW = FormDestino.ScaleWidth
    scrH = FormDestino.ScaleHeight
    
    picW = PictureMosaico.ScaleWidth
    picH = PictureMosaico.ScaleHeight
    
    TotX = scrW \ picW
    TotY = scrH \ picH
    
    SDC = PictureMosaico.hdc
    DDC = FormDestino.hdc
    For Y = 0 To TotY - 2
    
        For X = TotX To TotX
            BitBlt DDC, X * picW, Y * picH, picW, picH, SDC, 0, 0, SRCCOPY
        Next X
    Next Y

End Sub

Public Sub SkinDebugInfo(FormDestino As Form, PictureMosaico As PictureBox)
Dim X As Integer
Dim Y As Integer
Dim scrW As Long 'Form Width
Dim scrH As Long 'Form Heigh
Dim picW As Long 'Picture Width
Dim picH As Long 'Picture Heigh
Dim TotX As Long 'Nº de mosaicos horizontales
Dim TotY As Long 'Nº de mosaicos verticales
    
    
    scrW = FormDestino.ScaleWidth
    scrH = FormDestino.ScaleHeight
    
    picW = PictureMosaico.ScaleWidth
    picH = PictureMosaico.ScaleHeight
    
    TotX = scrW \ picW
    TotY = scrH \ picH
    
    SDC = PictureMosaico.hdc
    DDC = FormDestino.hdc
    'For Y = 0 To TotY
        Y = TotY
        For X = 0 To TotX - 1
            BitBlt DDC, X * picW, Y * picH, picW, picH, SDC, 0, 0, SRCCOPY
        Next X
    'Next Y
End Sub

Public Sub PaintMosaicToForm(FormDestino As Form, PictureMosaico As PictureBox)
Dim X As Integer
Dim Y As Integer
Dim scrW As Long 'Form Width
Dim scrH As Long 'Form Heigh
Dim picW As Long 'Picture Width
Dim picH As Long 'Picture Heigh
Dim TotX As Long 'Nº de mosaicos horizontales
Dim TotY As Long 'Nº de mosaicos verticales
    
    
    scrW = FormDestino.ScaleWidth
    scrH = FormDestino.ScaleHeight
    
    picW = PictureMosaico.ScaleWidth
    picH = PictureMosaico.ScaleHeight
    
    TotX = scrW \ picW
    TotY = scrH \ picH
    
    SDC = PictureMosaico.hdc
    DDC = FormDestino.hdc
    For Y = 0 To TotY
        For X = 0 To TotX
            BitBlt DDC, X * picW, Y * picH, picW, picH, SDC, 0, 0, SRCCOPY
        Next X
    Next Y

End Sub

Public Sub DrawAnime(IndexPic As Integer, Optional ZZZframe As Boolean = False)
Dim scrW As Long 'Form Width
Dim scrH As Long 'Form Heigh
Dim picW As Long 'Picture Width
Dim picH As Long 'Picture Heigh
Dim Pwith As Long
Dim PHeight As Long
    
    Pwith = 81
    PHeight = 156
    Select Case IndexPic
        Case 0

            SDC = FrmSprites.PicAnimeZZZ(IndexPic).hdc
        
        Case 1
            If ZZZframe = False Then
                SDC = FrmSprites.PicAnime1.hdc
            Else
                SDC = FrmSprites.PicAnimeZZZ(IndexPic).hdc
            End If
    End Select

    DDC = FrmMain.hdc
    
    BitBlt DDC, 936, 740 - PHeight - 35, Pwith, PHeight, SDC, 0, PHeight + 1, SRCAND
    BitBlt DDC, 936, 740 - PHeight - 35, Pwith, PHeight, SDC, 0, 0, SRCPAINT
End Sub

'Custom "ProgressBar" for Time Attack Mahjonng Mode
Public Sub ProcesaMiPGBar(ByVal c_Perc As Integer, PGBar As PictureBox, FormDelPGBar As Form, Optional VerValorEnPGBar As Boolean = False)
    If c_Perc > 100 Or c_Perc < 0 Then Exit Sub
    If c_Perc = 0 Then
        BitBlt PGBar.hdc, 0, 0, (PGBar.Width), (PGBar.Height), FormDelPGBar.picBAK.hdc, 0, 0, &HCC0020
    Else
        BitBlt PGBar.hdc, 0, 0, (c_Perc / 100) * (PGBar.Width), (PGBar.Height), FormDelPGBar.picCONSUMO.hdc, 0, 0, &HCC0020
    End If
    PGBar.Refresh
    
    If VerValorEnPGBar = True Then
        If FormDelPGBar.lblPGBarValue.Visible = False Then
            FormDelPGBar.lblPGBarValue.Visible = True
        End If
        FormDelPGBar.lblPGBarValue.Caption = c_Perc & "%"
    Else
        If FormDelPGBar.lblPGBarValue.Visible = True Then
            FormDelPGBar.lblPGBarValue.Visible = False
        End If
    End If
End Sub

