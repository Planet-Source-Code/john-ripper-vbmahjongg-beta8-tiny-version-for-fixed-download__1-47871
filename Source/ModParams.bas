Attribute VB_Name = "ModParams"
'#######################################################
' Params Module
' This module contains structure of game parametres
'#######################################################
Option Explicit

Public Const FichParam = "Parametres.prm"   'Name of Binary Files to read/Save Params.

Public Type tParam
    Language                    As String    'Language GUI
    BackGround                  As String    'Main BackGround Picture
    PrevWithBackGround          As Boolean   'Previsualization whit background
    TileSet                     As String    'Actual TileSet
    MahjonggLevelDifficult      As Integer   ' 0:Easy, 1:Hard
    MahjonggPreviusLayout       As String
    MahjonggLayout              As String    'Actual Layout Mahjongg Puzzle (File)
    MahjonggLayoutDescription   As String    'Actual Description Mahjongg Puzzle
    RandomMusic                 As Boolean   'Sounds Random Midi?
    MusicFile                   As String    'Actual Midi File
    DateFormat                  As String    'Date format, European (dd/mm/yyyy) or American (mm/dd/yyyy)
    Highlight                   As Integer   'Square for Higlight tiles (R,G,B or None)
    StartUpMusicOn              As Boolean   'Music options
    EnableFX                    As Boolean   'Music options
    EnableMusic                 As Boolean   'Music options
    ChangeAutoVideo             As Boolean   'Change automatically video res on next time?
    VideoAutoBPP                As Long      'Change to "This" Bit per Pixel
    VideoAutoHZ                 As Long      'Change to "This" Vertical Refresh Frecuency
    DisplayTextOnTiles          As Boolean
End Type

Public Params As tParam


Public Sub DefaultParams()
    With Params
        .BackGround = "Classic"
        .Language = "English" '"Español"
        .PrevWithBackGround = True
        .TileSet = "WoodT"
        .MahjonggLevelDifficult = 0
        .MahjonggPreviusLayout = "Traditional.lay"
        .MahjonggLayout = "Traditional.lay"
        .MahjonggLayoutDescription = "Traditional"
        .RandomMusic = True
        .MusicFile = "nozomi2"
        .DateFormat = "DD/MM/YYYY"
        .Highlight = 3  'Green Highlight
        .StartUpMusicOn = True
        .EnableFX = True
        .EnableMusic = True
        .ChangeAutoVideo = False
        .DisplayTextOnTiles = False
    End With
End Sub

Public Sub SaveParams()
    Dim nF As Integer
    nF = FreeFile
    
    Open App.Path & "\" & FichParam For Binary Access Read Write As #nF
        Put #nF, 1, Params
    Close #nF
End Sub

Public Sub LoadParams()
    Dim nF As Integer
    nF = FreeFile
    
    Open App.Path & "\" & FichParam For Binary Access Read Write As #nF
        Get #nF, 1, Params
    Close #nF

End Sub

Public Sub InitParams()
    If FileExists(App.Path & "\" & FichParam) = True Then
        LoadParams
    Else
        DefaultParams
        SaveParams
    End If
End Sub

Function FileExists(Path$) As Boolean
    On Error Resume Next
    
    Dim X As Integer
    
    X = FreeFile

    Open Path$ For Input As X
    If Err = 0 Then
        FileExists = True
    Else
        FileExists = False
    End If
    
    Close X
End Function

