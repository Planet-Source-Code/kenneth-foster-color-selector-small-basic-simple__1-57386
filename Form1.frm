VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Simple Color Picker"
   ClientHeight    =   1635
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3000
   LinkTopic       =   "Form1"
   ScaleHeight     =   1635
   ScaleWidth      =   3000
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   540
      Left            =   75
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   510
      ScaleWidth      =   2160
      TabIndex        =   0
      Top             =   180
      Width           =   2190
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   540
      Left            =   2460
      TabIndex        =   4
      Top             =   855
      Width           =   270
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   90
      TabIndex        =   3
      Top             =   1200
      Width           =   1485
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   90
      TabIndex        =   2
      Top             =   855
      Width           =   1935
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   540
      Left            =   2460
      TabIndex        =   1
      Top             =   180
      Width           =   270
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'Just another way to use the code suggested by Robert Rayment
Dim color As Long

 color = Picture1.Point(X, Y)
 Label4.BackColor = color
     
End Sub

Private Sub Picture1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim r As Byte
Dim g As Byte
Dim b As Byte
Dim color As Long

  If Button = 1 Then
      color = Picture1.Point(X, Y)
      Label1.BackColor = color
      'convert color to rgb
      r = color And 255
      g = (color \ 256) And 255
      b = (color \ 65536) And 255
     Label2.Caption = "RGB:  " & r & "," & g & "," & b
     'convert color to hex
     Label3.Caption = "HEX:  " & Hex(color)
  End If
  
End Sub
