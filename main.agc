SetWindowSize(768,1024,0)
SetVirtualResolution(768,1024)
UseNewDefaultFonts(1)

reload as float
playerX as float
playerY as float
lazerX as float = -100
lazerY as float
lazer_fired = 0
global cycle = 910
global isEnemyDead = 0



enemyX as float
enemyY as float
enemy_direction = 4
enemy_fired = 0
enemy_hp = 5
enemyAttackSpeed = 5
enemySpeed = 2
beam1_direction = -3
beam2_direction = -1
beam3_direction = 1
beam4_direction = 3
gameover = 1

score = 0
highScore = 0

isMenuMusicOn = 1
 
#include "MainMenu.agc"
#include "Loader.agc"
#include "PlayerMove.agc"
#include "Player_shoots.agc"
#include "Enemy_Move.agc"
#include "Collision.agc"
#include "Stars.agc"
#include "Sounds.agc"


Gosub loader
Gosub MakeStars
Gosub LoadMusic
Gosub LoadSound

do
	
	if gameover = 1
		Gosub ChangeBGM_Main
		Gosub MainMenu
		score = 0
		enemySpeed = 1
		enemyAttackSpeed = 5
	endif
	Gosub ChangeBGM_Battle	
	Gosub PlayerMove
	Gosub Player_shoots
	Gosub Enemy_Move
	Gosub MoveStars
	Gosub EnemyShoot
	
	if score > highScore
		highScore = score
	endif
	
	SetTextString(3,"High Score: "+str(highScore))
	SetTextString(7,"SCORE: "+str(highScore))
	
	
		Gosub Collision
	sync()
loop
	
