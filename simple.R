#10 Sep 2012
require(wordcloud)
require(tm)
require(RColorBrewer)
#Based on http://biostat.jhsph.edu/~jleek/code/sotu2011-2012comparison.R


#Common options
pal <- brewer.pal(6,"Dark2")
pal <- pal[-(1)]
words_to_remove <- c("años", "puerto", "rico", "año", "gobierno", "departamento", "programa", "programas")


#================================================================
# Party
#================================================================

party_platform = c("MENSAJE DEL PRESIDENTE
	Mejorando Tu Presente, Asegurando Tu Futuro
	Hermanas y hermanos puertorriqueños:
	Hace escasamente cuatro años, nos unimos para juntos
	resolver la crisis de la Década Perdida y encaminar a
	Puerto Rico por la ruta correcta, fuerte económicamente,
	con gente trabajando, produciendo, exportando y ayudando
	a nuestro prójimo. Cumpliendo ese compromiso, nos
	dimos a la tarea inmediata de trabajar incansablemente
	ante los retos históricos, algunos desconocidos, que nos
	encontramos al llegar.
	A través de éstos tres años y medio, debemos estar satisfechos con lo que hemos alcanzado
	porque tú has logrado reencaminar a Puerto Rico en la dirección correcta. Tú sabes que hemos
	actuado responsablemente, haciendo lo que había que hacer…y también sabes que tenemos que
	continuar adelante juntos.
	Vivimos y competimos dentro de un mundo global. Sabes que en muchos países la gente sigue
	sufriendo profundamente porque sus líderes no actuaron a tiempo para corregir los errores.
	Mientras tanto, en Puerto Rico ya retomamos el camino del progreso y comenzamos a sentir la
	mejoría. Y aunque falta camino por recorrer y metas que alcanzar, la situación en Puerto Rico
	está mucho mejor que en el 2009. Vamos a seguir mejorando este año y dejamos lo peor atrás
	y como pueblo miramos hacia el futuro con esperanza.
	En los pasados años, rescatamos a nuestros estudiantes de escuela pública de una larga
	sindicatura federal y ya comenzamos una nueva era en la que prepararemos a nuestros niños
	para el siglo 21. Además, sobre 29,000 familias puertorriqueñas lograron su sueño de adquirir
	un nuevo hogar gracias a nuestro Impulso a la Vivienda, ayudándonos a sobrepasar el nivel
	de ventas de casas en todos los Estados Unidos. El aumento en ventas al detal y de autos
	también confirma que te sientes más confiado en que la economía está mejorando. Manos
	puertorriqueñas exportaron y vendieron más que nunca en nuestra historia. Nuestros pequeños
	y medianos negocios están compitiendo y sobresaliendo, demostrado por más de diez meses
	corridos con reducciones consistentes en las quiebras registradas. Nuevos negocios y empleos
	están naciendo, según lo demuestra el aumento en el número de nuevas corporaciones
	registradas por más de tres años corridos. Nuestra manufactura se está expandiendo, la
	construcción ha comenzado a dar noticias positivas, el turismo está reflejando crecimiento
	positivo en todos los indicadores principales, más visitantes, más vuelos, más pasajeros de
	crucero y más habitaciones llenas en hoteles y paradores. Y finalmente, por primera vez en
	nuestra historia, tendremos un aeropuerto internacional en San Juan, con servicios y facilidades
	de clase mundial, digno de todos los puertorriqueños.
	El resultado de este crecimiento y recuperación es que más puertorriqueños están logrando
	ganarse su sustento trabajando, consiguiendo empleos dignos y sostenibles. El número total
	de puertorriqueños empleados creció en el 2011 por primera vez desde febrero de 2007. Y el
	desempleo está bajando de 15 por ciento a 13 por ciento y seguimos potenciando el desarrollo
	económico logrando mayores oportunidades para todos los puertorriqueños. Desde diciembre de
	
	1
	
	
	
	2011 nuestra economía entró, y se ha mantenido, en terreno positivo por primera vez desde marzo
	2006, cuando la pasada administración nos cerró el gobierno.
	Este progreso y recuperación no ocurre por accidente ni casualidad. Ocurre porque tuvimos la
	valentía y la disposición de hacer lo correcto, no lo fácil. Ocurre porque trabajamos en equipo,
	contigo y con el apoyo de nuestra Asamblea Legislativa. Ocurre porque tuvimos buenas ideas que
	pusimos en práctica junto a un PUEBLO QUE NO SE RINDE.
	La pregunta que tenemos como pueblo, camino a las elecciones de 2012, es sencilla: ¿seguimos
	en la dirección de la mejoría, el progreso y las oportunidades o nos arriesgamos a regresar al
	camino que nos llevó a la crisis de la que tanto esfuerzo nos ha costado salir? La respuesta
	también es sencilla: no podemos echar para atrás, si queremos alcanzar el sueño de un mejor
	Puerto Rico. Tu familia, tus hijos, tus nietos se merecen más, mucho más.
	Ahora tenemos que enfocarnos en los retos que nos quedan por delante, porque aún cuando
	tenemos logros de los cuales estar orgullosos, el camino requiere que Puerto Rico tenga un
	liderato responsable, maduro, con experiencia y el carácter para tomar las decisiones correctas
	sin titubeos, por el bien de nuestro pueblo. Esto es nuestro deber patriótico. Esta próxima
	elección es más importante para Puerto Rico que la elección de 2008, precisamente porque
	nuestro pueblo no puede arriesgar lo que hemos progresado ni a volver al pasado, con los mismos
	que nos sumieron en la Década Perdida.
	Juntos, tú y yo, hemos demostrado que los puertorriqueños sí podemos…y sabemos que ni tú
	ni yo nos rendimos. Puerto Rico tiene un futuro brillante. Sigamos trabajando sin parar, con el
	espíritu emprendedor, laborioso, sensible y optimista que nos distingue como pueblo. ¡Sigamos
	avanzando!
	Con renovado aprecio y compromiso absoluto,
	
	Luis G. Fortuño
	Presidente
	
	2
	
	
	
	MENSAJE DE TU COMISIONADO RESIDENTE
	Pedro Pierluisi
	Hermana y hermano puertorriqueño,
	Hace casi cuatro años nos diste la honrosa oportunidad de
	servirte y de dirigir los destinos de Puerto Rico. Encontramos
	un gobierno quebrado, la economía en recesión y el crédito
	de nuestra isla a punto de chatarra. Nuestro Gobernador
	Luis Fortuño se enrolló las mangas y comenzó a enderezar el
	rumbo que llevaba Puerto Rico. Han sido años de muchos
	retos pero también de importantes logros.
	Tradicionalmente, el Partido Nuevo Progresista ha sido el
	partido que le ha traído el progreso a Puerto Rico. Y una vez más, la administración Fortuño
	ha tenido que venir a arreglar los entuertos de ocho años perdidos bajo el PPD. En momentos
	difíciles es cuando más necesitamos un gobernador responsable, competente y valiente. Eso
	es lo que hemos tenido en este cuatrienio y eso es que lo queremos para los próximos cuatro
	años.
	Liderado por el Gobernador, nuevamente el PNP te ofrece un programa de gobierno visionario y
	pragmático para continuar la obra de progreso que todos los puertorriqueños se merecen. Este
	documento se convertirá en el plan de trabajo que garantizará un mejor futuro Por Puerto Rico.
	El 6 de noviembre tendrás la oportunidad de hablar claro y de llevar un mensaje contundente
	sobre las aspiraciones de nuestro pueblo. Podrás escoger volver al pasado, a entregarle las
	riendas del gobierno a los que lo quebraron, o seguir por el camino correcto bajo el liderato de
	Luis Fortuño quien nos ha llevado a experimentar crecimiento económico por primera vez en
	seis años. Podrás escoger entre regresar a las políticas irresponsables y las promesas falsas, o
	continuar trabajando por tu seguridad, la educación de tus hijos y el progreso real que te ofrece
	el Partido Nuevo Progresista.
	Finalmente, el 6 de noviembre también podrás enviar un mensaje contundente a favor del ideal
	que nos une, la Estadidad. Es importante que Puerto Rico termine con el territorio y le digamos
	NO a la condición política que tanto limita nuestro desarrollo económico. Y entonces podremos
	escoger la Estadidad para por primera vez ir a Washington con una voz fuerte respaldada por la
	voluntad de nuestro pueblo que aspira a la igualdad.
	Luis Fortuño y yo contamos contigo porque juntos seguimos haciendo más por Puerto Rico.
	Un abrazo,
	
	Pedro Pierluisi
	3
	
	
	
	PROHIBIDO OLVIDAR
	
	No podemos dejar que Puerto Rico regrese a la
	Década Perdida. Como todos sabemos, es demasiado
	riesgo para Puerto Rico
	Gobernador Luis G. Fortuño, Junio 2012
	
	Lo que heredamos en el 2009
	Como pueblo, tenemos que conocer nuestra historia para no repetir los errores del pasado…
	Aquellos que no conocen esa historia, o la niegan, están destinados a repetirla. No son excusas,
	son hechos. Hechos que causaron mucho daño en lo que hoy se conoce como la Década
	Perdida…y por eso es que está prohibido olvidar…
	El récord de las dos pasadas administraciones del Partido Popular Democrático es claro. Todos
	los puertorriqueños lo vivimos y lo sufrimos. Recordamos cómo el optimismo y progreso de los
	años noventa fue transformado primeramente en pesimismo y estancamiento y luego, en un
	total retroceso que casi nos llevó al abismo.")


ds <- DataframeSource(data.frame(c(party_platform)))

corp = Corpus(ds)
#Remove punctuation
corp = tm_map(corp,removePunctuation)
#convert to lowercase
corp = tm_map(corp,tolower)
#Remove numbers
corp = tm_map(corp,removeNumbers)
#Remove useless words in spanish
corp = tm_map(corp, function(x){removeWords(x,stopwords("es"))})
corp = tm_map(corp,function(x){removeWords(x,words_to_remove)})
term.matrix <- TermDocumentMatrix(corp)
term.matrix <- as.matrix(term.matrix)
v <- sort(rowSums(term.matrix),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)
#wordcloud(d$word,d$freq)

#Use only the 200 words most used
minwordcount = d$freq[200]

#Write to a file
png(file="file.png", height=1800, width=1800)
	wordcloud(d$word,d$freq,c(10,1),minwordcount,,FALSE,FALSE,.15,pal)
dev.off()

#Trim the image
system("convert file.png -trim -trim +repage file1.png")
system("rm file.png")
system("mv file1.png file.png")

sink("file.txt")
for (i in 1:dim(d)[1]) {
	cat(paste(i, d$word[i], d$freq[i], sep=","))
	cat("\n")
}
sink()
