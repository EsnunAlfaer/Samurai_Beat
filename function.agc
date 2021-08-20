//Libraryes

#include "input.agc"
#include "screen.agc"
#include "assets.agc"
#include "variables.agc"

//Variaveis

global timeStart

global musica = 0

global pontos  = 0
global combo  = 0
global vidas  = 100
global comboMax  = 0
global acertos  = 0		
global comboV  = 0

global rank as string[8] = ["F","E","D","C","B","A","S","SS"] 

global winCT = 0

global dwPos = 800
global upPos = 200
global mdPos = 500

global speed = 25

global offsett as integer = -1133
global time as float

scroll as float = 0.0

global Hitted = 0

global i  = 0
global j  = 0

//Funções

function exitGame()
	
	if(GetRawKeyPressed(Key_Esc) = 1)
		end
	endif
endfunction

// Sprites

function spawnDW(ms as integer, i as integer, pos as integer)

	if time > timeStart + (ms + offsett) and GetSpriteActive(caixaDW[i].n)
		
		SetSpritePosition (caixaDW[i].n, GetSpriteX(caixaDW[i].n)-speed, pos)
		
	endif

endfunction

function spawnUP(ms as integer, i as integer, pos as integer)

	if time > timeStart + (ms + offsett) and GetSpriteActive(caixaUP[i].n)
		
		SetSpritePosition (caixaUP[i].n, GetSpriteX(caixaUP[i].n)-speed, pos)
		
	endif

endfunction

function animationSkull()
	
	for a = 0 to 150
		
		if GetSpriteActive(caixaUP[a].n)
			PlaySprite (caixaUP[a].n, 8, 1, 1, 16)
		endif
		
		if GetSpriteActive(caixaDW[a].n)
			PlaySprite (caixaDW[a].n, 8, 1, 1, 16)
		endif	
	next a
	
endfunction	

// Pontuação

function hit()

        acertos = acertos + 1
        pontos = pontos + 100 + combo
		combo = combo + 1
		comboV = comboV + 1
			
		// combo maximo
			
			if combo <> 0 and comboMax<combo 
				comboMax = combo
			endif
	
endfunction

function lost()		
			
		if vidas <=0 
			vidas = 0
			else 	
				vidas = vidas - 10
		endif		
			
			// combo maximo
			
			if combo <> 0 and comboMax<combo 
				comboMax = combo
			endif	
	
endfunction

// Menus

function startMenu1(bgw,menu1,volume)
	
	SetSpriteDepth(bgw, 4)
	SetSpriteDepth(volume, 3)
	SetSpriteDepth(menu1, 2)
	AddVirtualButton( 1, 1500, 1010, 100 )
	SetVirtualButtonSize(1,700,125)
	SetVirtualButtonAlpha(1,0)
	AddVirtualButton( 2, 400, 1010, 100 )
	SetVirtualButtonSize(2,700,125)
	SetVirtualButtonAlpha(2,0)
	AddVirtualButton( 3, 420, 75, 100 )
	SetVirtualButtonSize(3,700,125)
	SetVirtualButtonAlpha(3,0)
	AddVirtualButton( 4, 1500, 75, 100 )
	SetVirtualButtonSize(4,700,125)
	SetVirtualButtonAlpha(4,0)
	PlayMusic(4)

endfunction

function startMenu2(bgw,music3,menubg,music2,music1,menu2,menu1,volume,gameOver,Win,Hud)
	
	StopMusic()
	StopMusicOGG(musica)
	SetTextDepth(1,0)
	SetTextDepth(2,0)
	SetTextDepth(3,0)		
	SetSpriteDepth(menubg, 7)
	SetSpriteDepth(menu2, 3)
	SetSpriteDepth(music1, 5)
	SetSpriteDepth(music2, 5)
	SetSpriteDepth(music3, 5)
	SetSpriteDepth(bgw, 10)
	SetTextVisible(1,1)
	SetTextVisible(2,1)
	SetTextVisible(3,1)
	SetSpritevisible(music3, 1)
	SetSpritevisible(menubg,1)
	SetSpritevisible(music2, 1)
	SetSpritevisible(music1, 1)
	SetSpritevisible(menu2, 1)
	SetSpritevisible(menu1, 0)
	AddVirtualButton( 5, 120, 540, 100 )
	SetVirtualButtonAlpha(5,0)
	AddVirtualButton( 6, 1810, 540, 100 )
	SetVirtualButtonAlpha(6,0)
	AddVirtualButton( 7, 400, 1010, 100 )
	SetVirtualButtonSize(7,700,125)
	SetVirtualButtonAlpha(7,0)
	AddVirtualButton( 8, 1500, 1010, 100 )
	SetVirtualButtonSize(8,700,125)
	SetVirtualButtonAlpha(8,0)
	DeleteVirtualButton(1)
	DeleteVirtualButton(2)
	DeleteVirtualButton(3)
	DeleteVirtualButton(4)
	SetSpritePosition(volume,1000,200)
	DeleteText(4)
	SetSpriteVisible(GameOver,0)
	SetSpriteVisible(Win,0)
	setSpriteVisible(Hud,0)
	SetTextVisible(5,0)
	WinCT = 0
	
	
endfunction	

function startMenu3(music3,menubg,music2,music1,menu2,Hud)

	StopMusicOGG(musica)
	
	pontos  = 0
	combo  = 0
	vidas  = 99
	comboMax  = 0
	acertos  = 0		
	comboV  = 0
	
	SetTextVisible(1,0)
	SetTextVisible(2,0)
	SetTextVisible(3,0)	
	SetSpritevisible(music3, 0)
	SetSpritevisible(menubg,0)
	SetSpritevisible(music2, 0)
	SetSpritevisible(music1, 0)
	SetSpritevisible(menu2, 0)
	timeStart = GetMilliseconds()
	DeleteVirtualButton(5)
	DeleteVirtualButton(6)
	DeleteVirtualButton(7)
	DeleteVirtualButton(8)
	
	setSpriteVisible(Hud,1)
			
	PlayMusicOGG(musica)
	
endfunction

function menuVolume(configCT,volume)
	
	if (configCT = 0 )
				
		if (GetSpriteX(volume) > 0)
			setspritePosition(volume,GetSpriteX(volume)-100,0)
			SetSpriteDepth(volume,1)
			SetTextPosition(4,GetTextX(4)-59,220)
		endif	
						
	elseif (configCT = 1 )
				
		if (GetSpriteX(volume) < 1000)
			setspritePosition(volume,GetSpriteX(volume)+100,0)
		endif				
						 	
	endif 

endfunction	

// game Over

function startGameOver(GameOver)
	
if vidas <= 0 
					
	StopMusic()
	
	SetSpriteDepth(GameOver,0)
	SetSpriteVisible(GameOver,1)
	
	endif

endfunction

//prints

function startPrints(Hud)
	
	if winCT = 0
	
	PrintC("    ")
	PrintC(vidas) 
	printC("            ")
	PrintC(ComboV*4)
	PrintC("%")
	PrintC("       ")
	PrintC(combo)
	
	endif
	
	if winCT = 1
		SetSpriteVisible(Hud,0)
	endif	
	
endfunction	


//Reposiciona o inimigo depois do jogo

function reposicionaInimigo(UP ref as objeto[], DW ref as objeto[])

for a = 0 to 150
	
	SetSpriteActive(UP[a].n,1) 
	SetSpritePosition(UP[a].n, 2100, 2100)

next a

for a = 0 to 150
	 
	SetSpriteActive(DW[a].n,1)
	SetSpritePosition(DW[a].n, 2100, 2100)

next a

endfunction

function Resultado(final,Win,pres)

	if (time > timeStart + final)
		
		if pres = 100 
			r = 7
		elseif pres > 95
			r = 6
		elseif pres > 90
			r = 5
		elseif pres > 80
			r = 4
		elseif pres > 70 
			r = 3
		elseif pres > 60
			r = 2
		elseif pres > 50 
			r = 1
		else
			r = 0
		endif		
		
		SetTextString(5,rank[r])
		SetTextVisible(5,1)
		SetSpriteVisible(Win,1)
		
		printC("         ")
		Print( pontos)
		PrintC("            ")
		Print(comboMax)
		print(" ")
		print(" ")
		PrintC("        ")
		printC(pres)
		PrintC("%")
		winCT = 1
		
	endif

endfunction

function precision (max)
		
	px = 0
	
	px = (acertos*100)/max	
	
endfunction px	
	
///////////////////////////////////////////

startHitMechanics:

// # Sistema de acerto dos objetos	
	
	if GetSpriteCollision ( 1, caixaDW[i].n) = 1 and GetRawKeyState(Key_J) = 1 and ctJ = 0 and GetSpriteCollision(2, caixaDW[i].n)
		
		SetSpritePosition(caixaDW[i].n,2000,540)
        SetSpriteActive(caixaDW[i].n,0)
        i = i + 1
        PlaySound(hitDW,25)
        hit()

	endif
	
	if GetSpriteCollision ( 1, caixaDW[i].n) = 1 and GetRawKeyState(Key_K) = 1 and ctK = 0 and GetSpriteCollision(2, caixaDW[i].n)
		
		SetSpritePosition(caixaDW[i].n,2000,540)
        SetSpriteActive(caixaDW[i].n,0)
        i = i + 1
        PlaySound(hitDW,25)
        hit()

	endif
	
	if GetSpriteCollision ( 4, caixaUP[j].n) = 1 and GetRawKeyState(Key_F) = 1 and ctF = 0 and GetSpriteCollision(2, caixaUP[j].n)
		
		SetSpritePosition(caixaUP[j].n,2000,540)
        SetSpriteActive(caixaUP[j].n,0)
        j = j + 1
        PlaySound(hitUP,25)
        hit()

	endif
	
	if GetSpriteCollision ( 4, caixaUP[j].n) = 1 and GetRawKeyState(Key_D) = 1 and ctD = 0 and GetSpriteCollision(2, caixaUP[j].n) and GetSpriteY(caixaUP[j].n) = mdPos
		
		SetSpritePosition(caixaUP[j].n,2000,540)
        SetSpriteActive(caixaUP[j].n,0)
        j = j + 1
        PlaySound(hitUP,25)
        hit()

	endif	
	
// # colisão do objeto com o personajem
	
	if GetSpriteCollision (hitPoint, caixaDW[i].n)
		
		SetSpritePosition(caixaDW[i].n,2000,540)		 
		SetSpriteActive(caixaDW[i].n,0)
		i = i + 1
		lost()

		combo = 0
				
	endif
	
	if GetSpriteCollision (hitPoint, caixaUP[j].n)
		
		SetSpritePosition(caixaUP[j].n,2000,540)		 
		SetSpriteActive(caixaUP[j].n,0)
		j = j + 1
		lost()
			
		combo = 0
				
	endif
	
return
/////////////////////////////////////////////////////////////////

startComboMechanics:

// combo e vida adicional
 
	if comboV = 25 and vidas <=49	
		vidas = vidas + 50
		comboV=0	
		else 
			if comboV = 25 and vidas > 49
				vidas = 99
				comboV=0	
			endif
	endif	
	
return

////////////////////////////////////////////////////////////////

startParalaxe:

	scroll = scroll + 0.001
	
	SetSpriteUVOffset(bgw,scroll*0.90,0)
	SetSpriteUVOffset(bg2,scroll*0.40,0)
	SetSpriteUVOffset(bg3,scroll*1.50,0)
	SetSpriteUVOffset(bg4,scroll*3.90,0)
	SetSpriteUVOffset(bg5,scroll*5,0)

return

///////////////////////////////////////////////////////////////



