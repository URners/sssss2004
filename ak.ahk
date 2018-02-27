#NoEnv
SendMode Input
 
~F4::Suspend
 
~End::ExitApp
 
1::
LCtrl & ~LButton::
Loop
    If GetKeyState("LButton") {
        Sleep,4

{
moveAmount := (moveAmount = 3) ? 6 : -2
moveAmount := (moveAmount = xy) ? 0 : -0
}

       mouseXY(moveAmount,10.40)
	
	
        }
else
	break
	
Return
	

 
 
 
mouseXY(x,y)
{
DllCall("mouse_event",int,1,int,x,int,y,uint,1.5,uint,4.0)
}