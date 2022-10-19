// Variaveis para uso de teclas

global Key_D as integer = 68
global Key_F as integer = 70
global Key_J as integer = 74
global Key_K as integer = 75
global Key_Esc as integer = 27
global Key_Enter as integer = 13
global Key_Left as integer = 37
global Key_Right as integer = 39
global key_tab as integer = 9

global but_D as integer = 21
global but_F as integer = 22
global but_J as integer = 23
global but_K as integer = 24

//Variaveis de controle

global ctJ as integer = 0
global ctK as integer = 0
global ctF as integer = 0
global ctD as integer = 0

// Funções de entrada

function press_J()
	
	if(GetRawKeyPressed(Key_j) = 1 or GetVirtualButtonPressed(but_J) = 1)	
		SetSpritePosition(1, GetSpriteX(1) , 711 )
		ctJ = 0
		PlaySprite (1, 20, 0, 4, 6)	
		else
			
			if (GetRawKeyPressed(Key_J) = 0  and GetSpritePlaying(1) = 0)
			PlaySprite (1, 8, 1, 7, 9)
			ctJ = 1
			endif
					
	endif	
	
endfunction

function press_K()
	
	if(GetRawKeyPressed(Key_K) = 1 or GetVirtualButtonPressed(but_K) = 1)	
		SetSpritePosition(1, GetSpriteX(1) , 400  )
		ctK = 0
		 PlaySprite (1, 20, 0, 10, 12)
		
		else 
			
			if (GetRawKeyPressed(Key_K) = 0) and GetSpritePlaying(1) = 0
				ctK = 1
			PlaySprite (1, 8, 1, 7, 9)
			endif
	endif

	
endfunction

function press_D()
	
	if(GetRawKeyPressed(Key_D) = 1 or GetVirtualButtonPressed(but_D) = 1)	
		SetSpritePosition(4, GetSpriteX(4) , 460)
		ctD = 0
		PlaySprite (4, 20, 0, 10, 12)	
		else
			
			if (GetRawKeyPressed(Key_D) = 0) and GetSpritePlaying(4) = 0
			PlaySprite (4, 8, 1, 7, 9)
			ctD = 1
			endif
					
	endif
	
	if (GetSpriteY(4) > 80) and ctF = 1
		SetSpritePosition(4,GetSpriteX(4),GetSpriteY(4)-12)
	endif		
	
endfunction

function press_F()
	
	if(GetRawKeyPressed(Key_F) = 1 or GetVirtualButtonPressed(but_F) = 1)	
		SetSpritePosition(4, GetSpriteX(4) , 80)
		ctF = 0
		PlaySprite (4, 20, 0, 4, 6)	
		else
			
			if (GetRawKeyPressed(Key_F) = 0) and GetSpritePlaying(4) = 0
			PlaySprite (4, 8, 1, 7, 9)
			ctF = 1
			endif
					
	endif	
	
endfunction

