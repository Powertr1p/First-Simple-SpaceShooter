LoadSound:
lazer = LoadSound("lazer.wav")
enemybeam = LoadSoundOGG("enemyShot.ogg")
boom = LoadSound("explosion.wav")

return


LoadMusic:
mainmenumusic = LoadMusicOGG("mainmenu.ogg")
battlemusic = LoadMusicOGG("bossbattle.ogg")
SetMusicVolumeOGG(battlemusic,32)
return

ChangeBGM_Main:
if GetMusicPlayingOGG(mainmenumusic) = 0 
	StopMusicOGG(battlemusic)
	PlayMusicOGG(mainmenumusic, 1)
endif
return

ChangeBGM_Battle:
if GetMusicPlayingOGG(mainmenumusic) = 1 and GetMusicPlayingOGG(battlemusic) = 0
	StopMusicOGG(mainmenumusic)
	PlayMusicOGG(battlemusic, 1)
endif
return


