Gui, Add, Edit, vEdit1,
Gui, Add, Edit, vEdit2,
Gui, Add, Edit, vEdit3,
Gui, Add, Edit, vEdit4,
Gui, Add, Edit, vEdit5,
Gui, Add, Edit, vEdit6,
Gui, Add, Button, , OK
Gui, Show

ButtonOK:
{
GuiControlGet, MyEditText1, , Edit1
     GuiControlGet, MyEditText2, , Edit2
      GuiControlGet, MyEditText3, , Edit3
       GuiControlGet, MyEditText4, , Edit4
        GuiControlGet, MyEditText5, , Edit5
         GuiControlGet, MyEditText6, , Edit6
         Array := []
         Array.Push(MyEditText1)
         Array.Push(MyEditText2)
         Array.Push(MyEditText3)
         Array.Push(MyEditText4)
         Array.Push(MyEditText5)
         Array.Push(MyEditText6)
}
return


F1::
i:= 0
j:= 1
while i<=6
{
color := Array[j]
Send, {Enter}
sleep 250
Send, /paint %i% %color%
sleep 300
Send, {Enter}
i++
j++
}
return

GuiClose:
ExitApp
return