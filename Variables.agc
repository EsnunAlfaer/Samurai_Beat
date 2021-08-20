#include "function.agc"

function musica1(Win) // Field of hopes and dreams

	u = 0
	d = 0
	
	final = 95000
	max = 83
	
	pres = precision(max)

	dw  as integer[45] = [7805,9272,12403,13072,15339,16472,16939,20139,21339,25072,26939,28805,30872,36205,37339,38672,41405,41939,42872,43272,45472,47605,48605,51672,53005,53805,55872,58605,60872,61605,63539,64472,65472,67072,68139,72072,73872,76072,77005,78005,78939,81739,82672,85605,90405]
	pDw as integer[45] = [800,800,800,800,800,500,500,800,800,800,500,500,800,500,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,500,800,500,800,800,800,800,800,800,800,800,800,800,800,500,800]
	up  as integer[38] = [10739,11472,14339,18405,18805,19405,23205,28072,29739,32139,33405,35205,39605,40605,42472,43939,44272,46472,50005,50872,52605,53405,56939,59339,62605,63539,65472,66205,69205,70272,73205,75072,76539,80872,84605,87539,88605,90405]
	pUp as integer[38] = [200,200,200,200,200,200,200,500,500,500,200,200,200,200,200,200,500,200,200,200,200,200,200,200,500,200,200,200,200,200,200,200,200,200,500,200,200,200]
	

	while d < 45
	
	spawnDW(dw[d], d, pDw[d])
	d = d + 1
	
	endwhile
	
	while u < 38
	
	spawnUP(up[u], u, pUp[u])
	u = u + 1
	
	endwhile
	
	Resultado(final,Win,pres)	

endfunction

function musica2(Win) // Field of hopes and dreams

	u = 0
	d = 0
	
	final = 85000
	max = 131
	
	pres = precision(max)

	dw  as integer[70] = [5616,6450,6866,7422,7908,8394,8811,12838,13394,15130,15616,16102,17561,18394,19158,21588,23186,24852,26450,26936,27838,29505,31588,32005,32352,32908,33394,33950,38463,39088,39783,40200,40547,40894,42144,42700,43116,46727,47630,48394,49227,51102,51797,53533,54088,54505,56797,57144,57769,58533,59227,63672,64088,64713,65200,65616,68463,68880,70477,70825,71936,72352,73602,73950,76102,79366,79922,80825,82005,82838]
	pDw as integer[70] = [800,800,800,800,800,800,800,500,500,500,800,800,500,800,500,500,800,800,800,800,800,800,800,800,800,800,800,800,800,800,500,500,500,500,800,800,500,800,800,500,500,800,800,800,800,800,500,800,800,800,800,500,800,500,800,500,800,800,500,800,500,800,500,800,500,500,800,800,800,800]
	up  as integer[61] = [6450,9644,10130,10686,11172,12005,13880,14227,16450,16797,17213,20686,22422,24019,25616,27491,28255,28672,29158,29922,30269,30616,31033,37630,38463,41311,41797,44713,45200,45616,45963,46311,47144,47977,48880,49644,52422,52838,55200,55686,56102,56450,57491,58800,59644,66450,66797,67283,67977,71241,71588,72769,73186,74366,74783,75200,80408,81241,81658,82422,82838]
	pUp as integer[61] = [200,200,200,200,200,200,500,500,500,200,200,500,500,200,200,200,500,200,200,200,200,200,200,500,200,200,200,500,500,500,500,200,200,200,500,500,200,200,200,200,200,500,200,200,500,200,200,200,200,500,200,500,200,500,200,500,200,500,200,200,200]
	

	while d < 70
	
	spawnDW(dw[d], d, pDw[d])
	d = d + 1
	
	endwhile
	
	while u < 61
	
	spawnUP(up[u], u, pUp[u])
	u = u + 1
	
	endwhile
	
	Resultado(final,Win,pres)	

endfunction

function musica3(Win) // Field of hopes and dreams

	u = 0
	d = 0
	
	final = 120000
	max = 266
	
	pres = precision(max)

	dw  as integer[142] = [7256,8058,11144,15157,15959,16206,16577,16947,17194,18181,19169,22688,23922,24601,25219,25959,26577,26885,31144,31885,32194,32626,34169,34663,35157,36947,37194,38181,38675,39107,39848,40157,41206,42194,42873,44972,47132,47441,47688,49169,49416,49725,51144,51391,51700,55404,56391,57132,57688,58058,58675,59478,65219,65465,65712,66083,66330,66453,66700,67379,68058,68305,68490,68675,71144,71330,71453,71577,71700,75157,75465,75712,76454,79231,79354,79478,79601,79725,81206,81330,81453,81577,81700,83181,83305,83428,83552,83675,88058,88243,88367,88490,88614,88737,90095,92132,92317,92564,92811,95280,96762,97009,97256,97996,98490,98984,103267,103370,103490,103600,103700,105150,105350,105470,105590,105720,106200,106638,108110,108200,108370,108500,108600,108990,110232,110531,110660,111218,111450,111700,112068,112400,112620,113200,113430,113650,113930,114420,114967,115226,115470,115700]
	pDw as integer[142] = [800,800,500,800,800,800,800,800,800,800,800,500,800,800,800,500,500,800,800,800,800,800,800,800,800,800,800,800,800,800,500,800,500,500,500,800,800,500,800,800,500,800,800,500,800,800,800,800,800,800,800,800,500,500,500,800,800,800,800,500,800,800,800,800,800,800,800,800,800,800,800,800,500,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,500,800,500,800,800,500,800,500,800,800,800,500,800,500,800,500,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800,800]
	up  as integer[124] = [9169,10033,12009,18675,19972,20219,20589,20959,21206,22194,23181,24231,24972,26206,27194,32935,33181,35898,36144,36557,40527,40898,41885,42564,43181,44972,48058,48305,48675,50033,50342,50651,52070,52379,52688,55157,55712,56083,56638,57441,58367,59169,59725,60033,60342,60651,63243,63552,63737,64046,64293,64416,64663,67132,67626,72009,72379,72688,73181,73367,73490,73614,73737,74107,74416,74663,75342,75589,76083,76762,80095,80280,80404,80527,80651,82070,82256,82379,82502,82626,84107,84293,84416,84539,84663,87256,89169,89293,89416,89539,89663,91144,95280,98243,98737,99231,104101,104296,104425,104550,104650,104900,106000,106390,106900,107139,107310,107400,107550,107690,109236,109970,111024,111330,111600,112060,112500,112935,113300,113560,114179,114600,115370,115600]
	pUp as integer[124] = [200,200,500,200,200,200,200,200,200,500,500,200,200,200,200,200,200,200,200,200,500,200,200,200,200,200,200,500,200,200,500,200,200,500,200,200,200,200,200,200,200,500,500,500,200,500,500,500,500,200,200,200,200,500,500,500,500,500,200,200,200,200,200,500,500,500,200,200,500,500,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,200,500,200,500,200,200,200,200,200,500,200,500,200,500,200,200,200,200,200,200,200,200,200,200,200,200,200,200]
	

	while d < 142
	
	spawnDW(dw[d], d, pDw[d])
	d = d + 1
	
	endwhile
	
	while u < 124
	
	spawnUP(up[u], u, pUp[u])
	u = u + 1
	
	endwhile
	
	Resultado(final,Win,pres)	

endfunction

