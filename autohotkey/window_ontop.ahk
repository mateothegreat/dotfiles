global WindowTitle := "Exolesco - Twitch"
global Transparency := 255


refresh()
{
	ifWinActive, %WindowTitle% 
	{
		Winset, Transparent, %Transparency%, %WindowTitle%
	}
}

!q:: ;Transparency down

	if Transparency > 30
	{
		Transparency := Transparency - 10
	} else {
		Transparency := 30
	}
	refresh()

return

!w:: ;Turn transparency up

	if Transparency < 255 
	{
		Transparency := Transparency + 10
	} else {
		Transparency := 255
	}
	refresh()
return

!e:: ;Set always on top
	ifWinActive, %WindowTitle%
	{
		Winset, AlwaysOnTop, toggle
	}
return

!r:: ;Set window
	WinGetTitle, WindowTitle, A
return