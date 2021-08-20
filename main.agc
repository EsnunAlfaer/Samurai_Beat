// Project: SamuraiBeat 
// versão: Stable Release 1.0 - 08/08/2021

#include "input.agc"
#include "screen.agc"
#include "function.agc"
#include "assets.agc"
#include "variables.agc"

//Variaveis

TutorialCT = 0
configCT = 2
state = 1
menu1CT = 0
menu2CT = 0
gameplayCT = 0

musicCT = 0

volNum as string[10] =[ "01","02","03","04","05","06","07","08","09","10"]
vol = 50
volId = 9


//display

mainDisplay()

// carrega os sprites na tela -> localizados em "assets.agc"

Gosub startAssets

animationSkull()

//Physics

Gosub startPhysics
	
// laço principal
	
do
	//timer
	
	time = GetMilliseconds()

	//Menu 1
	
	if(state = 1)
		
		if(menu1CT = 0)
			
			startmenu1(bgw,menu1,volume)	
			menu1CT = 1
			
		endif
	
		if (GetVirtualButtonPressed(1) = 1 or GetRawKeyPressed(Key_Enter) = 1)
			state = 2
		endif
		
		if (GetVirtualButtonPressed(2) = 1 or GetRawKeyPressed(Key_Esc) = 1)
			end
		endif
		
		if GetVirtualButtonPressed(3) = 1
			 
			if (tutorialCT = 0)
				tt = CreateSprite(LoadImage("tt.png"))
				SetSpriteDepth(tt,2)
				tutorialCT = 1
			elseif (tutorialCT = 1)
				DeleteSprite(tt)
				tutorialCT = 0		
			endif
				 
		endif
		
		if GetVirtualButtonPressed(4) = 1
			
			if (configCT = 2 or configCT = 1)
				
				AddVirtualButton(9,1640,265,120)
				SetVirtualButtonVisible(9,0)
				AddVirtualButton(10,1800,265,120)
				SetVirtualButtonVisible(10,0)
				
				createText(4,VolNum[volId])
				SetTextColor(4,6,96,231,255)
				SetTextFont(4,courier)
				SetTextSize(4,100)
				SetTextPosition(4,2000,300)
				SetTextDepth(4,0)
				
				configCT = 0	
						
			elseif (configCT = 0)
				
				DeleteVirtualButton(9)
				DeleteVirtualButton(10)
				DeleteText(4)
				
				configCT = 1
						 	
			endif 
			
		endif
		
		if (GetVirtualButtonExists(9) = 1 and GetVirtualButtonExists(10) = 1)
		
			if GetVirtualButtonPressed(9)
				
				if (volId > 0 and volId <= 9)
					vol = vol - 5
					volId = volId - 1
					SetTextString(4,volNum[volId])
				else
					vol = vol
					volId = VolId	
				endif
				
				SetMusicFileVolume(4,vol)
				SetMusicVolumeOGG(1,vol)
				SetMusicVolumeOGG(2,vol)
				SetMusicVolumeOGG(3,vol)	
				
			endif
		
			if GetVirtualButtonPressed(10)
				
				if (volId => 0 and volId < 9)
					vol = vol + 5
					volId = volId + 1
					SetTextString(4,volNum[volId])
				else
					vol = vol
					volId = VolId	
				endif
				
				SetMusicFileVolume(4,vol)
				SetMusicVolumeOGG(1,vol)
				SetMusicVolumeOGG(2,vol)
				SetMusicVolumeOGG(3,vol)
			
			endif
		
		endif	
		
		menuVolume(configCT,volume)
	
	// menu 2	
		
	
	elseif (state = 2)
		
		if (menu2CT = 0)
			
			musica = musica + 1
			
			reposicionaInimigo(caixaUP,caixaDW)
			
			startMenu2(bgw,music3,menubg,music2,music1,menu2,menu1,volume,GameOver,Win,Hud)
			
			menu2CT = 1
			
		endif	
		
		if (musica = 1 and musicCT = 0 )
			StopMusicOGG(2)
			StopMusicOGG(3)
			PlayMusicOGG(1,0)
			musicCT = 1
		endif
		
		if (musica = 2 and musicCT = 0 )
			StopMusicOGG(1)
			StopMusicOGG(3)
			PlayMusicOGG(2,0)
			musicCT = 1
		endif
		
		if (musica = 3 and musicCT = 0 )
			StopMusicOGG(1)
			StopMusicOGG(2)
			PlayMusicOGG(3,0)
			musicCT = 1
		endif
		
		if (musica = 1)
			
			SetTextString(1,"Field of hopes and dreams")
			SetTextString(2,"(Hyuman remix)")
			SetTextString(3,"Dificuldade: Fácil")
				
		elseif (musica = 2)	
		
			SetTextString(1,"My War")
			SetTextString(2,"(Hyuman remix)")
			SetTextString(3,"Dificuldade: Média ")
		
		elseif (musica = 3)
		
			SetTextString(1,"Asgore")
			SetTextString(2,"(Hyuman remix)")
			SetTextString(3,"Dificuldade: Difícil")
		
		endif	
							
		
		if (GetVirtualButtonPressed(5) or GetRawKeyPressed(Key_Left) = 1)
			
			musicCT = 0
			
			if (musica > 1)
				musica = musica - 1
				
			SetSpritePosition(music1, GetspriteX(music1)+880, GetspriteY(music1))
			SetSpritePosition(music2, GetspriteX(music2)+880, GetspriteY(music1))
			SetSpritePosition(music3, GetspriteX(music3)+880, GetspriteY(music1))
				
			else
				musica = musica
			endif	
		endif
		
		if (GetVirtualButtonPressed(6) or GetRawKeyPressed(Key_Right) = 1)
			
			musicCT = 0
			
			if (musica < 3)
				musica = musica + 1
				
			SetSpritePosition(music1, GetspriteX(music1)-880, GetspriteY(music1))
			SetSpritePosition(music2, GetspriteX(music2)-880, GetspriteY(music1))
			SetSpritePosition(music3, GetspriteX(music3)-880, GetspriteY(music1))
			
			else
				musica = musica
			endif	
		endif	
		
		if (GetVirtualButtonPressed(7) = 1 or GetRawKeyPressed(Key_Esc) = 1)
			end
		endif
		
		if (GetVirtualButtonPressed(8) = 1 or GetRawKeyPressed(Key_Enter) = 1)
			state = 3
		endif
		
		exitGame()
		
	// gameplay	
		
	elseif(state = 3)
		
		if(gameplayCT = 0)
			
			startMenu3(music3,menubg,music2,music1,menu2,Hud)
			
			gameplayCT = 1
				
		endif
	
		
		
	// Sair do jogo	
		
		if GetRawKeyPressed(Key_Esc) = 1
			
			menu2CT = 0
			gameplayCT = 0
			state = 2
			i = 0
			j = 0
			musica = musica - 1
			musicCT = 0
			
		endif	
		
		// Escolhe a musica			
		
		if (musica = 1)
			
			musica1(Win)	
		
		elseif (musica = 2)
			
			musica2(Win)
			
		elseif (musica = 3)	
			
			musica3(Win)
			
		endif	
	
		// Inicia o fundo
			
		Gosub startParalaxe
		
		// sistema de acertos e erros
		
		gosub startHitMechanics
	 
		// sistema de combos e vida
		
		gosub startComboMechanics
				
		// # Input Command
		
		press_K()
		press_J()
		press_F()
		press_D()
		
		//Prints
		
		startPrints(Hud)
		
		//End game
		
		startGameOver(GameOver)
	
	endif

	// sync

    Sync()
loop

