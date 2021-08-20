//tipos

type objeto
	n as integer
endtype

//Variaveis

global caixaDW as objeto[150]
global caixaUP as objeto[150]

startAssets:  /* carregamento e criação de sprites */

// Background com paralaxe

SetDefaultWrapU(1)
SetDefaultWrapV(1)

bgw = createSprite ( LoadImage ("w.png") )
bg0 = CreateSprite ( LoadImage ("0.png") )
bg1 = CreateSprite ( LoadImage ("1.png") )
bg2 = CreateSprite ( LoadImage ("2.png") )
bg3 = CreateSprite ( LoadImage ("3.png") )
bg4 = CreateSprite ( LoadImage ("4.png") )
bg5 = CreateSprite ( LoadImage ("5.png") )

// Sprites dos personagens

LoadImage (1, "hayato.png")
CreateSprite (1,1)
SetSpritePosition(1, -10 , 711)

LoadImage(4, "tomoko.png")
CreateSprite(4,4)
SetSpritePosition(4, -10 , 80)

// Sprites do HUD

LoadImage(2, "hitBoxPH.png")
CreateSprite(2,2)
SetSpritePosition(2, 520,0)

gameOver = CreateSprite(LoadImage("GameOver.png"))
SetSpriteVisible(GameOver,0)

Win = CreateSprite(LoadImage("Win.png"))
setSpriteVisible(win,0)

Hud = CreateSprite(LoadImage("Hud.png"))
setSpriteVisible(Hud,0)
SetSpritePosition(Hud,0,-25)

// Hit points

CreateImageColor(3,255,0,0,0)
hitPoint = CreateSprite(3)
SetspriteSize(hitPoint, 50,1080)
SetSpritePosition(hitPoint, 350, 0)

//Menu

menubg = createSprite ( LoadImage ("roxo.png") )

menu1 = createSprite ( LoadImage ("Menu1.png") )
SetSpriteDepth(menu1, 1)

menu2 = createSprite ( LoadImage ("Menu2.png") )

volume = createSprite ( LoadImage ("volume.png") )
SetSpritePosition(volume,1000,0)

// Capa das musicas

music1 = createSprite ( LoadImage ("music1.png") )
SetSpritePosition(music1, 660, 242)

music2 = createSprite ( LoadImage ("music2.png") )
SetSpritePosition(music2, 1543, 242)

music3 = createSprite ( LoadImage ("music3.png") )
SetSpritePosition(music3,2420, 242)

// Sprites dos inimigos

imageA = LoadImage ( "skullUP.png" )
imageB = LoadImage ( "skullDW.png" )

// Vetores com sprites dos inimigos

for a = 0 to 150
	 
	caixaUP[a].n = CreateSprite (imageA)
	SetSpritePosition(caixaUP[a].n, 2100, 2100)

next a

for a = 0 to 150
	 
	caixaDW[a].n = CreateSprite (imageB)
	SetSpritePosition(caixaDW[a].n, 2100, 2100)

next a


//Animação das sprites

SetSpriteAnimation (1, 560, 368, 20)
SetSpriteFlip(1,1,0)

SetSpriteAnimation (4, 560, 368, 20)
SetSpriteFlip(4,1,0)

for a = 0 to 150
	 
	SetSpriteAnimation (caixaUP[a].n, 200, 200, 16)
	SetSpriteFlip(caixaUP[a].n,1,0)
	
	SetSpriteAnimation (caixaDW[a].n, 200, 200, 16)
	SetSpriteFlip(caixaDW[a].n,1,0)

next a

// sons
LoadMusic(4,"Waterfall.mp3")
LoadMusicOGG(1,"had.ogg")
LoadMusicOGG(2,"MyWar.ogg")
LoadMusicOGG(3,"Asgore.ogg")

SetMusicFileVolume(4,50)

hitDW = LoadsoundOGG("soundDW.ogg")
hitUP = LoadsoundOGG("soundUP.ogg")

//Textos

courier = LoadFont("courier-new.ttf")
fujimaru = LoadFont("Fujimaru.ttf")

SetPrintFont(courier)
SetPrintSize(110)

CreateText(1,"1")
SetTextFont(1,courier) 
SetTextSize(1,50)
SetTextPosition(1, 45, 25)
SetTextColor(1, 233, 22, 75, 255)
SetTextVisible(1,0) 

CreateText(2,"2")
SetTextFont(2,courier) 
SetTextSize(2,50)
SetTextPosition(2, 35, 80)
SetTextColor(2, 233, 22, 75, 255)
SetTextVisible(2,0)

CreateText(3,"Dificuldade: ")
SetTextFont(3,courier) 
SetTextSize(3,50)
SetTextPosition(3, 1220, 55)
SetTextColor(3,6,96,231,255)
SetTextVisible(3,0)

CreateText(5,"X")
SetTextFont(5,fujimaru) 
SetTextSize(5,200)
SetTextPosition(5, 1350, 380)
SetTextColor(5,255,255,255,255)
SetTextVisible(5,0)

return


////////////////////////////////////////////////////////////

startPhysics: /* Gerencia as propriedades fisícas das sprites */

//fisíca

SetSpritePhysicsOn(1, 2)
SetPhysicsGravity( 0, 7000)

//colisão

SetSpriteShape(1, 2)

return

///////////////////////////////////////////////////////////
