MakeStars:

CreateImageColor(5,255,255,255,255)
for i=1 to 100
	CreateSprite(i+5,5)
	SetSpriteSize(i+5,2,2)
	SetSpritePosition(i+5,random(1,768),random(1,1024))
next i
return

MoveStars:

for i=1 to 100
	starY = GetSpriteY(5+i)+random(6,8)
	if StarY > 1024
		StarY = 0
	endif
	SetSpritePosition(i+5,GetSpriteX(i+5),StarY)
next i
return
