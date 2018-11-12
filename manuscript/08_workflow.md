# Flujo de trabajo de análisis de datos

En lecciones anteriores, repasamos los conceptos básicos del análisis de datos. Pasamos de cómo hacer preguntas de ciencia de datos y encontrar datos a análisis de datos inferenciales y predictivos. Como científico de datos, puedes terminar trabajando en diferentes proyectos al mismo tiempo. Para evitar que se olviden los pasos importantes que aprendió en este curso, es crucial que siga todos los pasos. En esta lección, vamos a hablar sobre un flujo de trabajo para sus proyectos de análisis de datos.

### ¿Cuáles son los pasos?

Para comenzar, estos son los pasos principales que debe seguir en su pregunta de análisis de datos:

* Definir la pregunta.
* Definir el conjunto de datos ideal.
* Determine a qué datos puede acceder y obtener los datos.
* Limpiar los datos
* Análisis exploratorio de datos
* Análisis estadístico
* Interpretar resultados
* Desafío de resultados
* Sintetizar / escribir resultados
* Crear código reproducible



### Un ejemplo

Comencemos con un ejemplo hipotético y repasemos cada paso de nuestro ejemplo. Imagina que estamos interesados ​​en detectar automáticamente los correos electrónicos que son SPAM de los que no lo son. Entonces, nuestra pregunta general es "¿puedo detectar automáticamente los correos electrónicos que son SPAM de los que no lo son?"

![Detectando SPAMs](images/08_workflow/08_dataanalysis_workflow-2.png)

#### Definir la pregunta

Sin embargo, esta pregunta no está escrita completamente en términos de ciencia de datos. Tenemos que asegurarnos de que nuestra pregunta se pueda medir y cuantificar con datos. Tenemos que hacer nuestra pregunta más concreta. Entonces, una mejor manera de hacer la pregunta es esta: "¿Puedo usar características cuantitativas de los correos electrónicos para clasificarlos como SPAM?" 

#### Definir el conjunto de datos ideal

El segundo paso en el análisis de datos es imaginar un conjunto de datos ideal para nuestro análisis. No tienes que ser práctico en tu pensamiento. Solo imagine qué tipo de datos sería mejor para su análisis. En un mundo ideal, desearía un conjunto de datos de todos los correos electrónicos recibidos a través de los principales proveedores de correo electrónico, como Gmail o Yahoo, y si el correo electrónico fue marcado como SPAM o no.

#### Determine a qué datos puede acceder y obtenga los datos

Puede que tenga suerte de tener tal conjunto de datos de alguna manera. Sin embargo, es poco probable que, por razones de privacidad, pueda acceder a los correos electrónicos de otras personas. Incluso si puede, los datos serán millones de bytes y no será práctico analizar un conjunto de datos tan grande. Así que nuestra mejor apuesta es ver si hay algún conjunto de datos en línea.

Uno de los mejores conjuntos de datos para analizar datos de SPAM son los datos de *spam* en el paquete `kernlab` en R. El conjunto de datos de spam se recopila en Hewlett-Packard Labs y clasifica 4601 correos electrónicos como spam o no spam. Además, hay 57 variables que indican la frecuencia de ciertas palabras y caracteres en el correo electrónico. Instalemos el paquete primero.

![conjunto de datos de spam del paquete `kernlab`](images/08_workflow/08_dataanalysis_workflow-5.png)

```{r}
library(kernlab)
data(spam)
``` 

#### Limpia los datos

En la mayoría de los casos, sus datos no son limpios. De hecho, puede provenir de diferentes fuentes con diferentes estándares. Por lo tanto, primero debe ordenar los datos. Por suerte para nosotros, el conjunto de datos de spam en el paquete `kernlab` ya está ordenado, por lo que podemos omitir este paso. Sin embargo, si estamos haciendo un análisis predictivo, es mejor tener un entrenamiento y un conjunto de pruebas. El siguiente código crea los conjuntos de trenes y pruebas.

![Limpiando los datos](images/08_workflow/08_dataanalysis_workflow-6.png)

#### Análisis exploratorio de datos

Aprendimos sobre los siguientes pasos para hacer análisis de datos exploratorios:

* Mirar los resúmenes de los datos.
* Comprobar si faltan datos
* Crear parcelas exploratorias.
* Realizar análisis exploratorios.


Primero, miramos los nombres de las columnas.

![Viendo los nombres de las columnas](images/08_workflow/08_dataanalysis_workflow-8.png)

Y las primeras filas de nuestros datos de entrenamiento.

![Observando las primeras filas de los datos](images/08_workflow/08_dataanalysis_workflow-9.png)

Veamos cuántos de los correos electrónicos están marcados como SPAM y cuántos no.

![906 correos electrónicos en el conjunto de entrenamiento están marcados como SPAM](images/08_workflow/08_dataanalysis_workflow-10.png)

También podemos trazar la longitud promedio de las letras mayúsculas en el texto del correo electrónico para correos electrónicos SPAM y no SPAM. La variable en los datos que mide la longitud promedio de las letras mayúsculas en el texto se llama `capitalAve`.

![Graficando la longitud promedio de las letras mayúsculas](images/08_workflow/08_dataanalysis_workflow-11.png)

Para distinguir mejor la diferencia en `capitalAve` para SPAM y correos no SPAM, podemos usar la escala de registro. Podemos convertir la variable a log. Tenga cuidado de que si tiene ceros en sus datos (que puede tener), al transformar la variable en un registro, se encontrará con problemas (el registro de cero es infinito). Para evitar esto, podemos agregar 1 a la variable.

![Graficando el registro de longitud promedio de letras mayúsculas](images/08_workflow/08_dataanalysis_workflow-12.png)

Podemos ver si existe alguna relación entre algunos de los predictores, como `free`, `original` y `receive`.

![Relación entre algunos de los predictores](images/08_workflow/08_dataanalysis_workflow-13.png)

#### Análisis estadístico

El tipo de análisis que necesitamos es análisis predictivo ya que, al final del día, nuestro algoritmo debe predecir si un correo electrónico es SPAM o no. Tenga en cuenta que:

* Los métodos exactos dependen de la cuestión de interés.
* Las transformaciones / procesamiento deben ser contabilizadas cuando sea necesario.
* Las medidas de incertidumbre deben ser reportadas.

Podemos usar el siguiente código para realizar nuestro análisis de predicción utilizando el conjunto de entrenamiento. Tenga en cuenta que la función `cv.glm()` calcula el error de predicción de validación cruzada K veces estimado para modelos lineales generalizados (glms). El siguiente fragmento de código encuentra la variable (entre todas nuestras variables) que tiene el error de predicción más bajo para encontrar la probabilidad de ser SPAM.


![Análisis de predicción](images/08_workflow/08_dataanalysis_workflow-15.png)

Luego podemos usar el conjunto de pruebas para obtener una medida de incertidumbre (o precisión) del modelo. Para cada observación en el conjunto de pruebas, predecimos si la observación es un SPAM o no. Tenga en cuenta que ya sabemos si la observación es un SPAM o no, pero queremos probar la capacidad de nuestro modelo. Una vez que encontramos los valores predichos, podemos usarlos junto con los valores reales (ya sea que las observaciones sean SPAM o no) y crear una matriz de error. La matriz de errores muestra cuántos de los correos electrónicos de SPAM que pensamos que eran SPAM y cuántos no. Lo mismo para correos no SPAM. La línea `table(predictedSpam,testSpam$type)` muestra que hay 61 correos electrónicos no SPAM que nuestro modelo predijo como SPAM y 458 correos electrónicos SPAM que nuestro modelo predijo como no SPAM. El resto de las observaciones fueron pronosticadas correctamente. La última línea del código calcula el error de predicción.

![Error de predicción](images/08_workflow/08_dataanalysis_workflow-16.png)

#### interpretar resultados

Una vez que haya realizado el análisis preliminar, debe interpretar los resultados para que otros sepan qué conclusiones se pueden sacar de su análisis. Debes tener cuidado de no confundir las siguientes palabras:

* Describe (solo si observa un fenómeno sin hacer ningún análisis inferencial o predictivo)
* Se correlaciona con / asociado con (solo si observa la asociación entre variables sin ninguna interpretación causal)
* Conduce a / causas (solo si ha realizado análisis de inferencia causal)
* Predicciones (solo si has realizado análisis predictivo)

Asegúrese de dar suficiente explicación a su análisis.

* Dé una explicación de lo que sus números dicen (y no dicen)
* Si realiza análisis de regresión, interprete los coeficientes.
* Interpretar medidas de incertidumbre.

En nuestro ejemplo, aquí están algunas de las interpretaciones que podemos dar.

* La fracción de caracteres que son signos de dólar se puede usar para predecir si un correo electrónico es Spam
* Cualquier cosa con más de 6,6% de signos de dólar se clasifica como Spam
* Más signos de dólar siempre significa más Spam bajo nuestra predicción
* Nuestra tasa de error de conjunto de prueba fue de 22.4%.


#### Resultados del desafío

Un buen analista es una buena crítica de su trabajo, ya que el analista conoce mejor los datos y los métodos. Su autocrítica y auto desafío deben comenzar desde el principio: la pregunta. Reto

* Pregunta: Comience desde su pregunta. ¿Su pregunta es hecha correctamente?
* Fuente de datos: desafíe sus datos y asegúrese de que sus datos sean lo suficientemente buenos para su pregunta.
* Procesamiento: compruebe si la limpieza y el procesamiento de los datos se realizan correctamente.
* Análisis: Desafía tus métodos; es el mejor método que podría usar, dada su pregunta y sus datos.
* Conclusiones: compruebe si sus conclusiones se extraen correctamente.
* Medidas de incertidumbre: hay varias formas de medir la incertidumbre de su modelo. Compruebe si ha utilizado la mejor medida.
* Opciones de términos para incluir en los modelos: siempre se incluyen variables específicas en su modelo. Asegúrese de haber incluido los que tengan sentido independientemente de si hacen que sus resultados se vean bien.
* Finalmente, piense en posibles análisis alternativos: reconozca que podría haber enfoques alternativos para su pregunta, como el uso de datos, métodos, etc. Reconociéndolos demostrará cierta honestidad de su parte y allanará el camino para futuros análisis.


#### Sintetizar / escribir resultados

Una vez que haya terminado con el análisis y la verificación de la credibilidad de su análisis, comience a escribir sus resultados. Estos son algunos de los pasos importantes:

* Liderar con la pregunta.
* Resumir los análisis en la historia.
* No incluir todos los análisis, incluirlo.
  * Si es necesario para la historia.
  * Si es necesario para afrontar un reto.
* Ordenar los análisis según la historia, en lugar de cronológicamente.
* Incluye "bonitas"  figuras que contribuyen a la historia



En nuestro ejemplo deberíamos:

* Liderar con la pregunta.
  * ¿Puedes usar las características cuantitativas de los correos electrónicos para clasificarlos como SPAM / HAM?
* Describe el enfoque
  * La fuente de nuestros datos de SPAM y cómo creamos conjuntos de entrenamiento / prueba
  * Relaciones exploradas
  * Elegir el modelo logístico en el conjunto de entrenamiento por validación cruzada.
  * Aplicado a prueba, 78% de precisión de conjunto de prueba
* Interpretar resultados
  * El número de signos de dólar parece razonable, por ejemplo, "Hacer dinero en efectivo desde casa \\ $ \\ $ \\ $ \\ $!"
* Desafío de resultados
  * 78% no es tan bueno
  * Podría usar más variables
  * ¿Por qué regresión logística?


#### Crear código reproducible

Como aprendió en las lecciones anteriores, asegúrese de documentar cada paso. Esto es importante por dos razones: para usted en el futuro y para otros para rehacer su análisis. Usar Rmarkdown es una buena manera de acompañar su análisis con buena documentación. Por eso es importante que:

* Los archivos son nombrados correctamente.
* Hay alguna explicación de los datos.
* Cada archivo de código tiene una descripción de lo que hace.
* Donde sea que deba agregar comentarios para fragmentos de código importantes dentro de sus archivos de código.


### Diapositivas y Video

![Flujo de trabajo de análisis de datos](https://www.youtube.com/watch?v=ezYjHJTMOy8)

* [Diapositivas](https://docs.google.com/presentation/d/1TYOQzkJL8ZSGMQP25XAIsMvbB3mo2NOoCzT5Sp7hkFA/edit?usp=sharing)

{quiz, id: quiz_08_data_analysis_workflow}

### prueba de flujo de trabajo de análisis de datos

{choose-answers:4}
? ¿Cuál de las siguientes opciones NO forma parte de un flujo de trabajo de análisis de datos?

C) Publicar los datos en la web.
o) Interpretar los resultados.
o) análisis de datos
o) Definiendo la pregunta.
o) Creando código reproducible
o) Limpiando los datos.

{choose-answers:4}
? ¿Cuál de las siguientes preguntas NO está escrita de manera que se debe escribir una pregunta de ciencia de datos?

C) ¿Cuáles son los beneficios de la propiedad de vivienda?
o) ¿Los propietarios de viviendas son más felices que los no propietarios?
o) ¿Ha aumentado la propiedad de vivienda en los Estados Unidos en los últimos 30 años?
o) ¿Cuáles son las características demográficas de los propietarios de viviendas en los Estados Unidos?

{choose-answers:4}
? ¿En qué orden debe tener su flujo de trabajo de ciencia de datos?

C) Definir pregunta, encontrar datos, datos limpios, análisis estadístico, interpretar resultados
o) Definir pregunta, encontrar datos, análisis estadístico, resultados de desafío, análisis exploratorio
o) Definir pregunta, encontrar datos, escribir resultados, análisis estadístico, resultados de desafío
o) Definir pregunta, encontrar datos, crear código reproducible, análisis estadístico

{choose-answers:4}
? En el ejemplo que se muestra en la lección, ¿qué hace la función `cv.glm()`?

C) Calcula el error de predicción de validación cruzada K-fold estimado
o) Estima un modelo lineal generalizado.
o) Predice la probabilidad de que un mensaje sea SPAM
o) Encuentra la relación entre diferentes variables en los datos.
o) Grafica la distribución de los datos.


{choose-answers:4}
? Al interpretar los resultados de nuestro análisis de ciencia de datos, debemos ...

C) No confundir correlación y causalidad.
o) Solo muestra los números sin ninguna explicación ya que los números hablan por sí mismos.
o) Si los números no son lo que esperábamos, repita el análisis hasta que obtengamos los resultados que queremos.
o) Nunca use la palabra asociación porque no es una palabra científica.
o) nunca mencione la incertidumbre de nuestros resultados, ya que pueden hacer que nuestros resultados no parezcan confiables.

{choose-answers:4}
? ¿Cuál de los siguientes consejos debería seguir al escribir sus resultados?

C) Comience con la pregunta.
o) No necesita contar una historia, ya que puede hacer que sus resultados parezcan menos científicos.
o) Incluya todos los análisis que haya realizado en su informe final.
o) Presenta tus resultados cronológicamente.
o) Se prefiere un informe más largo a uno más corto.

{/quiz}




{exercise, id: exercise_08_workflow}

### DataCamp: Modelado con datos en el Tidyverse

{case-sensitive: false}
? Para obtener más práctica a través de todos los pasos en un análisis de datos, vaya al curso [Modelado con datos en el Tidyverse](https://www.datacamp.com/courses/modeling-with-data-in-the-tidyverse) en DataCamp. Inicia sesión y completa todo el curso.

Tenga en cuenta que algunos temas cubren un poco más de material del que hemos cubierto en este curso. Puede que tenga que buscar en Google y en StackOverflow para trabajar en algunas partes del análisis de datos. Es probable que este sea el caso cuando también analice los datos por su cuenta, por lo que es una buena práctica.

Una vez que haya completado el curso, escriba "completado"  en el cuadro a continuación.

*Nota*: Esto requiere un inicio de sesión de DataCamp, que cuesta dinero. Como ejercicio, esto no es obligatorio para aprobar el curso, pero lo*ayudará* a comprender mejor los conceptos que se tratan en estas lecciones.

*Recordatorio*: los videos en DataCamp son esenciales para entender el material. ¡Es mejor no saltarse estos videos!

! terminado

{/exercise}
