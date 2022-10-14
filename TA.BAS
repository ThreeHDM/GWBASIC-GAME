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
127 LET OPTIONA$ = "1"
128 LET OPTIONB$ = "2"

129 REM ---- SCENE 0 ----
130 CLS: COLOR CTEXTO 
131 PRINT "Hola! "USERNAME$"! Aqu¡ comienza tu aventura!" : PRINT
132 PRINT "Sos un coleccionista de cosas retro. Am s la cultura pop de los a¤os 80s y 90s. Ten‚s figuras de acci¢n, pel¡culas VHS, casettes, figuritas, consolas de videojuego, juegos y m s." : PRINT
133 PRINT "Por sobre todo, te encantan las computadoras retro." : PRINT
134 PRINT "Finalmente llego el d¡a. Hoy es la FERIA RETRO. Un espacio de celebraci¢n y encuentro para los coleccionistas. No pod‚s esperar para estar ah¡ y despertar tus recuerdos de la infancia." : PRINT
135 PRINT "Te pon‚s tu remera de los THUNDERCATS, agarr s tu mochila y bastante efectivo. ­Uno nunca sabe que puede encontrar en los puestos de la feria!" : PRINT
136 PRINT "Lleg s a la feria. Est  repleta de fan ticos del retro como vos y llena de objetos coleccionables que te encantan." : PRINT : GOSUB 9100
137 PRINT "Hoy est s buscando juegos de PC. Te dirig¡s al puesto de siempre y comenz s a revisar entre las cajas llenas de diskettes y juegos bigbox. En tu colecci¢n ya ten‚s la mayor¡a de estos juegos de MS-DOS." : PRINT
138 PRINT "Revolviendo entre los juegos encontr s un juego bigbox en una caja completamente negra. En su portada unas letras blancas dibujan la palabra DIMENTION." : PRINT
139 PRINT "Esto debe ser una broma. Este juego es una leyenda urbana como el POLYBIUS." : PRINT
140 PRINT "Al contrario del POLYBIUS, que volv¡a loco a sus jugadores, el DIMENTION supuestamente los convert¡a en genios creativos." : PRINT
141 PRINT "Seg£n la leyenda, creativos como SPIELBERG, CAMERON, ZEMECKIS, ROMERO o GILBERT crearon sus obras maestras luego de jugar al DIMENTION." : PRINT : GOSUB 9100
142 PRINT "Incluso se menciona que el DIMENTION tom¢ varias formas en diferentes ‚pocas como juego de mesa, de computadora y hasta de consola." : PRINT
143 PRINT "Este no puede ser ese DIMENTION, debe ser un software creado por un alguna peque¤a empresa en honor a la leyenda." : PRINT
144 PRINT "Le pregunt s al vendedor d¢nde lo consigui¢. S¢lo recuerda que le lleg¢ en un lote que compr¢ por internet. Quer‚s tenerlo." : PRINT
145 PRINT "El vendedor nota tu inter‚s en el art¡culo y te pide un precio acorde. El costo del juego es muy alto... Gastar¡as todo tu dinero." : PRINT
146 PRINT "Ten‚s mucha curiosidad, pero es mucho dinero por algo que quiz s sea solamente un hack de COMMANDER KEEN con un sprite de DUKE NUKEM." : PRINT


197 PRINT
198 COLOR CINFO : PRINT "1. Comprar el juego. Quiero ver de que se trata"
199 COLOR CINFO : PRINT "2. El juego es muy caro. Debe haber algo mejor en la feria"
200 SCENEA = 1
201 SCENEB = 2 


220 REM ---- game loop ----
221 WHILE GAMEOVER = 0 
222 PRINT : COLOR CINPUT: INPUT "INGRESµ EL NéMERO DE LA OPCIàN Y PRESIONµ INTRO: ", A$ : COLOR CTEXTO
223 IF A$ = OPTIONA$ OR A$ = OPTIONB$ GOTO 224 ELSE GOSUB 8000

224 IF A$ = "1" AND SCENEA = 1 THEN GOSUB 1000 : REM ---- SCENE 1 ----
225 IF A$ = "2" AND SCENEB = 2 THEN GOSUB 1100 : REM ---- SCENE 2 ----
226 IF A$ = "1" AND SCENEA = 3 THEN GOSUB 1200 : REM ---- SCENE 3 ----
227 IF A$ = "2" AND SCENEB = 4 THEN GOSUB 1300 : REM ---- SCENE 4 ----
228 IF A$ = "1" AND SCENEA = 5 THEN GOSUB 1400 : REM ---- SCENE 5 ----
229 IF A$ = "2" AND SCENEB = 6 THEN GOSUB 1500 : REM ---- SCENE 6 ----
230 IF A$ = "1" AND SCENEA = 7 THEN GOSUB 1600 : REM ---- SCENE 7 ----
231 IF A$ = "2" AND SCENEB = 8 THEN GOSUB 1700 : REM ---- SCENE 8 ----
232 IF A$ = "1" AND SCENEA = 9 THEN GOSUB 1800 : REM ---- SCENE 9 ----
233 IF A$ = "2" AND SCENEB = 10 THEN GOSUB 1900 : REM ---- SCENE 10 ----
234 IF A$ = "1" AND SCENEA = 11 THEN GOSUB 2000 : REM ---- SCENE 11 ----
235 IF A$ = "2" AND SCENEB = 12 THEN GOSUB 2100 : REM ---- SCENE 12 ----
236 IF A$ = "1" AND SCENEA = 13 THEN GOSUB 2200 : REM ---- SCENE 13 ----
237 IF A$ = "2" AND SCENEB = 14 THEN GOSUB 2300 : REM ---- SCENE 14 ----
238 IF A$ = "1" AND SCENEA = 15 THEN GOSUB 2400 : REM ---- SCENE 15 ----
239 IF A$ = "2" AND SCENEB = 16 THEN GOSUB 2500 : REM ---- SCENE 16 ----
240 IF A$ = "1" AND SCENEA = 17 THEN GOSUB 2600 : REM ---- SCENE 17 ----
241 IF A$ = "2" AND SCENEB = 18 THEN GOSUB 2700 : REM ---- SCENE 18 ----
242 IF A$ = "1" AND SCENEA = 19 THEN GOSUB 2800 : REM ---- SCENE 19 ----
243 IF A$ = "2" AND SCENEB = 20 THEN GOSUB 2900 : REM ---- SCENE 20 ----
244 IF A$ = "1" AND SCENEA = 21 THEN GOSUB 3000 : REM ---- SCENE 21 ----
245 IF A$ = "2" AND SCENEB = 22 THEN GOSUB 3100 : REM ---- SCENE 22 ----
246 IF A$ = "1" AND SCENEA = 23 THEN GOSUB 3200 : REM ---- SCENE 23 ----
247 IF A$ = "2" AND SCENEB = 24 THEN GOSUB 3300 : REM ---- SCENE 24 ----
248 IF A$ = "1" AND SCENEA = 25 THEN GOSUB 3400 : REM ---- SCENE 25 ----
249 IF A$ = "2" AND SCENEB = 26 THEN GOSUB 3500 : REM ---- SCENE 26 ----
250 IF A$ = "1" AND SCENEA = 27 THEN GOSUB 3600 : REM ---- SCENE 27 ----
251 IF A$ = "2" AND SCENEB = 28 THEN GOSUB 3700 : REM ---- SCENE 28 ----
252 IF A$ = "1" AND SCENEA = 29 THEN GOSUB 3800 : REM ---- SCENE 29 ----
299 WEND
999 END

1000 REM ---- SCENE 1 ----
1001 CLS
1002 PRINT "Si este juego llega a ser el verdadero DIMENTION, ‚sta es una oportunidad £nica. Gast s todo lo que ten‚s pero te llev s el juego a casa." : PRINT
1003 PRINT "Al llegar, vas directo a encender tu IBM PC 486. El inconfundible cielo levemente nublado de Windows 95 aparece en tu pantalla bajo el logo de Microsoft." : PRINT
1004 PRINT "Mientras inicia el sistema operativo, abr¡s la caja negra y en su interior encontr s solamente un diskette cuya etiqueta dice DIMENTION en letras blancas sobre un fondo negro. No hay manual ni instrucciones. Que decepci¢n." : PRINT   
1005 PRINT "Insert s el diskette de 3 1/2 en la disquetera. Vas a MI PC, disco (A:) y examin s los archivos." : PRINT
1006 PRINT "En el listado de archivos ves un ejecutable, tu curiosidad est  a punto de ser saciada. ¨Habr s sido enga¤ado o est s por hacer un gran descubrimiento?" : PRINT
1007 PRINT "Hac‚s doble click... La pantalla se pone negra y unas letras blancas aparecen en el centro de tu pantalla. El texto dice..." : PRINT : GOSUB 9100 : GOSUB 9200
1008 PRINT "Presion s INTRO y... no pasa absolutamente nada. " : PRINT
1009 PRINT "Pareciera que te estafaron. Retorn s a la interfaz gr fica del OS y repet¡s el proceso nuevamente.. nada.. un fiasco.. Era obvio que la leyenda del DIMENTION es s¢lo eso.. una leyenda.." : PRINT
1010 PRINT "Decid¡s que es tiempo de comer algo... quiz s la comida calme tu frustraci¢n." : PRINT

1011 PRINT 
1012 COLOR CINFO : PRINT "1. Comer una sopa de fideos instant nea"
1013 COLOR CINFO : PRINT "2. Salir a comprar Comida"
1014 PRINT 
1015 SCENEA = 3
1016 SCENEB = 4
1099 RETURN 299

1100 REM ---- SCENE 2 ----
1101 CLS
1102 PRINT "El juego es demasiado caro y seguramente sea una estafa. Decid¡s seguir recorriendo la feria y buscar algo que llame m s tu atenci¢n." : PRINT
1103 PRINT "Compr s algunas figus de CROMY, piezas faltantes de tus mu¤ecos y una remera de las TORTUGAS NINJA. Nada mal!" : PRINT
1104 PRINT "Pas s un d¡a muy divertido en la feria y volv‚s a casa con las cosas que compraste para tu colecci¢n... pero... no dej s de preguntarte... que conten¡a ese juego de MSDOS que llam¢ tu atenci¢n..." : PRINT
1105 PRINT "Al mes siguiente, regres s al stand del vendedor para comprar el juego." : PRINT
1106 PRINT "Ya es tarde.. lo compro un tal ERNEST CLINE... un turista extranjero... parece que es escritor y esta escribiendo un libro sobre videojuegos y cultura pop.... ¨Se habr  inspirado en el DIMENTION?" : PRINT
1108 GOSUB 9110 : REM -- GAMEOVER --
1199 RETURN 299

1200 REM ---- SCENE 3 ----
1201 CLS
1202 PRINT "Com‚s la sopa de fideos, ves un episodio de las RETRO AVENTURAS y te vas a acostar..." : PRINT
1203 PRINT "En medio de la noche, un fuerte ruido te despierta. Vino de la cocina. Te acerc s a la cocina y ves a alguien o... algo.. que esta revisando tu heladera... la puerta te impide verlo bien." : PRINT
1204 PRINT "Un ladr¢n! Intent s llamar a la polic¡a pero tu celular esta muerto. No hay se¤al." : PRINT
1205 PRINT "Tom s tu r‚plica de la espada de CONAN EL BµRBARO, te acerc s al intruso y le pregunt s:" : PRINT
1206 PRINT "- ­­¨Qui‚n sos y que busc s??!! ­­Ya llam‚ a la polic¡a!! " : PRINT
1207 PRINT "No es cierto, pero el intruso no lo sabe." : PRINT : GOSUB 9100
1208 PRINT "De repente, un resplandor verde sale disparado del susto a causa de tu grito amenazador. Una figura fantasmal vuela y rebota por toda tu cocina. Lo reconoc‚s inmediatamente y tir s la espada boquiabierto." : PRINT
1209 PRINT "No pod‚s creer lo que ten‚s enfrente..." : PRINT
1210 PRINT "Lo £nico que pod‚s pensar es que te volviste loco, sino de qu‚ otra forma podr¡as estar viendo a PEGAJOSO, el fantasma mascota de los CAZAFANTASMAS, volar por tu cocina de forma tan v¡vida y real." : PRINT
1211 PRINT "Te qued s parado, quieto, casi en estado catat¢nico, cuando PEGAJOSO decide darte un beso baboso y salir disparado por una de las paredes. Solt s tu espada al suelo y reflexion s sobre lo que acaba de pasar." : PRINT
1212 PRINT "Logr s convencerte de que est s so¤ando, a pesar del ectoplasma que hay en tu cocina y tu cara." : PRINT : GOSUB 9100
1213 PRINT "Decid¡s salir a tomar aire para despejar la cabeza." : PRINT
1214 PRINT "Al abrir la puerta de entrada, ves que la calle desapareci¢, que no hay vereda,  rboles, autos o peatones." : PRINT
1215 PRINT "Lo £nico que puede verse es un portal brillante. Tal y como el que vi¢ el Dr. DANIEL JACKSON, interpretado por JAMES SPADER, en STARGATE. De repente, una fuerte fuerza te absorbe y ca‚s por un t£nel interdimensional." : PRINT
1216 GOSUB 9100 : GOSUB 9300 : GOSUB 9100
1217 PRINT "Te despert s, confundido y aturdido, en la sala de una casa con aspecto antiguo, como de los a¤os 50s." : PRINT
1218 PRINT "Un viejo con pelo completamente blanco y una apariencia similar a ALBERT EINSTEIN, te mira fijamente. Tiene un casco met lico en la cabeza, te recuerda a alguien..." : PRINT
1219 PRINT "La puerta est  abierta, pod‚s intentar escapar o pedir explicaciones al viejo con cara de cient¡fico loco." : PRINT
1220 PRINT
1221 COLOR CINFO : PRINT "1. Pedir explicaciones al cient¡fico loco"
1222 COLOR CINFO : PRINT "2. Correr y escapar por la puerta"
1223 PRINT 
1224 SCENEA = 7
1225 SCENEB = 8
1299 RETURN 299

1300 REM ---- SCENE 4 ----
1301 CLS
1302 PRINT "Se te antoja comer una hamburguesa. Te prepar s para ir a un McDonald's que queda cerca de tu casa. Te gustar¡a que fuera un PUMPER NIC, pero hay que conformarse con lo que hay." : PRINT 
1303 PRINT "Abr¡s la puerta de entrada y tus ojos no pueden creer lo que ven." : PRINT 
1304 PRINT "La calle no est  ah¡, las casas de tus vecinos no est n." : PRINT 
1305 PRINT "Frente a tu rostro hay un portal, como el de la pel¡cula STARGATE. Un brillante y met lico l¡quido muestra tu reflejo suspendido en el aire." : PRINT 
1306 PRINT "Colocar tu mano en el portal provoca ondas en la brillante superficie de l¡quido plateado." : PRINT
1307 PRINT "No entend‚s que est  pasando o por qu‚.. y no ten‚s mucho tiempo para pensarlo tampoco." : PRINT : GOSUB 9100
1308 PRINT "Antes de que te des cuenta, una fuerza desconocida te absorbe desde el interior del portal." : PRINT 
1309 PRINT "Sent¡s como tus  tomos se separan y se dispersan por el universo en un viaje interdimensional. A pesar de eso, no perd‚s la conciencia ni sent¡s dolor." : PRINT 
1310 PRINT "Ves como estrellas y galaxias pasan a velocidades incre¡bles a tu lado, o mejor dicho al lado de tus  tomos dispersos." : PRINT 
1311 PRINT "Por un momento, te ves sumido en una completa obscuridad." : PRINT 
1312 GOSUB 9100 : GOSUB 9300 : GOSUB 9100
1313 PRINT "Tu cuerpo se materializa en un camino de tierra, est s rodeado de naturaleza, la escena tiene colores azules y negros. Es de noche y el cielo est  repleto de estrellas." : PRINT 
1314 PRINT "Perd‚s la conciencia y te desmay s en la maleza. Al rato, te despert s en el mismo lugar." : PRINT 
1315 PRINT "A£n est s un poco aturdido, pero vas recobrando el conocimiento. Camin s un poco, buscando a alguien que pueda darte alguna respuesta. No ten‚s idea d¢nde est s o que pas¢. ¨Estar s en un sue¤o o acaso alucinando?" : PRINT
1316 PRINT "Al costado del camino, encontr s un esqueleto humano. Lo que te hace pensar que est s teniendo una pesadilla, una muy v¡vida." : PRINT 
1317 PRINT "El muerto viste ropas de pirata. Algo as¡ como EL TUERTO WILLY de los GOONIES. En su mano hay una espada." : PRINT 
1318 PRINT "De la obscuridad de la noche, surge un joven con aspecto piratesco (aunque m s bien parece un inspector de suelos) que se acerca hacia vos y levanta una espada o, mejor dicho, un sable pirata. " : PRINT : GOSUB 9100
1319 PRINT "El joven dice:" : PRINT 
1320 PRINT "- Mi nombre es KIDCOMB FLEETWOOD, preparate para morir!" : PRINT 
1321 PRINT "- ­Luchas como un ganadero!" : PRINT 
1322 PRINT "No ten‚s mucho tiempo para pensar. ¨Es esto una broma? ste muchacho, disfrazado de GUYBRUSH THREEPWOOD, te est  desafiando a una pelea... ­Una pelea de insultos!" : PRINT 
1323 PRINT "Comenz s a atar cabos... ejecutaste el DIMENTION en tu computadora... y ahora est  sucediendo esto..." : PRINT : GOSUB 9100
1324 PRINT "¨Podr  ser que el DIMENTION haya funcionado? Mir s nuevamente a tu alrededor... te das cuenta.. ­est s en un lugar muy parecido a la ISLA MÒLEE (TM)!" : PRINT 
1325 PRINT "Esto significa que est s en una pelea de insultos real y deb‚s contestar correctamente para ganar... Tom s la espada del esqueleto e intent s recordar la respuesta al insulto..." : PRINT
1326 PRINT
1327 COLOR CINFO : PRINT "1. Que apropiado, tu peleas como una vaca"
1328 COLOR CINFO : PRINT "2. Yo soy goma, tu pegamento"
1329 PRINT 

1397 SCENEA = 5
1398 SCENEB = 6
1399 RETURN 299

1400 REM ---- SCENE 5 ----
1401 CLS
1402 PRINT "La respuesta correcta al insulto de KIDCOMB hace que puedas avanzar y golpear el sable de su mano. Ganaste el respeto de este pirata. Ahora quer‚s respuestas." : PRINT 
1403 PRINT "Mientras sosten‚s tu sable contra su cuello, le pregunt s d¢nde est s y que est  sucediendo. l te nota desorientado." : PRINT
1404 PRINT "- Veo que no sos de por aqu¡. Deb‚s venir de la dimensi¢n de RON GILBERT. Hace tiempo pas¢ por aqu¡. Tu vestimenta es similar a la suya." : PRINT
1405 PRINT "- RON GILBERT se inspir¢ en esta DIMENSIàN para crear un videojuego. En tu mundo lo llaman MONKEY ISLAND. En realidad la idea fue un regalo del COLECCIONISTA." : PRINT
1406 PRINT "- Ver s.. est s en una MEGA DIMENSIàN creada por un ser a quien llamamos EL COLECCIONISTA." : PRINT
1407 PRINT "- l descubri¢ el viaje interdimensional y, en sus traves¡as, encontr¢ un b culo m gico que le permite capturar otras dimensiones. De ese modo, comenz¢ a coleccionarlas en esta MEGA DIMENSIàN." : PRINT : GOSUB 9100
1408 PRINT "- Para que me entiendas, digamos que est s en la DIMENSIàN MONKEY ISLAND de esta MEGA DIMENSIàN." : PRINT
1409 PRINT "- Somos pocos los que tenemos conciencia de esto. Los dem s seres no la tienen y, adem s, est n atrapados en bucles infinitos. Repitiendo las historias del COLECCIONISTA, una y otra vez." : PRINT
1410 PRINT "- En esta dimensi¢n s¢lo yo tengo conciencia de estar en el bucle." : PRINT
1411 PRINT "Todo cierra.. est s en ese bucle viviendo la historia del MONKEY ISLAND I." : PRINT
1412 PRINT "Le pregunt s a KIDCOMB c¢mo salir de aqu¡ y regresar a casa." : PRINT : GOSUB 9100
1413 PRINT "- Para hacer eso deb‚s llevar un objeto de colecci¢n al COLECCIONISTA. Algo de alguna de las dimensiones. As¡ podr s obtener una audiencia con ‚l. En ese momento te pondr  a prueba." : PRINT
1414 PRINT "- Si logr s vencerlo, podr s regresar a tu dimensi¢n con un libro, guion o c¢digo para un videojuego de su autor¡a." : PRINT
1415 PRINT "- Al COLECCIONISTA le gusta c¢mo la gente de tu dimensi¢n produce los guiones o historias que escribe." : PRINT
1416 PRINT "Le pregunt s a KIDCOMB por qu‚ no enfrentan al COLECCIONISTA dado que los tiene atrapados en la MEGA DIMENSIàN." : PRINT
1417 PRINT "Te responde que no le interesa.. que la diferencia casi no se nota excepto que, por momentos, las DIMENSIàNES se superponen y pod‚s cruzarte con MAZINGER Z o un TIRANOSAURIO REX en medio del caribe." : PRINT : GOSUB 9100
1418 PRINT "Adem s es dif¡cil, ya que pare liberar a todos hay que destruir el BµCULO del COLECCIONISTA y para eso hay que estar lo suficientemente cerca de ‚l." : PRINT
1419 PRINT "Por otra parte, KIDCOMB no sabe qu‚ seres de otras dimensiones son conscientes, o no, de estar atrapados." : PRINT
1420 PRINT "Y seguramente, como ‚l, los que son conscientes no correr¡an ese riesgo. EL COLECCIONISTA es muy poderoso." : PRINT
1421 PRINT "Ahora entend‚s todo.. el DIMENTION no vuelve genios creativos a sus jugadores... sino que es un portal a esta MEGA DIMENSIàN." : PRINT
1422 PRINT "RON GILBERT pas¢ las pruebas del coleccionista y volvi¢ a casa con una idea genial... ese podr¡a ser tu destino.. " : PRINT : GOSUB 9100
1423 PRINT "Le pregunt s a KIDCOMB a d¢nde pod‚s ir ahora..." : PRINT
1424 PRINT "KIDCOMB te dice que EL COLECCIONISTA quiere el ÖDOLO DE MéLTIPLES BRAZOS de esta DIMENSIàN." : PRINT
1425 PRINT "Casualmente KIDCOMB tiene el ¡dolo en su poder, ya que paso las 3 pruebas para convertirse en pirata." : PRINT
1426 PRINT "KIDCOMB te ofrece el ¡dolo, sino pod‚s hablar con TRISTAN el vendedor de barcos de la isla, para navegar a otra DIMENSIàN." : PRINT
1427 PRINT
1428 COLOR CINFO : PRINT "1. Hablar con TRISTAN y viajar a otra dimensi¢n"
1429 COLOR CINFO : PRINT "2. Aceptar el ¡dolo"
1497 SCENEA = 11
1498 SCENEB = 12
1499 RETURN 299

1500 REM ---- SCENE 6 ----
1501 CLS
1502 PRINT "Por m s que pienses y pienses, no logr s recordar la respuesta correcta al insulto. El muchacho gana este duelo y, en consecuencia, te convierte en prisionero encerr ndote en una celda de su barco pirata." : PRINT
1503 PRINT "Hablando con la tripulaci¢n, te enter s que RON GILBERT pas¢ por aqu¡ y se inspir¢ para crear el MONKEY ISLAND." : PRINT
1504 PRINT "est s atrapado en esta dimensi¢n y hay una especie de ser supremo que podr¡a liberarte, pero primero deb‚s huir de ‚ste barco." : PRINT
1505 PRINT "El capit n KIDCOMB los arrastra por los mares del caribe en busca de su amada. En sus aventuras, lleva su barco a las orillas de una isla misteriosa, de similares caracter¡sticas a MONKEY ISLAND." : PRINT
1506 PRINT "La tripulaci¢n se amotina mientras el capit n baja a explorar la isla, es tu momento para intentar escapar. " : PRINT
1507 PRINT "Mientras tent s con un hueso al perro que vigila tu celda y sostiene la llave de la misma en su hocico, la tripulaci¢n toma sol en la cubierta del barco y disfruta del clima del caribe." : PRINT : GOSUB 9100
1508 PRINT "De repente, una roca gigante cae del cielo partiendo el barco por la mitad. Mor¡s ahogado al no poder salir de tu celda." : PRINT
1509 PRINT
1510 GOSUB 9110 : REM -- GAMEOVER --
1599 RETURN 299

1600 REM ---- SCENE 7 ----
1601 CLS
1602 PRINT "Te present s y le pregunt s al viejo qui‚n es y d¢nde est s." : PRINT
1603 PRINT "El viejo, se quita el casco y te explica que pudo leer tu mente con ‚l. Ya sabe todo sobre vos. " : PRINT
1604 PRINT "¨Un casco para leer la mente? ¨Como el que EMMET BROWN us¢ con MARTY en VOLVER AL FUTURO I? " : PRINT
1605 PRINT "ste tipo debe estar loco, nada tiene sentido... Adem s, en la pel¡cula el casco no funciona..." : PRINT
1606 PRINT "El viejo se presenta y dice:" : PRINT
1607 PRINT "- Un placer conocerte "USERNAME$"." : PRINT : GOSUB 9100
1608 PRINT "- Soy el Dr. CALEB MERITT y est s lejos de casa. est s en otra DIMENSIàN. Seguramente te resulte familiar. En tu dimensi¢n un tal ROBERT ZEMECKIS cre¢ una pel¡cula basada en ella, junto con otro de nombre BOB GALE." : PRINT
1609 PRINT "Ese tipo pas¢ por aqu¡ hace un tiempo y se llev¢ la idea... o mejor dicho, se la dieron... la llam¢ VOLVER AL FUTURO." : PRINT
1610 PRINT "Tus o¡dos no pueden creen lo que escuchan. Deb‚s estar en coma... debes haber perdido el conocimiento y est s tirado en el piso de tu cocina..." : PRINT
1611 PRINT "Mir s bien a CALEB y not s el parecido con el Dr. EMMET BROWN." : PRINT
1612 PRINT "CALEB contin£a explic ndote:" : PRINT : GOSUB 9100
1613 PRINT "- Esta DIMENSIàN, junto con otras, forma parte de una MEGA DIMENSIàN. Somos todos prisioneros de un ser, que mediante el viaje interdimensional, comenz¢ a coleccionar dimensiones y a atraparlas en esta MEGA DIMENSIàN." : PRINT
1614 PRINT "- Lo llamamos EL COLECCIONISTA y... es el £nico que puede ayudarte a regresar. Otros viajeros de tu dimensi¢n ya lo han logrado." : PRINT
1615 PRINT "- EL COLECCIONISTA atrapa las dimensiones en bucles de historias que ‚l mismo escribe. Son guiones fant sticos que utilizan recursos de cada dimensi¢n." : PRINT
1616 PRINT "- Somos muy pocos los seres que tenemos conciencia de esto. La mayor¡a no sabe que est n atrapados. Tuviste suerte de que yo te encontrara antes que cualquier otro." : PRINT
1617 PRINT "CALEB toma una pizarra y comienza a dibujar c¡rculos, representando todas las dimensiones y c¢mo se entrecruzan entre s¡." : PRINT : GOSUB 9100
1618 PRINT "- La uni¢n de todas las dimensiones no es natural. Todas se est n entrelazando en una unidad inestable. Seg£n mis c lculos, todo confluir  en un gran agujero negro y moriremos." : PRINT
1619 PRINT "- Tu dimensi¢n no corre peligro. Al COLECCIONISTA le gusta la forma en que ustedes llevan a libros, pel¡culas o comics sus historias. Inspiradas en las dimensiones que colecciona." : PRINT
1620 PRINT "- Nuestro encuentro no fue casualidad. Creo que pod‚s salvarnos. Si consegu¡s una audiencia con EL COLECCIONISTA, podr s estar lo suficientemente cerca como para destruir su BµCULO MµGICO." : PRINT
1621 PRINT "- Eso liberar  a todas las dimensiones atrapadas y le impedir  capturar otras." : PRINT
1622 PRINT "- Para conseguir una audiencia con EL COLECCIONISTA deb‚s conseguir un objeto de colecci¢n de alguna DIMENSIàN. l te pondr  a prueba para su entretenimiento." : PRINT : GOSUB 9100
1623 PRINT "- Si logr s conseguir un objeto de su inter‚s podr s verlo. En ese momento te pondr  a prueba por £ltima vez. De fallar quedar s atrapado aqu¡ para siempre." : PRINT
1624 PRINT "- Aquellos que triunfan, regresan a su dimensi¢n con un guion, libro o idea para producir y seguir complaciendo al COLECCIONISTA." : PRINT
1625 PRINT "- ­Vos deb‚s romper ese patr¢n y liberarnos! Te lo imploro" : PRINT
1626 PRINT "Ahora te das cuenta... el juego DIMENTION es una llave a otra dimensi¢n." : PRINT
1627 PRINT "Los viajeros de la tierra que llegan aqu¡ regresan con ideas del COLECCIONISTA. l es el genio creativo detr s de muchas obras del cine y la literatura." : PRINT : GOSUB 9100
1628 PRINT "- "USERNAME$", espero que puedas ayudarnos. Se que sabr s hacer lo correcto. Tom  esto.. si vas a hacer algo.. mejor hacerlo con estilo... " : PRINT
1629 PRINT "CALEB te entrega las llaves de un incre¡ble DeLorean. sta no es una m quina del tiempo. Es una m quina dimensional que te permite elegir la DIMENSIàN a la que viajar." : PRINT
1630 PRINT "El Dr. te explica que ‚ste auto no es el mismo que el que usa el MARTY de su dimensi¢n. Ese MARTY esta atrapado en el bucle y no tiene conciencia de todo esto." : PRINT
1631 PRINT "CALEB lo adapt¢ los controles del auto para que asocies cada DIMENSIàN con la historia correspondiente en tu mundo y para que te informe qu‚ objeto quiere EL COLECCIONISTA." : PRINT
1632 PRINT
1633 COLOR CINFO : PRINT "1. Permanecer en la dimensi¢n de VOLVER AL FUTURO"
1634 COLOR CINFO : PRINT "2. Viajar a otra dimensi¢n"
1697 SCENEA = 9
1698 SCENEB = 10
1699 RETURN 299

1700 REM ---- SCENE 8 ----
1701 CLS
1702 PRINT "Estas aturdido y asustado por todo lo que te est  pasando. Decid¡s escapar. Qui‚n sabe qu‚ intenciones tiene el viejo. Seguramente te drog¢ y eso te provoc¢ alucinaciones." : PRINT
1703 PRINT "Sal¡s corriendo por la puerta mientras el viejo te grita." : PRINT
1704 PRINT "- ­No! ­No pod‚s salir ahora, es peligroso, mortal!" : PRINT
1705 PRINT "No te importa lo que grite el viejo. Debe ser un enga¤o." : PRINT
1706 PRINT "Sal¡s corriendo y te encontr s en un lugar que te resulta conocido. Parece ser la casa del Dr. EMMET BROWN en la primer pel¡cula de VOLVER AL FUTURO." : PRINT
1707 PRINT "Esta nevando... una nieve particular... luminiscente... el contacto con la piel se siente raro.. te sent¡s mareado.. " : PRINT : GOSUB 9100
1708 PRINT "La nieve te recuerda a la nevada del comic de OESTERHELD, EL ETERNAUTA... " : PRINT
1709 PRINT "El efecto no te deja mucho m s tiempo para pensar... mor¡s al instante... " : PRINT
1710 PRINT
1711 GOSUB 9110 : REM -- GAMEOVER --
1799 RETURN 299


1800 REM ---- SCENE 9 ----
1801 CLS
1802 PRINT "VOLVER AL FUTURO es una de tus pel¡culas favoritas. Aqu¡ ten‚s m s chances de conseguir un objeto de colecci¢n. " : PRINT
1803 PRINT "Le dec¡s a CALEB que prefer¡s quedarte y buscar un objeto aqu¡. l te cuenta que EL COLECCIONISTA quiere el ALMANAQUE de resultados deportivos de esta DIMENSIàN." : PRINT
1804 PRINT "Si le llev s eso, te conceder  una audiencia." : PRINT
1805 PRINT "Agradec‚s a CALEB su ayuda y, muy a tu pesar, le devolv‚s las llaves del DELOREAN, ya que pod‚s caminar hasta HILL VALLEY." : PRINT
1806 PRINT "CALEB te cuenta que ma¤ana es la noche del BAILE DEL ENCANTO BAJO EL OCEANO y que MARTY est  intentando recuperar el ALMANAQUE con resultados deportivos que el BIFF del futuro entreg¢ a su yo de 1955." : PRINT
1807 PRINT "Quer‚s recuperar el almanaque en la casa de BIFF antes del baile, pero el Doc. te lo impide debido a que afuera est  nevando." : PRINT : GOSUB 9100
1808 PRINT "No se trata de una nevada com£n y corriente. Al entrar en contacto con la piel, los copos producen una muerte instant nea." : PRINT
1809 PRINT "CALEB te explica que la DIMENSIàN del ETERNAUTA de OESTERHELD se est  uniendo con esta y la nevada afecta a todos los seres que no viven en la MEGA DIMENSIàN." : PRINT
1810 PRINT "Hac‚s caso al Doc. Pasas la noche y el d¡a siguiente en su casa." : PRINT
1811 PRINT "Afortunadamente, la noche del baile es preciosa, justo como en la pel¡cula. No hay nevada mortal." : PRINT
1812 PRINT "Saludas al Doc. y part¡s en tu misi¢n." : PRINT : GOSUB 9100
1813 PRINT "Lleg s al baile escolar y busc s al equivalente de MARTY.. deber¡a tener un sombrero y una campera de cuero. Tal y como est  vestido en VOLVER AL FUTURO II." : PRINT
1814 PRINT "El lugar es id‚ntico a la pel¡cula. Ves a todos los j¢venes bailando, la decoraci¢n del oc‚ano y la ropa de los a¤os 50s. Not s a los dobles de GEORGE Y LORRAINE de esta dimensi¢n. ­Son muy parecidos a los actores!" : PRINT
1815 PRINT "En ese momento, ­comienza a sonar Johnny B. Goode de Chuck Berry! ­Claro, el MARTY de VOLVER AL FUTURO I est  tocando para que sus padres se enamoren!" : PRINT
1816 PRINT "Eso quiere decir que el otro MARTY est  escapando de BIFF y est  detr s del escenario en este preciso momento." : PRINT
1817 PRINT "MARTY es noqueado por una puerta y BIFF recupera el ALMANAQUE. No llegaste a tiempo... ahora hay que arrebat rselo a BIFF." : PRINT : GOSUB 9100
1818 PRINT "Despert s a MARTY y le dec¡s que sos amigo de CALEB... el nombre de MARTY en esta dimensi¢n es MATHEW." : PRINT
1819 PRINT "MATHEW y vos llaman a CALEB usando un walkie talkie, como con el que jugabas en tu infancia." : PRINT
1820 PRINT "CALEB te dice que MATHEW no sabe nada de la fusi¢n de las dimensiones y est  viviendo este bucle una y otra vez." : PRINT
1821 PRINT "No deb‚s mencionarle nada al respecto. Lo contrario podr¡a causar una ruptura del espacio interdimensional." : PRINT
1822 PRINT "Los tres se suben al DELOREAN para alcanzar a BIFF en su auto." : PRINT : GOSUB 9100
1823 PRINT "MATHEW toma la patineta voladora y se baja del auto para recuperar el ALMANAQUE." : PRINT
1824 PRINT "Ya sab‚s qu‚ pasa despu‚s y CALEB tambi‚n. Ya vivi¢ ‚ste bucle antes." : PRINT
1825 PRINT "Te baj s del DeLorean m s adelante y esper s que MATHEW recupere el ALMANAQUE, sea rescatado por CALEB y el doble de BIFF choque nuevamente contra un cami¢n de esti‚rcol." : PRINT
1826 PRINT "Le ped¡s a MATHEW el almanaque, pero ‚l quiere quemarlo." : PRINT
1827 PRINT "Trat s de explicarle que lo necesit s para volver a tu tiempo. Invent s que vos tambi‚n sos un viajero del tiempo para convencerlo sin revelar nada del viaje interdimensional." : PRINT
1828 PRINT "MATHEW sigue neg ndose. l quiere prevenir el futuro en el que su padre est  muerto, BIFF es asquerosamente rico y est  casado con su madre." : PRINT
1829 PRINT
1830 COLOR CINFO : PRINT "1. Tomar el almanaque a la fuerza"
1831 COLOR CINFO : PRINT "2. Dejar que MATHEW queme el almanaque y buscar un objeto alternativo"
1897 SCENEA = 17
1898 SCENEB = 18
1899 RETURN 299


1900 REM ---- SCENE 10 ----
1901 CLS
1902 PRINT "Te sent s en ‚ste hermoso DeLorean el cual es casi id‚ntico a la m quina del tiempo de la pel¡cula, con algunas peque¤as diferencias." : PRINT
1903 PRINT "Los circuitos del tiempo no muestran tres fechas, sino que dejan ver un men£ con nombres de m£ltiples dimensiones a las que podes viajar y los objetos que debes buscar en cada una de ellas." : PRINT
1904 PRINT "Comenz s a trastear un poco con los controles y vas pasando por diferentes opciones. CALEB adapt¢ el men£ para que puedas asociar la dimensi¢n con el libro, juego o pel¡cula que se bas¢ en ella." : PRINT
1905 PRINT "En el men£ ves:" : PRINT
1906 PRINT "STREET FIIGHTER - QIPAO DE CHUN LI" : PRINT
1907 PRINT "MANIAC MANSION - LOS ANTEOJOS DE BERNARD" : PRINT : GOSUB 9100
1908 PRINT "SONIC  - UNA ESMERALDA DEL CAOS" : PRINT
1909 PRINT "MARIO - EL SOMBRERO DE LUIGI" : PRINT
1910 PRINT "ZELDA - EL ESCUDO DE LINK" : PRINT
1911 PRINT "CASTLEVANIA - EL LµTIGO DE SIMON BELMONT" : PRINT
1912 PRINT "DOOM - LA ESCOPETA DEL MARINE" : PRINT : GOSUB 9100
1913 PRINT "­Y muchos m s! Toda nuestra cultura pop est  basada en esta MEGA DIMENSIàN!­Es incre¡ble!" : PRINT
1914 PRINT "En parte te gusta estar aqu¡ y poder formar parte de las historias que marcaron tu infancia. Pero tambi‚n quer‚s regresar a casa." : PRINT
1915 PRINT "Debes elegir una." : PRINT
1916 PRINT "Repasando la lista, lleg s a un juego al que le dedicaste horas y horas en tu SEGA GENESIS." : PRINT
1917 PRINT "MORTAL KOMBAT - EL SOMBRERO ASIATICO DE RAIDEN" : PRINT : GOSUB 9100
1918 PRINT "­Es este! No hay nadie que sepa m s que vos sobre ‚ste juego y la historia de sus personajes." : PRINT
1919 PRINT "­Incluso ten‚s toda la colecci¢n de mu¤ecos que ven¡an en la revista TOP KIDS!" : PRINT
1920 PRINT "Configur s los controles y salud s a CALEB. l te desea mucha suerte y te recuerda que deb‚s alcanzar las 80 millas por hora para poder viajar entre dimensiones." : PRINT
1921 PRINT "Comenz s a acelerar y, al llegar a la velocidad adecuada, el auto llega a un t£nel interdimensional." : PRINT
1922 GOSUB 9100 : GOSUB 9300 : GOSUB 9100
1923 PRINT "El auto se materializa sobrevolando un gran bosque." : PRINT
1924 PRINT "Sin ning£n motivo aparente, los controles del auto comienzan a fallar y comenz s a perder altitud." : PRINT
1925 PRINT "ste ser  un aterrizaje forzoso. Golpe s una copa, ramas, troncos y finalmente qued s atrapado en altura como la escena de TIM en el Jepp de JURASIC PARK." : PRINT
1926 PRINT "La rama que sosten¡a tu destruido DeLorean se rompe y el auto cae con toda velocidad al piso." : PRINT
1927 PRINT "Logr s salir justo a tiempo y evit s morir aplastado." : PRINT
1928 PRINT "Baj s del  rbol con mucho cuidado y ves que el auto aplast¢ a alguien. ­Un Ninja amarillo! ­Acab s de matar al doble de SCORPION! " : PRINT : GOSUB 9100
1929 PRINT "SCORPION ahora parece la bruja del este del MAGO DE OZ. Apenas lleg s y ya hiciste una FATALITY" : PRINT
1930 PRINT "Ves esto como una oportunidad. Logr s quitarle el traje de ninja y te vest¡s de SCORPION." : PRINT
1931 PRINT "Inmediatamente sent¡s los poderes infernales de SCORPION entrar en tu cuerpo. Te das cuenta que pod‚s pelear como el ninja amarillo y pose‚s todos sus poderes." : PRINT
1932 PRINT "S¢lo debes pensar en la combinaci¢n de botones de la SEGA GENESIS y tu cuerpo se mueve solo." : PRINT
1933 PRINT "Caminando por el bosque lleg s a un puente sin baranda. Bajo el puente hay un abismo con clavos gigantes en el suelo. Reconoc‚s inmediatamente el escenario de MORTAL KOMBAT 1." : PRINT : GOSUB 9100
1934 PRINT "A continuaci¢n, no pod‚s creer lo que ven tus ojos. RAIDEN est  peleando contra SUB ZERO sobre el puente." : PRINT
1935 PRINT "R pidamente RAIDEN vence a SUB ZERO y lo env¡a al fondo del pozo con un uppercut." : PRINT
1936 PRINT "Intent s hablar con RAIDEN y explicarle tu situaci¢n, pero no cree una sola palabra de lo que dec¡s. Debe estar atrapado en el bucle." : PRINT
1937 PRINT "Considera que sos un enviado de TSANG LUNG (ese debe ser el nombre del hechicero en esta DIMENSIàN) y se prepara para pelear." : PRINT
1938 PRINT "No te queda opci¢n, debes pelear contra RAIDEN. Debe estar debilitado por su pelea con el ninja de hielo." : PRINT : GOSUB 9100
1939 PRINT "Comenz s saltando y lanzando una patada al dios del trueno. l bloquea tu ataque y te electrocuta con ambas manos en alto." : PRINT
1940 PRINT "Intent s otro ataque frontal y no pod‚s atravesar su defensa. Es hora de usar un movimiento especial. En tus nervios no record s como es la combinaci¢n de botones para hacer el gancho de SCORPION." : PRINT
1941 PRINT
1942 COLOR CINFO : PRINT "1. Abajo, Adelante, Patada Baja"
1943 COLOR CINFO : PRINT "2. Atr s, Atr s, Golpe Bajo" 
1997 SCENEA = 15
1998 SCENEB = 16
1999 RETURN 299

2000 REM ---- SCENE 11 ----
2001 CLS
2002 PRINT "Prefer¡s ir a otra DIMENSIàN." : PRINT
2003 PRINT "A KIDCOMB no le gusta que rechaces su oferta." : PRINT
2004 PRINT "Esto lo enfurece y te demuestra que es un verdadero pirata. No perdon¢ que lo hayas vencido en la lucha de espadas." : PRINT
2005 PRINT "Desenvaina su sable una vez m s, pero esta vez usa insultos de la maestra de la espada." : PRINT
2006 PRINT "No son un desaf¡o para un gran conocedor como vos." : PRINT
2007 PRINT "Esta vez lo venc‚s definitivamente y comenz s tu viaje." : PRINT : GOSUB 9100
2008 PRINT "Record s que no ten‚s dinero para comprar un barco, por lo que, antes que nada, te dirig¡s a la tienda de la isla para conseguir una nota de cr‚dito." : PRINT
2009 PRINT "Enga¤ s al tendero para que salga de su negocio, pidi‚ndole que pregunte a la maestra de la espada si podes verla." : PRINT
2010 PRINT "­La combinaci¢n de la caja fuerte es id‚ntica a la del juego!" : PRINT
2011 PRINT "Una vez con la nota de cr‚dito en tu poder, camin s por las calles de la isla y lleg s al astillero." : PRINT
2012 PRINT "All¡ est  TRISTAN, un vendedor de barcos que claramente inspir¢ a STAN de MONKEY ISLAND." : PRINT : GOSUB 9100
2013 PRINT "Tal y como STAN, TRISTAN es un gran vendedor, pero vos no ten‚s nada de dinero, solamente tu nota de cr‚dito." : PRINT
2014 PRINT "Ten‚s que convencer a TRISTAN de que no quer‚s comprar ning£n adicional.  Ni faros antiniebla, ni garant¡a extendida, nada." : PRINT : GOSUB 9100 : GOSUB 9400
2015 PRINT "Finalmente, lleg s a un acuerdo con TRISTAN y obten‚s un bote de remos. Quer¡as un barco, quer¡as viajar en el MONO MARINO, pero ese barco ya lo tiene KIDCOMB. Ten‚ que conformarte con esto." : PRINT
2016 PRINT "TRISTAN sabe sobre el bucle y EL COLECCIONISTA. l se da cuenta de que no sos de esta DIMENSIàN. Te ruega que destruyas el b culo del COLECCIONISTA. Ya est  harto de vivir en este bucle guionado." : PRINT
2017 PRINT "Te dice que para viajar a otra dimensi¢n ten‚s que navegar hacia el horizonte. Para que tengas ‚xito en tu misi¢n te coloca los faros anti niebla gratuitamente. ­A cuenta de la casa!" : PRINT
2018 PRINT "Comenz s a remar alej ndote de la isla. Al navegar, pod‚s apreciar la vista de la isla como en el inicio del MONKEY ISLAND." : PRINT
2019 PRINT "Al alejarte, el viaje interdimensional comienza nuevamente." : PRINT
2020 GOSUB 9100 : GOSUB 9300 : GOSUB 9100
2021 PRINT "No te sent¡s tan aturdido como la primera vez." : PRINT
2022 PRINT "Debe ser que el viaje entre las DIMENSIONES de la MEGA DIMENSIàN no es tan severo para el cuerpo." : PRINT
2023 PRINT "Aparec‚s con tu bote en mar abierto, a lo lejos ves tierra." : PRINT
2024 PRINT "Luego de un tiempo de remar sin descanso, lleg  a ver una ciudad. Una ciudad que no tiene calles, sino canales." : PRINT
2025 PRINT "¨Podr  ser? ­Es Venecia! Rem s con tu bote entre g¢ndolas y llegas a puerto." : PRINT
2026 PRINT "En el puerto hay dos peleadores rompiendo un TOYOTA. Uno viste un traje blanco y el otro rojo. Claramente son RUI y KEN. ¨Habr s llegado a la DIMENSIàN de STREET FIGHTER?" : PRINT : GOSUB 9100
2027 PRINT "­Parece que toda nuestra cultura pop est  inspirada en esta MEGA DIMENSIàN! No hay nada que escape." : PRINT
2028 PRINT "Te sub¡s al muelle y te dispon‚s a hablar con los peleadores, cuando de pronto ves que una lancha es destruida por las h‚lices del motor de un barco. Ves que dos tipos, que est n peleando, escapan justo a tiempo de las h‚lices." : PRINT
2029 PRINT "Uno de ellos tiene sombrero y campera de cuero." : PRINT
2030 PRINT "Entonces te das cuenta. Mir s a tu alrededor, la vestimenta de la gente es de 1930. ­­Est s en la escena de persecuci¢n de INDIANA JONES Y LA ULTIMA CRUZADA!! Una de tus pel¡culas favoritas." : PRINT
2031 PRINT "Las dimensiones deben estar cruz ndose aqu¡ tambi‚n. No haces caso a los peleadores y te dirig¡s a hablar con este doble de INDIANA JONES." : PRINT : GOSUB 9100
2032 PRINT "- Disculpe ¨es usted arque¢logo? ¨est  buscando a su padre?" : PRINT
2033 PRINT "El tipo te mira sorprendido. Te toma de tu remera y te pregunta qu‚ sab‚s de su padre." : PRINT
2034 PRINT "Te das cuenta de que no ha tomado conciencia de la uni¢n de las dimensiones." : PRINT
2035 PRINT "Lleg s a la conclusi¢n de que quiz s no sea buena idea contarle todo. Le dec¡s que pertenec‚s a la orden de los Caballeros de la Espada Cruciforme y que est s dispuesto a ayudarlo." : PRINT
2036 PRINT "Te mira desconfiado. Aun as¡, se presenta como KANSAS JONAS." : PRINT : GOSUB 9100
2037 PRINT "- ¨Qu‚ tal Dr. JONAS? Mi nombre es "USERNAME$". Supongo que ya sabe que su padre est  en un castillo nazi." : PRINT
2038 PRINT "- Le propongo que vayamos al castillo y rescatemos a su padre. Luego iremos en busca del GRIAL. Cuando lo logremos, usted me dar  un objeto suyo, para retornarme el favor." : PRINT
2039 PRINT "A JONAS tu petici¢n le resulta extra¤a, pero cree tu historia y te acepta como compa¤ero." : PRINT
2040 PRINT "A quien no ves es a la Dra. Schneider, claramente ella fue un inter‚s rom ntico agregado al guion de la pel¡cula. Tampoco ves a Marcus, debe ser otro personaje a¤adido al guion como alivio c¢mico." : PRINT
2041 PRINT "Tal y como en la pel¡cula, llegan al castillo para rescatar a HARRY JONAS, el padre del DR. JONAS. El mayordomo del castillo abre las inmensas puertas y le dec¡s:" : PRINT : GOSUB 9100
2042 PRINT "- Hola, vendo estas hermosas chaquetas de cuero." : PRINT
2043 PRINT "El tipo no te cree una sola palabra y debes noquearlo." : PRINT
2044 PRINT "Todo es tal cual la pel¡cula con algunos detalles de la aventura gr fica." : PRINT
2045 PRINT "Conoc‚s bien el castillo dado que es muy similar a historia de la peli y el juego." : PRINT
2046 PRINT "Juntos, logran rescatar a HARRY y huir del castillo evitando ser capturados, la escena del incendio o la persecuci¢n en motocicleta." : PRINT : GOSUB 9100
2047 PRINT "Una vez a salvo, escap s con los Dres. JONAS en zepel¡n, para luego viajar al Valle de la Luna Creciente y buscar la copa de Cristo." : PRINT
2048 PRINT "Como evitaste que los nazis obtuvieran el diario del grial, en el templo no hay nadie. Nadie supo c¢mo hallarlo." : PRINT
2049 PRINT "Es hora de pasar por las tres pruebas." : PRINT
2050 PRINT "Avanz s con los Dres. JONAS por la primer prueba." : PRINT
2051 PRINT "S¢lo el hombre penitente pasar ... ­El hombre penitente est  de rodillas, cuidado con las cuchillas! KANSAS JONAS logra detenerlas justo a tiempo. " : PRINT : GOSUB 9100
2052 PRINT "Bien.. s¢lo dos m s..." : PRINT
2053 PRINT "Seguir los pasos de Dios... la palabra de Dios.. Record s que en lat¡n ­Jehov  se escribe con I! Segunda prueba superada." : PRINT
2054 PRINT "En el salto desde la cabeza del le¢n... el probar  su valor.. sta prueba es un salto de fe... Los Dres. JONAS te miran at¢nitos cuando decid¡s dar el salto y ca‚s en el puente invisible." : PRINT
2055 PRINT "Listo.. es hora de conocer al caballero... al £ltimo de los tres hermanos que protegen la copa de Cristo. Los Dres. JONAS siguen tus pasos boquiabiertos. Es el sue¤o de cualquier arque¢logo." : PRINT
2056 PRINT "Al entrar, ves un caballero que espera a otro para batirse a duelo. Pero est  muy viejo y no logra levantar la espada. Esper¢ 700 a¤os para ser vencido por otro caballero." : PRINT : GOSUB 9100
2057 PRINT "Detr s del caballero hay una gran mesa llena de copas y c lices. Uno de ellos es el santo grial. " : PRINT
2058 PRINT "El caballero mira las copas y te dice:" : PRINT
2059 PRINT "- Debes elegir con sabidur¡a... el verdadero grial te puede dar vida eterna, el falso te la quitara. " : PRINT
2060 PRINT "Inmediatamente pens s en pedir ayuda a HARRY, pero el caballero te aclara que debes elegir por vos mismo o el templo se desmoronar ." : PRINT
2061 PRINT "Debes elegir que copa.. pero hay diferencias con la pel¡cula.. puede que en esta dimensi¢n la copa sea la de oro.. es la copa del rey de reyes..." : PRINT
2062 PRINT
2063 COLOR CINFO : PRINT "1. Beber de la copa del carpintero"
2064 COLOR CINFO : PRINT "2. Beber de la copa de oro y rub¡es"
2097 SCENEA = 19
2098 SCENEB = 20
2099 RETURN 299

2100 REM ---- SCENE 12 ----
2101 CLS
2102 PRINT "KIDCOMB te extiende el ¡dolo y cuando acerc s la mano para tomarlo, sent¡s un golpe en la cabeza." : PRINT
2103 PRINT "Este es un verdadero pirata. Un pirata orgulloso al que no le gusto haber sido derrotado. " : PRINT
2104 PRINT "GUYBRUSH jam s har¡a algo as¡, pero su personaje se bas¢ en este pirata, no significa que sean tengan la misma personalidad. " : PRINT
2105 PRINT "Tu error fue ver a tu pirata favorito en KIDCOMB." : PRINT
2106 PRINT "El despiadado pirata te ata al ¡dolo y te tira al agua en el muelle de la isla, cerca del bar del puerto. Justo como le sucede a GUYBRUSH en el MONKEY ISLAND I." : PRINT
2107 PRINT "Por suerte pod‚s aguantar la respiraci¢n durante 10 minutos." : PRINT : GOSUB 9100
2108 PRINT "A tu alrededor, hay muchos objetos filosos para cortar la soga que te ata al ¡dolo y as¡ poder escapar de una muerte por ahogamiento." : PRINT
2109 PRINT
2110 COLOR CINFO : PRINT "1. Intentar agarrar alg£n objeto filoso para cortar la soga"
2111 COLOR CINFO : PRINT "2. Intentar levantar la estatua"
2197 SCENEA = 13
2198 SCENEB = 14
2199 RETURN 299

2200 REM ---- SCENE 13 ----
2201 CLS
2202 PRINT "En el lecho marino lleg s a ver tijeras, sierras, espadas y otros objetos filosos. Cualquiera de ellos te servir¡a para cortar la soga y poder salir a tiempo." : PRINT
2203 PRINT "Intent s con todas tus fuerzas acercarte a alguno de ellos, pero no es posible. La cuerda es demasiado corta." : PRINT
2204 PRINT "No alcanz s a agarrar ninguno." : PRINT
2205 PRINT "El tiempo se acaba." : PRINT
2206 PRINT "Comenz s a perder el aire. Tu rostro se torna morado. Burbujas salen de tu boca en un reflejo por tomar aire." : PRINT
2207 PRINT "Finalmente no podes contener m s el aire.. mor¡s ahogado.." : PRINT : GOSUB 9100
2208 PRINT "Ahora s¢lo podes FLOTAR, HINCHARTE o PUDRIRTE..." : PRINT
2298 GOSUB 9110 : REM -- GAMEOVER --
2299 RETURN 299

2300 REM ---- SCENE 14 ----
2301 CLS
2302 PRINT "Se te ocurre acercarte al ¡dolo y levantarlo. " : PRINT
2303 PRINT "­Record s que GUYBRUSH escapa a esta situaci¢n de ese modo en el MONKEY ISLAND I!" : PRINT
2304 PRINT "Te acerc s a la estatua y pod‚s levantarla sin problemas." : PRINT
2305 PRINT "Con la estatua en la mano, ya ten‚s el objeto de colecci¢n que quiere EL COLECCIONISTA." : PRINT
2306 PRINT "­Eso no fue tan dif¡cil!" : PRINT
2307 PRINT "Sub¡s la escalera hacia los muelles y te pregunt s qu‚ pasos hay que seguir una vez que ya ten‚s el objeto para pedir la audiencia." : PRINT : GOSUB 9100
2308 PRINT "Luego de unos segundos, tu cuerpo comienza a desvanecerse como YODA al morir en EL REGRESO DEL JEDI." : PRINT
2397 COLOR CINFO : PRINT "1. Audiencia con el coleccionista"
2398 SCENEA = 21 : OPTIONB$ = "1"
2399 RETURN 299


2400 REM ---- SCENE 15 ----
2402 CLS
2403 PRINT "Maldici¢n, no funciona. Intent s nuevamente. Claramente esta no es la combinaci¢n correcta. No logr s recordar bien como hacer el gancho." : PRINT
2404 PRINT "Tu oponente aprovecha esta oportunidad y te electrocuta dej ndote levemente inconsciente. En ese momento RAIDEN se agacha y te aplica un duro uppercut." : PRINT
2405 PRINT "Sal¡s volando por los aires y ca‚s por el pozo hacia los clavos." : PRINT
2406 PRINT "RAIDEN gana..." : PRINT
2407 PRINT " @@@@@@@@  @@@@@@  @@@@@@@  @@@@@@  @@@      @@@ @@@@@@@ @@@ @@@"
2408 PRINT " @@!      @@!  @@@   @@!   @@!  @@@ @@!      @@!   @@!   @@! !@@"
2409 PRINT " @!!!:!   @!@!@!@!   @!!   @!@!@!@! @!!      !!@   @!!    !@!@! "
2410 PRINT " !!:      !!:  !!!   !!:   !!:  !!! !!:      !!:   !!:     !!:  "
2411 PRINT "  :        :   : :    :     :   : : : ::.: : :      :      .:   "

2498 GOSUB 9110 : REM -- GAMEOVER --
2499 RETURN 299

2500 REM ---- SCENE 16 ----
2501 CLS
2502 PRINT "­­Es la combinaci¢n correcta!!" : PRINT
2503 PRINT "Tu gancho sale disparado de tu mano y no pod‚s evitar decir la famosa frase ­GET OVER HERE!" : PRINT
2504 PRINT "El doble de RAIDEN es tomado por sorpresa por tu ataque especial y la punta de tu gancho se clava en su pecho." : PRINT
2505 PRINT "Lo atra‚s hacia vos y le das un golpe final. No quer‚s enviarlo a una muerte horrible al fondo del pozo, por lo que lo noque s y le quitas el sombrero." : PRINT
2506 PRINT "Y ahora... ¨qu‚? ¨Qu‚ se supone que deb‚s hacer con el sombrero?" : PRINT
2507 PRINT "Mientras medit s qu‚ hacer, y antes de que te des cuenta, comenz s a desvanecerte como cuando el capit n KIRK y SPOCK se tele transportaban a explorar un planeta extra¤o." : PRINT
2597 COLOR CINFO : PRINT "1. Audiencia con el coleccionista"
2598 SCENEA = 21 : OPTIONB$ = "1"
2599 RETURN 299

2600 REM ---- SCENE 17 ----
2601 CLS
2602 PRINT "MATHEW no lo sabe, pero vos est s seguro de que no har s nada con el ALMANAQUE que lo perjudique. " : PRINT
2603 PRINT "Forceje s con ‚l por el ALMANAQUE y logr s quit rselo. ­No es f cil luchar contra un ¡dolo de toda tu vida!" : PRINT
2604 PRINT "Sin embargo, est s muy motivado y logr s imponerte. De un golpe final noque s a MATHEW y recuper s el ALMANAQUE." : PRINT
2605 PRINT "Y ahora... ¨qu‚?" : PRINT
2606 PRINT "Luego de unos segundos comenz s a desvanecerte, como cuando el capit n PICARD y REINER se tele transportaban a explorar un planeta extra¤o en STAR TREK NEXT GENERATION." : PRINT

2697 COLOR CINFO : PRINT "1. Audiencia con el coleccionista"
2698 SCENEA = 21 : OPTIONB$ = "1"
2699 RETURN 299

2700 REM ---- SCENE 18 ----
2701 CLS
2702 PRINT "MATHEW se ve muy decidido. No quer‚s pelear con ‚l para obtener el almanaque. Seguramente haya otro objeto que puedas llevar al coleccionista." : PRINT
2703 PRINT "Tal y como en la pel¡cula MATHEW quema el ALMANAQUE y CALEB es golpeado por un rayo que lo env¡a al viejo oeste." : PRINT
2704 PRINT "La tormenta que desat¢ el rayo viene acompa¤ada de una fuerte tormenta y los empapa." : PRINT
2705 PRINT "En ese momento, llega un cartero para entregar la carta que informa a MATHEW que ­el Doc. esta vivo! " : PRINT
2706 PRINT "El cartero tiene otra carta a nombre de "USERNAME$"." : PRINT
2707 PRINT "Tu carta dice:" : PRINT : GOSUB 9100
2708 PRINT "No pudiste recuperar el objeto de colecci¢n que quer¡a. Fallaste mi prueba. Quedar s atrapado en esta DIMENSIàN para siempre." : PRINT
2709 PRINT "Firmado EL COLECCIONISTA." : PRINT
2797 PRINT
2798 GOSUB 9110 : REM -- GAMEOVER --
2799 RETURN 299


2800 REM ---- SCENE 19 ----
2801 CLS
2802 PRINT "Jes£s bebi¢ de la copa de un carpintero. ­Justo como en la pel¡cula!" : PRINT
2803 PRINT "Tom s un sorbo y te sent¡s fortalecido." : PRINT
2804 PRINT "El caballero dice:" : PRINT
2805 PRINT "- T£ elegiste con sabidur¡a." : PRINT
2806 PRINT "Los Dres. JONAS beben de la copa como vos y te agradecen por tu ayuda. Los ayudaste a escapar de los nazis y obtener el Grial." : PRINT
2807 PRINT "A cambio le ped¡s al KANSAS su l tigo. Muy a su pesar, te lo entrega.. una promesa es una promesa.. pero no pasa nada... " : PRINT : GOSUB 9100
2808 PRINT "Esper s, en vano, alguna se¤al para ver al COLECCIONISTA..." : PRINT
2809 PRINT "Le das el l tigo a KANSAS y le ped¡s su sombrero... tampoco... parece que EL COLECCIONISTA no est  interesado en estos art¡culos..." : PRINT
2810 PRINT "Pensando un poco en todo lo que acaban de vivir... le ped¡s a HARRY el DIARIO DEL GRIAL.. " : PRINT
2811 PRINT "Al tomar el diario, tu cuerpo comienza a desvanecerse como la mano de MARTY MCFLY cuando sus padres casi no se besan en 1955." : PRINT
2812 PRINT "Finalmente desaparec‚s por completo..." : PRINT
2897 COLOR CINFO : PRINT "1. Audiencia con el coleccionista"
2898 SCENEA = 21 : OPTIONB$ = "1"
2899 RETURN 299

2900 REM ---- SCENE 20 ----
2901 CLS
2902 PRINT "Seguramente en esta DIMENSIàN la copa de oro y rub¡es es la indicada. Al fin y al cabo, no es exactamente igual a la pel¡cula." : PRINT
2903 PRINT "Serv¡s el agua en la copa y das un sorbo. Al principio, no pasa nada. Hasta que comenz s a sentir un fuerte dolor en el pecho." : PRINT
2904 PRINT "Tus manos comienzan a envejecer y todo tu cuerpo se siente pesado, avejentado. Tu pelo se torna blanco, canoso, podrido..." : PRINT
2905 PRINT "Tus ojos se secan, hasta que finalmente caen de tus cuencas oculares." : PRINT
2906 PRINT "Moriste..." : PRINT
2907 PRINT "T£ elegiste mal..." : PRINT  : GOSUB 9100
2908 PRINT "           ______              "
2909 PRINT "        .-"      "-.           "
2910 PRINT "       /            \          "
2911 PRINT "      |              |         "
2912 PRINT "      |,  .-.  .-.  ,|         "
2913 PRINT "      | )(__/  \__)( |         "
2914 PRINT "      |/     /\     \|         "
2915 PRINT "      (_     ^^     _)         "
2916 PRINT "       \__|IIIIII|__/          "
2917 PRINT "        | \IIIIII/ |           "
2918 PRINT "        \          /           "
2919 PRINT "         `--------`            "
2998 GOSUB 9110 : REM -- GAMEOVER --
2999 RETURN 299

3000 REM ---- SCENE 21 ----
3001 CLS
3002 PRINT "Tu cuerpo se materializa en el lugar de tus sue¤os. " : PRINT
3003 PRINT "Es como si toda la cultura pop de tu infancia estuviera colgando de las paredes y en las estanter¡as." : PRINT
3004 PRINT "Aqu¡ hay de todo: VHSs, videograbadoras, laser discs, consolas de videojuegos, mu¤ecos, PCs retro, juegos bigbox, figuritas y m s ­No falta nada!" : PRINT
3005 PRINT "Hacia el frente hay una gran escalera de tres colores. Al final de cada color, hay como un campo de fuerza que claramente impide el paso." : PRINT
3006 PRINT "Te recuerda al campo de fuerza que imped¡a el paso a OBI WAN KENOBI ayudar a QUI GON JINN en su pelea con DARTH MAUL en EPISODIO I." : PRINT
3007 PRINT "En los escalones tambi‚n hay n£meros: 1, 2 y 3." : PRINT : GOSUB 9100
3008 PRINT "Te acerc s hacia el primer conjunto de escalones de color verde y mir s hacia arriba. Hay una luz cegadora en la cima de la escalera, pero llegas a ver una figura sentada." : PRINT
3009 PRINT "- Gracias por mi nuevo objeto de colecci¢n. Dice EL COLECCIONISTA. " : PRINT
3010 PRINT "En ese momento, el objeto que trajiste desaparece de tus manos y se materializa en una de las estanter¡as." : PRINT
3011 PRINT "- Ahora deb‚s superar una £ltima prueba. Si contest s bien estas 3 preguntas podr s regresar a tu dimensi¢n con la £ltima de mis creaciones. Un idea que te har  rico y famoso." : PRINT
3012 PRINT "La primera pregunta es:" : PRINT
3013 PRINT "- ¨En que a¤o se public¢ el primer arcade de STREET FIGHTER 2?" : PRINT

3095 COLOR CINFO : PRINT "1. 1990"
3096 COLOR CINFO : PRINT "2. 1991"
3097 SCENEA = 23 
3098 SCENEB = 22 : OPTIONB$ = "2"
3099 RETURN 299


3100 REM ---- SCENE 22 ----
3101 CLS
3102 PRINT "- Excelente. Contestaste bien mi primera pregunta." : PRINT
3103 PRINT "El campo de fuerza que te imped¡a el paso desaparece. Ya podes subir hasta los escalones amarillos que tienen el n£mero 2." : PRINT
3104 PRINT "- Es hora de mi segunda pregunta:" : PRINT
3105 PRINT "- ¨C¢mo se llama el creador del PRINCE OF PERSIA?" : PRINT

3195 COLOR CINFO : PRINT "1. Steve Purcell"
3196 COLOR CINFO : PRINT "2. Jordan Mechner"
3197 SCENEA = 25 
3198 SCENEB = 24
3199 RETURN 299

3200 REM ---- SCENE 23 ----
3201 CLS
3202 PRINT "No, el primer arcade de STREET FIGHTER 2 se public¢ en 1991." : PRINT
3203 PRINT "­No pod‚s creer como te equivocaste en esta pregunta! ­Deben haber sido los nervios!" : PRINT
3204 PRINT "EL COLECCIONISTA toma su b culo, te lanza un hechizo y te atrapa en la DIMENSIàN de JUMANJI donde tendr s que vivir en la selva hasta que alguien saque un 5 o un 8." : PRINT
3297 PRINT
3298 GOSUB 9110 : REM -- GAMEOVER --
3299 RETURN 299

3300 REM ---- SCENE 24 ----
3301 CLS
3302 PRINT "- ­Correcto! Era f cil" : PRINT
3303 PRINT "El campo de fuerza que te imped¡a pasar se desvanece. Ya pod‚s subir hasta los escalones verdes que tienen el n£mero 1." : PRINT
3304 PRINT "- éltima pregunta. Si gan s podr s volver a tu dimensi¢n con este guion para una pel¡cula basado en una idea in‚dita." : PRINT
3305 PRINT "- Ya que te gustan tanto las retro computadoras..  dime.. ¨Cu l fue la £ltima versi¢n estable de GW-BASIC?" : PRINT
3306 COLOR CINFO : PRINT "1. 3.23"
3307 COLOR CINFO : PRINT "2. 3.20"
3397 SCENEA = 27 
3398 SCENEB = 26
3399 RETURN 299

3400 REM ---- SCENE 25 ----
3401 CLS
3402 PRINT "­No, ese es el creador de SAM & MAX!" : PRINT
3403 PRINT "Tantas horas que le dedicaste al PRINCE OF PERSIA y no recordaste bien el nombre de su creador." : PRINT
3404 PRINT "El coleccionista toma su b culo y te arroja un hechizo." : PRINT
3405 PRINT "Tu cuerpo es el de un gato y est s en una casa suburbana de los a¤os 80s, en Estados Unidos." : PRINT
3406 PRINT "Una voz familiar se escucha detr s tuyo" : PRINT
3407 PRINT "- ­SUERTUDO, que hambre verte!" : PRINT : GOSUB 9100
3408 PRINT "­Es ALF, e intenta comerte!" : PRINT
3409 PRINT "El COLECCIONISTA te atrap¢ en la DIMENSIàN de ALF, te convirti¢ en el gato SUERTUDO y te conden¢ a un bucle infinito huyendo para evitar ser comido por el extraterrestre." : PRINT
3498 GOSUB 9110 : REM -- GAMEOVER --
3499 RETURN 299

3500 REM ---- SCENE 26 ----
3501 CLS
3502 3502 PRINT "- ­Incorrecto!" : PRINT
3503 PRINT "- ­No, la £ltima versi¢n estable es la 3.23!" : PRINT
3504 PRINT "EL COLECCIONISTA toma su b culo y te arroja un hechizo." : PRINT
3505 PRINT "La magia te lleva al  tico de una mansi¢n muy antigua . Un fuerte ruido llama tu atenci¢n." : PRINT
3506 PRINT "Una puerta trampa se abre en el suelo del  tico. De ella sale un verde y poligonal zombi." : PRINT
3507 PRINT "­Te das cuenta! Se trata de la mansi¢n Derceto! Estas en la DIMENSIàN ALONE IN THE DARK!" : PRINT
3508 PRINT "Huis del  tico y corr‚s por el pasillo, olvidaste que, en el juego, el suelo de este corredor es inestable.. aqu¡ tambi‚n.." : PRINT
3509 PRINT "El suelo se desmorona bajo tus pies y mor¡s al instante.." : PRINT
3598 GOSUB 9110 : REM -- GAMEOVER --
3599 RETURN 299

3600 REM ---- SCENE 27 ----
3601 CLS
3602 PRINT "- Excelente. Veo que sos un gran conocedor de mi obra y arte." : PRINT
3603 PRINT "El £ltimo campo de fuerza se desvanece y te permite ver al COLECCIONISTA." : PRINT
3604 PRINT "Su aspecto te recuerda a MUNRA o SKELETOR, es realmente aterrador." : PRINT
3605 PRINT "Est  sentado en un trono de oro macizo. El trono tiene decoraciones de personajes y elementos de la cultura pop en toda su superficie." : PRINT
3606 PRINT "El coleccionista sostiene su b culo m gico con la mano derecha y lo apoya en el suelo." : PRINT
3607 PRINT "Realmente te recuerda a SKELETOR y su b culo." : PRINT : GOSUB 9100
3608 PRINT "El b culo es un gran bast¢n que en su punta tiene un GAMEBOY de plata." : PRINT
3609 PRINT "- Recog‚ tu premio y te enviar‚ a tu dimensi¢n." : PRINT
3610 PRINT "EL COLECCIONISTA extiende su otra mano y te entrega un bloque de hojas. Parece ser el borrador de una historia." : PRINT
3611 PRINT "Dudas qu‚ hacer... convertirte en un genio creativo suena tentador.. pero... EL COLECCIONISTA es un ser maligno y alguien tiene que detenerlo... romper su b culo liberar¡a a los seres atrapados en la MEGA DIMENSIàN" : PRINT
3650 COLOR CINFO : PRINT "1. Intentar destruir el b culo"
3651 COLOR CINFO : PRINT "2. Aceptar la recompensa y regresar a casa"
3697 SCENEA = 29
3698 SCENEB = 28
3699 RETURN 299

3700 REM ---- SCENE 28 ----
3701 CLS
3702 PRINT "Convertirte el alguien como RON GILBERT, JOHN ROMERO, SPIELBERG, GEORGE LUCAS, JOHN TOBIAS, entre tantos otros, es un sue¤o hecho realidad." : PRINT
3703 PRINT "Acept s el borrador que te entrega el coleccionista." : PRINT
3704 PRINT "Al entrar en contacto con el papel todo desaparece." : PRINT
3705 PRINT "Te despert s en tu cama. ¨Acaso todo fue un sue¤o? ­No puede ser! Fue tan real." : PRINT
3706 PRINT "Mir s a tu alrededor y en tu mesa de luz hay un bloque de papel." : PRINT
3707 PRINT "Es el bloque de hojas que te entreg¢ EL COLECCIONISTA." : PRINT : GOSUB 9100
3708 PRINT "Cumpli¢ con su parte del trato. Eso quiere decir que todos los seres que conociste (y los que no tambi‚n) siguen atrapados en la MEGA DIMENSIàN." : PRINT
3709 PRINT "No tuviste el coraje para ayudarlos. Un fuerte sentimiento de culpa te invade." : PRINT
3710 PRINT "Tom s el bloque de hojas y lo mir s fijamente." : PRINT
3711 PRINT "En la primer hoja se puede ver el t¡tulo de la historia que est  escrita en ‚l." : PRINT
3712 PRINT "Dice... " : PRINT
3713 PRINT "LA DIMENSIàN RETRO" : PRINT
3798 GOSUB 9500 : REM -- ENDING --
3799 RETURN 299

3800 REM ---- SCENE 29 ----
3801 CLS
3802 PRINT "Esta es una oportunidad £nica. No pod‚s dejar de aprovecharla." : PRINT
3803 PRINT "Ten‚s que ayudar a todos los seres que atrap¢ EL COLECCIONISTA en LA MEGA DIMENSIàN." : PRINT
3804 PRINT "Aparent s acercarte para tomar el bloque de hojas y con un r pido movimiento le arrebat s el b culo." : PRINT
3805 PRINT "-­NOO! ¨­Qu‚ pens s hacer con eso!? No seas tonto.. No lograr s nada." : PRINT
3806 PRINT "No crees una palabra de este s dico y ego¡sta coleccionista que s¢lo busca entretenimiento a expensas de otros." : PRINT
3807 PRINT "Sosteniendo el b culo con ambas manos, us s tu pierna para partirlo. Requiere una gran cantidad de fuerza, pero logr s destruirlo." : PRINT : GOSUB 9100
3808 PRINT "Un v¢rtice se crea en el punto en el espacio donde se parti¢ el b culo." : PRINT
3809 PRINT "Todo es absorbido por este agujero negro, vos incluido." : PRINT
3810 PRINT "Perd‚s el conocimiento. ­Ya te est s acostumbrando a esto!" : PRINT
3811 PRINT "Al despertar est s en tu cama. ¨Acaso fue todo un sue¤o?" : PRINT
3812 PRINT "Mir s a tu mesa de luz y encontr s una nota sobre una caja." : PRINT : GOSUB 9100
3813 PRINT "Querido "USERNAME$"," : PRINT
3814 PRINT "Nunca olvidaremos lo que hiciste por nosotros, este es un peque¤o gesto de nuestro agradecimiento. Firmado: tu amigo interdimensional" : PRINT
3815 PRINT "Abr¡s la caja con una sonrisa y encontr s...un diskette." : PRINT
3816 PRINT "Al insertarlo en tu computadora ves que tiene muchos archivos de texto con todas las ideas de nuevas historias del COLECCIONISTA." : PRINT
3817 PRINT "Entre ellas est ... LA DIMENSIàN RETRO.. " : PRINT
3898 GOSUB 9500 : REM -- ENDING --
3899 RETURN 299

8000 PRINT 
8001 COLOR CERROR : PRINT "No es una opci¢n valida, ingresa " OPTIONA$ " o " OPTIONB$
8002 PRINT 
8010 RETURN 299


9000 CLS
9001 PRINT "Eres un gallina Mcfly!"
9002 PRINT "             xx"
9003 PRINT "             / .|_"
9004 PRINT "            /(_)_< --- cack cack!"
9005 PRINT "           /  ("
9006 PRINT "  ((____.-'    )"
9007 PRINT "   \\         /"
9008 PRINT "    \'-.-.-'`/    "
9009 PRINT "  _  \______/"
9010 PRINT " (_)   _|_\_"
9011 PRINT " ''''''''''''''''"
9099 END


9100 REM ---- subroutine PRESS ANY KEY ----
9101 LOCATE 21, 33: COLOR CINFO: PRINT "Presiona cualquier tecla para continuar..." : WHILE INKEY$ = "" : WEND : CLS : COLOR CTEXTO
9102 RETURN

9110 REM ---- subroutine GAME OVER ----
9111 PLAY "T120F4E4D#4D2"
9112 LET GAMEOVER = 1
9113 GOSUB 9100
9114 COLOR CINFO 
9115 PRINT "  _______  _______  __   __  _______    _______  __   __  _______  ______   "
9116 PRINT " |       ||   _   ||  |_|  ||       |  |       ||  | |  ||       ||    _ |  "
9117 PRINT " |    ___||  |_|  ||       ||    ___|  |   _   ||  |_|  ||    ___||   | ||  "
9118 PRINT " |   | __ |       ||       ||   |___   |  | |  ||       ||   |___ |   |_||_ "
9119 PRINT " |   ||  ||       ||       ||    ___|  |  |_|  ||       ||    ___||    __  |"
9120 PRINT " |   |_| ||   _   || ||_|| ||   |___   |       | |     | |   |___ |   |  | |"
9121 PRINT " |_______||__| |__||_|   |_||_______|  |_______|  |___|  |_______||___|  |_|"
9122 PRINT : COLOR CINPUT : INPUT "Escribe s para seguir jugando o q para salir, luego presiona INTRO: ", Z$
9123 IF Z$ = "q" GOTO 9000
9124 IF Z$ = "s" THEN GAMEOVER = 0
9125 IF Z$ = "s" GOTO 125 ELSE GOSUB 9900
9199 RETURN

9200 REM ---- subroutine PRESS ANY KEY TO ENTER DIMENTION ----
9201 CLS : LOCATE 12, 22: COLOR CINPUT: PRINT "PRESS ANY KEY TO ENTER DIMENTION" : WHILE INKEY$ = "" : WEND : CLS : COLOR CTEXTO
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
9399 RETURN

9400 REM ---- subroutine HOURS LATER ----
9401 CLS : LOCATE 12, 22: COLOR CINPUT: PRINT "UNAS HORAS MAS TARDE..." : WHILE INKEY$ = "" : WEND : CLS : COLOR CTEXTO
9402 RETURN

9500 REM ---- subroutine ENDING ----
9510 LET GAMEOVER = 1
9512 GOSUB 9100
9513 COLOR CINFO : PLAY "MBT120P8E-8A-4E-8>D-4C4<B-8A-8B-4A-8>D-16E-16<E-4E-8>D-4<E-8B-4>C4C8<B-8A-8E-2"
9514 PRINT " _____ _          _____       _ "
9515 PRINT "|_   _| |_ ___   |   __|___ _| |"
9516 PRINT "  | | |   | -_|  |   __|   | . |"
9517 PRINT "  |_| |_|_|___|  |_____|_|_|___|"
9518 PRINT : COLOR CINPUT : INPUT "Escribe s para seguir jugando o q para salir, luego presiona INTRO: ", Z$
9519 IF Z$ = "q" GOTO 9000
9520 IF Z$ = "s" THEN GAMEOVER = 0
9521 IF Z$ = "s" GOTO 125 ELSE GOSUB 9900
9599 RETURN

9900 PRINT 
9901 COLOR CERROR : PRINT "No es una opci¢n v lida"
9902 PRINT 
9903 IF GAMEOVER = 1 THEN RETURN 9122 ELSE RETURN 116



