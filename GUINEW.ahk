

Gui, Add, Button, x372 y150 w50 h30 , OK


Gui, Add, Edit, x22 y19 w100 h20  vHP,
Gui, Add, Edit, x22 y49 w100 h20  vStamina,
Gui, Add, Edit, x22 y79 w100 h20  vDMG,


Gui, Add, Text, x142 y19 w90 h20 , HP
Gui, Add, Text,x142 y79 w90 h20  , Stamina
Gui, Add, Text,x142 y49 w90 h20  , DMG


Gui, Add, DropDownList, x200 y19 vResolution, 2560x1440|1920x1080||
Gui, Add, DropDownList, x325 y19 vDino, Tuso|Giga|Equus|Reaper|Theri|Magma|Carbo|Stego|Carcha|Desmo|Golem|Rex|Megalosaur|Deino|Andrew|Wywern|Mosa|Megalo|Mana

Gui, Add, Slider, x200 y50 w200 h30 vDelay Range1-4, 0, 5
Gui, Add, Text, x220 y79 w180 h20 , Delay (make more if skip points)



Gui, Show, w479 h200, DinoLeveling


;1480 694 hp
;1480 737 stamina
;1480 920 dmg
;1480 875 weight
;463 337 search box


return

ButtonOK:
{

GuiControlGet, RRes, ,Resolution
GuiControlGet, HHP, ,HP
GuiControlGet, SStamina, ,Stamina
GuiControlGet, DDMG, ,DMG
GuiControlGet, DDino, ,Dino
GuiControlGet, VVersion, ,Version
GuiControlGet, DDelay, ,Delay

Switch DDelay
{
 case 1: Timing:=30
 case 2: Timing:=80
 case 3: Timing:=130
 case 4: Timing:=200
}
if (RRes = "1920x1080")
	{
		GlobalX := 1150
		HPY := 515
		StaminaY := 556
		WeightY := 685
		DMGY := 730

	}
if (RRes = "2560x1440")
	{
		GlobalX := 1480
		HPY := 694
		StaminaY := 737
		WeightY := 875
		DMGY := 920
	}
    if HHP = none
    {
        HHP := 0
    }



; Проверка на пустоту и присвоение значения по умолчанию, если поле пусто
HHP := HHP ? HHP : 0
SStamina := SStamina ? SStamina : 0
DDMG := DDMG ? DDMG : 0

; Расчет суммы с учетом только непустых полей
summ := HHP + SStamina + DDMG

if (summ > 72) {
    Msgbox, Сумма поинтов превышает 72 (1 поинт в вес)
}

if (summ < 72) {
    MsgBox, Сумма поинтов составляет %summ%, где-то не хватает :)
}

}
return





F1::
{
    if (DDino="Tuso") and (RRes = "1920x1080")
    {
        GlobalX := 1150
		HPY := 515
		StaminaY := 556
		WeightY := 643
		DMGY := 684
    }
    if (DDino="Tuso") and (RRes = "2560x1440")
    {
        GlobalX := 1480
		HPY := 690
		StaminaY := 740
		WeightY := 832
		DMGY := 876
    }
send , {f 1}
Sleep 1000
MouseMove, %GlobalX%, %HPY%
Sleep 75
Loop %HHP%
{
Send , {Lbutton 1}
Sleep %Timing%
}
Sleep 425
MouseMove, %GlobalX%, %StaminaY%
Sleep 75
Loop %SStamina%
{
Send , {Lbutton 1}
Sleep %Timing%
}
Sleep 425
MouseMove, %GlobalX%, %WeightY%
Sleep 75
Send , {Lbutton 1}
Sleep 650
MouseMove, %GlobalX%, %DMGY%
Sleep 75
Loop %DDMG%
{
Send , {Lbutton 1}
Sleep %Timing%
}
Sleep 350
    }


Switch DDino
    {
        case "Tuso":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Tusoteuthis Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Tusoteuthis Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Giga":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Giganotosaurus Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Giganotosaurus Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Equus":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Equus Saddle
                Sleep 100
                MouseMove 160,270
                Send , {Lbutton 1}
                Sleep 75
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Equus Saddle
                Sleep 100
                MouseMove 160,270
				Send , {Lbutton 1}]
                Sleep 75
                Send, {E 1}
            }
		return


		case "Theri":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Theri Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Theri Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Magma":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Magma Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Magma Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Carbo":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Carbo Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Carbo Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Stego":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Stego Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Stego Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Carcha":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Carcha Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Carcha Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Desmo":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Desmo Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Desmo Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Golem":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Golem Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Golem Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Rex":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Rex Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Rex Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Megalosaur":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Megalosaur Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Megalosaur Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Deino":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Deino Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Deino Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Andrew":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Andrew Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Andrew Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Mosa":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Mosasaurus Platform Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Mosasaurus Platform Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Megalo":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Megalosaurus Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Megalosaurus Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return

		case "Mana":
            if (RRes = "1920x1080")
            {
                MouseMove 198, 187
				Send , {Lbutton 1}
                Send, Managarmr Saddle
                Sleep 100
                MouseMove 160,270
                Send, {E 1}
            }

            if (RRes = "2560x1440")
            {
                MouseMove 460, 335
				Send , {Lbutton 1}
                Send, Managarmr Saddle
                Sleep 100
                MouseMove 427,435
				Send , {Lbutton 1}
                Send, {E 1}
            }
		return





}




return

F2::
Reload
return




GuiClose:
ExitApp
return