[General]
SyntaxVersion=2
BeginHotkey=51
BeginHotkeyMod=2
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=760ae83d-e481-4f61-ad1c-46cfb247d51d
Description=RD
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


_mian

Sub _mian
	_Dpi
	
	_Confrim (1)
	_Gift(1)
	_Redeem (1)
	_Close(1)
	_Check(1)
	_SingIn(1)
	_SingIn_Redeem(1)
	_Close(1)
End Sub

Sub _Dpi
	DPIx =  1920
	DPIy = 	1080
End Sub

Sub _init
	acc=0
End Sub

Function _Confrim(ta)
    ax = 0
    ay = 0
    cl = 1

    While cl = 1
    Delay 100
	XY=Plugin.Color.FindMutiColor(ax,ay,DPIx,DPIy,"FFF5EF","-1|12|FFD8BF,54|13|FEDCC2,55|0|FFF7F0,38|-1|FFF9F3,37|8|FFDBBE,45|7|D0A68B,10|7|FEDBBB",0.7)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)): Y = CInt(MyArray(1))
        If x > - 1  and y > - 1  Then 
		MoveTo x ,  y
		LeftDown 1
		Delay 30
		LeftUp 1
		//cl = 0
        Else 
        acc = acc + 1
        If acc > 10 Then 
        cl = 0
        acc = 0
        End If
        
        
            TracePrint "_Confrim"
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend
    

End Function	


Function _Gift(ta)
    ax = 0
    ay = 0
    cl = 1

    While cl = 1
    Delay 50
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"328754","0|-10|5D6EF5,-2|-2|43C07C,11|-4|0000B3,16|-13|1111DD,20|-18|EFEFF9,26|-13|D6D9DB,18|-8|DBDCE2,17|-17|F0F1F1",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	If x = - 1  and y = - 1  Then 
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"338543","0|-6|4ADD8D,5|-11|17289F,21|-18|EFEFF9,26|-13|1212DE,19|-8|DCDDE3,18|-13|1111DD",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	
	End If
	
	
        If x > - 1  and y > - 1  Then 

		MoveTo x, y
		Delay 100
		LeftDown 1
		Delay 100
		LeftUp 1
		
		//cl = 0
        Else 
        acc = acc + 1
        If acc > 10 Then 
        cl = 0
        acc = 0
        End If
            TracePrint "NOT FOUND _Gift"
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend

End Function	

Function _Redeem(ta)
    ax = 0
    ay = 0
    cl = 1

    While cl = 1
    Delay 50
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"FFF4EA","0|14|FFDDC4,56|13|FFDBC0,56|2|FFF1E5,1|5|9D6E58,2|7|F2ECE9,43|8|B49080,44|8|EEE6E2",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	/*
	If x = - 1  and y = - 1  Then 
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"338543","0|-6|4ADD8D,5|-11|17289F,21|-18|EFEFF9,26|-13|1212DE,19|-8|DCDDE3,18|-13|1111DD",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	End If
	*/
	
        If x > - 1  and y > - 1  Then 

		MoveTo x, y
		Delay 100
		LeftDown 1
		Delay 100
		LeftUp 1
		
		//cl = 0
        Else 
		acc = acc + 1
        If acc > 10 Then 
        cl = 0
        acc = 0
        End If
            TracePrint "NOT FOUND _Gift"
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend

End Function	


Function _Close(ta)
    ax = 0
    ay = 0
    cl = 1

    While cl = 1
    Delay 50
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"FDE5CC","7|-7|F9F3E5,13|1|FFE8C6,7|7|FAD8B7,7|-1|FFFFFF,9|-4|FBF4F0,4|3|FFFCF6,10|3|FFFFFF,5|-3|FFFFFF",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	/*
	If x = - 1  and y = - 1  Then 
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"338543","0|-6|4ADD8D,5|-11|17289F,21|-18|EFEFF9,26|-13|1212DE,19|-8|DCDDE3,18|-13|1111DD",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	End If
	*/
	
        If x > - 1  and y > - 1  Then 

		MoveTo x, y
		Delay 100
		LeftDown 1
		Delay 100
		LeftUp 1
		
		//cl = 0
        Else 
		acc = acc + 1
        If acc > 10 Then 
        cl = 0
        acc = 0
        End If
            TracePrint "NOT FOUND _Close"
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend

End Function	

Function _Check(ta)
    ax = 0
    ay = 0
    cl = 1

    While cl = 1
    Delay 50
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"0B0BF6","0|-1|0606F4,5|-1|0707EE,5|1|1011EF,-11|13|324354,-18|11|D1E2F1,-18|3|4E5F81,-8|-4|8B94FF,-1|-2|0808E8",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	/*
	If x = - 1  and y = - 1  Then 
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"338543","0|-6|4ADD8D,5|-11|17289F,21|-18|EFEFF9,26|-13|1212DE,19|-8|DCDDE3,18|-13|1111DD",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	End If
	*/
	
        If x > - 1  and y > - 1  Then 

		MoveTo x, y
		Delay 100
		LeftDown 1
		Delay 100
		LeftUp 1
		
		//cl = 0
        Else 
		acc = acc + 1
        If acc > 10 Then 
        cl = 0
        acc = 0
        End If
            TracePrint "NOT FOUND _Check"
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend

End Function	

Function _SingIn(ta)
    ax = 0
    ay = 0
    cl = 1

    While cl = 1
    Delay 50
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"0606F4","-18|1|3139B8,-16|7|9192E5,-9|5|4749BA,-12|1|6B73E3,4|-1|0707E8,1|-1|ACACE1,-3|6|0000EE,-2|1|0B0CE9",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	/*
	If x = - 1  and y = - 1  Then 
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"338543","0|-6|4ADD8D,5|-11|17289F,21|-18|EFEFF9,26|-13|1212DE,19|-8|DCDDE3,18|-13|1111DD",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	End If
	*/
	
        If x > - 1  and y > - 1  Then 

		MoveTo x, y
		Delay 100
		LeftDown 1
		Delay 100
		LeftUp 1
		
		//cl = 0
        Else 
		acc = acc + 1
        If acc > 10 Then 
        cl = 0
        acc = 0
        End If
            TracePrint "NOT FOUND _SingIn"
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend

End Function

Function _SingIn_Redeem(ta)
    ax = 0
    ay = 0
    cl = 1

    While cl = 1
    Delay 50
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"EEFFEE","-1|12|C8FFC5,45|12|C7FFC8,45|0|EFFFEE,2|3|BECCC4,7|3|B2C3B9,6|7|C5D2CA,9|6|82A38C,18|7|92C497,24|4|5E836D,35|4|678C74,42|8|6B9477,35|7|85A090",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	/*
	If x = - 1  and y = - 1  Then 
	XY=Plugin.Color.FindMutiColor(0,0,DPIx,DPIy,"338543","0|-6|4ADD8D,5|-11|17289F,21|-18|EFEFF9,26|-13|1212DE,19|-8|DCDDE3,18|-13|1111DD",0.8)
	MyArray = Split(XY, "|")
	X = CInt(MyArray(0)) : Y = CInt(MyArray(1))
	End If
	*/
	
        If x > - 1  and y > - 1  Then 

		MoveTo x, y
		Delay 100
		LeftDown 1
		Delay 100
		LeftUp 1
		
		//cl = 0
        Else 
		acc = acc + 1
        If acc > 10 Then 
        cl = 0
        acc = 0
        End If
            TracePrint "NOT FOUND _SingIn_Redeem"
        End If
        If ta = 0 Then 
            cl = 0
        End If
    Wend

End Function
