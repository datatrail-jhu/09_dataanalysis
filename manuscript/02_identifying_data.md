# ¿Tengo los datos que necesito?

Después de identificar su problema y transformarlo en una pregunta de ciencia de datos, su próximo paso es identificar y asegurarse de tener acceso a los datos necesarios para responder a la pregunta. Sin embargo, una buena información puede ser difícil de conseguir. Dependiendo de su pregunta, puede ser costoso o simplemente imposible obtener los datos que necesita.

Por ejemplo, considere querer saber la respuesta a la pregunta "¿El dinero hace felices a las personas?" Una forma de obtener datos para su problema es dar dinero a las personas y recopilar datos de esas mismas personas más adelante para ver si el dinero que recibieron se hizo más feliz. Primero, esto no es un experimento barato, por lo que es posible que no tenga el dinero para hacer esto. En segundo lugar, ¿cómo querrías *medir la felicidad*? No puedes simplemente pisar una escala y medir la felicidad de alguien. Si cada individuo reportara su felicidad en una escala del 1 al 10, una persona puede calificar su felicidad con un 8. Otra persona, que podría ser tan feliz como la persona que calificó su felicidad con un 8, puede calificar su felicidad con a 6. Puede ver rápidamente cómo obtener los datos correctos para responder a esta pregunta puede no ser tan simple.

![¿El dinero hace feliz a la gente?](images/02_identifying_data/02_dataanalysis_identifying_data-3.png)

En otra situación, ¿qué sucede si está interesado en responder la pregunta "¿Los mensajes de texto mientras se conduce causan accidentes?" No sería ético realizar un estudio y decirle a las personas que escriban mensajes de texto mientras conducen y luego determinar si los que enviaron mensajes de texto tuvieron más accidentes de atención. No está bien diseñar experimentos que, a sabiendas, pongan a los participantes en riesgo de sufrir daños.

![¿Los mensajes de texto mientras se conduce causan accidentes?](images/02_identifying_data/02_dataanalysis_identifying_data-5.png)

Por lo tanto, aunque cada uno de nosotros genera datos diariamente a través de las aplicaciones que usamos o a través de nuestra actividad en las plataformas de redes sociales, a menudo los datos más fácilmente disponibles son *no*los datos que necesitamos para responder las preguntas que más nos interesa responder. En esta lección, analizaremos**cómo determinar si tiene o no los datos**necesita responder la pregunta que tiene,**limitaciones de los datos**que tiene,**consideraciones que debe hacer**cuando aún no tiene los datos que necesita, y qué hacer para**obtener los datos que necesita**.

### La pregunta de la ciencia de datos

En la última lección, discutimos cómo resolver un problema que le interesa entender mejor y convertirlo en una pregunta de ciencia de datos. Específicamente, la última lección miró a [David Robinson](http://varianceexplained.org/about/) del [blog post analizando los tweets de Donald Trump](http://varianceexplained.org/r/trump-tweets/). David Robinson se dispuso a responder la pregunta específica **"¿En qué se diferencian los tweets de la cuenta _@realDonaldTrump_ entre los que se publicaron con un iPhone y los que se publicaron con un Android?"** Antes de responder a la pregunta, David Robinson determinó qué / los datos que se necesitarían recopilar, las medidas que necesitaría, las limitaciones del análisis y el tipo de análisis que usaría.

En esta lección, vamos a centrarnos realmente en la segunda y tercera pregunta. ¿Qué datos necesita para responder su pregunta de ciencia de datos y qué limitaciones tienen estos datos? Nos centraremos en los detalles de cómo obtener los datos necesarios para responder a la pregunta de interés. Repasaremos este proceso nuevamente usando la [publicación de blog de Trump Tweets](http://varianceexplained.org/r/trump-tweets/) como ejemplo.

![Trump Tweets Blog Post](images/02_identifying_data/02_dataanalysis_identifying_data-9.png)

### El conjunto de datos perfecto: los datos que queremos

Una vez que determine la pregunta de interés de la ciencia de datos, es útil **visualizar el conjunto de datos perfecto**. Es probable que este conjunto de datos no exista en el mundo real, pero nuestro objetivo será obtener datos que coincidan con este conjunto de datos óptimo*lo más cerca posible*.

Así responder a la pregunta.

> ¿Los tweets en la cuenta _@realDonaldTrump_ difieren entre los publicados con un iPhone y los publicados con Android? ¿Son los tweets de Android más enojados y más negativos?

lo ideal sería que quisiéramos un conjunto de datos donde cada fila sea un tweet diferente con cada fila que contenga información sobre las siguientes variables:

* `date` - fecha en que se escribió el tweet
* `time` - la hora en que se publicó el tweet
* `os`: el sistema operativo de donde proviene el tweet (Android o iPhone)
* `author`- autor de cada tweet
* `location` - donde estaba el autor cuando se escribió el tweet
* `tweet`: lo que dijo el tweet
* `censored` - si el tweet se eliminó o no más tarde
* `censored_date` - fecha en que se eliminó el tweet
* `censored_time`: hora en que se eliminó el tweet
* `anger` - alguna medida de cuán enojado y negativo está el tweet

Además, en un mundo perfecto, habríamos twitteado todos los tweets de _@realDonaldTrump_.

¡Tener todos estos datos en este formato nos permitiría responder la pregunta de interés!

### Los datos que tenemos

*Pero*, los datos que*tenemos*normalmente no son*exactamente*los datos que*queremos*.

En este caso, David Robinson pudo usar el paquete `twitteR` y la API de Twitter para obtener varios tweets de Donald Trump. En última instancia, el conjunto de datos que utilizó para su análisis contenía 628 tweets de un iPhone y 762 tweets de un Android. Eso no es casi *todos*los tweets de esta cuenta; sin embargo, la API de Twitter limita la cantidad de tweets que se pueden obtener. Ya, los**datos que tenemos no son los datos óptimos que queríamos**, pero eso está bien.

Además, los datos de la API de Twitter *no* incluyen el `author`, la ubicación del autor, ni ninguna información sobre los tweets eliminados. Una vez más, los datos que tenemos son muy diferentes de nuestros datos óptimos.

Finalmente, el conjunto de datos no incluye ninguna medida de qué tan enojado o negativo está el contenido de los tweets. David tendrá que usar los tweets para determinar eso durante su análisis.

![Los datos que tenemos](images/02_identifying_data/02_dataanalysis_identifying_data-12.png)

Sin embargo, David tenía información sobre este subconjunto de tweets, incluida la fecha, la hora, el sistema operativo y lo que decía el tweet. Si bien no es exactamente la información que probablemente le hubiera gustado tener, ¡David todavía podía usar estos datos al tiempo que notaba las limitaciones de los datos en su blog!

### Los datos que podemos obtener (fácilmente)

En este caso, David Robinson tenía suficientes datos para responder la pregunta que le interesaba. Sin embargo, a menudo es posible que no tenga los datos que necesita desde el principio. Después de ver los datos que tiene, vale la pena considerar si hay datos que necesita y a los que puede acceder fácilmente.

Dependiendo de su pregunta de ciencia de datos, puede considerar obtener datos de cualquiera de las fuentes discutidas en el curso Obtención de datos. Por ejemplo, puedes mirar datos de:

* Datos del gobierno
* APIs
* Abrir conjuntos de datos (como los de [Kaggle](www.kaggle.com) o [data.world](data.world))
* tu compañía

Todos estos son ejemplos de lugares donde normalmente es bastante fácil obtener datos. E, idealmente, siempre que sea posible, querrá trabajar con **datos sin procesar**: datos que aún no se han limpiado (es decir, los valores atípicos aún no se han eliminado) para que sepa que tiene el conjunto de datos más completo de el comienzo. Luego puede limpiar y disputar los datos después de obtener los datos en bruto.

Sin embargo, ¿qué sucede si los datos que desea no existen en ninguno de estos lugares? Cuando los datos no están disponibles, depende de usted (su equipo, su jefe o su empresa) recopilar los datos.

### Recopilación de datos

En la práctica, los datos se definen por la forma en que se recopilan. Si bien no siempre depende de usted determinar cómo se recopilarán los datos, es importante comprender las diferentes formas en que se recopilan los datos:

* ___ Se recopilan datos de observación de una muestra de la población de interés más grande. Por ejemplo, los datos sobre el gasto de los hogares en los Estados Unidos generalmente se obtienen de una muestra de hogares estadounidenses. Los datos de observación pueden estar en las siguientes formas:

  * ___ Los datos transversales se recopilan de una muestra de la mayor población de interés en un momento específico en el tiempo*.

  * ___Los datos longitudinales se recopilan de una muestra de la población de interés pero *en múltiples puntos en el tiempo*. Por ejemplo, los datos sobre el efecto del efecto de los compañeros en la escuela sobre los resultados de la vida se miden en múltiples puntos de la vida de los individuos.

  * ___ Los datos del panel se recolectan de una muestra de la población de interés *en varios puntos en el tiempo*, pero la muestra*puede cambiar de un punto en el tiempo a otro*. Por ejemplo, si los datos se recopilan en 1000 individuos en el año 2010, en 2015 los datos se pueden recopilar de 1000 individuos que pueden o no coincidir con la muestra de 2010.

* ___ Los datos experimentales se recopilan a través de un experimento aleatorio. En un experimento, los investigadores dividen la muestra en o más (que se elige de la población más grande de interés) y asignan el tratamiento (digamos la vacuna) a un grupo mientras que el grupo no recibe tratamiento. Los resultados son observados y comparados. Esto difiere de los datos de observación, que involucran la recopilación de datos sin cambiar ninguna de las condiciones existentes.
   
Si puede generar el conjunto de datos que necesita o recopilar los datos que desea responder a su pregunta, entonces está todo listo. Pero, ¿qué pasa si hay limitaciones para que usted obtenga esos datos?

### Los datos que no podemos obtener

A menudo, habrá datos que le encantaría tener que responder a su pregunta de ciencia de datos, pero no podrá obtener esos datos. Hay una serie de limitaciones para la recopilación de datos. Discutiremos algunos de los más comunes aquí.

#### Recursos limitados

En la introducción de esta lección, discutimos un experimento donde daríamos dinero a las personas y mediríamos su felicidad. Sin embargo, si no tuviéramos el dinero para realizar este experimento, no podríamos realizar este experimento y, por lo tanto, **dinero** sería un recurso limitado.

Sin embargo, el dinero no es el único factor limitante. ¿Qué sucede si necesita saber la respuesta a su pregunta el próximo mes pero le tomaría un año recopilar los datos necesarios? En este caso **tiempo** sería un recurso limitado.

Alternativamente, qué sucede si otra compañía tenía los datos que necesitaba, pero la empresa para la que trabaja es un competidor. En este caso, probablemente no compartirían los datos contigo. **El acceso a los datos** también puede ser limitante.

#### Limitaciones éticas

En la introducción de esta lección, también hablamos sobre el caso en el que queríamos saber si los mensajes de texto aumentan el número de accidentes. Mencionamos que no podríamos llevar a cabo el experimento de decirle a las personas que escriban mensajes de texto cuando están conduciendo y luego ver si esas personas sufren más accidentes debido a limitaciones éticas. No es ético recopilar datos a sabiendas, lo que pone a las personas en peligro.

Sin embargo, también hay situaciones más matizadas. ¿Qué pasa si desea recopilar datos sobre la salud reproductiva. Es posible que desee saber *todo*sobre el historial médico de cada madre, incluida información muy confidencial y personal. Por ejemplo, es posible que desee saber si cada individuo en su conjunto de datos ha tenido un aborto alguna vez. Las preguntas sensibles e invasivas solo se deben hacer cuando sea absolutamente necesario. Además, estos datos*siempre* deberán almacenarse de forma segura, y solo podrán solicitarse con la aprobación y el comité de supervisión (como una Junta de Revisión Institucional). Por lo tanto, aunque puede ser útil obtener información sobre ciertas variables, puede ser inapropiado o demasiado invasivo para obtener esta información.

#### Seguridad

Se mencionó brevemente más arriba, pero para explicarlo realmente aquí: no todos los datos están disponibles públicamente y no todos los datos *deben* estar públicamente disponibles. Los datos personales y los datos que contienen información confidencial deben protegerse adecuadamente y no pueden compartirse libremente. Si bien los datos que desea pueden existir en algún lugar, es posible que no tenga acceso a ellos, ni se le otorgará acceso a ellos por razones de seguridad. En estos casos, no podrá utilizar estos datos.

### Preguntas para hacernos a nosotros mismos

Si tiene problemas para obtener o recopilar los datos que necesita para responder a su pregunta, hay una serie de preguntas que debe hacerse:

* ¿Puedo **cambiar la pregunta** de tal manera que aún sea interesante pero que pueda responderse con los datos que tengo?
* Si uso los datos a los que tengo acceso, **¿vale la pena hacer el proyecto**?
* **¿Será factible el proyecto** si lo cambio?
* Si aún es posible, necesitaré **volver a trabajar la pregunta y rediseñar mi plan de recopilación de datos**. ¿Cómo será eso?

En el caso de que decida cambiar la pregunta y determine que el proyecto aún vale la pena hacer en este momento, es importante volver al ejercicio para determinar qué datos tendrá de manera óptima, qué tiene y qué puede obtener. fácilmente para asegurarse de que no perderá el tiempo avanzando con el proyecto.

Sin embargo, en algunos casos, tendrá una pregunta muy interesante, pero no podrá hacer el proyecto dados los datos que tiene. En estas situaciones, guarde la idea para un momento posterior en el que pueda tener los recursos o el acceso a los datos que necesita y luego pase a la siguiente. Todos han tenido que abandonar proyectos en su carrera, y está bien seguir adelante. Es mucho mejor dejar un proyecto atrás en las etapas de planificación que pasar meses o años en un proyecto / análisis que estaba condenado desde el principio.

### ¿Son los datos que tenemos buenos datos?

Dicho todo esto, una vez que tenga su pregunta de ciencia de datos *y*los datos que desea utilizar, deberá determinar**si los datos son lo suficientemente buenos**. Si no lo son, antes de pasar horas en él, abandone y busque otras fuentes de datos.

#### La necesidad de disputar

Por ejemplo, los datos descargados de otros recursos a menudo necesitan ser limpiados y manipulados. (Nota: si los datos que obtiene, sin embargo, son preprocesados, ¡asegúrese de entender cómo se realizó el procesamiento!) Para limpiar sus datos, siempre querrá registrar los pasos que debe seguir para reformatear los datos. Sugerimos los siguientes pasos para verificar y ordenar los datos para su análisis. Asegurarse:

* cada variable forma una columna
* cada observación forma una fila
* cada tabla / archivo almacena datos sobre un tipo de observación (por ejemplo, personas / hospitales).
* Si las variables se recopilan de varias fuentes, se combinan correctamente.
* Los nombres de las columnas son fáciles de usar e informativos.
* Se han eliminado los errores aparentes en los datos.
* Los valores faltantes están formateados uniformemente y correctamente.
* Los valores variables son internamente consistentes.
* Se han añadido variables transformadas apropiadas.

Estos son los conceptos discutidos previamente en las lecciones de Tidying de datos en un curso anterior en este conjunto de cursos, por lo que muchos de ellos deberían ser familiares. Limpiar los datos para asegurarse de que el conjunto de datos esté en un formato ordenado, que todas las variables tengan un nombre apropiado y que los valores de hte dentro de cada variable sean lo que usted espera que sean, es un paso importante para determinar si los datos que tiene serán o no ser útil en responder a su pregunta de ciencia de datos Estos temas se tratarán más a fondo en las lecciones de Análisis descriptivo y Análisis exploratorio en las lecciones posteriores de este curso.

#### Cuando los datos no son buenos

Dicho todo esto, supongamos que tiene el conjunto de datos que contiene las variables que está buscando, y está ordenado y listo para su análisis. Siempre es bueno retroceder para asegurarse de que los datos sean los correctos antes de pasar horas y horas en su análisis. Entonces, hablemos de algunos de los problemas potenciales y comunes que las personas encuentran con sus datos.

##### El número de observaciones es demasiado pequeño

Sucede con bastante frecuencia que la recopilación de datos es costosa o no es fácil. Por ejemplo, en un estudio médico sobre el efecto de un medicamento en pacientes con enfermedad de Alzheimer, los investigadores estarán felices si pueden obtener una muestra de 100 personas. Estos estudios son costosos y es difícil encontrar voluntarios que se inscriban en el estudio. También es el caso de la mayoría de los experimentos sociales. Mientras que los datos están en todas partes, los datos que necesita pueden no estar. Por lo tanto, la mayoría de los científicos de datos en algún momento de su carrera enfrentan la maldición del tamaño pequeño de la muestra. El tamaño pequeño de la muestra hace que sea difícil confiar en los resultados de su análisis. Entonces, cuando puede, y es factible, **una muestra grande es preferible a una muestra pequeña**. Pero cuando su único conjunto de datos disponible para trabajar sea pequeño, deberá tenerlo en cuenta en su análisis. Aunque no los aprenderemos en este curso, existen métodos particulares para el análisis inferencial cuando el tamaño de la muestra es pequeño.

##### El conjunto de datos no contiene las variables exactas que está buscando

En el análisis de datos, es común que no siempre tenga lo que necesita. Es posible que necesite conocer el coeficiente intelectual de los individuos, pero todo lo que tiene es su GPA. Puede que tenga que entender el gasto en alimentos, pero tiene un gasto total. Es posible que necesite conocer la educación de los padres, pero todo lo que tiene es la cantidad de libros que posee la familia. Es frecuente que la variable que necesitamos en el análisis no exista en el conjunto de datos y no podamos medirla. En estos casos, nuestra mejor apuesta es encontrar las variables más cercanas a esa variable. Las variables que pueden ser de naturaleza diferente pero están altamente *correlacionadas*con (similar a) la variable de interés son las que se usan a menudo en tales casos. Estas variables son llamadas**variables proxy**.

Por ejemplo, si no tenemos educación parental en nuestro conjunto de datos, podemos usar la cantidad de libros que la familia tiene en su hogar como proxy. Aunque las dos variables son diferentes, están altamente correlacionadas (son muy similares), ya que los padres más educados tienden a tener más libros en casa. Entonces, en la mayoría de los casos en los que no puede tener la variable que necesita en su análisis, puede reemplazarla con un proxy. Una vez más, siempre debe tenerse en cuenta en su análisis por qué usó una variable proxy y qué variable se usó como su proxy.

##### Las variables en el conjunto de datos no se recogen en el mismo año

Imagine que queremos encontrar la relación entre el efecto de los precios de los taxis y el número de viajes en la ciudad de Nueva York. Queremos ver cómo reacciona la gente a los cambios de precios. Obtenemos datos sobre los precios de los taxis **en 2018**, pero solo tenemos datos sobre el**número de viajes de 2015**. ¿Pueden estas dos variables ser usadas juntas en nuestro análisis? Simplemente, no. Si queremos responder a esta pregunta, no podemos hacer coincidir estos dos conjuntos de datos. Si estamos usando los precios de 2018, también deberíamos encontrar el número de viajes**de 2018**. Desafortunadamente, muchas veces, este es un problema que te encontrarás. Tendrá que encontrar la manera de obtener los datos del mismo año o volver al tablero de dibujo y hacer una pregunta diferente. Este problema se puede ignorar solo en los casos en que estamos seguros de que las variables no cambian mucho de un año a otro.

##### El conjunto de datos no es representativo de la población que le interesa

Escuchará el término *muestra representativa*, pero ¿qué es? Antes de definir una muestra representativa, veamos qué es una población en términos estadísticos. Hemos usado la palabra "población" sin entrar realmente en su definición.

Una muestra es parte de una población. Una población, en general, es cada miembro del grupo de personas que nos interesa. A veces es posible recopilar datos para toda la población, como en el Censo de EE. UU., Pero en la mayoría de los casos, no podemos. Así que recopilamos datos solo sobre un subconjunto de la población. Por ejemplo, si estamos estudiando el efecto del consumo de azúcar en la diabetes, no podemos recopilar datos sobre toda la población de los Estados Unidos. En su lugar, recopilamos datos sobre una *muestra*de la*población*. Ahora que sabemos qué son la muestra y la población, volvamos a la definición de una muestra representativa.

Una **muestra representativa** es una muestra que refleja con precisión la población más grande. Por ejemplo, si la población es cada adulto en los Estados Unidos, la muestra incluye una proporción adecuada de hombres y mujeres, grupos raciales, grupos educativos, grupos de edad, grupos geográficos y grupos de ingresos. Si se supone que la población es cada adulto en los EE. UU., Entonces no puede recopilar datos sobre solo personas en California, o solo jóvenes, o solo hombres. Esta es la idea de una muestra representativa. Tiene que modelar la población más amplia en todos los aspectos importantes.

Te damos un ejemplo en política. Los postes telefónicos más recientes en los Estados Unidos han sido malos para predecir los resultados de las elecciones. ¿Por qué? Esto se debe a que al llamar a teléfonos fijos de personas no puede garantizar que tendrá una muestra representativa de la población en edad de votar, ya que las personas más jóvenes probablemente no tengan teléfonos fijos. Por lo tanto, la mayoría de las encuestas telefónicas están sesgadas hacia los adultos mayores.

El muestreo aleatorio es un enfoque necesario para tener una muestra representativa. El muestreo aleatorio en la recopilación de datos significa que usted elige aleatoriamente a sus sujetos y no elige quién llega a estar en la muestra y quién no. En el muestreo aleatorio, seleccionas tus sujetos de la población al azar, como en base a un lanzamiento de moneda. Los siguientes son ejemplos de muestreo pésimo:

* Un proyecto de investigación sobre las actitudes hacia la posesión de armas a través de una encuesta enviada a los suscriptores de una revista relacionada con armas (los suscriptores de la revista sobre armas no son representativos de la población general, y la muestra está muy sesgada)
* Un proyecto de investigación sobre opciones de programas de televisión mirando los intereses de la televisión de Facebook (no todos tienen una cuenta de Facebook)
* Un estudio de investigación sobre comidas escolares y resultados educativos realizado en un vecindario con residentes principalmente de un grupo racial (la comida escolar puede tener un efecto diferente en diferentes ingresos y grupos étnicos)
* Un investigador encuesta a las personas mientras caminan por la calle.
* El presentador de un programa de televisión solicita a los espectadores del programa que visiten el sitio web de la red y respondan una encuesta.

Con esta lógica, la mayoría de las encuestas en línea o encuestas en las redes sociales deben tomarse con un grano de sal porque no todos los miembros de todos los grupos sociales tienen una presentación en línea o usan las redes sociales.

La moraleja de la historia es que **siempre piensa en lo que es tu población**. Tu población cambiará de un proyecto a otro. Si está investigando el efecto del hábito de fumar en las mujeres embarazadas, entonces su población es, además, mujeres embarazadas (y no hombres). Después de conocer a su población, siempre deseará recopilar datos de una muestra que sea representativa de su población. El muestreo aleatorio ayuda.

Y, por último, si no tiene más remedio que trabajar con un conjunto de datos que no se recopila de forma aleatoria y está sesgado, tenga cuidado de no generalizar sus resultados a toda la población. Si recopila datos sobre mujeres embarazadas de 18 a 24 años, no puede generalizar sus resultados a mujeres mayores. Si recopila datos de las actitudes políticas de los residentes de Washington, DC, no puede decir nada sobre toda la nación.

##### Algunas variables en el conjunto de datos se miden con error

Otra maldición de un conjunto de datos es el error de medición. En forma simple, el error de medición se refiere a la medición incorrecta de las variables en su muestra. Al igual que la medición de cosas en el mundo físico viene con un error (como medir la distancia, la temperatura exacta, el IMC, etc.), las variables de medición en el contexto social pueden generar un error. Cuando le preguntas a la gente cuántos libros han leído en el último año, no todos lo recuerdan correctamente. De manera similar, puede tener un error de medición cuando le pregunta a las personas sobre sus ingresos. Un buen investigador reconoce el error de medición en los datos antes de cualquier análisis y lo tiene en cuenta durante su análisis.

##### Las variables están confundidas

¿Qué pasaría si estuviera interesado en determinar qué variables conducen a aumentos en el crimen? Para hacerlo, obtiene datos de una ciudad de los EE. UU. Con muchas variables y tasas de delincuencia diferentes para un período de tiempo determinado. Luego, disputarías los datos y al principio verías la relación entre las ventas de paletas y las tasas de criminalidad. Verá que mientras más paletas se vendan, mayor será la tasa de criminalidad.

![paletas y tasa de criminalidad](images/02_identifying_data/02_dataanalysis_identifying_data-45.png)

Tu primer pensamiento puede ser que las paletas conducen a que se cometan crímenes. Sin embargo, hay un confusor que no está siendo considerado!

Veremos en detalle qué factores de confusión se encuentran en la lección sobre Análisis inferencial, pero en breve **los factores de confusión**son otras variables que pueden afectar nuestro resultado, pero también están relacionadas con (tienen una relación con) nuestra principal variable de interés. En el ejemplo de paleta, la temperatura es un factor de confusión importante. Ocurren más delitos cuando hace calor*y* se venden más paletas. No son los popsicles que conducen la relación. En cambio, la temperatura es probablemente el culpable.

![la temperatura es un factor de confusión](images/02_identifying_data/02_dataanalysis_identifying_data-46.png)

Por lo tanto, si estamos realmente interesados ​​en lo que aumenta la tasa de criminalidad, también debemos considerar la temperatura. Por lo tanto, es importante comprender la relación entre las variables en su conjunto de datos. Esto será discutido más a fondo en la lección de Análisis Exploratorio.
  

### Un estudio de caso: ¿Por qué las encuestas estaban tan equivocadas sobre las elecciones de 2016 en los Estados Unidos?

Los resultados de las elecciones presidenciales de los EE. UU. De 2016 fueron una sorpresa para muchos medios de comunicación y expertos en encuestas. La mayoría de las encuestas proyectaron consistentemente que Hillary Clinton derrotaría a Donald Trump. Los pronosticadores electorales colocan a Clinton en una posición ganadora con una posibilidad tan alta como 70-99 por ciento. Las encuestas son generalmente confiables, pero ¿qué pasó en 2016?

![¿Por qué las encuestas estaban tan equivocadas acerca de las elecciones de 2016 en Estados Unidos?](images/02_identifying_data/02_dataanalysis_identifying_data-47.png)

Todavía no sabemos toda la historia. Pero para empezar, el único tema que todos están de acuerdo es que los datos utilizados en los algoritmos de predicción no eran del todo apropiados. Para ser más específico, el problema fue lo que se denomina **sesgo de no respuesta**. El sesgo de no respuesta es el sesgo que la muestra causada por una sección particular**de la población rechaza sistemáticamente para responder a la encuesta o encuesta**. La consecuencia del sesgo de no respuesta es una*muestra que no es representativa de la población* como se analizó anteriormente. (Por ejemplo, la mayoría de las personas ricas se niegan a anunciar sus ingresos en las encuestas y, como resultado, existe un sesgo de falta de respuesta en la mayoría de las encuestas de ingresos. Bien, volvamos a la elección.) Se sabe que los votantes con menor educación que constituían una mayoría de Los votantes de Trump son difíciles de alcanzar para los encuestadores. El resultado de esto fue la falta de este segmento pro-Trump de la población en las encuestas durante las semanas previas a la elección. [Pew Research](http://www.pewresearch.org/fact-tank/2016/11/09/why-2016-election-polls-missed-their-mark/) also points out to dishonesty in responses to polls (people not being truthful about who they were planning to vote for) como otra razón por la que las encuestas no pudieron predecir con precisión el resultado de la elección.

Si bien siempre es más fácil mirar hacia atrás a un análisis fallido y determinar qué fue lo que no funcionó para identificar los problemas por adelantado, los investigadores se habrían beneficiado al determinar si los datos que tenían eran los más adecuados para responder a su pregunta de interés.

### Resumen

Una vez que se haya concentrado en una buena pregunta de ciencia de datos, es importante determinar si los datos disponibles para usted son los datos que necesita. Para hacer esto:

1. Imagina el conjunto de datos óptimo
2. Determina qué datos tienes
3. Identifique los datos que puede obtener (fácilmente)
4. Averigüe las limitaciones en los datos que tiene
5. ¿Son las limitaciones tan grandes que necesita volver a trabajar su pregunta?
  - En caso afirmativo, comience de nuevo y forme una nueva pregunta de ciencia de datos, luego regrese al paso 1
  - Si no es así, continúe con su análisis, *pero* note todas las limitaciones en su análisis
6. Explora y disputa el conjunto de datos
7. ¡Analiza los datos y responde la pregunta de la ciencia de datos!

En definitiva, los datos y cómo se recopilan son importantes. Hay un término en las estadísticas que dice "**basura dentro, basura fuera**", 405247, lo que significa que una entrada de mala calidad siempre producirá una salida pobre. Un análisis de datos basado en datos defectuosos produce resultados defectuosos. Tenga cuidado con los datos que utiliza en su análisis, asegúrese de que los datos que necesita para responder a su pregunta de interés sean los que tiene, y*siempre* informe a sus oyentes y lectores sobre las deficiencias de sus datos. Después de todo, ¡conocerá sus datos mejor que nadie!


### Diapositivas y Video

![Tengo los datos que necesito](https://www.youtube.com/watch?v=74r9V5S42fI)

* [Diapositivas](https://docs.google.com/presentation/d/1hin5y4jDZikoGLbIEnwnPhJybgD_FezWsh16QIu5C5o/edit?usp=sharing)

{quiz, id: quiz_02_identifying_data}

### ¿Tengo el cuestionario de datos?

{choose-answers:4}
? ¿Qué NO está entre las mejores prácticas de adquisición de datos?

C) Nunca pedir los datos en bruto. Los datos ordenados siempre son mejores.
C) Nunca debes pedir a otros que compartan sus datos contigo.
o) Asegúrate de seguir los términos de servicio de los datos.
o) Puede utilizar los datos de la web.
o) Cita la fuente de tus datos.
o) Si no puede encontrar los datos correctos para su propósito, piense en cómo puede recopilarlos.

{choose-answers:4}
? El tipo de datos es el siguiente: Datos que se recopilan de la misma muestra de la población en varios puntos en el tiempo.

C) Datos longitudinales.
o) Datos transversales
o) datos experimentales
o) Datos de series de tiempo.
o) datos del panel

{choose-answers:4}
? ¿Cuál es la similitud entre los datos del panel y los datos longitudinales?

C) ambos se refieren a datos que se recopilan en múltiples momentos
C) Ambos son considerados datos observacionales.
o) ambos se refieren a datos que se recopilan de la misma muestra a lo largo del tiempo
o) ambos son considerados big data
o) ambos son datos que contienen toda la población

{choose-answers:4}
? ¿Qué pasos debe seguir para verificar y ordenar los datos?

C) los valores variables son internamente consistentes
C) Se han añadido variables transformadas apropiadas.
C) Asegurar que cada observación esté en una fila diferente.
C) asegurarse de que cada variable está en una sola columna
o) los nombres de las columnas deben ser abreviaturas
o) los datos deben estar ordenados y los datos originales deben eliminarse
o) todos los valores perdidos deben ser eliminados de los datos
o) todos los datos largos deben ser amplios; todos los datos amplios deben hacerse largos

{choose-answers:4}
? ¿Cuál de los siguientes NO está entre los problemas comunes con los datos?

C) Las variables se recogen desde diferentes lugares.
C) La muestra es grande.
o) Los datos son demasiado pequeños.
o) Hay error de medición en los datos.
o) Las variables en el conjunto de datos no se recogen en el mismo año.

{choose-answers:4}
? ¿Qué es una variable proxy?

C) Una variable que está altamente correlacionada con la variable de interés y puede usarse en lugar de ella.
C) Una variable que está bien correlacionada con la variable de interés y puede usarse en el lugar de la variable de interés.
o) Una variable que es exactamente la misma que la variable de interés.
o) Una variable que se mide de la misma manera que la variable de interés.
o) Una variable que no está correlacionada con la variable de interés, pero es similar a la variable de interés.
o) Una variable en su conjunto de datos que es diferente de la variable de interés.

{choose-answers:4}
? ¿Cuál de las siguientes es una muestra representativa?

C) Muestra: muestra seleccionada al azar de maestros en los EE. UU., Población: todos los docentes en los EE. UU.
C) Muestra: muestra seleccionada al azar de adolescentes en Chicago, población: todos adolescentes en Chicago
o) Muestra: una muestra de personas en un bar, población: población adulta en los EE. UU.
o) Muestra: una muestra seleccionada al azar de padres en una escuela, población: padres en Boston
o) Muestra: una muestra seleccionada al azar de estudiantes universitarios en la Universidad Johns Hopkins, población: estudiantes universitarios en universidades privadas
o) Muestra: una muestra de personas en la escuela secundaria en los EE. UU., población: población adulta en los EE. UU.

{choose-answers:4}
? ¿Qué significa la expresión basura en, basura fuera?

C) Si los datos utilizados en el análisis son de baja calidad, los resultados del análisis serán deficientes.
C) Los datos que son de baja calidad conducirán a resultados que también son de mala calidad.
o) Si el análisis es deficiente, eso significa que el analista utilizó datos de mala calidad.
o) Si el analista no es bueno, no importa qué datos use.
o) Si utiliza datos de alta calidad en un análisis, los resultados serán sin duda de alta calidad.
o) Si utiliza datos de baja calidad pero trabaja muy duro, puede obtener buenos resultados.

{choose-answers:4}
? ¿Qué debe hacer si los datos que tiene no pueden usarse para responder la pregunta de ciencia de datos que tiene?

C) Vuelva a trabajar su pregunta de ciencia de datos
C) Identifique los datos disponibles para usted que pueden ser utilizados
o) Elimina las observaciones hasta que obtengas la respuesta que deseas
o) Continuar de todos modos. Usted puede ser capaz de resolverlo
o) Analice los datos e interprete los resultados para obtener la respuesta que desea
o) Hackee un sistema seguro para obtener los datos que desea pero a los que no tiene acceso

{choose-answers:4}
? ¿Cuál de estas es una razón por la que no puede obtener los datos que necesita para responder su pregunta de ciencia de datos?

C) dinero
C) Acceso a los datos.
C) problemas de privacidad
C) tiempo
C)
o) está disponible públicamente
o) esta en tu computadora
o) está en kaggle.com
o) está en data.world

{/quiz}
