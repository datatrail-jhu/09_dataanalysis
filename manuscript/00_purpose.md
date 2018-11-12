{
course-completeness: 100
course-attempts: 2
default-quiz-attempts: 2
default-random-choice-order: true
default-quiz-show-answers: none
}

# El propósito de la ciencia de datos

La ciencia de datos tiene múltiples definiciones. Para este curso usamos [la definición](https://simplystatistics.org/2015/03/17/data-science-done-well-looks-easy-and-that-is-a-big-problem-for-data-scientists/):

> La ciencia de datos es el proceso de formular una pregunta cuantitativa que puede responderse con datos, recopilar y limpiar los datos, analizar los datos y comunicar la respuesta a la pregunta a un público relevante.

En general, el proceso de la ciencia de datos es iterativo y los diferentes componentes se mezclan un poco. Pero para simplificar, permite discretizar las tareas en los siguientes 7 pasos:

1. Defina la pregunta que desea hacer los datos.
2. Obtener los datos
3. limpiar los datos
4. Explora los datos
5. Ajustar modelos estadísticos.
6. Comunicar los resultados.
7. Haz tu análisis reproducible


Este curso se centra en tres de estos pasos: (1) definir la pregunta que desea formular, (4) explorar los datos y (5) ajustar los modelos estadísticos a los datos.

Hemos visto en cursos anteriores cómo extraer datos de la web y de las bases de datos, y hemos visto cómo limpiarlos y ordenar los datos. También sabe cómo usar gráficos y gráficas para visualizar sus datos. Puede pensar que esta clase usa esas herramientas para comenzar a responder preguntas utilizando las herramientas que ha aprendido en clases anteriores.


### Tipos de preguntas de ciencia de datos

Veremos algunos tipos diferentes de preguntas que tal vez desee responder a partir de los datos. Este diagrama de flujo proporciona algunas preguntas que puede hacer para averiguar en qué tipo de pregunta se centra su análisis. Cada tipo de pregunta tiene diferentes objetivos.


Hay cuatro clases de preguntas en las que nos centraremos en esta clase.

* Descriptivo: el objetivo de las preguntas de ciencia de datos descriptivos es comprender los componentes de un conjunto de datos, describir lo que son y explicar esa descripción a otras personas que quieran entender los datos. Este es el tipo más simple de análisis de datos.

* Exploratorio: el objetivo de las preguntas exploratorias de la ciencia de datos es encontrar relaciones desconocidas entre las diferentes variables que ha medido en su conjunto de datos. El análisis exploratorio es abierto y está diseñado para encontrar relaciones esperadas o inesperadas entre diferentes mediciones.

* Inferencial: el objetivo de las preguntas de ciencia de datos inferenciales es utilizar una pequeña muestra de datos para decir algo sobre lo que sucedería si recopilamos más datos. Surgen preguntas inferenciales porque queremos entender las relaciones entre diferentes variables, pero es demasiado caro o difícil recopilar datos sobre cada persona u objeto.

* Predictivo: el objetivo de la pregunta de ciencia de datos predictivos es usar datos de una gran colección para predecir valores para nuevos individuos. Esto podría ser predecir lo que sucederá en el futuro o predecir características que son difíciles de medir. La ciencia predictiva de datos a veces se llama aprendizaje automático.

![Tipos de análisis de datos](images/00_purpose/00_dataanalysis_purpose-4.png)

Las preguntas en las que nos centraremos son los tipos en los que buscamos relaciones entre medidas o variables. Pero en este tipo de análisis, no podremos decir nada sobre lo que sucede si usted cambia una de las variables. Para averiguar qué sucede si cambia una variable, necesita un tipo de análisis más avanzado. Estos análisis, causales y mecánicos, requieren datos sobre tipos específicos de problemas y se recopilan de manera especial. Para esta clase, lo principal que debemos tener en cuenta es que el hecho de que dos variables estén correlacionadas entre sí no significa que el cambio de una cause un cambio en la otra.

[De una manera](http://www.tylervigen.com/spurious-correlations) que las personas ilustren esta idea es mirar datos donde dos variables muestran una relación, pero están claramente *no* relacionadas entre sí. Por ejemplo, en un rango de tiempo específico, el número de personas que se ahogan mientras caen en un grupo se relaciona con el número de películas en las que aparece Nicholas Cage. Estas dos variables claramente no están relacionadas entre sí, pero los datos parecen mostrar un relación. Discutiremos más adelante en esta clase.

![Correlación espuria](images/00_purpose/00_dataanalysis_purpose-10.png)

### Ejemplos de preguntas de ciencia de datos

Comencemos con algunos ejemplos de proyectos de ciencia de datos, cómo se les pregunta y cómo se los aborda. En cada ejemplo, explicamos el problema como una pregunta de ciencia de datos y adivinamos qué tipo de análisis es adecuado para abordar el problema.


#### Ejemplo 1: Detección de fraude de tarjeta de crédito

Si tiene una tarjeta de crédito, cada vez que cobra algo, el banco lleva un registro de ese cargo. Esto puede ser útil para usted cuando desea realizar un seguimiento de sus finanzas. Pero los bancos usan la información para otros propósitos también. Si pierde su tarjeta de crédito y alguien comienza a usarla para comprar cosas para sí mismos, esto se llama fraude de tarjeta de crédito. Al recopilar datos de todos, las compañías de tarjetas de crédito pueden predecir posibles transacciones fraudulentas antes de que los consumidores noten algo. Entonces la pregunta es: "¿Podemos predecir qué cargos de tarjeta de crédito son fraudulentos?". Pero esta no es una pregunta de ciencia de datos todavía. Para preguntarle a este experto científico de datos, podríamos preguntar: "¿Podemos usar la hora del cargo, la ubicación del cargo y el precio del cargo para predecir si el cargo es fraudulento o no?". Ya que estamos interesados ​​en predecir si un cargo es fraudulento o genuino, este será un análisis predictivo.

- **Problema:** Detectar si los cargos de la tarjeta de crédito son fraudulentos.
- **Pregunta de ciencia de datos:** ¿Podemos usar el momento del cargo, la ubicación del cargo y el precio del cargo para predecir si el cargo es fraudulento o no?
- **Tipo de análisis:** Análisis predictivo.

#### Ejemplo 2: Análisis de los comentarios de YouTube

Cualquier texto que pueda encontrar en la web puede considerarse como datos. Puede utilizar estos datos para comprender cómo se comportan las personas en la web. Por ejemplo,
cuando las compañías como YouTube quieren entender si sus usuarios se están comportando bien o mal, pueden ver los comentarios que dejan. Entonces, la pregunta podría ser: "¿Son los comentarios en nuestra plataforma en su mayoría agradables o en su mayoría significan?". Para escribir esto en términos de una pregunta de ciencia de datos, podría preguntar: "¿Son las palabras que la gente usa en sus comentarios con más frecuencia palabras positivas (grande, impresionante, agradable, útil) o palabras negativas (mala, estúpida, coja, horrible)? ". Esta es una pregunta que puede responder al recopilar información sobre las palabras y etiquetarlas con si son buenas o malas. Este es un ejemplo de análisis descriptivo, ya que una vez que tenemos los datos, el análisis se reduce a comparar el número de comentarios positivos con los comentarios negativos.

- **Problema:** Comprender si los usuarios son agradables o malos en YouTube
- **Pregunta de ciencia de datos:** ¿Las palabras que las personas usan en sus comentarios son con más frecuencia palabras positivas (grande, impresionante, agradable, útil) o palabras negativas (mala, estúpida, coja, horrible)?
- **Tipo de análisis:** Análisis descriptivo.


#### Ejemplo 3: Sesame Street y el desarrollo del cerebro de los niños

Sesame Street es un programa educativo y de entretenimiento para niños. Los científicos podrían estar interesados ​​en saber si ver Sesame Street ayuda al desarrollo del cerebro en los niños. Para convertir esto en una pregunta de ciencia de datos, necesitamos que sea más específico y centrado en los datos. Entonces podríamos convertir esto en una pregunta de ciencia de datos como, "¿Podemos comparar a los niños que ven Sesame Street y aquellos que no ven qué puntajes en las pruebas son más altos?"  Una complicación es que puede ser difícil y costoso lograr que los padres hagan que sus hijos participen en el estudio. Por lo tanto, podríamos tomar una pequeña muestra de estudiantes y medir sus calificaciones en los exámenes y averiguar si ven televisión. Ya que queremos decir algo sobre todos los niños, pero solo hemos medido datos sobre unos pocos, este sería un análisis inferencial.

- **Problema:** ¿Sesame Street afecta el desarrollo cerebral de los niños?
- **Pregunta sobre ciencia de datos:** ¿Existe una relación entre ver Sesame Street y los puntajes de las pruebas entre niños?
- **Tipo de análisis:** Análisis inferencial.


### Cómo iniciar un análisis de datos

La manera de comenzar un proyecto de análisis de datos es comenzar con una pregunta. Como vimos en los ejemplos anteriores, las preguntas no deben comenzar con los datos. Deben comenzar con una pregunta general que desee comenzar a responder. Este enfoque se denomina ["problema hacia adelante, no solución hacia atrás"](https://simplystatistics.org/2013/05/29/what-statistics-should-do-about-big-data-problem-forward-not-solution-backward/).

Una vez que haya formulado su pregunta general, el siguiente paso es convertirla en una pregunta de ciencia de datos. Por lo general, esto implica hacer que la pregunta sea más concreta, identificar qué tipo de pregunta está haciendo e identificar las partes de los datos que usará para responder la pregunta. Cubriremos cómo convertir preguntas generales a preguntas de ciencia de datos en una lección futura.

Los siguientes pasos implican explorar y analizar los datos. La mayor parte del resto de este curso se centrará en las herramientas que puede utilizar para analizar datos y encontrar resúmenes o relaciones que respondan a las preguntas que hace al iniciar un análisis de datos.


### Diapositivas y Video

![El propósito de Data Science](https://www.youtube.com/watch?v=coS7Dk0xbog)

* [Diapositivas](https://docs.google.com/presentation/d/1VIyLthjLSXikF1euqPNA71cnT_C1kSZhDbIPe8uzg9I/edit?usp=sharing)

{quiz, id: quiz_00_purpose}

### Propósito del cuestionario de Data Science

{choose-answers: 4}
?1 Un proceso de resolución de problemas de ciencia de datos se puede dividir en lo siguiente en qué orden?

C) Defina la pregunta, obtenga los datos, limpie los datos, explore los datos, ajuste modelos estadísticos, comunique los resultados, haga que su análisis sea reproducible
o) Obtenga los datos, limpie los datos, defina la pregunta, explore los datos, ajuste modelos estadísticos, comunique los resultados, haga que su análisis sea reproducible
o) Obtenga los datos, limpie los datos, ajuste los modelos estadísticos, defina la pregunta, explore los datos, comunique los resultados, haga que su análisis sea reproducible
o) Haga su análisis reproducible, defina la pregunta, obtenga los datos, limpie los datos, ajuste los modelos estadísticos, comunique los resultados
o) Defina la pregunta, obtenga los datos, limpie los datos, ajuste los modelos estadísticos

{choose-answers: 4}
?2 ¿Cuál de los siguientes describe un análisis predictivo?

C) Usar datos recopilados de muchas personas para predecir los valores para una nueva persona
C) Usar datos recopilados en el pasado para predecir valores para una persona en el futuro
o) Encontrar si una variable está relacionada con otra.
o) Encontrar si una gran cantidad de variables influyen en otra.
o) Usar datos para predecir la relación entre dos variables para todas las personas.
o) Mostrando el efecto sobre una variable de cambiar los valores de otra variable.

{choose-answers: 4}
?3 Recopilamos datos sobre todas las canciones en el catálogo de Spotify y queremos resumir cuántos son country western, hip-hop, rock clásico u otros. ¿Qué tipo de análisis es este?

C) descriptivo
o) Exploratorio
o) Predictivo
o) Inferencial
o) causal
o) mecanicista

{choose-answers: 4}
?3 Recopilamos datos sobre todos los alimentos en una tienda de comestibles y queremos resumir las categorías en las que cae cada artículo (como productos, carnes y aves, granos, etc.) ¿Qué tipo de análisis es este?

C) descriptivo
o) Exploratorio
o) Predictivo
o) Inferencial
o) causal
o) mecanicista

{choose-answers: 4}
?4 Recopilamos datos sobre una pequeña muestra de canciones del catálogo de Spotify y queremos averiguar la relación entre el uso de la palabra "camión"  y si una canción es de country western. ¿Qué tipo de análisis es este?

C) Inferencial
o) Descriptivo
o) Exploratorio
o) Predictivo
o) causal
o) mecanicista

{choose-answers: 4}
?4 Recopilamos datos de una muestra de alimentos en diferentes tiendas de abarrotes en todo el país y queremos averiguar la relación entre la región del país y la cantidad de tipos de manzanas vendidas. ¿Qué tipo de análisis es este?

C) Inferencial
o) Descriptivo
o) Exploratorio
o) Predictivo
o) causal
o) mecanicista

{choose-answers: 4}
?5 Recopilamos datos de una muestra de las canciones del catálogo de Spotify y queremos buscar las relaciones entre cualquier par de palabras para averiguar si hay alguna palabra que se use comúnmente en las canciones. ¿Qué tipo de análisis es este?

C) Exploratorio
o) Descriptivo
o) Predictivo
o) Inferencial
o) causal
o) mecanicista

{choose-answers: 4}
?5 Recopilamos datos de una muestra de alimentos de todo el país y queremos buscar las relaciones entre cualquier par de alimentos para determinar si hay alimentos que se venden juntos. ¿Qué tipo de análisis es este?

C) Exploratorio
o) Descriptivo
o) Predictivo
o) Inferencial
o) causal
o) mecanicista

{/quiz}
