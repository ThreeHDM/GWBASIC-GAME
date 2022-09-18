0 REM ---- main program ----
1 SCREEN 9: CLS

20 REM ---- initialize ----
21 LET GAMEOVER = 0
22 LET OPTIONA = 1
23 LET OPTIONB = 2


30 REM ----  Generic video game sound ----
31 FOR FREQ% = 1000 TO 300 STEP -100
32   SOUND FREQ%,.5
33 NEXT FREQ%

80 REM ---- Colors ----
81 LET CERROR = 12 :
82 LET CTEXTO = 2 
83 LET CINFO = 3
84 LET CINPUT = 7
                                                                                          

100 PLAY "MBT120<<P8E-8B-4E-8>E-4D-4C8<B-8A-4A-8A-16B-16E-4E-8B-4E-8>E-4A-4A-8G-8F8E-2"
101 PRINT
102 COLOR CTEXTO
103 PRINT "    __                 ___                           _           "
104 PRINT "   / /   ____ _   ____/ (_)___ ___  ___  ____  _____(_)___  ____ "
105 PRINT "  / /   / __ `/  / __  / / __ `__ \/ _ \/ __ \/ ___/ / __ \/ __ \"
106 PRINT " / /___/ /_/ /  / /_/ / / / / / / /  __/ / / (__  ) / /_/ / / / /"
107 PRINT "/_____/\__,_/   \__,_/_/_/ /_/ /_/\___/_/ /_/____/_/\____/_/ /_/ "
108 PRINT "               __           "
109 PRINT "    ________  / /__________ "
110 PRINT "   / ___/ _ \/ __/ ___/ __ \"
111 PRINT "  / /  /  __/ /_/ /  / /_/ /"
112 PRINT " /_/   \___/\__/_/   \____/ "
113 PRINT 
114 PRINT "Elige tu propio destino - una aventura creada por Juan Bilardi"
115 PRINT
116 COLOR CINPUT : INPUT "Escribe s para comenzar o q para salir, luego presiona INTRO: ", B$
117 IF B$ = "q" GOTO 9000
118 IF B$ = "s" GOTO 119 ELSE GOSUB 9900
119 PRINT: COLOR CINPUT : INPUT "Escribe tu nombre, luego presiona INTRO: ", USERNAME$
120 IF USERNAME$ = "" GOTO 119


130 CLS: COLOR CTEXTO : PRINT "Hola! "USERNAME$"! Aqui comienza tu aventura!"
131 PRINT 
132 PRINT "Sos un coleccionista de cosas retro. Amas la cultura pop de los  80 y 90. Tenes figuras de accion, peliculas VHS, casettes, consolas de videojuego, juegos y mas. Pero, por sobre todo, te encantan las computadoras retro."
133 PRINT
134 PRINT "Finalmente llego el dia. Hoy es la FERIA RETRO. Un espacio de celebracion y encuentro para los coleccionistas. No podes esperar para estar ahi y despertar tus recuerdos de la infancia."
135 PRINT
136 PRINT "Te pones tu remera de los THUNDERCATS, agarras tu mochila y bastante efectivo. Uno nunca sabe que puede encontrar en los puestos de la feria!"
137 PRINT
138 PRINT "Llegas a la feria. Esta repleta de fanaticos del retro como vos y llena de cosas que te encantan."
139 PRINT
140 PRINT "Hoy estas buscando juegos de PC. Te dirigis al puesto de siempre y comenzas a revisar entre las cajas llenas de diskettes. En tu coleccion ya tenes la mayoria de estos juegos de MS-DOS."

141 GOSUB 9100

142 PRINT "Revolviendo la caja encontras un juego cuya etiqueta dice DIMENTION. Esto debe ser una broma. Este juego es una leyenda urbana como la del POLYBIUS."
143 PRINT
144 PRINT "Al contrario del POLYBIUS que volvia loco a sus jugadores, el DIMENTION los convertia en genios creativos. Segun la leyenda creativos como SPIELBERG, CAMERON, ZEMECKIS, ROMERO o GILBERT crearon sus obras maestras luego de jugar al DIMENTION."
145 PRINT
146 PRINT "Este no puede ser ese DIMENTION, debe ser algun programa creado por un algun programador en honor a la leyenda."
147 PRINT 
148 PRINT "Le preguntas al vendedor donde lo consiguio. Solo recuerda que llego en un lote que compro por internet. Queres tenerlo. El costo del juego. Es muy alto... No podrias comprar otra cosa en la feria."
149 PRINT 
150 PRINT "Tenes mucha curiosidad pero es mucho dinero por algo que quizas sea solo un hack de COMMANDER KEEN con un sprite de DUKE NUKEM."


197 PRINT
198 COLOR CINFO : PRINT "1. Comprar el juego. Quiero ver de que se trata"
199 COLOR CINFO : PRINT "2. El juego es muy caro. Debe haber algo mejor en la feria."
200 PRINT 


220 REM ---- game loop ----
221 WHILE GAMEOVER = 0
222 COLOR CINPUT: INPUT "INGRESA EL NUMERO DE LA OPCION Y PRESIONA INTRO: ", A : COLOR CTEXTO
223 IF A = OPTIONA OR A = OPTIONB GOTO 224 ELSE GOSUB 8000
224 IF A = 1 THEN GOSUB 1000
225 IF A = 2 THEN GOSUB 2000
226 IF A = 3 THEN GOSUB 3000
299 WEND
999 END

1000 REM ---- SCENE 1 ----
1001 CLS
1002 PRINT "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis lobortis consectetur. Curabitur tristique urna sit amet augue egestas hendrerit. Proin dignissim fermentum tristique."

1003 PRINT "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis lobortis consectetur. Curabitur tristique urna sit amet augue egestas hendrerit. Proin dignissim fermentum tristique."

1004 PRINT "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis lobortis consectetur. Curabitur tristique urna sit amet augue egestas hendrerit. Proin dignissim fermentum tristique."

1005 PRINT "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis lobortis consectetur. Curabitur tristique urna sit amet augue egestas hendrerit. Proin dignissim fermentum tristique."

1006 PRINT "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis lobortis consectetur. Curabitur tristique urna sit amet augue egestas hendrerit. Proin dignissim fermentum tristique."

1011 PRINT 
1012 COLOR CINFO : PRINT "3. Opcion C"
1013 COLOR CINFO : PRINT "4. Opcion D"
1014 PRINT 
1015 OPTIONA = 3
1016 OPTIONB = 4
1017 RETURN 299

2000 REM ---- SCENE 2 ----
2001 CLS
2002 PRINT
2003 PRINT "El juego es demasiado caro y seguramente sea una estafa. Decidis seguir recorriendo la feria buscando algo que te llame la atencion."
2004 PRINT
2005 PRINT "Compras algunas figus de CROMY, piezas faltantes de tus munecos y una remera de las TORTUGAS NINJA. Nada mal!"
2006 PRINT
2007 PRINT "Pasas un dia muy divertido en la feria y volves a casa con las cosas que compraste para tu coleccion... pero... no dejas de preguntarte... que contenia ese diskette que llamo tu atencion..."
2008 PRINT
2009 PRINT "Al tiempo regresas al stand del vendedor para comprar el juego.. ya es tarde.. lo compro un tal ERNEST CLINE... parece que es escritor... y esta escribiendo un libro sobre videojuegos y cultura pop.... se habra inspirado en el DIMENTION?"
2010 COLOR CINFO : PRINT : PRINT "GAME OVER"
2011 LET GAMEOVER = 1 : GOSUB 9110
2012 RETURN 299

3000 REM ---- subroutine 3 ----
3001 CLS
3010 PRINT "subroutine 3, program ends"
3011 PRINT
3020 LET GAMEOVER = 1 : GOSUB 9110
3999 RETURN 299

8000 PRINT 
8001 COLOR CERROR : PRINT "No es una opcion valida, ingresa" OPTIONA "o" OPTIONB
8002 PRINT 
8010 RETURN 299


9000 CLS
9001 PRINT "Eres un gallina Mcfly!"
9002 END


9100 REM ---- subroutine PRESS ANY KEY ----
9101 LOCATE 22, 33: COLOR CINFO: PRINT "Presiona cualquier tecla para continuar..." : ANY$ = "" : WHILE ANY$ = INKEY$ : A$ = INKEY$ : WEND : CLS : COLOR CTEXTO
9102 RETURN

9110 REM ---- subroutine GAME OVER SOUND ----
9111 PLAY "T120<<F4E4D#4D2"
9112 RETURN


9900 PRINT 
9901 COLOR CERROR : PRINT "No es una opcion valida"
9902 PRINT 
9903 RETURN 116



