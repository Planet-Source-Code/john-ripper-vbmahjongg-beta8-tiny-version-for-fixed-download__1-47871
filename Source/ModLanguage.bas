Attribute VB_Name = "ModLanguage"
'#######################################################
' Language Module
' This functinons "changes" captions of all the controls.
' The captions are read from \LANGUAGE Files
' You can Make your 'personal' Translation. Only need to follow the rules on
' txt files.
'#######################################################
Option Explicit

Public InfosIDIOM() As String

Public Sub ChangeLanguage(OriginForm As Form, QueIdioma As String)

Dim nF                  As Integer
Dim DataFile            As String
Dim strControl          As String
Dim strCaption          As String
Dim PosEqual            As Integer
Dim PosParentesisLeft   As Integer
Dim PosParentesisRight  As Integer
Dim strFormName         As String
Dim strIndex            As String
    
    ReDim InfosIDIOM(0)
    nF = FreeFile
    
    Open App.Path & "\Languages\" & QueIdioma & ".txt" For Input As #nF
        Do Until EOF(nF)
            Line Input #nF, DataFile
            If Mid(DataFile, 1, 1) = "#" Or Trim(DataFile) = "" Then
            Else
                If UCase(Mid(DataFile, 1, 7)) = "MSGINFO" Then
                    ReDim Preserve InfosIDIOM(UBound(InfosIDIOM) + 1)
                    InfosIDIOM(UBound(InfosIDIOM)) = Mid(DataFile, 13)
                Else
                    If UCase(Mid(DataFile, 1, 10)) = "FRMCAPTION" Then
                        PosParentesisRight = InStr(1, DataFile, ")")
                        strFormName = Mid(DataFile, 12, (PosParentesisRight) - 12)
                        If UCase(OriginForm.Name) = UCase(strFormName) Then
                            OriginForm.Caption = Mid(DataFile, PosParentesisRight + 2)
                        End If
                    Else
                        PosParentesisRight = InStr(1, DataFile, ")")
                        If PosParentesisRight <> 0 Then
                            PosParentesisLeft = InStr(1, DataFile, "(")
                            strControl = Mid(DataFile, 1, PosParentesisLeft - 1)
                            strIndex = Mid(DataFile, PosParentesisLeft + 1, PosParentesisRight - PosParentesisLeft - 1)
                            strCaption = Mid(DataFile, PosParentesisRight + 2)
                            CaptionControl OriginForm, strControl, strCaption, True, CInt(strIndex)
                        Else
                            PosEqual = InStr(1, DataFile, "=")
                            strControl = Mid(DataFile, 1, PosEqual - 1)
                            strCaption = Mid(DataFile, PosEqual + 1)
                            CaptionControl OriginForm, strControl, strCaption
                        End If
                        
                    End If
                End If
            End If
        Loop
    Close #nF
End Sub

Private Sub CaptionControl(FormContainer As Form, ControlName As String, CaptionControl As String, Optional HasIndex As Boolean = False, Optional IndexNumber As Integer = 0)
Dim I As Integer
    For I = 0 To FormContainer.Controls.Count - 1
        'Debug.Print FormContainer.Controls(i).Name
        'If ControlName = "lblToolNew" Then
        '    Debug.Print "XXX"
        'End If
        
        If FormContainer.Controls(I).Name = ControlName Then
            If HasIndex = False Then
                FormContainer.Controls(I).Caption = CaptionControl
                Exit For
            Else
                If FormContainer.Controls(I).index = IndexNumber Then
                    FormContainer.Controls(I).Caption = CaptionControl
                    Exit For
                End If
            End If
        End If
    Next I
End Sub

