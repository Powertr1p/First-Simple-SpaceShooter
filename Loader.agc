loader:

LoadImage(1, "player_ship3.png")
LoadImage(2, "beam.png")
LoadImage(3, "enemyShot.png")
LoadImage(4, "alien_ship2.png")
LoadImage(900, "particle_fx.png")


gametitle = LoadImage("gametitle.png")
gametitle1 = CreateSprite(gametitle)
//Создаем спрайт игрока 
CreateSprite(1,1)
SetSpriteSize(1,52,62)
SetSpriteShape(1,3)
SetSpriteDepth(1,1)
playerX = GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2
playerY = GetVirtualHeight() - GetSpriteHeight(1)

//ставим спрайт на старт
SetSpritePosition(1,playerX,playerY)

//Создаем лазер
CreateSprite (2,2)
SetSpriteShape(2,3)
SetSpritePosition(2,-100,-100)

//Создаем врага
CreateSprite(4,4)
SetSpriteShape(4,3)
SetSpriteDepth(4,1)
SetSpritePosition(4,100,20)

for i = 0 to 4
	CreateSprite(110+i,3)
	SetSpriteShape(110+i,3)
next i

CreateSprite(115,0)
SetSpriteSize(115,GetSpriteWidth(1), 4)
SetSpriteColor(115,255,255,255,60)



Return
