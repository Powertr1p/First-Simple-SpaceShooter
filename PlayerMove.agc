PlayerMove:

//Задаем управление по X
playerX = playerX + GetDirectionX() *13
playerY = playerY + GetDirectionY() *11

//Чекаем выход за границы по < X
if playerX < 0
	playerX = 0
endif

//Чекаем выход за границы по > X
if playerX > GetVirtualWidth() - GetSpriteWidth(1)
		playerX = GetVirtualWidth() - GetSpriteWidth(1)
endif

//чекаем на выход за границы вниз по Y
if playerY > GetVirtualHeight() - GetSpriteHeight(1)
	playerY = GetVirtualHeight() - GetSpriteHeight(1)
endif

//выход за границы верх по Y
if playerY < 0
	playerY = 0
endif

//Ставим спрайт на позицию
SetSpritePosition(1,playerX,playerY)

Return
