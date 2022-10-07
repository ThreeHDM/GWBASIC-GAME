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
228 IF A = 1 AND SCENEA = 5 THEN GOSUB 1400 : REM ---- SCENE 5 ----
229 IF A = 2 AND SCENEB = 6 THEN GOSUB 1500 : REM ---- SCENE 6 ----
230 IF A = 1 AND SCENEA = 7 THEN GOSUB 1600 : REM ---- SCENE 7 ----
231 IF A = 2 AND SCENEB = 8 THEN GOSUB 1700 : REM ---- SCENE 8 ----
232 IF A = 1 AND SCENEA = 9 THEN GOSUB 1800 : REM ---- SCENE 9 ----
233 IF A = 2 AND SCENEB = 10 THEN GOSUB 1900 : REM ---- SCENE 10 ----
234 IF A = 1 AND SCENEA = 11 THEN GOSUB 2000 : REM ---- SCENE 11 ----
235 IF A = 2 AND SCENEB = 12 THEN GOSUB 2100 : REM ---- SCENE 12 ----
236 IF A = 1 AND SCENEA = 13 THEN GOSUB 2200 : REM ---- SCENE 13 ----
237 IF A = 2 AND SCENEB = 14 THEN GOSUB 2300 : REM ---- SCENE 14 ----
238 IF A = 1 AND SCENEA = 15 THEN GOSUB 2400 : REM ---- SCENE 15 ----
239 IF A = 2 AND SCENEB = 16 THEN GOSUB 2500 : REM ---- SCENE 16 ----
240 IF A = 1 AND SCENEA = 17 THEN GOSUB 2600 : REM ---- SCENE 17 ----
241 IF A = 2 AND SCENEB = 18 THEN GOSUB 2700 : REM ---- SCENE 18 ----
242 IF A = 1 AND SCENEA = 19 THEN GOSUB 2800 : REM ---- SCENE 19 ----
243 IF A = 2 AND SCENEB = 20 THEN GOSUB 2900 : REM ---- SCENE 20 ----
244 IF A = 1 AND SCENEA = 21 THEN GOSUB 3000 : REM ---- SCENE 21 ----
245 IF A = 2 AND SCENEB = 22 THEN GOSUB 3100 : REM ---- SCENE 22 ----
246 IF A = 1 AND SCENEA = 23 THEN GOSUB 3200 : REM ---- SCENE 23 ----
247 IF A = 2 AND SCENEB = 24 THEN GOSUB 3300 : REM ---- SCENE 24 ----
248 IF A = 1 AND SCENEA = 25 THEN GOSUB 3400 : REM ---- SCENE 25 ----
249 IF A = 2 AND SCENEB = 26 THEN GOSUB 3500 : REM ---- SCENE 26 ----
250 IF A = 1 AND SCENEA = 27 THEN GOSUB 3600 : REM ---- SCENE 27 ----
251 IF A = 2 AND SCENEB = 28 THEN GOSUB 3700 : REM ---- SCENE 28 ----


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
1215 PRINT "Lo unico que puede verse es un portal brillante como el que vio el Dr. DANIEL JACKSON interpretado por JAMES SPADER en STARGATE. De repente una fuerte fuerza te absorbe y caes por un tunel interdimensional." : PRINT
1216 GOSUB 9100 : GOSUB 9300 : GOSUB 9100
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
1302 PRINT "Se te antoja comer una hamburguesa. Te preparas para ir a un McDonadls que queda cerca de tu casa. Desearias que fuera un PUMPER NIC pero hay que conformarse con lo que hay." : PRINT 
1303 PRINT "Abris la puerta de entrada y tus ojos no pueden creer lo que ven." : PRINT 
1304 PRINT "La calle no esta ahi, la casa de tu vecino de enfrente no esta." : PRINT 
1305 PRINT "Frente a tu rostro hay un portal como el de la pelicula STARGATE. Un brillante y metalico liquido suspendido en el aire." : PRINT 
1306 PRINT "Colocar tu mano en el portal genera ondas en la brillante pelicula de liquido plateado." : PRINT 
1307 PRINT "No entedes que esta pasando o por que.. y no tenes mucho tiempo para pensar." : PRINT : GOSUB 9100
1308 PRINT "Antes de que te des cuenta una fuerza desconocida te absorbe desde el portal." : PRINT 
1309 PRINT "Sentis como tus atomos se separan y se dispersan por el universo en un viaje interdimensional. Aun asi tenes conciencia y no sentis dolor." : PRINT 
1310 PRINT "Ves como estrellas y galaxias pasan a velocidades incribles a tu lado, o mejor dicho al lado de tus atomos dispersos." : PRINT 
1311 PRINT "Por un momento te ves sumido en una completa obscuridad." : PRINT 
1312 GOSUB 9100 : GOSUB 9300 : GOSUB 9100
1313 PRINT "Tu cuerpo se materializa en un camino de tierra, estas rodeado de naturaleza, la escena tiene colores azules y obscuros. Es de noche y el cielo esta estrellado." : PRINT 
1314 PRINT "Perdes la conciencia y te desamayas en la maleza. Al rato te despiertas en el mismo lugar." : PRINT 
1315 PRINT "Aun estas un poco aturdido, pero vas recobrando el conocimiento. Caminas un poco buscando a alguien que tenga respuestas. No tenes idea donde estas o que paso. Estaras en un sueno? Estaras alucinando?" : PRINT 
1316 PRINT "Al costado del camino encontras un esqueleto humano. Lo que te hace pensar que estas en una pesadilla, una muy vivida." : PRINT 
1317 PRINT "El muerto viste ropas de pirata. Algo asi como EL TUERTO WILLY de los GOONIES. En su mano hay una espada." : PRINT 
1318 PRINT "De la obscuridad surge un joven con aspecto piratezco (aunque mas bien parece un inspector de suelos) que se acerca hacia vos y levanta una espada o, mejor dicho, un sable pirata. " : PRINT : GOSUB 9100
1319 PRINT "El joven dice:" : PRINT 
1320 PRINT "- Mi nombre es KIDCOMB FLEETWOOD, preparate para morir!" : PRINT 
1321 PRINT "- Luchas como un ganadero!" : PRINT 
1322 PRINT "No tienes mucho tiempo para pensar. Es acaso esto una broma? Este muchacho disfrazado de GUYBRUSH THREEPWOOD te esta desafiando a una pelea... una pelea de insultos!" : PRINT 
1323 PRINT "Comenzas a atar cabos... encendiste el DIMENTION en tu computadora... y ahora esta pasandote esto..." : PRINT : GOSUB 9100
1324 PRINT "Podra ser que el DIMENTION haya funcionado? Miras nuevamente a tu alrededor... te das cuenta.. estas en un lugar muy parecido a la ISLA MELEE (TM)!" : PRINT 
1325 PRINT "Esto significa que estas en una pelea de insultos y debes contestar correctamente para ganar... Tomas la espada del esqueleto e intentas recordar la respuesta al insulto..." : PRINT
1326 PRINT
1327 COLOR CINFO : PRINT "1. Que apropiado, tu peleas como una vaca"
1328 COLOR CINFO : PRINT "2. Yo soy goma, tu pegamento"
1329 PRINT 

1397 SCENEA = 5
1398 SCENEB = 6
1399 RETURN 299

1400 REM ---- SCENE 5 ----
1401 CLS
1402 PRINT "La respuesta correcta al insulto de KIDCOMB hace que puedas avanzar y golpear el sable de su mano. Te ganaste el respeto de este pirata. Ahora queres respuestas." : PRINT 
1403 PRINT "Apuntando tu sable a su cuello le preguntas donde estas y que esta pasando. El te nota desorientado." : PRINT
1404 PRINT "- Veo que no sos de por aqui. Debes venir de la dimension de RON GILBERT. Hace tiempo paso por aqui. Tu vestimenta es similar a la suya." : PRINT
1405 PRINT "- RON GILBERT se inspiro en esta DIMENSION para crear un videojuego en su mundo. Lo llaman MONKEY ISLAND. En realidad la idea fue un regalo del COLECCIONISTA." : PRINT
1406 PRINT "- Veras.. estas en una MEGA DIMENSION creada por un ser llamado EL COLECCIONISTA. " : PRINT
1407 PRINT "- El descubrio el viaje interdimensional y en sus travesias encontro un baculo magico que le permite capturar otras dimensiones. Asi comenzo a coleccionarlas en esta MEGA DIMENSION." : PRINT : GOSUB 9100
1408 PRINT "- Para que me entiendas, digamos que estas en la DIMENSION MONKEY ISLAND de esta MEGA DIMENSION." : PRINT
1409 PRINT "- Somos pocos los que tenemos conciencia de esto. Los demas seres no la tienen y estan atrapados en bucles infinitos. Repitiendo las historias del COLECCIONISTA, una y otra vez. La historia que le regalo a RON GILBERT." : PRINT
1410 PRINT "- En esta dimension solo yo tengo conciencia de estar en el bucle." : PRINT
1411 PRINT "Todo cierra.. estas en ese bucle viviendo la historia del MONKEY ISLAND I." : PRINT
1412 PRINT "Le preguntas a KIDCOMB como salir de aqui y regresar a casa." : PRINT : GOSUB 9100
1413 PRINT "- Para hacer eso debes llevarle un objeto de coleccion de alguna DIMENSION al COLECCIONISTA. Asi podras obtener una audiencia con el. En ese momento te pondra a prueba. " : PRINT
1414 PRINT "- Si logras vencerlo regresaras a tu dimension con un libro, guion o codigo para videojuego de su autoria." : PRINT
1415 PRINT "- Al COLECCIONISTA le gusta como la gente de tu dimension produce los guiones o historias que escribe." : PRINT
1416 PRINT "Le preguntas a KIDCOMB porque no enfrentan al coleccionista dado que atrapo su dimension." : PRINT
1417 PRINT "Te responde que no le interesa.. que la diferencia casi no se nota excepto que por momentos las DIMENSIONES se superponen y podes cruzarte con MAZINGER Z  o un TIRANOSAURIO en el medio del caribe. " : PRINT : GOSUB 9100
1418 PRINT "Ademas es dificil, ya que pare liberar a todos hay que destruir el BACULO del COLECCIONISTA y para eso hay que estar lo suficientemente cerca de el." : PRINT
1419 PRINT "Por otra parte KIDCOMB no sabe que seres de otras dimensiones son consientes de estar atrapados." : PRINT
1420 PRINT "Y seguramente, como el, los que son conscientes no correrian ese riesgo. EL COLECCIONISTA es muy poderoso." : PRINT
1421 PRINT "Ahora entendes todo.. el DIMENTION no vuelve genios creativos a sus jugadores... sino que es un portal a esta dimension." : PRINT
1422 PRINT "RON GILBERT paso las pruebas del coleccionista y volvio a casa con una idea genial.. ese podria ser tu destino.. " : PRINT : GOSUB 9100
1423 PRINT "Le preguntas a KIDCOMB a donde podes ir ahora..." : PRINT
1424 PRINT "KIDCOMB te dice que EL COLECCIONISTA quiere el IDOLO DE MULTIPLES BRAZOS de esta DIMENSION. " : PRINT
1425 PRINT "Casualmente KIDCOMB tiene el idolo en su poder ya que paso las 3 pruebas para convertirse en pirata." : PRINT
1426 PRINT "KIDCOMB te ofrece el idolo,  sino podes hablar con TRISTAN el vendedor de barcos de la isla para navegar a otra DIMENSION." : PRINT
1427 PRINT
1428 COLOR CINFO : PRINT "1. Hablar con TRISTAN y viajar a otra dimension"
1429 COLOR CINFO : PRINT "2. Aceptar el idolo"
1497 SCENEA = 11
1498 SCENEB = 12
1499 RETURN 299

1500 REM ---- SCENE 6 ----
1501 CLS
1502 PRINT "Por mas que pienses y pienses no logras recordar la respuesta correcta al insulto. El muchacho gana este duelo y en consecuencia te convierte en prisionero en su barco pirata." : PRINT 
1503 PRINT "Hablando con la tripulacion te enteras que RON GILBERT paso por aqui y se inspiro para crear el MONKEY ISLAND." : PRINT
1504 PRINT "Estas atrapado en esta dimension y hay una especie de ser supremo que podria liberarte, pero primero debes huir de este barco." : PRINT
1505 PRINT "El capital KIDCOMB los lleva por los mares del caribe en busca de su amada. En sus aventuras lleva su barco a las orillas de una isla misteriosa, de similares caracteristicas a MONKEY ISLAND." : PRINT
1506 PRINT "La tripulacion se amotina mientras el capitan baja a explorar la isla, es tu momento para intentar escapar. " : PRINT
1507 PRINT "Mientras tentas con un hueso al perro que vigila tu celda y sostiene la llave de la misma en su hocico, la tripulacion toma sol en la cubierta del barco y disfruta del clima del caribe." : PRINT : GOSUB 9100
1508 PRINT "De repente, una roca gigante cae del cielo partiendo el barco a la mitad. Moris ahogado al no poder salir de tu celda." : PRINT
1509 PRINT
1510 GOSUB 9110 : REM -- GAMEOVER --
1599 RETURN 299

1600 REM ---- SCENE 7 ----
1601 CLS
1602 PRINT "Te presentas y le preguntas al viejo quien es y donde estas. " : PRINT
1603 PRINT "El viejo se quita el casco y te explica que pudo leer tu mente con el. Ya sabe todo sobre ti. " : PRINT
1604 PRINT "Un casco para leer la mente? Como el que EMMET BROWN uso con MARTY en VOLVER AL FUTURO I? " : PRINT
1605 PRINT "Este tipo debe estar loco, nada tiene sentido.. Ademas en la pelicula el casco no funciona.." : PRINT
1606 PRINT "El viejo se presenta y dice:" : PRINT
1607 PRINT "- Un placer conocerte "USERNAME$"." : PRINT : GOSUB 9100
1608 PRINT "- Soy el Dr. CALEB MERITT y estas lejos de casa. Estas en otra DIMENSION. Seguramente te resulte familiar. En tu dimension un tal ROBERT ZEMECKIS creo una pelicula basada en ella junto con otro de nombre BOB GALE." : PRINT
1609 PRINT "Ese tipo paso por aqui hace un tiempo y con el se llevo la idea.. o mas bien se la dieron.. la llamo VOLVER AL FUTURO." : PRINT
1610 PRINT "Tus oidos no pueden creen lo que esuchan. Debes estar en coma.. debes haber perdido el conocimiento y estas tirado en el piso de tu cocina.." : PRINT
1611 PRINT "Miras bien a CALEB y notas el parecido con el Dr. EMMET BROWN." : PRINT
1612 PRINT "CALEB continua explicandote:" : PRINT : GOSUB 9100
1613 PRINT "- Esta DIMENSION, junto con otras, forma parte de una MEGA DIMENSION. Somos todos prisioneros de un ser que mediante el viaje interdimensional comenzo a coleccionar dimensiones y a atraparlas en esta MEGA DIMENSION." : PRINT
1614 PRINT "- Lo llamamos EL COLECCIONISTA y.. es el unico que puede ayudarte a regresar. Otros viajeros de tu dimension ya lo han logrado." : PRINT
1615 PRINT "- EL COLECCIONISTA atrapa  las dimensiones en bucles de guiones que el mismo escribe. Son guiones o historias fantasticas utilizando recursos de cada dimension. " : PRINT
1616 PRINT "- Somos muy pocos los seres que tenemos conciencia de esto. La mayoria no sabe que estamos atrapados. Tuviste suerte que yo te encontrara antes que cualquier otro." : PRINT
1617 PRINT "CALEB toma una pizarra y comienza a dibujar circulos representando todas las dimensiones y como se entrecruzan entre si." : PRINT : GOSUB 9100
1618 PRINT "- La union de todas las dimensiones no es natural. Todas se estan entrelazando en una unidad inestable. Segun mis calculos todo confluira en un gran agujero negro y moriremos." : PRINT
1619 PRINT "- Tu dimension no corre peligro. Al COLECCIONISTA le gusta como ustedes llevan a libros, peliculas o comics sus historias. Inspiradas en las dimensiones que colecciona." : PRINT
1620 PRINT "- Nuestro encuentro no fue casualidad. Creo que tu puedes salvarnos. Si consigues una audiencia con EL COLECCIONISTA podras estar lo suficientemente cerca suyo como para destruir su BACULO MAGICO." : PRINT
1621 PRINT "- Eso liberara a todas las dimensiones y le impedira capturar otras." : PRINT
1622 PRINT "- Para conseguir una audiencia con EL COLECCIONISTA debes conseguir 1 objeto de coleccion de alguna DIMENSION.  El te pondra a prueba para su entretenimiento. " : PRINT : GOSUB 9100
1623 PRINT "- Si logras conseguir un objeto de su interes podras verlo. En ese momento te pondra a prueba por ultima vez. De fallar quedaras atrapado aqui para siempre. " : PRINT
1624 PRINT "- Aquellos que truinfan regresan a su dimension con un guion, libro o idea para producir y seguir complaciendo al COLECCIONISTA." : PRINT
1625 PRINT "- Tu debes romper ese patron y liberarnos! Te lo imploro!" : PRINT
1626 PRINT "Ahora te das cuenta.. el juego DIMENTION es una llave a otra dimension." : PRINT
1627 PRINT "Los viajeros de la tierra que llegan aqui regresan con ideas del COLECCIONISTA. El es el genio creativo detras de muchas obras del cine y la literatura." : PRINT : GOSUB 9100
1628 PRINT "- "USERNAME$", espero que puedas ayudarnos. Se que sabras hacer lo correcto. Toma esto.. si vas a hacer algo.. mejor hacerlo con estilo... " : PRINT
1629 PRINT "CALEB te entrega las llaves de un increible DeLorean. Esta no es una maquina del tiempo. Es una maquina dimensional que te permite elegir la DIMENSION a la que viajar." : PRINT
1630 PRINT "El Dr. te explica que este auto no es el mismo que el que usa el MARTY de su dimension. Ese MARTY esta atrapado en el bucle y no tiene conciencia de todo esto." : PRINT
1631 PRINT "CALEB lo adapto los controles del auto para que asocies cada DIMENSION con la historia correspondiente en tu mundo y para que te informe que objeto quiere EL COLECCIONISTA." : PRINT
1632 PRINT
1633 COLOR CINFO : PRINT "1. Permanecer en la dimension de VOLVER AL FUTURO"
1634 COLOR CINFO : PRINT "2. Viajar a otra dimension"
1697 SCENEA = 9
1698 SCENEB = 10
1699 RETURN 299

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
1801 CLS
1802 PRINT "VOLVER AL FUTURO es una de tus peliculas favoritas. Aqui tenes mas chances de conseguir un objeto de coleccion. " : PRINT
1803 PRINT "Le decis a CALEB que preferis quedarte y buscar un objeto aqui. El te cuenta que EL COLECCIONISTA quiere el ALMANAQUE de resultados deportivos de esta DIMENSION." : PRINT
1804 PRINT "Si le llevas eso te concedera una audiencia." : PRINT
1805 PRINT "Agradeces a CALEB su ayuda y muy a tu pesar, le devolves las llaves del DELOREAN. ya que podes caminar hasta HILL VALLEY." : PRINT
1806 PRINT "CALEB te cuenta que manana es la noche del BAILE DEL ENCANTO BAJO EL OCEANO y que MARTY esta intentando recuperar el ALMANAQUE con resultados deportivos que el BIFF del futuro entrego a su yo de 1955." : PRINT
1807 PRINT "Queres recuperar el almanaque en la casa de BIFF antes del baile, pero el Doc. te lo impide debido a que afuera esta nevando." : PRINT : GOSUB 9100
1808 PRINT "No se trata de una nevada comun y corriente. Al entrar en contacto con la piel los copos producen una muerte instantanea." : PRINT
1809 PRINT "CALEB te explica que la DIMENSION del ETERNAUTA de OESTERHELD se esta uniendo con esta y la nevada afecta a todos los seres que no viven en la MEGA DIMENSION." : PRINT
1810 PRINT "Haces caso al Doc. Pasas la noche y el dia siguiente en su casa. " : PRINT
1811 PRINT "Afortunadamente la noche del baile es preciosa justo como en la pelicula. No hay nevada mortal." : PRINT
1812 PRINT "Saludas al Doc. y partis en tu mision." : PRINT : GOSUB 9100
1813 PRINT "Llegas al baile escolar y buscas al equivalente de MARTY.. deberia tener un sombrero y una campera de cuero. Tal y como esta vestido en VOLVER AL FUTURO II." : PRINT
1814 PRINT "El lugar es identico a la pelicula. Ves a todos los jovenes bailando, la decoracion del oceano, la ropa de los 50s y ves a los dobles de GEORGE Y LORRAINE de esta dimension. Son muy parecidos a los actores!" : PRINT
1815 PRINT "En ese momento comienza a sonar Johnny B. Goode de Chuck Berry! Claro! el MARTY de VOLVER AL FUTURO I esta tocando para que sus padres se enamoren! " : PRINT
1816 PRINT "Eso quiere decir que el otro MARTY esta escapando de BIFF y esta detras del escenario en este preciso momento. " : PRINT
1817 PRINT "MARTY es noqueado por una puerta y BIFF recupera el ALMANAQUE. No llegaste a tiempo... ahora hay que arrebatarselo a BIFF." : PRINT : GOSUB 9100
1818 PRINT "Despertas a MARTY y le decis que sos amigo de CALEB... el nombre de MARTY en esta dimension es MATHEW. " : PRINT
1819 PRINT "MATHEW y vos llaman a CALEB usando un walkie talkie como con el que jugabas en tu infancia." : PRINT
1820 PRINT "CALEB te dice que MATHEW no sabe nada de la fusion de las dimensiones y esta viviendo este bucle una y otra vez. " : PRINT
1821 PRINT "No debes mencionarle nada al respecto. Lo contrario podria causar una ruptura del espacio interdimensional." : PRINT
1822 PRINT "Los tres se suben al DELOREAN para alcanzar a BIFF en su auto. " : PRINT : GOSUB 9100
1823 PRINT "MATHEW toma la patineta voladora y se baja del auto para recuperar el ALMANAQUE. " : PRINT
1824 PRINT "Ya sabes que pasa despues y CALEB también. Ya vivio este bucle antes." : PRINT
1825 PRINT "Te bajas del DeLorean mas adelante y esperas que MATHEW recupere el ALMANAQUE, sea rescatado por CALEB y el doble de BIFF choque nuevamente contra un camion de estiercol." : PRINT
1826 PRINT "Le pedis a MATHEW el almanaque pero el quiere quemarlo." : PRINT
1827 PRINT "Tratas de explicarle que lo necesitas para volver a tu tiempo. Inventas que vos tambien sos un viajero del tiempo para convencerlo sin revelar nada del viaje interdimensional." : PRINT
1828 PRINT "MATHEW sigue negandose. El quiere prevenir el futuro en el que su padre esta muerto, BIFF es asquerosamente rico y su madre esta casada con el." : PRINT
1829 PRINT
1830 COLOR CINFO : PRINT "1. Tomar el almanaque a la fuerza"
1831 COLOR CINFO : PRINT "2. Dejar que MATHEW queme el almanaque y buscar un objeto alternativo"
1897 SCENEA = 17
1898 SCENEB = 18
1899 RETURN 299


1900 REM ---- SCENE 10 ----
2000 REM ---- SCENE 11 ----
2100 REM ---- SCENE 12 ----
2200 REM ---- SCENE 13 ----
2300 REM ---- SCENE 14 ----
2400 REM ---- SCENE 15 ----
2500 REM ---- SCENE 16 ----

2600 REM ---- SCENE 17 ----
2601 CLS
2602 PRINT "MATHEW no lo sabe, pero vos estas seguro que no haras nada con el ALMANAQUE que lo perjudique. " : PRINT
2603 PRINT "Forcejeas con el por el ALMANAQUE y logras quitarselo. No es facil luchar contra un idolo de toda tu vida!" : PRINT
2604 PRINT "Sin embargo estas muy motivado y logras imponerte. De un golpe final knockeas a MATHEW y recuperas el ALMANAQUE." : PRINT
2605 PRINT "Y ahora... que?" : PRINT
2606 PRINT "Luego de unos segundos comenzas a desvanecerte como cuando el capitan PICARD y REINER se teletransportaban a explorar un planeta extrano en STAR TREK NEXT GENERATION." : PRINT

2697 COLOR CINFO : PRINT "1. Audiencia con el coleccionista"
2698 SCENEA = 21 : OPTIONB = 1
2699 RETURN 299

2700 REM ---- SCENE 18 ----
2701 CLS
2702 PRINT "MATHEW se ve muy decidido. No queres pelear con el para obtener el almanaque. Seguramente haya otro objeto que puedas llevar al coleccionista." : PRINT
2703 PRINT "Tal y como en la pelicula MATHEW quema el ALMANAQUE y CALEB es golpeado por un rayo que lo envia al viejo oeste." : PRINT
2704 PRINT "La tormenta que desato el rayo empapa a ambos." : PRINT
2705 PRINT "En ese momento llega un cartero para entregar la carta que informa a MATHEW que el Doc. esta vivo! " : PRINT
2706 PRINT "El cartero tiene otra carta a nombre de "USERNAME$"." : PRINT
2707 PRINT "Tu carta dice:" : PRINT : GOSUB 9100
2708 PRINT "No pudiste recuperar el objeto de coleccion que queria. Fallaste mi prueba. Quedaras atrapado en esta DIMENSION para siempre." : PRINT
2709 PRINT "Firmado EL COLECCIONISTA." : PRINT
2797 PRINT
2798 GOSUB 9110 : REM -- GAMEOVER --
2799 RETURN


2800 REM ---- SCENE 19 ----
2900 REM ---- SCENE 20 ----

3000 REM ---- SCENE 21 ----
3001 CLS
3002 PRINT "Tu cuerpo se materializa en el lugar de tus suenos. " : PRINT
3003 PRINT "Es como si toda la cultura pop de tu infancia estuviera colgando de las paredes y en las estanterias." : PRINT
3004 PRINT "Aqui hay de todo VHS, videograbadoras, laser discs, consolas de videojuegos, munecos, PCs retro, juegos bigbox, figuritas, computadoras retro y mas. No falta nada!" : PRINT
3005 PRINT "Hacia el frente hay una gran escalera de tres colores. Al final de cada color hay como un campo de fuerza que claramente impide el paso." : PRINT
3006 PRINT "Te recuerda al campo de fuerza que impedia el paso a OBI WAN KENOBI en su pelea con DARTH MAUL en EPISODIO I." : PRINT
3007 PRINT "En los escalones tambien hay numeros: 1, 2 y 3." : PRINT : GOSUB 9100
3008 PRINT "Te acercas hacia el primer conjunto de escalones de color verde y miras hacia arriba. Hay una luz cegadora en la cima de la escalera, pero llegas a ver una figura sentada." : PRINT
3009 PRINT "- Gracias por mi nuevo objeto de coleccion. Dice EL COLECCIONISTA. " : PRINT
3010 PRINT "En ese momento el objeto que le trajiste desaparece de tus manos y se materializa en una de las estanterias." : PRINT
3011 PRINT "- Ahora debes superar una ultima prueba. Si contestas bien estas 3 preguntas podras regresar a tu dimension con la ultima de mis creaciones. Un guion para una nueva pelicula que te hara rico y famoso." : PRINT
3012 PRINT "La primera pregunta es" : PRINT
3013 PRINT "- En que ano se publico el primer arcade de STREET FIGHTER 2?" : PRINT

3095 COLOR CINFO : PRINT "1. 1990"
3096 COLOR CINFO : PRINT "2. 1991"
3097 SCENEA = 23 
3098 SCENEB = 22 : OPTIONB = 2
3099 RETURN 299


3100 REM ---- SCENE 22 ----
3101 CLS
3102 PRINT "- Excelente. Conestaste bien mi primera pregunta." : PRINT
3103 PRINT "El campo de fuerza que te impedia el paso entre los escalones verdes desaparece. Ya podes subir hasta los escalones amarillos que tienen el numero 2." : PRINT
3104 PRINT "- Es hora de mi segunda pregunta:" : PRINT
3105 PRINT "- Como se llama el creador del TETRIS?" : PRINT

3195 COLOR CINFO : PRINT "1. Dimitri Antonov"
3196 COLOR CINFO : PRINT "2. Alekséi Leonídovich Pázhitnov"
3197 SCENEA = 25 
3198 SCENEB = 24
3199 RETURN 299

3200 REM ---- SCENE 23 ----
3201 CLS
3202 PRINT "No, el primer arcade de STREET FIGHTER 2 se publico en 1991." : PRINT
3203 PRINT "No podes creer como te equivocaste en esta pregunta! Deben haber sido los nervios!" : PRINT
3204 PRINT "EL COLECCIONISTA toma su baculo, te lanza un hechizo y te atrapa en la DIMENSION de JUMANJI donde tendras que vivir en la selva hasta que alguien saque un 5 o un 8." : PRINT
3297 PRINT
3298 GOSUB 9110 : REM -- GAMEOVER --
3299 RETURN 299

3300 REM ---- SCENE 24 ----
3400 REM ---- SCENE 25 ----
3500 REM ---- SCENE 26 ----
3600 REM ---- SCENE 27 ----
3700 REM ---- SCENE 28 ----
3800 REM ---- SCENE 29 ----
3900 REM ---- SCENE 30 ----

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



9900 PRINT 
9901 COLOR CERROR : PRINT "No es una opcion valida"
9902 PRINT 
9903 IF GAMEOVER = 1 THEN RETURN 9114 ELSE RETURN 116



