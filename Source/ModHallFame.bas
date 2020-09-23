Attribute VB_Name = "ModHallFame"
'#######################################################
' HallFame Module
' Update HallFame.ini
'#######################################################
Option Explicit
Public InfoTimeIni(9)   As Integer
Public EditHallFame     As Boolean

Public Type tInfoHF     'struct of hallfame Data
    PlayerName  As String   'Player name
    Seconds     As Integer  'Time for complete the puzzle
    Malus       As Integer  'Time for Hints
    Date        As String   'Date
End Type
Private HFEditShow(9) As tInfoHF

'#############
'FILE INI SUBS (Rutines from elGuille)
Public Function IniGet(ByVal lpFileName As String, ByVal lpAppName As String, _
                       ByVal lpKeyName As String, _
                       Optional ByVal lpDefault As String = "") As String
    '
    'Los parámetros son:
    'lpFileName:    La Aplicación (fichero INI)
    'lpAppName:     La sección que suele estar entrre corchetes
    'lpKeyName:     Clave
    'lpDefault:     Valor opcional que devolverá si no se encuentra la clave.
    '
    Dim LTmp As Long
    Dim sRetVal As String
    
    sRetVal = String$(255, 0)
    
    LTmp = GetPrivateProfileString(lpAppName, lpKeyName, lpDefault, sRetVal, Len(sRetVal), lpFileName)
    If LTmp = 0 Then
        IniGet = lpDefault
    Else
        IniGet = left(sRetVal, LTmp)
    End If
End Function


Public Sub IniWrite(ByVal lpFileName As String, ByVal lpAppName As String, _
                    ByVal lpKeyName As String, ByVal lpString As String)
    '
    'Guarda los datos de configuración
    'Los parámetros son los mismos que en IniGet
    'Siendo lpString el valor a guardar
    '

    Call WritePrivateProfileString(lpAppName, lpKeyName, lpString, lpFileName)
End Sub


Public Sub IniDelete(ByVal sIniFile As String, ByVal sSection As String, _
                    Optional ByVal sKey As String = "")
    '
    ' Borrar una clave o entrada de un fichero INI                      (16/Feb/99)
    ' Si no se indica sKey, se borrará la sección indicada en sSection
    ' En otro caso, se supone que es la entrada (clave) lo que se quiere borrar
    '
    If Len(sKey) = 0 Then
        ' Borrar una sección
        Call WritePrivateProfileString(sSection, 0&, 0&, sIniFile)
    Else
        ' Borrar una entrada
        Call WritePrivateProfileString(sSection, sKey, 0&, sIniFile)
    End If
End Sub


Public Function IniGetSection(ByVal lpFileName As String, _
                              ByVal lpAppName As String) As Variant
    '
    ' Lee una sección entera de un fichero INI                          (27/Feb/99)
    '
    ' Usando Collection en lugar de cParrafos y cContenido              (06/Mar/99)
    '
    ' Esta función devolverá una colección con cada una de las claves y valores
    ' que haya en esa sección.
    ' Parámetros de entrada:
    '   lpFileName  Nombre del fichero INI
    '   lpAppName   Nombre de la sección a leer
    ' Devuelve:
    '   Una colección con el Valor y el contenido
    '   Para leer los datos:
    '       For i = 1 To tContenidos Step 2
    '           sClave = tContenidos(i)
    '           sValor = tContenidos(i+1)
    '       Next
    '
    Dim tContenidos As Collection
    Dim nSize As Long
    Dim I As Long
    Dim j As Long
    Dim sTmp As String
    Dim sClave As String
    Dim sValor As String
    Dim sBuffer As String
    
    ' El tamaño máximo para Windows 95
    sBuffer = String$(32767, Chr$(0))
    
    nSize = GetPrivateProfileSection(lpAppName, sBuffer, Len(sBuffer), lpFileName)
        
    If nSize Then
        Set tContenidos = New Collection
        
        ' Cortar la cadena al número de caracteres devueltos
        sBuffer = left$(sBuffer, nSize)
        ' Quitar los vbNullChar extras del final
        I = InStr(sBuffer, vbNullChar & vbNullChar)
        If I Then
            sBuffer = left$(sBuffer, I - 1)
        End If
        
        ' Cada una de las entradas estará separada por un Chr$(0)
        Do
            I = InStr(sBuffer, Chr$(0))
            If I Then
                sTmp = LTrim$(left$(sBuffer, I - 1))
                If Len(sTmp) Then
                    ' Comprobar si tiene el signo igual
                    j = InStr(sTmp, "=")
                    If j Then
                        sClave = left$(sTmp, j - 1)
                        sValor = LTrim$(Mid$(sTmp, j + 1))
                        ' Asignar la clave y el valor
                        tContenidos.Add sClave
                        tContenidos.Add sValor
                    End If
                End If
                sBuffer = Mid$(sBuffer, I + 1)
            End If
        Loop While I
        ' Por si aún queda algo...
        If Len(sBuffer) Then
            j = InStr(sBuffer, "=")
            If j Then
                sClave = left$(sBuffer, j - 1)
                sValor = LTrim$(Mid$(sBuffer, j + 1))
                tContenidos.Add sClave
                tContenidos.Add sValor
            End If
        End If
    End If
    Set IniGetSection = tContenidos
End Function
'#############

Public Sub GenerateNewSection(SectionName As String)
Dim nF As Integer
Dim I As Integer
    nF = FreeFile
    
    Open App.Path & "\HallFame.ini" For Append As #nF
        Print #nF, "[" & SectionName & "]"
        For I = 1 To 10
            Print #nF, "Rank" & I & "="
        Next I
        Print #nF, vbCrLf
    Close #nF
End Sub

Public Sub ReadTimesForShorting(Optional MemoryLabel As String = "")
    Dim tContenidos As Collection
    Dim I As Long
    Dim posAt As Long
    Dim posSolfa As Long
    Dim DataIni As String
    Dim intSeconds As Integer
    If Trim(MemoryLabel <> "") Then
        Set tContenidos = IniGetSection(App.Path & "\HallFame.ini", MemoryLabel)
    Else
        Set tContenidos = IniGetSection(App.Path & "\HallFame.ini", Params.MahjonggLayoutDescription)
    End If
    For I = 0 To 9
        InfoTimeIni(I) = 32762
    Next I
 
    For I = 2 To tContenidos.Count Step 2
       DataIni = tContenidos(I)
       If Trim(DataIni) <> "" Then
           posAt = InStr(1, DataIni, "@")
           posSolfa = InStr(1, DataIni, "#")
           
           intSeconds = Mid(DataIni, posAt + 1, posSolfa - posAt - 1)
           InfoTimeIni((I \ 2) - 1) = intSeconds
              
       End If
    Next I
    
    GenericQuickSort InfoTimeIni, 0, UBound(InfoTimeIni)
    
End Sub

Private Sub InitComboHallFame(HallFameBoard As String)
    Dim tContenidos As Collection
    Set tContenidos = IniGetSection(App.Path & "\HallFame.ini", HallFameBoard)
    If tContenidos Is Nothing Then
        GenerateNewSection HallFameBoard
    End If
End Sub

'Main HallFame Initialization
Public Sub InitOnMainHallFame()
    
    Dim tContenidos As Collection
    Dim I           As Long
    Dim posAt       As Long
    Dim posSolfa    As Long
    Dim DataIni     As String
    Dim strPlayer   As String
    Dim lngSeconds  As Long
    'Player1@267#0*12/7/2003       <--- Format on HallFame.ini NamePlayer@Time(in seconds)#Time Malus(in seconds)*Date(formated)
    
    If GameMode = PlayMemory Then
        If MemoryLevel = Easy Then
            Set tContenidos = IniGetSection(App.Path & "\HallFame.ini", "Memory Easy")
        Else
            Set tContenidos = IniGetSection(App.Path & "\HallFame.ini", "Memory Hard")
        End If
    Else
        Set tContenidos = IniGetSection(App.Path & "\HallFame.ini", Params.MahjonggLayoutDescription)
    End If
    
    If Not tContenidos Is Nothing Then
         For I = 2 To tContenidos.Count Step 2
            DataIni = tContenidos(I)
            If Trim(DataIni) <> "" Then
                posAt = InStr(1, DataIni, "@")
                posSolfa = InStr(1, DataIni, "#")
                strPlayer = Mid(DataIni, 1, posAt - 1)
                lngSeconds = Mid(DataIni, posAt + 1, posSolfa - posAt - 1)
                FrmMain.lblMainHFplayer((I \ 2) - 1).Caption = strPlayer
                FrmMain.lblMainHFtime((I \ 2) - 1).Caption = Mid(TimeSerial(0, 0, lngSeconds), 3)
                FrmMain.lblMainHFplayer((I \ 2) - 1).Visible = True
                FrmMain.lblMainHFtime((I \ 2) - 1).Visible = True
            
            Else
                FrmMain.lblMainHFplayer((I \ 2) - 1).Visible = False
                FrmMain.lblMainHFtime((I \ 2) - 1).Visible = False
            
            End If

         Next I

    Else
        If GameMode = PlayMemory Then
            If MemoryLevel = Easy Then
                GenerateNewSection "Memory Easy"
            Else
                GenerateNewSection "Memory Hard"
            End If
        Else
            GenerateNewSection Params.MahjonggLayoutDescription
        End If
        For I = 0 To 9
            FrmMain.lblMainHFplayer(I).Visible = False
            FrmMain.lblMainHFtime(I).Visible = False
        Next I
    End If
        
End Sub

Public Sub DisplayEditHallFame(HallFameBoard As String, Optional EditHF As Boolean = True, Optional NewEditRanking As Integer)
    
    Dim tContenidos As Collection
    Dim I           As Long
    Dim posAt       As Long
    Dim posSolfa    As Long
    Dim posAst      As Long
    Dim DataIni     As String
    Dim strPlayer   As String
    Dim lngSeconds  As Long
    Dim lngMalus    As Long
    Dim strDate     As String
    
    'Player1@267#0*12/7/2003

    If EditHF = False Then
        InitComboHallFame HallFameBoard
    End If

    Set tContenidos = IniGetSection(App.Path & "\HallFame.ini", HallFameBoard)

    For I = 2 To tContenidos.Count Step 2
        DataIni = tContenidos(I)
        If Trim(DataIni) <> "" Then
            posAt = InStr(1, DataIni, "@")
            posSolfa = InStr(1, DataIni, "#")
            posAst = InStr(1, DataIni, "*")
            strPlayer = Mid(DataIni, 1, posAt - 1)
            lngSeconds = Mid(DataIni, posAt + 1, posSolfa - posAt - 1)
            lngMalus = Mid(DataIni, posSolfa + 1, posAst - posSolfa - 1)
            strDate = Mid(DataIni, posAst + 1)
           
            HFEditShow((I \ 2) - 1).PlayerName = strPlayer
            HFEditShow((I \ 2) - 1).Seconds = lngSeconds
            HFEditShow((I \ 2) - 1).Malus = lngMalus
            HFEditShow((I \ 2) - 1).Date = strDate
           
       
        Else
            HFEditShow((I \ 2) - 1).PlayerName = "** NOT ENTER YET ***"
        End If

    Next I


    If EditHF = True Then
        For I = 0 To 9
            If I < NewEditRanking Then
                frmHallFame.lblHFPlayerName(I).Caption = HFEditShow(I).PlayerName
                frmHallFame.lblHFPlayerName(I).Visible = True
                frmHallFame.lblHFTime(I) = Mid(TimeSerial(0, 0, HFEditShow(I).Seconds), 3)
                frmHallFame.lblHFTime(I).Visible = True
                frmHallFame.lblHFMalus(I).Caption = Mid(TimeSerial(0, 0, HFEditShow(I).Malus), 3)
                frmHallFame.lblHFMalus(I).Visible = True
                frmHallFame.lblHlFDate(I).Caption = Format(HFEditShow(I).Date, Params.DateFormat)
                frmHallFame.lblHlFDate(I).Visible = True
            Else
                If I = NewEditRanking Then
                    frmHallFame.lblHFPlayerName(I).BackStyle = 1
                    frmHallFame.lblHFPlayerName(I).BackColor = vbGreen
                    frmHallFame.lblHFPlayerName(I).ForeColor = vbBlack
                    
                    frmHallFame.lblHFPlayerName(I).Caption = ""
                    frmHallFame.lblHFPlayerName(I).Visible = True
                    frmHallFame.lblHFTime(I).Caption = Mid(TimeSerial(0, 0, ElapsedSeconds), 3)
                    frmHallFame.lblHFTime(I).Visible = True
                
                    frmHallFame.lblHFMalus(I).Caption = Mid(TimeSerial(0, 0, 30 * CounterHints), 3)
                    frmHallFame.lblHFMalus(I).Visible = True
                
                    'frmHallFame.lblHlFDate(i).Caption = Format(Now, "dd/mm/yyyy")
                    frmHallFame.lblHlFDate(I).Caption = Format(Now, Params.DateFormat)
                    frmHallFame.lblHlFDate(I).Visible = True
                
                
                Else
                
                    If HFEditShow(I - 1).PlayerName <> "** NOT ENTER YET ***" Then
                        frmHallFame.lblHFPlayerName(I).Caption = HFEditShow(I - 1).PlayerName
                        frmHallFame.lblHFPlayerName(I).Visible = True
                        frmHallFame.lblHFTime(I) = Mid(TimeSerial(0, 0, HFEditShow(I - 1).Seconds), 3)
                        frmHallFame.lblHFTime(I).Visible = True
                        frmHallFame.lblHFMalus(I).Caption = Mid(TimeSerial(0, 0, HFEditShow(I - 1).Malus), 3)
                        frmHallFame.lblHFMalus(I).Visible = True
                        frmHallFame.lblHlFDate(I).Caption = Format(HFEditShow(I - 1).Date, Params.DateFormat)
                        frmHallFame.lblHlFDate(I).Visible = True
                    End If
                
                End If
                
            End If
            
        Next I
    
    Else
        'InitComboHallFame HallFameBoard
        For I = 0 To 9
            If HFEditShow(I).PlayerName <> "** NOT ENTER YET ***" Then
                frmHallFame.lblHFPlayerName(I).Caption = HFEditShow(I).PlayerName
                frmHallFame.lblHFPlayerName(I).Visible = True
                frmHallFame.lblHFTime(I) = Mid(TimeSerial(0, 0, HFEditShow(I).Seconds), 3)
                frmHallFame.lblHFTime(I).Visible = True
                frmHallFame.lblHFMalus(I).Caption = Mid(TimeSerial(0, 0, HFEditShow(I).Malus), 3)
                frmHallFame.lblHFMalus(I).Visible = True
                frmHallFame.lblHlFDate(I).Caption = Format(HFEditShow(I).Date, Params.DateFormat)
                frmHallFame.lblHlFDate(I).Visible = True
            Else

                frmHallFame.lblHFPlayerName(I).Visible = False
                frmHallFame.lblHFTime(I).Visible = False
                frmHallFame.lblHFMalus(I).Visible = False
                frmHallFame.lblHlFDate(I).Visible = False
            
            End If
        
        Next I
    
    End If
End Sub

Public Sub DeleteHallFame(HallFameBoard As String)
    Dim I As Integer
    Dim sKey As String
    For I = 0 To 9
        sKey = "Rank" & I + 1
        IniWrite App.Path & "\HallFame.ini", HallFameBoard, sKey, ""
    Next I
End Sub

Public Sub UpdateHallFameBoard()
    Dim I           As Integer
    Dim sKey        As String
    Dim sValue      As String
    Dim mSeconds    As Integer
    Dim mMinutes    As Integer
    Dim tTime       As Integer
    Dim tMalus      As Integer
    
    For I = 0 To 9
        sKey = "Rank" & I + 1
        sValue = ""
        If frmHallFame.lblHFPlayerName(I).Visible = True Then
            'Player1@267#0*12/7/2003
            mMinutes = Minute((TimeValue("0:" & frmHallFame.lblHFTime(I))))
            mSeconds = Second((TimeValue("0:" & frmHallFame.lblHFTime(I))))
            tTime = mMinutes * 60 + mSeconds

            mMinutes = Minute((TimeValue("0:" & frmHallFame.lblHFMalus(I))))
            mSeconds = Second((TimeValue("0:" & frmHallFame.lblHFMalus(I))))
            tMalus = mMinutes * 60 + mSeconds
            sValue = frmHallFame.lblHFPlayerName(I).Caption & "@" & tTime & "#" & tMalus & "*" & frmHallFame.lblHlFDate(I).Caption
            If GameMode = PlayMahjonng Then
                IniWrite App.Path & "\HallFame.ini", Params.MahjonggLayoutDescription, sKey, sValue
            ElseIf GameMode = PlayMemory Then
                If MemoryLevel = Easy Then
                    IniWrite App.Path & "\HallFame.ini", "Memory Easy", sKey, sValue
                Else
                    IniWrite App.Path & "\HallFame.ini", "Memory Hard", sKey, sValue
                End If
            End If
        End If
    Next I
End Sub
