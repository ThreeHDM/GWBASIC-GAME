0 REM ---- main program ----
1 SCREEN 9: CLS

30 REM ----  Generic video game sound ----
31 FOR FREQ% = 1000 TO 300 STEP -100
32   SOUND FREQ%,.5
33 NEXT FREQ%

40 REM ---- INTRO MUSIC ----
41 PLAY "MBT120<<P8E-8A-4E-8>D-4C4<B-8A-8B-4A-8>D-16E-16<E-4E-8>D-4<E-8B-4>C4C8<B-8A-8E-2"

80 REM ---- Colors ----
81 LET CERROR = 12
82 LET CTEXTO = 2 
83 LET CINFO = 3
84 LET CINPUT = 7
                                                                                          

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

125 REM ---- initialize ----
126 LET GAMEOVER = 0
127 LET OPTIONA = 1
128 LET OPTIONB = 2

129 REM ---- SCENE 0 ----
130 CLS: COLOR CTEXTO 
131 PRINT "Hola! "USERNAME$"! Aqui comienza tu aventura!" : PRINT
132 PRINT "Sos un coleccionista de cosas retro. Amas la cultura pop de los 80s y 90s. Tenes figuras de accion, peliculas VHS, casettes, figuritas, consolas de videojuego, juegos y mas." : PRINT
133 PRINT "Por sobre todo, te encantan las computadoras retro." : PRINT
134 PRINT "Finalmente llego el dia. Hoy es la FERIA RETRO. Un espacio de celebracion y encuentro para los coleccionistas. No podes esperar para estar ahi y despertar tus recuerdos de la infancia." : PRINT
135 PRINT "Te pones tu remera de los THUNDERCATS, agarras tu mochila y bastante efectivo. Uno nunca sabe que puede encontrar en los puestos de la feria!" : PRINT
136 PRINT "Llegas a la feria. Esta repleta de fanaticos del retro como vos y llena de cosas coleccionables que te encantan." : PRINT : GOSUB 9100
137 PRINT "Hoy estas buscando juegos de PC. Te dirigis al puesto de siempre y comenzas a revisar entre las cajas llenas de diskettes y juegos bigbox. En tu coleccion ya tenes la mayoria de estos juegos de MS-DOS." : PRINT
138 PRINT "Revolviendo la caja encontras un juego bigbox en una caja completamente negra. En su portada unas letras blancas dibujan la palabra DIMENTION." : PRINT
139 PRINT "Esto debe ser una broma. Este juego es una leyenda urbana como la del POLYBIUS." : PRINT
140 PRINT "Al contrario del POLYBIUS, que volvia loco a sus jugadores, el DIMENTION supuestamente los convierte en genios creativos." : PRINT
141 PRINT "Segun la leyenda, creativos como SPIELBERG, CAMERON, ZEMECKIS, ROMERO o GILBERT crearon sus obras maestras luego de jugar al DIMENTION." : PRINT : GOSUB 9100
142 PRINT "Incluso se menciona que el DIMENTION tomo varias formas en diferentes epocas como juego de mesa, de computadora y hasta de consola." : PRINT
143 PRINT "Este no puede ser ese DIMENTION, debe ser algun software creado por un alguna pequena empresa en honor a la leyenda." : PRINT
144 PRINT "Le preguntas al vendedor donde lo consiguio. Solo recuerda que llego en un lote que compro por internet. Queres tenerlo. " : PRINT
145 PRINT "El vendedor nota tu interes en el articulo y te pide un precio acorde. El costo del juego es muy alto... No podrias comprar otra cosa en la feria." : PRINT
146 PRINT "Tenes mucha curiosidad pero es mucho dinero por algo que quizas sea solo un hack de COMMANDER KEEN con un sprite de DUKE NUKEM." : PRINT


197 PRINT
198 COLOR CINFO : PRINT "1. Comprar el juego. Quiero ver de que se trata"
199 COLOR CINFO : PRINT "2. El juego es muy caro. Debe haber algo mejor en la feria."
200 SCENEA = 1
201 SCENEB = 2 


220 REM ---- game loop ----
221 WHILE GAMEOVER = 0
222 PRINT : COLOR CINPUT: INPUT "INGRESA EL NUMERO DE LA OPCION Y PRESIONA INTRO: ", A : COLOR CTEXTO
223 IF A = OPTIONA OR A = OPTIONB GOTO 224 ELSE GOSUB 8000

224 IF A = 1 AND SCENEA = 1 THEN GOSUB 1000 : REM ---- SCENE 1 ----
225 IF A = 2 AND SCENEB = 2 THEN GOSUB 1100 : REM ---- SCENE 2 ----
226 IF A = 1 AND SCENEA = 3 THEN GOSUB 1200 : REM ---- SCENE 3 ----
227 IF A = 2 AND SCENEB = 4 THEN GOSUB 1300 : REM ---- SCENE 4 ----
228 IF A = 1 AND SCENEB = 5 THEN GOSUB 1400 : REM ---- SCENE 5 ----
229 IF A = 2 AND SCENEB = 6 THEN GOSUB 1500 : REM ---- SCENE 6 ----
230 IF A = 1 AND SCENEB = 7 THEN GOSUB 1600 : REM ---- SCENE 7 ----
231 IF A = 2 AND SCENEB = 8 THEN GOSUB 1700 : REM ---- SCENE 8 ----
232 IF A = 1 AND SCENEB = 9 THEN GOSUB 1800 : REM ---- SCENE 9 ----
233 IF A = 2 AND SCENEB = 10 THEN GOSUB 1900 : REM ---- SCENE 10 ----

299 WEND
999 END

1000 REM ---- SCENE 1 ----
1001 CLS
1002 PRINT "Si este juego llega a ser el veradero DIMENTION esta es una oportunidad unica. Gastas todo lo que tenes pero te llevas el juego a tu casa." : PRINT
1003 PRINT "Al llegar, vas directo a encender tu IBM PC 486. El inconfundible cielo levemente nublado de Windows 95 aparece en tu pantalla bajo el logo de Microsoft." : PRINT
1004 PRINT "Mientras inicia el sistema operativo, abris la caja negra y en su interior encontras solo un diskette cuya etiqueta dice DIMENTION en letras blancas sobre un fondo negro. No hay manual ni instrucciones. Que decepcion." : PRINT   
1005 PRINT "Insertas el diskette de 3 1/2 en la disquetera. Vas a MI PC, disco (A:) y examinas los archivos." : PRINT
1006 PRINT "En el listado de archivos ves un ejecutable, tu curiosidad esta a punto de ser saciada. Habras sido enganado? O estas por hacer un gran descubrimiento?" : PRINT
1007 PRINT "Haces doble click... La pantalla se pone negra y unas letras blancas aparecen en el centro de tu pantalla. El texto dice..." : PRINT : GOSUB 9100 : GOSUB 9200
1008 PRINT "Presionas INTRO y... no pasa absolutamente nada. " : PRINT
1009 PRINT "Pareciera que te estafaron. Retornas a la interfaz grafica del OS y repetis el proceso nuevamente.. nada.. un fiasco.. Era obvio que la leyenda del DIMENTION es solo eso.. una leyenda.." : PRINT
1010 PRINT "Decidis que es tiempo de comer algo... quizas la comida calme tu frustracion." : PRINT

1011 PRINT 
1012 COLOR CINFO : PRINT "1. Comer una sopa de fideos instantanea"
1013 COLOR CINFO : PRINT "2. Salir a comprar Comida"
1014 PRINT 
1015 SCENEA = 3
1016 SCENEB = 4
1099 RETURN 299

1100 REM ---- SCENE 2 ----
1101 CLS
1102 PRINT "El juego es demasiado caro y seguramente sea una estafa. Decidis seguir recorriendo la feria buscando algo que te llame la atencion. " : PRINT
1103 PRINT "Compras algunas figus de CROMY, piezas faltantes de tus munecos y una remera de las TORTUGAS NINJA. Nada mal!" : PRINT
1104 PRINT "Pasas un dia muy divertido en la feria y volves a casa con las cosas que compraste para tu coleccion... pero... no dejas de preguntarte... que contenia ese juego de MSDOS que llamo tu atencion..." : PRINT
1105 PRINT "Al mes siguiente regresas al stand del vendedor para comprar el juego." : PRINT
1106 PRINT "Ya es tarde.. lo compro un tal ERNEST CLINE... un turista extranjero... parece que es escritor y esta escribiendo un libro sobre videojuegos y cultura pop.... se habra inspirado en el DIMENTION?" : PRINT
1108 GOSUB 9110 : REM -- GAMEOVER --
1199 RETURN 299

1200 REM ---- SCENE 3 ----
1201 CLS
1202 PRINT "Comes la sopa de fideos, ves un episodio de las RETRO AVENTURAS y te vas a acostar..." : PRINT
1203 PRINT "En el medio de la noche un fuerte ruido te despierta. Vino de la cocina. Te acercas a la cocina y ves a alguien o... algo.. que esta revisando tu heladera... la puerta te impide verlo bien." : PRINT
1204 PRINT "Un ladron! Intentas llamar a la policia pero tu celular esta muerto. No hay senal." : PRINT
1205 PRINT "Tomas tu replica de la espada de CONAN EL BARBARO y te acercas al intruso y le decis:" : PRINT
1206 PRINT "-  Quien sos y que buscas??!! Ya llame a la policia!! " : PRINT
1207 PRINT "No es cierto, pero el intruso no lo sabe." : PRINT : GOSUB 9100
1208 PRINT "De repente un resplandor verde sale disparado del susto por tu grito amenazador. Una figura fantasmal vuela y rebota por toda tu cocina. Lo reconoces inmediatamente y tiras la espada boquiabierto. " : PRINT
1209 PRINT "No podes creer lo que tenes enfrente..." : PRINT
1210 PRINT "Lo unico que podes pensar es que te volviste loco, sino de que otra forma podrias estar viendo a PEGAJOSO, el fantasma mascota de los CAZAFANTASMAS, volar por tu cocina de forma tan vivida y real." : PRINT
1211 PRINT "Te quedas parado, quieto, casi en estado catatonico, cuando PEGAJOSO decide darte un beso baboso y salir disparado por una de las paredes. Soltas tu espada al suelo y reflexionas sobre lo que acaba de pasar." : PRINT
1212 PRINT "Logras convencerte de que estas sonando, a pesar del ectoplasma que hay en tu cocina y tu cara. " : PRINT : GOSUB 9100
1213 PRINT "Decidis salir a tomar aire para despejar la cabeza." : PRINT
1214 PRINT "Al abrir la puerta de entrada ves que la calle desaparecio, que no hay vereda, arboles, autos o peatones. " : PRINT
1215 PRINT "Lo unico que puede verse es un portal brillante como el que vio el Dr. DANIEL JACKSON interpretado por JAMES SPADER en STARGATE. De repente una fuerte fuerza te absorbe y caes por un tunel interdimensional." : PRINT : GOSUB 9100
1216 GOSUB 9300 : GOSUB 9100
1217 PRINT "Te despertas confundido y aturdido en la sala de una casa con aspecto antiguo, como de los 50s." : PRINT
1218 PRINT "Un viejo de pelo blanco, con un apariencia similar a ALBERT EINSTEIN te mira fijamente. Tiene un casco metalico en la cabeza, te recuerda a alguien..." : PRINT
1219 PRINT "La puerta esta abierta, podes intentar escapar o pedir explicaciones al viejo con cara de cientifico loco." : PRINT
1220 PRINT
1221 COLOR CINFO : PRINT "1. Pedir explicaciones al cientifico loco"
1222 COLOR CINFO : PRINT "2. Escapar corriendo por la puerta"
1223 PRINT 
1224 SCENEA = 7
1225 SCENEB = 8
1299 RETURN 299

1300 REM ---- SCENE 4 ----
1301 CLS
1302 PRINT "subroutine 4, program ends"
1303 PRINT
1304 GOSUB 9110 : REM -- GAMEOVER --
1399 RETURN 299

1400 REM ---- SCENE 5 ----
1500 REM ---- SCENE 6 ----
1600 REM ---- SCENE 7 ----

1700 REM ---- SCENE 8 ----
1701 CLS
1702 PRINT "Estas aturidido y asustado por todo lo que te esta pasando. Decidis escapar. Quien sabe que intenciones tiene el viejo. Seguramente te drogo y eso te provoco alucionaciones." : PRINT
1703 PRINT "Salis corriendo por la puerta mientras el viejo te grita." : PRINT
1704 PRINT "- No! No podes salir ahora, es peligroso, mortal!!!" : PRINT
1705 PRINT "No te importa lo que grite el viejo. Debe ser un engano." : PRINT
1706 PRINT "Salis corriendo y te encontras en un lugar que te resulta conocido. Parece ser la casa del Dr. EMMET BROWN en  la primera pelicula de VOLVER AL FUTURO." : PRINT
1707 PRINT "Esta nevando.. una nieve particular.. luminiscente.. el contacto con la piel se siente raro.. te sentis mareado.. " : PRINT : GOSUB 9100
1708 PRINT "La nieve te recuerda a la nevada del comic de OESTERHELD, EL ETERNAUTA.. " : PRINT
1709 PRINT "El efecto no te deja mucho mas tiempo para pensar... mueres al instante.. " : PRINT
1710 PRINT
1711 GOSUB 9110 : REM -- GAMEOVER --
1799 RETURN


1800 REM ---- SCENE 9 ----
1900 REM ---- SCENE 10 ----

8000 PRINT 
8001 COLOR CERROR : PRINT "No es una opcion valida, ingresa" OPTIONA "o" OPTIONB
8002 PRINT 
8010 RETURN 299


9000 CLS
9001 PRINT "Eres un gallina Mcfly!"
9002 END


9100 REM ---- subroutine PRESS ANY KEY ----
9101 LOCATE 21, 33: COLOR CINFO: PRINT "Presiona cualquier tecla para continuar..." : WHILE INKEY$ = "" : WEND : CLS : COLOR CTEXTO
9102 RETURN

9110 REM ---- subroutine GAME OVER ----
9111 PLAY "T120<<F4E4D#4D2"
9112 LET GAMEOVER = 1
9113 COLOR CINFO : PRINT : PRINT "GAME OVER"
9114 PRINT : COLOR CINPUT : INPUT "Escribe s para seguir jugando o q para salir, luego presiona INTRO: ", Z$
9115 IF Z$ = "q" GOTO 9000
9116 IF Z$ = "s" THEN GAMEOVER = 0
9117 IF Z$ = "s" GOTO 125 ELSE GOSUB 9900
9118 RETURN

9200 REM ---- subroutine PRESS ANY KEY TO ENTER DIMENTION ----
9201 CLS : LOCATE 12, 20: COLOR CINPUT: PRINT "PRESS ANY KEY TO ENTER DIMENTION" : WHILE INKEY$ = "" : WEND : CLS : COLOR CTEXTO
9202 RETURN

9300 REM ---- subroutine INTERDIMENTIONAL TRIP ----
9301 FOR FREQ% = 50 TO 1150 STEP 50
9302   SOUND FREQ%,.5
9303 NEXT FREQ%
9304 PRINT ".   *        .       .     .     -O- .  *            o        '   '          .   o " : PRINT
9305 PRINT "*      -0-                     -0-          .        *  |        *   *      .    o *   " : PRINT
9306 PRINT "   .                .  *       - )-      |        *      .  -0-   | - *          " : PRINT
9307 PRINT ".      *       o       .       *  |        *      .              .        o * " : PRINT
9308 PRINT "o                | - *             *              -O-      |  ,  o       .       *  | " : PRINT
9309 PRINT "    .     -O- *             *              -O-          .      *  o     .    '   " : PRINT 
9310 PRINT ".                 |        *      .     -0-          .          o *         - ) - " : PRINT
9311 PRINT "*  o     .    '       *      .        o *         - ) -     *  - )-      |        " : PRINT


9399 RETURN



9900 PRINT 
9901 COLOR CERROR : PRINT "No es una opcion valida"
9902 PRINT 
9903 IF GAMEOVER = 1 THEN RETURN 9114 ELSE RETURN 116



