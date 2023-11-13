[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=6df2a51b-e447-4e0e-8b53-a8402a711214
Description=§Úªº¸}¥»1
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Dim ax, ay, DPIx, DPIy
dim MyArray
Dim a()
Redim a(1,12)
_mian
Sub _mian
    _Dpi
    _AccountPassword 
    For i = 1 To 12
        _Account(1)
        Delay 500
        _Login(1)
        Delay 500
        _character (1)
        //1 left char / 2 right char
        Delay 500
    Next
End Sub
Sub _Dpi
    DPIx =  1920
    DPIy = 	1080
End Sub
Sub _init
    acc=0
End Sub
Sub _AccountPassword
    a(0,1)="account"
    a(1,1)="pwd"
    a(0,2)="account"
    a(1,2)="pwd"
    a(0,3)="account"
    a(1,3)="pwd"
    a(0,4)=""
    a(1,4) = ""
    a(0,5)=""
    a(1,5)=""
    a(0,6)=""
    a(1,6)=""
    a(0,7)=""
    a(1,7)=""
    a(0,8)=""
    a(1,8)=""
    a(0,9)=""
    a(1,9)=""
    a(0,10)=""
    a(1,10)=""
    a(0,11)=""
    a(1,11)=""
    a(0,12)=""
    a(1,12)=""
End Sub
Function _Account(ta)
    ax = 0
    ay = 0
    cl = 1
    While cl = 1
        XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"EED9C1","2|7|D8D7D6,7|1|EDD6C0,11|4|B09F91,18|6|FFFFFF,30|12|E4CEB7,38|5|E6D0BA,41|5|FFFFFF,55|-2|EFD7C2,55|1|FCFCFC",0.8)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If x > - 1  and y > - 1  Then 
            MoveTo x, y
            LeftDown 1
            Delay 30
            LeftUp 1
            cl = 0
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend
End Function	
Function _Login(ta)
    ax = 0
    ay = 0
    cl = 1
    While cl = 1
        XY=Plugin.Color.FindMutiColor(ax,ay,DPIx,DPIy,"FFFFFF","-93|-2|7D4F37,-93|1|61290C,-93|5|61290C,-90|4|5A1F01,-90|1|5A1F01,-85|-1|5F2609,-85|5|652E12,-84|2|5B2003",0.5)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If x > - 1  and y > - 1  Then 
            MoveTo x, y
            //y+25 PASSWORD
            LeftDown 1
            Delay 50		
            LeftUp 1
            Delay 100
            SayString a(0,i)
            Delay 100
            MoveTo x, y+25
            LeftDown 1
            Delay 50		
            LeftUp 1
            Delay 100
            SayString a(1,i)
            MoveTo x, y+70
            LeftDown 1
            Delay 50		
            LeftUp 1
            Delay 100
            cl = 0

        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend
End Function	
Function _character(ta)
    ax = 0
    ay = 0
    cl = 1
    While cl = 1
        XY=Plugin.Color.FindMutiColor(ax,ay,DPIx,DPIy,"F2E8E3","0|-7|FFF5ED,-21|-6|FFF0E6,24|-5|FFEFE2,-10|-1|FEFCFC,0|2|F3EAE5,4|2|B98868,11|-2|D4B6A2,10|-2|B17F5E",0.8)
        MyArray = Split(XY, "|")
        X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If x > - 1  and y > - 1  Then 
            TracePrint x
            TracePrint y
            If ta = 1 Then 
                MoveTo x - 100, y - 40
                Delay 100
                LeftDown 1
                Delay 50		
                LeftUp 1
                Delay 100
            ElseIf ta = 2 Then
                MoveTo x + 100, y - 40
                Delay 100
                LeftDown 1
                Delay 50		
                LeftUp 1
                Delay 100
            End If
            cl = 0
        Else 
            TracePrint "NOT FOUND _character"
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend
End Function	
