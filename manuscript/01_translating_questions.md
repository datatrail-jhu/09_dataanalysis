# Traducir preguntas a preguntas de Data Science

Como comentamos en la primera lección, el enfoque para el análisis de datos que preferimos es ["Problema hacia adelante, no solución hacia atrás"](https://simplystatistics.org/2013/05/29/what-statistics-should-do-about-big-data-problem-forward-not-solution-backward/). El punto principal de este enfoque es comenzar con la pregunta que desea formular antes de mirar los datos o el análisis.

En algunos casos, la pregunta que desea responder será una pregunta motivada por su curiosidad. Por ejemplo, puede estar interesado en una pregunta sobre su estado físico. Puede recopilar datos utilizando un Fitbit y la aplicación MyFitnessPal. O puede tener una pregunta sobre qué tipo de canciones le gustan más y recopilar datos de su perfil de Spotify. También te puede interesar dónde están los baches más comunes en tu ciudad. Puede recopilar información del sitio web de datos abiertos de su ciudad.

Otra situación realmente común es que _alguien más_ está planteando la pregunta. Cuando esté trabajando como científico de datos, este podría ser el equipo de marketing, el ejecutivo o un ingeniero que tenga una pregunta que les gustaría responder con los datos. Es posible que se le solicite clasificar las fotos en un sitio web como Airbnb. Podrían traerte la pregunta, los datos o ambos. Parte de su trabajo como científico de datos es traducir preguntas generales en preguntas de ciencia de datos.

El primer paso para traducir una pregunta general en una pregunta de ciencia de datos es hacerlo lo más concreto posible. Por ejemplo, aquí hay algunas preguntas genéricas en las que podría estar interesado:

1. ¿Cuando corro más pierdo peso?
2. ¿Es más probable que los clientes hagan clic en los anuncios con cachorros?
3. ¿Debo llevarme un paraguas cuando salga de casa hoy?

Estas preguntas son interesantes pero no son muy específicas. Así es como comienzan la mayoría de los buenos proyectos de ciencia de datos. Para hacer una pregunta más concreta, debe pensar en los datos que usaría para responder la pregunta. Estos podrían ser datos que usted tiene o datos que cree que podría encontrar.

Para cada una de estas preguntas necesita hacer estas preguntas:

* ¿Qué o quién estoy tratando de entender con datos?
* ¿Qué medidas tengo sobre esas personas u objetos que me ayudan a responder la pregunta?
* ¿Cómo limitan los datos que tengo el tipo de pregunta que puedo responder?
* ¿Cuál es el tipo de pregunta de ciencia de datos que estamos tratando de responder?


La primera pregunta se centra en averiguar quién o qué estás tratando de estudiar. En el mundo de las estadísticas, esto a veces se denomina "población"  que se intenta estudiar. Cuando haga una pregunta, es mejor ser lo más específico posible sobre lo que está tratando de estudiar. Una buena manera de ser específico es imaginar las personas u objetos individuales en los que va a medir los datos. De manera realista, ¿cuál es el grupo que tiene o recopilará datos para medir?

La segunda pregunta se centra en averiguar qué variables se miden o se medirán en los datos que tiene. Hemos discutido anteriormente sobre todos los diferentes tipos de datos potenciales que puede tener, incluidos datos estándar cuantitativos o cualitativos, texto, imágenes o videos que pueden ser datos. Al responder a esta pregunta ayuda a ser específico. Por ejemplo, el texto no estructurado de una publicación en redes sociales puede no ser útil, pero las palabras y etiquetas de las palabras en esa publicación pueden ser los datos que está buscando.

La tercera pregunta es crítica para tener cuidado en un análisis de datos. Cuando utiliza el enfoque de problema hacia adelante, puede comenzar con una pregunta general. Pero puede que no sea posible responder esa pregunta con los datos que tenemos. Por ejemplo, puede ser difícil estudiar directamente la forma en que el cigarrillo afecta a los niños, ya que la mayoría de los niños no fuman. Es posible que deba cambiar su pregunta para estudiar la manera en que el hábito de fumar de segunda mano afecta a los niños o la forma en que los padres fuman a los niños. Una parte clave de la traducción de una pregunta general a una pregunta de ciencia de datos es identificar estas limitaciones.

La cuarta pregunta se centra en averiguar qué tipo de análisis está haciendo. Introdujimos el diagrama de flujo para definir el tipo de pregunta en una conferencia anterior. Las preguntas clave que se deben hacer son cómo se resumen los datos, cuáles son los objetivos que está tratando de alcanzar y cómo se ve el éxito en su análisis. Uno de los [errores más comunes](http://science.sciencemag.org/content/347/6228/1314) que las personas cometen al realizar un análisis de datos es responder el tipo incorrecto de pregunta analítica de datos.

Probemos este enfoque con un par de ejemplos inventados y un ejemplo real para ayudarlo a entender cómo traducir preguntas generales en preguntas de ciencia de datos.

__Cuando corro más, ¿pierdo peso?__ 

* _¿Qué o quién estoy tratando de entender con datos?_ Estoy tratando de entender algo sobre mí mismo, no sobre otros.
* _¿Qué medidas tengo en esas personas u objetos que me ayudan a responder la pregunta?_ Tengo datos sobre los pasos que tomo con Fitbit y mido mi peso con una balanza.
* _¿Cómo limitan los datos el tipo de pregunta que puedo responder?_ Solo tengo datos sobre mí. Solo tengo mediciones de mi peso todos los días y necesito resumir mis datos de Fitbit para entender mis carreras, pero no tendré información sobre si subí y bajé cuestas o cualquier información sobre mi dieta.
* _¿Cuál es el tipo de pregunta de ciencia de datos que intentamos responder?_ En este caso, estamos buscando una relación entre dos variables que solo medimos para los datos que tenemos, por lo que es un análisis exploratorio.

![Cuando corro más, ¿pierdo peso?](images/01_translating_questions/01_dataanalysis_translating_questions-11.png)


__¿Es más probable que los clientes hagan clic en los anuncios con cachorros?__ 


* _¿Qué o quién estoy tratando de entender con datos?_ Estoy tratando de entender algo acerca de los clientes. Tendría que averiguar qué clientes. Los clientes que intentan comprar motocicletas pueden ser diferentes a los clientes que visitan Pets.com. Tendríamos que hacer más preguntas para averiguar de qué clientes estamos hablando.
* _¿Qué medidas tengo sobre esas personas u objetos que me ayudan a responder la pregunta?_ Supongamos que tenemos todos los datos de un grupo de clientes que visitaron un sitio web para comprar comida para perros por un solo día. Algunos de los clientes vieron un anuncio de cachorros y otros no. También tenemos datos sobre la cantidad de comida para perros que compraron.
* _¿Cómo limitan los datos el tipo de pregunta que puedo responder?_ Solo tengo datos en un solo sitio web y solo en un día. Por lo tanto, es posible que no pueda decir cosas sobre otros sitios web u otros días.
* _¿Cuál es el tipo de pregunta de ciencia de datos que intentamos responder?_ En este caso estamos buscando una relación entre dos variables y estamos tratando de decir algo sobre todos los clientes de un sitio web. Así que este es un análisis inferencial.

![¿Es más probable que los clientes hagan clic en los anuncios con cachorros?](images/01_translating_questions/01_dataanalysis_translating_questions-12.png)

__¿Debo llevarme un paraguas cuando salga de casa hoy?__ 

* _¿Qué o quién estoy tratando de entender con datos?_ Estoy tratando de predecir el clima en mi ciudad natal en un día en particular para saber si debo tomar un paraguas.
* _¿Qué medidas tengo en esas personas u objetos que me ayudan a responder la pregunta?_ Podría tomar predicciones de diferentes servicios meteorológicos, mirar por la ventana y ver si está nublado, o salir y sentir si está húmedo afuera. Para construir mi predicción, podría recopilar estas mediciones durante un año y también registrar si necesitaba un paraguas ese día.
* _¿Cómo limitan los datos el tipo de pregunta que puedo responder?_ Solo tengo datos en mi ciudad natal, solo recopilé datos de algunos servicios de predicción meteorológica y los datos solo se recopilan durante un año. Por lo tanto, puede ser difícil decir cosas para otras personas, otros lugares u otros momentos.
* _¿Cuál es el tipo de pregunta de ciencia de datos que intentamos responder?_ En este caso, buscamos usar datos históricos para predecir algo sobre un solo día. Así que este es un problema de predicción.


![¿Necesito llevarme un paraguas cuando salga de casa hoy?](images/01_translating_questions/01_dataanalysis_translating_questions-13.png)

### Un ejemplo real

Practiquemos la traducción de preguntas a preguntas de ciencia de datos a través de un ejemplo. Mencionamos brevemente este ejemplo en el curso [Obteniendo datos](https://leanpub.com/universities/courses/jhu/getting-data).

![Trump Tweets publicación de blog](images/01_translating_questions/01_dataanalysis_translating_questions-14.png)

A un usuario de Twitter se le ocurrió la hipótesis de que cuando Donald Trump estaba tuiteando, los tweets hiperbólicos provenían de un teléfono con Android (que él sugería que venían de Donald Trump) y los tweets no hiperbólicos provenían de un iPhone (que él sugirió provenían del personal de Donald Trump ).

Este twitter había notado que "Cuando Trump le desea buena suerte al equipo olímpico, está twitteando desde su iPhone. Cuando está insultando a un rival, generalmente está twitteando desde un Android". 744175Robinson comenzó con esta pregunta y la tradujo en una pregunta de ciencia de datos que pudo responder con datos que pudo recopilar de Twitter.

__¿Qué o quién estoy tratando de entender con datos?__ 

En este caso, estamos tratando de responder una pregunta sobre quién está tuiteando desde la cuenta _RealDonald Trump_ en Twitter. Específicamente, estamos interesados ​​en las diferencias entre los tweets provenientes de iPhones y aquellos provenientes de teléfonos Android.

__¿Qué medidas tengo sobre esas personas u objetos que me ayudan a responder la pregunta?__ 

Ya que nos preocupamos por las diferencias entre los teléfonos iPhone y Android, necesitamos saber de qué tipo de teléfono proviene cada Tweet. Pero esta información está disponible para cada Tweet.

Podríamos recopilar esta información mirando el perfil de Twitter _@RealDonaldTrump_ o podríamos usar la API de Twitter para extraer esta información para cada tweet. Robinson recopila datos sobre el tipo de teléfono para todos los tweets de la cuenta mediante la API.

También debemos averiguar cómo definir "hiperbólico" , que era la hipótesis en la pregunta original. Es difícil etiquetar directamente los tweets como hiperbólicos o no hiperbólicos. Pero podemos recoger el texto de los propios tweets. Si modificamos un poco la pregunta a "¿Son los tweets de Android más enojados y más negativos que los tweets de iPhone?"  podemos usar el texto de los tweets para responder esta pregunta. Hay listas de palabras que ya están etiquetadas como "enojadas" , así que podemos buscar esas palabras entre los tweets de los teléfonos Android y iPhones.

También podemos recopilar el tiempo en que ocurrió cada tweet, ya que esto nos ayudará a separar los tweets que provengan de un tipo de teléfono u otro.


__¿Cómo limitan los datos el tipo de pregunta que puedo responder?__ 

Una parte importante de la información que nos falta de estos datos es quién envió el tweet. Podemos suponer que una persona tiene un Android y otra persona que tiene un iPhone. Pero no podemos decir con certeza qué persona está twitteando desde qué tipo de teléfono. Así que hemos cambiado la pregunta de una pregunta sobre quién está tuiteando a cuál es la diferencia entre los tweets de los dos tipos de teléfonos.

__¿Cuál es el tipo de pregunta de ciencia de datos que intentamos responder?__ 


Al utilizar un análisis exploratorio, David Robison descubrió por primera vez que las palabras más comunes que provienen de las plataformas Android y iPhone son diferentes. Utiliza una medida para encontrar la probabilidad de que una palabra sea tuiteada desde un teléfono Android o iPhone. Por lo tanto, es probable que las palabras "mal"  o "loco"  se envíen desde Android, y los hashtags #makeamericagreatagain y # trump2016 probablemente se envíen desde iPhone.

![Análisis exploratorio](images/01_translating_questions/01_dataanalysis_translating_questions-18.png)

A continuación, puede etiquetar cada palabra con uno de los 10 sentimientos: positivo, negativo, enojo, anticipación, disgusto, miedo, alegría, tristeza, sorpresa y confianza utilizando listas que se han reunido en el paquete `tidytext`. Robinson descubrió que los Tweets que provienen de la cuenta de Android usan aproximadamente un 40-80% más de palabras relacionadas con el disgusto, la tristeza, el miedo, la ira y otros sentimientos "negativos" que la cuenta de iPhone.

![Análisis de Sentimiento](images/01_translating_questions/01_dataanalysis_translating_questions-19.png)

Este análisis exploratorio sugirió que hay una diferencia entre los tweets provenientes de un teléfono Android y un iPhone. Si lees la publicación, verás que un análisis más detallado sugiere que hay diferentes tipos de tweets que suceden en momentos muy diferentes. Esto no muestra que una persona u otra esté enviando esos tweets que requerirían otras fuentes de datos que no tenemos.


### Diapositivas y Video

![Traducir preguntas a preguntas sobre Data Science](https://www.youtube.com/watch?v=uMD1XW9eQPs)

* [Diapositivas](https://docs.google.com/presentation/d/18OqWRUTL7oK8RXx7tXQY4dxFSV5J_JOGwytN-pHGnDo/edit?usp=sharing)

{quiz, id: quiz_01_translating_questions}

### Prueba de traducir preguntas

{choose-answers:4}
? ¿Cuál de las siguientes acciones es algo que debe hacer al traducir una pregunta general a una pregunta de ciencia de datos?

C) Es necesario que sea específico.
o) Necesitas hacer que se venda bien.
o) Necesitas hacerlo interesante.
o) Necesitas hacerlo sobre aprendizaje automático.
o) Necesitas hacerlo corto
o) Necesitas eliminar detalles
o) Necesitas saber la respuesta por adelantado.

{choose-answers:4}
? ¿Cuál de las siguientes no es una pregunta que deba hacer al traducir una pregunta general a una pregunta de ciencia de datos?

C) ¿Cuál es el nombre de la variable en el conjunto de datos?
C) ¿Cuáles son los nombres de los archivos de datos que usaré?
C) ¿Cuál es la razón por la que esta pregunta es interesante?
C) ¿Cuál es la trama correcta a usar para responder esta pregunta?
o) ¿Qué o quién estoy tratando de entender con datos?
o) ¿Qué medidas tengo sobre esas personas u objetos que me ayudan a responder la pregunta?
o) ¿Cómo limitan los datos que tengo el tipo de pregunta que puedo responder?


{choose-answers:4}
? Su colega le dice que quiere predecir la cantidad de donaciones que recibirá el próximo año a su organización sin fines de lucro. ¿Cuál de las siguientes es una pregunta que debería pedirles que traduzcan esto a una pregunta de ciencia de datos?

C) ¿Cuáles son los datos que tiene sobre las donaciones en los últimos años y cuáles son las otras cosas que ha medido cada año que podrían predecir las donaciones?
C) ¿Qué datos de dontación tiene de años anteriores y qué otras métricas se han rastreado que podrían predecir las donaciones?
o) ¿Por qué te importa predecir donaciones ya que es un proceso totalmente aleatorio?
o) ¿Los datos que ha recopilado en hojas de cálculo de Excel o en un documento de Google?
o) ¿Cuál es la mayor donación que has recibido?
o) ¿Cuál es la donación más pequeña que has recibido?
o) ¿Cuál es el nombre de cada uno de sus donantes?
o) ¿Cuáles son los nombres de algunos de sus posibles donantes?

{choose-answers:4}
? Desea comprender la relación entre las diferentes habilidades y el salario que podría ganar como científico de datos. Recopila datos sobre los sueldos y los requisitos laborales de New York Data Science del conocido sitio web de desarrolladores StackOverflow para estudiar esta pregunta. ¿Cuáles son algunas limitaciones potenciales de estos datos?

C) StackOverflow es solo un sitio web y diferentes sitios web pueden tener diferentes trabajos publicados.
C) Los datos solo se refieren a trabajos en Nueva York, pero puede que estés buscando un trabajo en otro lugar.
o) Los datos se recopilan de Internet, por lo que podrían no ser confiables.
o) Los datos solo se centran en datos científicos.
o) No sabe el nombre del gerente de recursos humanos para cada trabajo.
o) No sabes si el trabajo viene con bocadillos gratis o no.

{/quiz}
