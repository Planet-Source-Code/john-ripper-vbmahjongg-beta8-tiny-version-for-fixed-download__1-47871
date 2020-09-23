Attribute VB_Name = "ModSoundsMidi"
'#######################################################
' Midi Play Module
' This module Initializes and Play/Stop Midi songs
'#######################################################
Option Explicit

Public Const AUDIO_NONE = 0
Public Const AUDIO_WAVE = 1
Public Const AUDIO_MIDI = 2
Public Const AUDIO_BOTH = 3

Public ActualPlayingMidi    As String
Public IsMusicOn            As Boolean

Public Sub StartSoundEngine()

Dim RandomMidi      As Long
Dim NumberMidis     As Long
Dim RandomFileMidi  As String
    
    NumberMidis = FrmMain.mnuMMusic.Count - 2
    
    'Random Midi Selected on Menu?
    If Params.RandomMusic = True Then
        Randomize
        RandomMidi = Int((NumberMidis * Rnd) + 1)
        RandomFileMidi = FrmMain.mnuMMusic(1 + RandomMidi).Caption
    
        If PlayMidiFile(App.Path & "\Musics\" & RandomFileMidi & ".mid") = True Then
            ActualPlayingMidi = App.Path & "\Musics\" & RandomFileMidi & ".mid"
            IsMusicOn = True
            FrmMain.TmrMidi.Enabled = True
        End If
    Else
        If PlayMidiFile(App.Path & "\Musics\" & Params.MusicFile & ".mid") = True Then
            ActualPlayingMidi = App.Path & "\Musics\" & Params.MusicFile & ".mid"
            IsMusicOn = True
            FrmMain.TmrMidi.Enabled = True
        End If
    End If
End Sub

'Here is were really Call Midi APIs
Public Function PlayMidiFile(MidiFile As String) As Boolean

Dim lRet As Long

On Error Resume Next

If Dir(MidiFile) = "" Then Exit Function

'Stop any currently playing .mid
lRet = mciSendString("stop midi", "", 0, 0)
lRet = mciSendString("close midi", "", 0, 0)

'Play
lRet = mciSendString("open sequencer!" & fGetShortName(MidiFile) & " alias midi", "", 0, 0)
lRet = mciSendString("play midi", "", 0, 0)

PlayMidiFile = (lRet = 0)

End Function


'Stops midi from playing
'Returns: True if successful, false otherwise
Public Function StopMidi() As Boolean

Dim lRet As Long

On Error Resume Next

'Stop any currently playing .midi
lRet = mciSendString("stop midi", "", 0, 0)
StopMidi = (lRet = 0)
lRet = mciSendString("close midi", "", 0, 0)

End Function

Public Function CanPlaySound() As Integer
  ' *** Indicates the possibility of playing sound with the sound card

  ' Returns 1 if wave output
  ' Returns 2 if midi output
  ' Returns 3 if both

  Dim I             As Integer

  I = AUDIO_NONE

  If waveOutGetNumDevs > 0 Then
     I = AUDIO_WAVE
  End If

  If midiOutGetNumDevs > 0 Then
     I = I + AUDIO_MIDI
  End If

  CanPlaySound = I

End Function
