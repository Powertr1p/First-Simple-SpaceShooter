Mainmenu:
SetSpritePosition(gametitle,((768 - GetSpriteWidth(gametitle1)) / 2),350)



CreateText(3, "High Score: ")
SetTextSize(3,40)
SetTextPosition(3,768-GetTextTotalWidth(3),0)

CreateText (7, "SCORE: "+str(score))
SetTextSize(7,40)
SetTextPosition(7,0,0)

CreateText(4, "Left Mouse to start game")
SetTextSize(4,60)
SetTextPosition(4,(768-GetTextTotalWidth(4))/2,900)

CreateText(5,"Press SPACE to shoot")
SetTextSize (5,25)
SetTextPosition(5,(768-GetTextTotalWidth(5)) / 2, 600)
SetTextBold(5,1)

CreateText(6, "ARROWS for movement")
SetTextSize (6,25)
SetTextPosition(6,(768-GetTextTotalWidth(6)) / 2, 625)
SetTextBold(6,1)
SettextColor(2,128,128,255,255)

Gosub HideGameSprites
Gosub ShowMenuText

repeat
	sync()
until GetPointerPressed() = 1

gameover = 0
Gosub ShowGameSprites
Gosub HideMenuText

return

HideGameSprites:
for i=1 to 115
	SetSpriteVisible(i,0)
next i
return

ShowGameSprites:
for i = 0 to 115
	SetSpriteVisible(i,1)
next i
return

HideMenuText:
SetTextVisible(2,0)
SetTextVisible(4,0)
SetTextVisible(5,0)
SetTextVisible(6,0)
SetSpriteVisible(gametitle1,0)
return

ShowMenuText:
SetTextVisible(2,1)
SetTextVisible(4,1)
SetTextVisible(5,1)
SetTextVisible(6,1)
SetSpriteVisible(gametitle1,1)

return
