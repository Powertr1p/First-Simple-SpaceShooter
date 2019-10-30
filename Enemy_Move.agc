Enemy_Move:

if isEnemyDead = 0

//Двигаем врага на 1 пиксель вниз
enemyY = enemyY + enemySpeed

//Двигаем врага по сторонам
if enemy_direction = 4 and enemyX > GetVirtualWidth() - GetSpriteWidth(4)
	enemy_direction = -4
endif

if enemy_direction = -4 and enemyX < 0
	enemy_direction = 4
endif

enemyX = enemyX + enemy_direction * enemySpeed
SetSpritePosition(4,enemyX,enemyY)
endif
return

//спавн бимов
EnemyShoot:

if GetSpriteY(4) > 0 
	if isEnemyDead = 0
		if enemy_fired = 0
			for i = 0 to 4
				SetSpriteVisible(110+i,0)
			next i
			if random(1,2) = 2
				enemy_fired = 1
				PlaySound(enemybeam)
				for i = 0 to 4
					SetSpritePosition(110+i,getSpriteX(4)+60,getspriteY(4)+70)
					SetSpriteVisible(110+i,1)
				next i
			endif
		endif
	endif
endif

//отскок от стены крайнего левого бима
if enemy_fired = 1 and GetSpriteX(110) < 0 and beam1_direction = -3
	beam1_direction = 3
elseif enemy_fired = 1 and GetSpriteX(110) > getVirtualWidth() - GetSpriteWidth(110) and beam1_direction = 3
	beam1_direction = -3
endif

//отскок от стены второго левого бима
if enemy_fired = 1 and GetSpriteX(111) < 0 and beam2_direction = -1
	beam2_direction = 1
elseif enemy_fired = 1 and GetSpriteX(111) > getVirtualWidth() - GetSpriteWidth(111) and beam2_direction = 1
	beam2_direction = -1
endif

//отскок от стены правого четвертого слева бима
if enemy_fired = 1 and GetSpriteX(113) > GetVirtualWidth() - GetSpriteWidth(113) and beam3_direction = 1
	beam3_direction = -1
elseif enemy_fired = 1 and GetSpriteX(113) < 0 and beam3_direction = -1
	beam3_direction = 1
endif

//отскок от стены крайнего правого бима
if enemy_fired = 1 and GetSpriteX(114) > GetVirtualWidth() - GetSpriteWidth(114) and beam4_direction = 3
	beam4_direction = -3
elseif enemy_fired = 1 and GetSpriteX(114) < 0 and beam4_direction = -3
	beam4_direction = 3
endif

//задаем движение бимам
if enemy_fired = 1	
	SetSpritePosition(110,GetSpriteX(110) + beam1_direction, GetSpriteY(110)+enemyAttackSpeed)
	SetSpritePosition(111,GetSpriteX(111) + beam2_direction, GetSpriteY(111)+enemyAttackSpeed)
	SetSpritePosition(112,GetSpriteX(112), GetSpriteY(112)+enemyAttackSpeed)	
	SetSpritePosition(113,GetSpriteX(113) + beam3_direction, GetSpriteY(113)+enemyAttackSpeed)
	SetSpritePosition(114,GetSpriteX(114) + beam4_direction, GetSpriteY(114)+enemyAttackSpeed)
endif

// ресет бимов	
if GetSpriteY(110) > 1024
	enemy_fired = 0
	Gosub ResetDirection
endif

if GetSpriteY(4) > GetVirtualHeight() + GetSpriteHeight(4)
	enemyY = -150
endif
return

ResetDirection:
beam1_direction = -3
beam2_direction = -1
beam3_direction = 1
beam4_direction = 3
return

