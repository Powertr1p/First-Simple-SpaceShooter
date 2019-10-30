Collision:

if cycle => 916
	cycle = 910
endif

if GetSpriteCollision(2,4) = 1
	PlaySound(boom)
	cycle = cycle + 1
	if GetParticlesExists(cycle) = 1
		explosion(cycle,GetSpriteX(4),GetSpriteY(4),900)
	else
		CreateParticles (cycle, 1, 1)
		explosion(cycle, GetSpriteX(4),GetSpriteY(4),900)
	endif
	isEnemyDead = 1
	score = score + 10
	lazer_fired = 0
	lazerX = -50 : lazerY = -50
	inc enemyAttackSpeed
	inc enemySpeed
endif



if isEnemyDead = 1 //дописать таймер смерти при пратиклз экзист
			enemyX = random(0,600) : enemyY = -250
			isEnemyDead = 0
endif



// Столкновение выстрела врага с игроком == поражение
for i = 0 to 4
	if getSpriteCollision(110+i,1) = 1
		gameover = 1
		SetSpritePosition (110,-100,-100)
		SetSpritePosition (111,-100,-100)
		SetSpritePosition (112,-100,-100)
		SetSpritePosition (113,-100,-100)
		SetSpritePosition (114,-100,-100)
		enemyX = 100 : enemyY = -50
	endif
	next i
//Коллизия между врагом и игроком
if GetSpriteCollision(4,1) = 1
	gameover = 1
	enemyX = 100 : enemyY = -100
	endif
return

function explosion(ID, x, y, img)
	SetParticlesPosition 		(ID, x, y)
	ResetParticleCount			(ID)
	SetParticlesFrequency		(ID, 250)
	SetParticlesLife			(ID, 1)
	SetParticlesSize			(ID, 120)
	SetParticlesStartZone		(ID, -10, 0, 10, 0)
	SetParticlesImage			(ID, img)
	SetParticlesDirection		(ID, 75, 55)
	SetParticlesAngle			(ID, 360)
	SetParticlesVelocityRange	(ID, 0.1, 1.5)
	SetParticlesMax				(ID, 10)
	AddParticlesColorKeyFrame 	(ID, 0.0, 0, 0, 0, 0)
	AddParticlesColorKeyFrame 	(ID, 0.5, 255, 255, 0, 255)
	AddParticlesColorKeyFrame 	(ID, 1.5, 255, 0, 0, 0)
	AddParticlesForce 			(ID, 1.5, 1.0,  15, 10)
endfunction ID
