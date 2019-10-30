Player_shoots:

//Проверяем на выстрел
if GetButtonPressed(1) = 1 and lazer_fired = 0
	playsound(lazer)
	lazer_fired = 1
	lazerX = GetSpriteX(1) + GetSpriteWidth(1)/2 - GetSpriteWidth(2)/2
	lazerY = GetSpriteY(1)-40
	reload = GetSpriteWidth(1)
endif

//Двигаем выстрел по экрану
if lazer_fired = 1
	reload = reload - 1
	lazerY=lazerY-12
	SetSpriteVisible(115,1)
endif

if lazerY < -GetSpriteHeight(2)
	 lazer_fired = 0
	 reload = GetSpriteWidth(1)
	 SetSpriteVisible(115,0)
	 
endif

//Выставляем позицию выстрела
SetSpritePosition(2,lazerX,lazerY)
SetSpritePosition(115,GetSpriteX(1), GetSpriteY(1)+63)
SetSpriteSize(115, reload, 4)
Return


