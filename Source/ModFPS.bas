Attribute VB_Name = "ModFPS"
Option Explicit

Dim Tick            As Long
Dim ElapsedTicks    As Long
Dim LastTick        As Long
Dim TickCounter     As Long
Dim FrameCounter    As Long

Private FPS          As Long

Private Sub CalcTick()
    Tick = timeGetTime
    ElapsedTicks = Tick - LastTick
    LastTick = Tick
End Sub
Private Sub CalcFPS()
    TickCounter = TickCounter + ElapsedTicks
    
    If TickCounter > 1000 Then
        FPS = 1000 * FrameCounter \ TickCounter
        FrameCounter = 0
        TickCounter = 0
    End If
    
    FrameCounter = FrameCounter + 1
End Sub

Public Sub ShowFPS(InLabel As Label)

    CalcTick
    CalcFPS
    InLabel.Caption = FPS
End Sub

Public Sub ShowTicks(InLabel As Label)
    InLabel.Caption = ElapsedTicks
End Sub

