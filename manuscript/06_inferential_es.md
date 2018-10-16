# Análisis inferencial

El análisis inferencial es lo que los analistas realizan *después*que han descrito y explorado su conjunto de datos. Después de comprender mejor su conjunto de datos, los analistas a menudo intentan inferir algo de los datos. Esto se hace usando**pruebas estadísticas**. Si bien solo discutiremos**regresión lineal**en esta lección, hay*muchas* pruebas estadísticas diferentes, cada una de las cuales (cuando se aplica adecuadamente) se puede usar para el análisis de datos inferenciales.

Vamos a romper esto todo un poco. El objetivo de los análisis inferenciales es utilizar una muestra **relativamente pequeña**de datos para**inferir**o decir algo sobre la**población**en general. Esto es necesario porque a menudo*queremos* contestar preguntas sobre una población. Tomemos un ejemplo ficticio aquí donde tenemos una población de 14 formas.

![La población](images/06_inferential/06_datanalysis_inferential-2.png)

Aquí, en este gráfico, las formas representan individuos en la población y los colores de las formas pueden ser de color rosa o gris.

En este ejemplo solo tenemos catorce formas en la población; sin embargo, en el análisis de datos inferenciales, generalmente no es posible muestrear *todos*en la población. Considere si esta población era de todos en los Estados Unidos o de todos los estudiantes universitarios del mundo. Como no sería factible obtener información de cada individuo, los datos se recopilan en un subconjunto o una muestra** de los individuos en la población más grande.

![Se toma una muestra de la población](images/06_inferential/06_datanalysis_inferential-3.png)

En nuestro ejemplo, le hemos estado mostrando cuántos rosados ​​y cuántas formas grises hay en la población más grande. Sin embargo, en la vida real, no *sabemos* cuál es la respuesta en la población más grande. Por eso recogimos la muestra!

![No sabemos cuál es la verdad en la población](images/06_inferential/06_datanalysis_inferential-4.png)

Aquí es donde **la inferencia** entra en juego. Analizamos los datos recopilados en nuestra muestra y luego hacemos todo lo posible para inferir cuál es la respuesta en la población más grande. En otras palabras, el análisis de datos inferenciales utiliza datos de una muestra para hacer su mejor conjetura acerca de cuál sería la respuesta en la población si pudiéramos medir a cada individuo.

![La inferencia de la muestra hace su mejor conjetura en cuanto a cuál es la verdad en la población](images/06_inferential/06_datanalysis_inferential-5.png)

### incertidumbre

Debido a que no hemos medido directamente la población, pero solo hemos podido realizar mediciones en una muestra de los datos, al hacer nuestra inferencia no podemos estar seguros de que nuestra inferencia sobre la población sea exacta. Por ejemplo, en nuestra muestra, un tercio de las formas son grises. ¡Esperamos que aproximadamente un tercio de las formas de nuestra población también sean grises! Bueno, un tercio de 14 (el número de formas en nuestra población) es 4.667. ¿Significa esto que cuatro formas son realmente grises?

![La inferencia nos da una buena idea de cuál es la verdad en la población](images/06_inferential/06_datanalysis_inferential-6.png)

¿O tal vez cinco formas en la población son grises?

![Tal vez la población realmente tenga cinco formas grises ...](images/06_inferential/06_datanalysis_inferential-7.png)

Dada la muestra que hemos tomado, podemos suponer que 4-5 formas en nuestra población serán de color gris, pero no estamos seguros *exactamente*de cuál es ese número. En las estadísticas, esta "mejor estimación"  se conoce como**estimación**. Esto significa que estimamos que 4.667 formas serán grises.*Pero*, hay incertidumbre en ese número. Debido a que estamos adivinando lo mejor que puede ser esa estimación, también hay una medida de incertidumbre en esa estimación. El análisis de datos inferenciales incluye generar la estimación*y* la medida de incertidumbre alrededor de esa estimación.

Regresemos al ejemplo donde *sabemos*la verdad en la población. ¡Hey Mira! De hecho, solo había tres formas grises. Es totalmente posible que si pones todas esas formas en una bolsa y sacas tres, dos serían rosas y una gris. Como estadísticos, diríamos que obtener esta muestra fue**probable** (está dentro de lo posible), pero no es lo más probable (lo más probable es que sea 4 o 5). ¡para agregar incertidumbre a su estimación cuando esté haciendo un análisis inferencial!

![En realidad, solo había tres formas grises en nuestra población después de todo](images/06_inferential/06_datanalysis_inferential-8.png)

### Muestreo aleatorio

Debido a que se está moviendo de una *pequeña*cantidad de datos y está tratando de generalizar a una población*más grande*, su capacidad para inferir con precisión la información sobre la población más grande depende en gran medida de cómo se muestrearon los datos. Tocamos brevemente sobre esto en una lección anterior, pero hablémoslo completamente ahora.

Los datos en su muestra *deben*ser**representativos de su población más grande** para ser utilizados en el análisis de datos inferenciales. Vamos a discutir lo que esto significa.

Usando el mismo ejemplo, ¿qué pasaría si, en su población más grande, no solo tuviera formas grises y rosadas, sino que también tuviera formas azules?

![¿Y si su población mayor tuviera tres formas de colores diferentes?](images/06_inferential/06_datanalysis_inferential-9.png)

Bueno, si su muestra solo tiene formas rosadas y grises, cuando vaya a hacer una inferencia, no hay forma de que deduzca que debería haber formas azules en su población ya que no capturó ninguna en su muestra.

En este caso, su muestra *no* es representativa de su población mayor. En los casos en los que no tiene una muestra representativa, no puede llevar a cabo la inferencia, ya que no podrá inferir correctamente la información sobre la población más grande.

![Solo puede realizar un análisis inferencial cuando su muestra es representativa de la población](images/06_inferential/06_datanalysis_inferential-10.png)

Esto significa que debe diseñar su análisis de manera que esté recopilando datos representativos *y* que debe verificar sus datos después de la recopilación de datos para asegurarse de que tuvo éxito.

En este punto puedes estar pensando para ti mismo. "Espere un segundo. Pensé que no sabía cuál era la verdad en la población. ¿Cómo puedo asegurarme de que sea representativo?"  ¡Buen punto! Con respecto a la medida que está realizando (distribución de color de las formas, en este ejemplo), usted *no*sabe la verdad.*Pero*, debes saber otra información sobre la población. ¿Cuál es la distribución por edades de su población? Su muestra debe tener una distribución por edades similar. ¿Qué proporción de su población es femenina? Si es la mitad, entonces su muestra debe estar compuesta de medias hembras. El procedimiento de recopilación de datos debe configurarse para garantizar que la muestra que recopile sea representativa (muy similar a) de su población más numerosa. Luego, una vez que se recopilan los datos, su análisis descriptivo debe verificar que los datos que ha recopilado sean representativos de su población más grande. Al muestrear aleatoriamente a su población más grande, luego se asegura de que la inferencia que realice sobre la medición del interés (distribución de color de las formas) sea más precisa.

Para reiterar: si los datos que recopila no son de una muestra representativa de la población, las generalizaciones que deduzca no serán precisas para la población.


### Un ejemplo de la vida real de análisis de datos inferenciales

A diferencia de nuestros ejemplos anteriores, los datos del Censo no se utilizarían para el análisis inferencial. Por definición, un censo ya recopila información (funcionalmente) de toda la población. Por lo tanto, no hay población sobre la cual inferir. Los datos del censo son la rara excepción en la que se incluye una población completa*en el conjunto de datos. Además, el uso de datos del censo de los Estados Unidos para inferir información sobre otro país no sería una buena idea porque los Estados Unidos no son necesariamente representativos del otro país.

En cambio, un mejor ejemplo de un conjunto de datos sobre el cual realizar el análisis inferencial serían los datos utilizados en el estudio: [El efecto del control de la contaminación del aire en la esperanza de vida en los Estados Unidos: un análisis de 545 condados de los EE. UU. Para el período 2000 hasta 2007](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3521092/). En este estudio, los investigadores se propusieron comprender el efecto de la contaminación del aire en todos los Estados Unidos

![La pregunta del estudio busca aprender algo sobre toda la población de EE. UU.](images/06_inferential/06_datanalysis_inferential-12.png)

Para responder a esta pregunta, se estudió un subconjunto de la población de EE. UU. Y los investigadores analizaron el nivel de contaminación del aire y la esperanza de vida. Habría sido casi imposible estudiar a cada individuo en los Estados Unidos año tras año. En su lugar, este estudio utilizó los datos que recolectaron de una muestra de la población de los EE. UU. Para *inferir* cómo la contaminación del aire podría afectar la esperanza de vida en todos los EE. UU.

![Los estudios usan muestras representativas para inferir información sobre la población más grande](images/06_inferential/06_datanalysis_inferential-13.png)

### ¿Significa diferente de la expectativa?

Para comenzar con el análisis de datos inferenciales, consideremos el caso en el que está interesado en analizar datos sobre una sola variable numérica. Si estuvieras haciendo estadísticas descriptivas sobre este conjunto de datos, probablemente calcularías la media para esa variable. Pero, ¿qué pasaría si, además de saber la media, quisiera saber si los valores en esa variable estaban todos dentro de los límites de la variación normal? Podrías calcular eso usando el análisis de datos inferenciales. Puede usar los datos que tiene para *inferir* si los datos están o no dentro de los límites esperados.

Por ejemplo, digamos que tenía un conjunto de datos que incluía el número de onzas *en realidad* incluido en 100 latas de un refresco. Usted esperaría que cada uno pueda tener exactamente 12 oz de líquido; sin embargo, hay alguna variación en el proceso. Por lo tanto, vamos a probar si constantemente te acortas la cantidad de líquido en tu lata.

De hecho, ¡sigamos adelante y generemos el conjunto de datos nosotros mismos!

```r
## generar el conjunto de datos
set.seed (34)
soda_ounces <- rnorm (100, mean = 12, sd = 0.04)
cabeza (soda_ounces)
``` 

En este código, especificamos que queremos realizar un sorteo aleatorio de 100 valores diferentes (que representan nuestras 100 latas de refrescos), donde la media es 12 (que representa las 12 onzas de soda que se espera que estén dentro de cada lata), y permitiendo algunas variaciones (hemos establecido la desviación estándar en 0.04).

![salida mirando `soda_ounces` conjunto de datos](images/06_inferential/06_datanalysis_inferential-14.png)

Podemos ver que los valores son aproximadamente, pero no siempre exactamente iguales a las 12 onzas esperadas.

#### Probando la diferencia de medias de la expectativa en R

Para hacer una inferencia sobre si estamos o no constantemente acortados, vamos a utilizar esta muestra de 100 latas. Tenga en cuenta que estamos utilizando esta muestra de latas para inferir algo sobre todas las latas de este refresco, ya que no podemos medir la cantidad de onzas en todas las latas de la bebida generada.

Para realizar esta prueba estadística, utilizaremos una prueba t. Sin embargo, antes de que podamos hacerlo, debemos asegurarnos de que los datos siguen una distribución normal, ya que esta es la suposición principal de la prueba t.

```r
biblioteca (ggplot2)

## comprobar la normalidad
ggplot (as.data.frame (soda_ounces)) +
  geom_histogram (aes (soda_ounces), bins = 10)
``` 

Aquí, vemos que los datos se distribuyen de manera aproximadamente normal, lo que permite el uso de una prueba t.

![histograma de `soda_ounces`](images/06_inferential/06_datanalysis_inferential-15.png)

Una prueba t comprobará si las onzas observadas difieren de la media esperada (12 oz). Para ejecutar una prueba t en R, la función es `t.test()` 

```r
## realizar t-test
t.test (soda_ounces, mu = 12)
``` 

![t-test output](images/06_inferential/06_datanalysis_inferential-16.png)

En la salida de esta función, nos centraremos en el intervalo de confianza del 95 por ciento. Los intervalos de confianza proporcionan el rango de valores que probablemente contengan el parámetro de población desconocido. Aquí, el parámetro de población que nos interesa es la media. Por lo tanto, los intervalos de confianza del 95% nos proporcionan el rango en el que, después de un muestreo repetido, la media calculada caerá el 95 por ciento del tiempo. Más específicamente, si el intervalo de confianza del 95 por ciento contiene la media esperada (12 oz), entonces podemos estar seguros de que la compañía no nos está acortando la cantidad de líquido que están depositando en cada lata.

Aquí, dado que 12 está entre 11.99187 y 12.00754, podemos ver que las cantidades en las 100 latas muestreadas están dentro de la variación esperada. Podríamos inferir de esta muestra que es probable que la población de todas las latas de este refresco tenga una cantidad adecuada de líquido en las latas.

### Diferencias de proporción

Más allá de mirar una sola variable numérica, ¿qué pasaría si tuviera dos grupos y quisiera saber si las proporciones de una segunda variable dentro de los grupos diferían? Para probar si las proporciones dentro de un grupo difieren de las proporciones en el segundo grupo, usaremos la función `prop.test()`.

Para este ejemplo, veremos el conjunto de datos `quine` del paquete `MASS`. Este conjunto de datos incluye una muestra de 146 estudiantes en zonas rurales de Nueva Gales del Sur. En este caso, nuestra **población**son estudiantes en la zona rural de Nueva Gales del Sur. Nuestra**muestra** son los 146 estudiantes de los cuales tenemos datos.

En este ejemplo, vamos a verificar si la proporción de machos aborígenes en el conjunto de datos es diferente de la proporción de hembras aborígenes. La variable `Eth` contiene una "A"  si el individuo es aborigen, "N"  de lo contrario. El sexo está codificado de manera tal que "M"  es masculino y "F"  es femenino.

```r
biblioteca (MASS)

## echar un vistazo a los valores en bruto
mesa (quine $ Eth, quine $ Sex)
``` 

![números en bruto del conjunto de datos `quine`](images/06_inferential/06_datanalysis_inferential-18.png)

De los valores en bruto, vemos que hay 38 hembras aborígenes y 31 machos. Es difícil decir de esta salida si esas proporciones realmente difieren entre sí o no. ¿Es 38 de 80 diferentes a 31 de 66? Por lo tanto, usaremos una prueba estadística para extraer una inferencia de esta muestra.


#### Prueba de diferencias de proporción en R

Como se mencionó anteriormente, `prop.test()` le permite probar si las proporciones entre grupos son iguales o no.

```r
Prueba ## para diferencias en proporciones entre grupos
prop.test (tabla (quine $ Eth, quine $ Sexo))
``` 

![`prop.test()` salida](images/06_inferential/06_datanalysis_inferential-19.png)

Aquí, nuevamente, veremos el intervalo de confianza para interpretar nuestros resultados. Si la proporción de aborígenes en cada grupo es igual, esperaríamos que la diferencia entre ellos sea cero. Por lo tanto, si cero está contenido dentro del intervalo de confianza del 95%, no hay diferencia estadística entre las proporciones de aborígenes en los grupos de hombres y mujeres. Este es el caso que vemos aquí en estos datos, ya que cero está entre -0.16 y 0.17.

### Regresión lineal

El análisis inferencial es comúnmente el objetivo del modelado estadístico, donde tiene una pequeña cantidad de información para extrapolar y generalizar esa información a un grupo más grande. Uno de los enfoques más comunes utilizados en el modelado estadístico se conoce como **regresión lineal**. Aquí, discutiremos cuándo usar la regresión lineal es apropiado, cómo llevar a cabo el análisis en R y cómo interpretar los resultados de este enfoque estadístico.

Al analizar la regresión lineal, estamos tratando de describir (modelar) la relación entre una variable dependiente y una variable independiente.

![relación de modelos de regresión lineal entre dos variables](images/06_inferential/06_datanalysis_inferential-20.png)

Al visualizar una relación lineal, la variable independiente se traza a lo largo de la parte inferior de la gráfica, en el **eje x**y la variable dependiente se traza a lo largo del lado de la gráfica, en el eje**y**.

![independiente en el eje x; dependiente del eje y](images/06_inferential/06_datanalysis_inferential-21.png)

Al realizar una regresión lineal, se dibuja una **línea de mejor ajuste** a través de los puntos de datos para describir la relación entre las variables.

![Una línea de mejor ajuste describe la relación entre las variables](images/06_inferential/06_datanalysis_inferential-22.png)

Una línea de mejor ajuste, técnicamente hablando, minimiza la suma de los errores cuadrados. En términos más simples, esto significa que la línea que minimiza la distancia de todos los puntos de la línea es la línea que mejor se ajusta. O, lo que es más simple, hay la misma cantidad de puntos sobre la línea que hay debajo de la línea. En total, la distancia desde la línea para los puntos por encima de la línea será la misma que la distancia desde los puntos hasta la línea por debajo de la línea.

Tenga en cuenta que la línea de mejor ajuste no tiene que pasar por ningún punto para ser la línea de mejor ajuste. Aquí, a la derecha, vemos una línea que atraviesa siete puntos en la trama (en lugar de los cuatro, la línea que mejor se ajusta, a la izquierda). Sin embargo, esto no es una línea que se ajuste mejor, ya que hay *manera* más puntos por encima de la línea que por debajo de la línea.

![Una línea de mejor ajuste NO tiene que pasar por la mayor cantidad de puntos posibles](images/06_inferential/06_datanalysis_inferential-23.png)

Esta línea describe la relación entre las dos variables. Si observa la dirección de la línea, le dirá si existe una relación positiva o negativa entre las variables. En este caso, cuanto mayor sea el valor de la variable independiente, mayor será el valor de la variable dependiente. De manera similar, cuanto menor sea el valor de la variable independiente, menor será el valor de la variable dependiente. Cuando este es el caso, hay una **relación positiva** entre las dos variables.

![Una relación positiva tendrá puntos que tenderán hacia arriba y hacia la derecha](images/06_inferential/06_datanalysis_inferential-24.png)

Un ejemplo de variables que tienen una relación positiva sería la altura de los padres y sus hijos. En general, cuanto más alto sea un padre, más alto será su hijo. Y, mientras más corto sea un padre, más probable es que su hijo sea bajo.

![La altura de padre e hijo demuestra una relación lineal positiva](images/06_inferential/06_datanalysis_inferential-25.png)

Alternativamente, cuando mayor es el valor de la variable independiente, menor es el valor de la variable dependiente, esta es una relación negativa.

![Una relación positiva tendrá puntos que tenderán hacia arriba y hacia la izquierda](images/06_inferential/06_datanalysis_inferential-26.png)

Un ejemplo de variables que tienen una relación negativa sería la relación entre las ausencias de los estudiantes y sus calificaciones. Cuantas más ausencias tenga un estudiante, más bajas serán sus calificaciones.

![Las ausencias y calificaciones de los estudiantes muestran una relación lineal negativa](images/06_inferential/06_datanalysis_inferential-27.png)

La regresión lineal, además de describir la dirección de la relación, también se puede utilizar para determinar la **fuerza** de esa relación.

Esto se debe a que la suposición con regresión lineal es que la verdadera relación está siendo descrita por la línea que mejor se ajusta. Cualquier punto que caiga fuera de la línea lo hace debido a un error aleatorio. Esto significa que si todos los puntos caen directamente en la parte superior de la línea, no hay error. Cuanto más caen los puntos de la línea, mayor es el error. Cuando los puntos están más alejados de la línea de mejor ajuste, la relación entre las dos variables es más débil que cuando los puntos caen más cerca de la línea.

![La correlación es más débil a la izquierda y más a la derecha](images/06_inferential/06_datanalysis_inferential-28.png)

En este ejemplo, la línea rosa es exactamente la misma línea de mejor ajuste en cada gráfica. Sin embargo, en la izquierda, donde los puntos caen más lejos de la línea, la fuerza de la relación entre estas dos variables es más débil que en la derecha, donde los puntos caen más cerca de la línea, donde la relación es más fuerte. La fuerza de esta relación se mide utilizando **correlación**. Cuanto más cerca están los puntos de la línea, más**correlacionadas** están las dos variables, lo que significa que la relación entre las dos variables es más fuerte.

#### Suposiciones

Hasta ahora nos hemos centrado en dibujar líneas de regresión lineal. Las líneas de regresión lineal *pueden*dibujarse en cualquier gráfico, pero solo porque puede hacer algo no significa que en realidad*deba*. Cuando se trata de regresión lineal, para poder llevar a cabo cualquier inferencia sobre la relación entre dos variables, hay algunas suposiciones que deben mantenerse antes de que se pueda hacer la inferencia de la regresión lineal.

Los dos supuestos de regresión lineal simple son **linealidad**y**homoscedasticidad**.

##### Linealidad

La relación entre las dos variables debe ser lineal.

Por ejemplo, qué pasaría si estuviéramos trazando datos de un solo día y estuviéramos estudiando la relación entre la temperatura y el tiempo. Bueno, sabemos que generalmente la temperatura aumenta a lo largo del día y luego disminuye por la noche. Aquí, vemos algunos datos de ejemplo que reflejan esta relación. La forma de U al revés de los datos sugiere que la relación no es de hecho lineal. Si bien *podríamos* trazar una línea recta a través de estos datos, sería inapropiado. En los casos en que la relación entre las variables no se puede modelar bien con una línea recta, no se debe usar la regresión lineal.

![Si la relación entre las variables no es lineal, no se debe usar la regresión](images/06_inferential/06_datanalysis_inferential-29.png)

##### Homoscedasticidad

Además de mostrar una relación lineal, las variables aleatorias deben demostrar **homoscedasticity**. En otras palabras, la varianza (distancia desde la línea) debe ser constante en toda la variable.

Si los puntos en un extremo están mucho más cerca de la línea de mejor ajuste que los puntos en el otro extremo, se ha violado la homoscedasticidad y la regresión lineal no es apropiada para los datos.

![La varianza debe ser consistente en la variable para que se use la regresión lineal](images/06_inferential/06_datanalysis_inferential-30.png)

Si se mantienen estos dos supuestos, se puede considerar la regresión lineal para su análisis.

### ¿Qué puede inferir la regresión lineal?

Ahora que entendemos qué es la regresión lineal y qué suposiciones deben cumplirse para su uso, ¿cuándo la utilizaría realmente? La regresión lineal se puede utilizar para responder muchas preguntas diferentes sobre sus datos. Aquí discutiremos específicamente cómo hacer inferencias sobre la relación entre dos variables numéricas.

#### ¿Qué es la asociación?

A menudo, cuando las personas realizan una regresión lineal, buscan comprender mejor la relación entre dos variables. Al observar esta relación, los analistas preguntan específicamente "¿Qué es la **asociación**entre estas dos variables?"  La asociación entre variables describe la tendencia en la relación (positiva, neutral o negativa)*y* la fuerza de esa relación (cómo se correlacionan las dos variables).

Después de determinar que se cumplen los supuestos de regresión lineal, para determinar la asociación entre dos variables, se llevaría a cabo una regresión lineal. A partir de la regresión lineal, uno interpretaría la **estimación Beta**y el**error estándar** del modelo.

**Estimación Beta** - determina la dirección y la fuerza de la relación entre las dos variables.

Una beta de cero sugiere que no hay asociación entre las dos variables. Sin embargo, si el valor beta es positivo, la relación es positiva. Si el valor es negativo, la relación es negativa. Además, cuanto mayor sea el número, mayor será el efecto. Discutiremos el tamaño del efecto y cómo interpretar el valor con más detalle más adelante en esta lección.

![Las estimaciones Beta describen el tamaño y la intensidad del efecto](images/06_inferential/06_datanalysis_inferential-31.png)

**Error estándar**: determina cuán incierta es la estimación beta. Cuanto mayor sea el error estándar, más incierto estamos en la estimación. Cuanto menor sea el error estándar, menos incierto estaremos en la estimación.

Los errores estándar se calculan en función de qué tan bien la línea de mejor ajuste modela los datos. Cuanto más cerca estén los puntos de la línea, menor será el error estándar, lo que refleja nuestra menor incertidumbre. Sin embargo, a medida que los puntos están más alejados de la línea de regresión, nuestra incertidumbre en la estimación aumentará y el error estándar será mayor.

![Los errores estándar explican cuán incierta es la estimación](images/06_inferential/06_datanalysis_inferential-32.png)

Un recordatorio de que al realizar un análisis de datos inferenciales, siempre querrá informar una estimación *y*una medida de incertidumbre. Para la regresión lineal, esta será la**estimación beta**y el**error estándar**.

Es posible que haya oído hablar de **p-valores** en algún momento. Las personas tienden a usar los valores de p para describir la fuerza de su asociación debido a su simplicidad. El valor p es un número único que toma en cuenta tanto la estimación (estimación beta) como la incertidumbre en esa estimación (SE). Cuanto menor sea el valor p, más significativa será la asociación entre dos variables. Sin embargo, si bien es un valor simple, no le brinda tanta información como informar las estimaciones y los errores estándar directamente. Por lo tanto, si está informando valores p, también es mejor incluir la estimación y los errores estándar.

Dicho esto, la interpretación general de un valor p es "la probabilidad de obtener los resultados observados (o resultados más extremos) solo por casualidad". 207607Como es una probabilidad, el valor siempre estará entre 0 y 1. Luego, por ejemplo, un valor de p de 0.05 significa que el 5 por ciento del tiempo (o 1 en 20), observará los resultados de este extremo simplemente al oportunidad.

##### Asociación de pruebas en R

Ahora que hemos analizado lo que puede aprender de una prueba de asociación, veamos un ejemplo en R. Para este ejemplo usaremos el conjunto de datos `trees` disponible en R, que incluye `girth`, `height`, y `volume` medidas para 31 cerezas negras arboles

Con este conjunto de datos, responderemos a la pregunta:

> ¿Podemos inferir la altura de un árbol dada su circunferencia?

Presumiblemente, es más fácil medir la circunferencia de un árbol (ancho alrededor) que medir su altura. Por lo tanto, aquí queremos saber si la altura y girt están asociados o no.

En este caso, ya que nos preguntamos si podemos inferir la altura a partir de la circunferencia, la circunferencia es la variable independiente y la altura es la variable dependiente. En otras palabras, estamos preguntando si la altura *depende* de la circunferencia?

Primero, antes de llevar a cabo la regresión lineal para probar la asociación y responder a esta pregunta, debemos asegurarnos de que la regresión lineal sea apropiada. Probaremos la linealidad y la homoscedasticidad.

Para hacerlo, primero usaremos `ggplot2` para generar un diagrama de dispersión de las variables de interés.

```r
biblioteca (ggplot2)

ggplot (árboles) +
  geom_point (aes (Altura, Cintura))
``` 

![conjunto de datos de dispersión de árboles](images/06_inferential/06_datanalysis_inferential-35.png)

Desde el aspecto de esta trama, la relación se ve aproximadamente lineal, pero para que esto sea un poco más sencillo, agregaremos una línea de mejor primero a la trama.

```r
ggplot (árboles, aes (Altura, Cintura)) +
  geom_point () +
  geom_smooth (method = "lm", se = FALSE)
``` 

![diagrama de dispersión con la línea de mejor ajuste](images/06_inferential/06_datanalysis_inferential-36.png)

En este gráfico, la relación parece aproximadamente lineal y la varianza (distancia de los puntos a la línea) es constante en todos los datos. Dado esto, es apropiado usar regresión lineal para estos datos.

Ahora que eso está establecido, podemos ejecutar la regresión lineal. Para hacerlo, usaremos la función `lm()`. La sintaxis de esta función es `lm(dependent_variable ~ independent_Variable, data = dataset)`.

```r
## ejecuta la regresión
ajuste <- lm (Girth ~ Height, data = trees)

## echar un vistazo a la salida
resumen (ajuste)
``` 

La función `summary()` resume el modelo, así como la salida del modelo. Podemos ver los valores que nos interesan en este resumen, incluida la estimación beta, el error estándar (SE) y el valor p.
Específicamente, a partir de la estimación beta, que es positiva, confirmamos que la relación es positiva (lo que también podríamos decir a partir del diagrama de dispersión). También podemos interpretar explícitamente esta estimación beta.

Específicamente, la estimación beta es la cantidad que cambiará la variable dependiente dado un aumento de una unidad en la variable independiente. En el caso de los árboles, una estimación beta de 0.256, dice que por cada pulgada que aumenta la circunferencia de un árbol, su altura aumentará en 0.256 pulgadas. Por lo tanto, no solo sabemos que existe una relación positiva entre las dos variables, sino que sabemos exactamente cuánto cambiará una variable dado un aumento de una sola unidad en la otra variable.

![Beta, SE y p-valor todos incluidos en `summary()` salida](images/06_inferential/06_datanalysis_inferential-37.png)

Además, la fuerza de esta relación se resume utilizando la métrica R cuadrado ajustada. Cuanto más cercano sea este valor a 1, más cerca estarán los puntos en su conjunto de datos de la línea de mejor ajuste. Cuanto más lejos estén de la línea, más cerca estará este valor a cero.

![R cuadrado ajustado especifica qué tan cerca están los datos de la línea de regresión](images/06_inferential/06_datanalysis_inferential-38.png)

Como vimos en el diagrama de dispersión, los datos no coinciden con la línea de regresión, por lo que un valor de 0.2445 parece razonable.

Finalmente, si bien la salida `summary()` es visualmente útil, si desea obtener alguno de los números de ese modelo, no siempre es sencillo. Afortunadamente, hay un paquete para ayudarte con eso! La función `tidy()` del paquete `broom` ayuda a tomar la salida de resumen de un modelo estadístico y organizarla en una salida tabular.
```r
# instalar.paquetes ("escoba")
biblioteca (escoba)

ordenado
``` 

![`tidy()` ayuda a organizar la salida de modelos estadísticos](images/06_inferential/06_datanalysis_inferential-39.png)

Tenga en cuenta que los valores no han cambiado. Simplemente se organizan en una tabla fácil de usar. Es útil tener en cuenta que esta función y este paquete existen mientras trabaja con modelos estadísticos.

Finalmente, es importante tener siempre en cuenta que la interpretación **de su análisis de datos inferenciales**es increíblemente importante. Cuando utiliza la regresión lineal para probar la asociación, está observando la relación entre las dos variables. Si bien la circunferencia se puede usar para inferir la altura de un árbol, esto es solo una correlación.**No significa**que un aumento en la circunferencia**haga que**el árbol crezca más. Las asociaciones son*correlaciones*. Ellos son**no** causales. Discutiremos esto más adelante en la lección.

Por ahora, sin embargo, en respuesta a nuestra pregunta, ¿podemos inferir la altura de un árbol a partir de su circunferencia, la respuesta es sí? Esperamos, en promedio, que la altura de un árbol aumente 0.255 pulgadas por cada pulgada de aumento en la circunferencia.

### Confundiendo

Acabamos de discutir cómo usar `lm()` para evaluar la asociación entre dos variables numéricas. Sin embargo, hay un tema *increíblemente*importante que tenemos que discutir antes de pasar de la regresión lineal.**Confundir** en algo a lo que hay que prestar atención en cualquier análisis que esté haciendo que observe la relación entre dos variables más. Entonces ... ¿qué es confuso?

Bueno, consideremos un ejemplo. ¿Qué pasaría si estuviéramos interesados ​​en comprender la relación entre el tamaño del zapato y la alfabetización? Para hacerlo, echamos un vistazo a esta pequeña muestra de dos humanos, uno que usa zapatos pequeños y no sabe leer y escribir y un adulto que usa zapatos grandes y sabe leer y escribir.

![Dos humanos y sus respectivos tamaños de zapatos y niveles de alfabetización](images/06_inferential/06_datanalysis_inferential-40.png)

Si tuviéramos que hacer un diagrama de esta pregunta, podríamos preguntar "¿Podemos inferir las tasas de alfabetización a partir del tamaño del zapato?"

![¿Es posible inferir la tasa de alfabetización a partir del tamaño del calzado?](images/06_inferential/06_datanalysis_inferential-41.png)

Si regresamos a nuestra muestra, sería importante tener en cuenta que uno de los humanos es un niño pequeño y el otro es un adulto.

![Adultos y niños con sus respectivos tamaños de zapatos y niveles de alfabetización](images/06_inferential/06_datanalysis_inferential-42.png)

Nuestro diagrama inicial no tuvo en cuenta el hecho de que estos humanos diferían en su edad. La edad afecta el tamaño de sus zapatos *y* sus tasas de alfabetización. En este ejemplo, la edad es un factor de confusión.

![La edad es un confusor](images/06_inferential/06_datanalysis_inferential-43.png)

Cada vez que tiene una variable que afecta tanto a sus variables dependientes *como a las independientes, es un factor de confusión. Ignorar confundidores no es apropiado al analizar datos. De hecho, en este ejemplo, habría llegado a la conclusión de que las personas que usan zapatos pequeños tienen tasas de alfabetización más bajas que las que usan zapatos grandes. Eso hubiera sido incorrecto. De hecho, ese análisis fue*confundido*por la edad. El hecho de no corregir la confusión ha dado lugar a informes erróneos en los medios de comunicación y la retractación de estudios científicos. No quieres estar en esa situación. Por lo tanto,**siempre considere y verifique la confusión** entre las variables en su conjunto de datos.

![Los factores de confusión son variables que afectan tanto a sus variables dependientes como a las independientes](images/06_inferential/06_datanalysis_inferential-44.png)

### Regresión lineal múltiple

Hay formas de **manejar efectivamente los factores de confusión dentro de un análisis**. Los factores de confusión se pueden incluir en su modelo de regresión lineal. Cuando se incluye, el análisis toma en cuenta el hecho de que estas variables son factores de confusión y llevan a cabo la regresión, eliminando el efecto de la variable de confusión de las estimaciones calculadas para la variable de interés.

Este tipo de análisis se conoce como **regresión lineal múltiple**, y el formato general es: `lm(dependent_variable ~ independent_variable + confounder , data = dataset)`.

Como un ejemplo simple, volvamos al conjunto de datos `mtcars`, con el que hemos trabajado antes. En este conjunto de datos, tenemos datos de 32 automóviles, incluido su peso (`wt`), millas por galón (`mpg`) y Motor (`vs`, donde 0 es "en forma de V"  y 1 es "recto").

Supongamos que estuviéramos interesados ​​en inferir las millas por galón que obtendría un automóvil según su peso. Primero veríamos la relación gráficamente:

```r
## Echa un vistazo a scatterplot
ggplot (mtcars, aes (wt, mpg)) +
  geom_point ()
``` 

![diagrama de dispersión de `wt` y `mpg` desde `mtcars`](images/06_inferential/06_datanalysis_inferential-45.png)

Desde el diagrama de dispersión, la relación parece aproximadamente lineal y la varianza parece constante. Por lo tanto, podríamos modelar esto usando regresión lineal:

```r
## modela los datos sin confusor
ajuste <- lm (mpg ~ wt, datos = mtcars)
ordenado
``` 

![salida de regresión lineal mtcars](images/06_inferential/06_datanalysis_inferential-46.png)

De este análisis, inferiríamos que por cada 1000 lbs más de peso que un automóvil pese, obtiene 5.34 millas *menos* por galón.

Sin embargo, sabemos que el peso de un automóvil no necesariamente cuenta toda la historia. El tipo de motor en el automóvil probablemente afecta tanto el peso del automóvil como las millas por galón que obtiene el automóvil. Gráficamente, podríamos ver si este fuera el caso al observar estos diagramas de dispersión:

```r
## mira la diferencia en la relación
## entre los tipos de motor
ggplot (mtcars, aes (wt, mpg)) +
  geom_point () +
  facet_wrap (~ vs)
``` 

![Facetas de Scaterplot para el tipo de motor](images/06_inferential/06_datanalysis_inferential-47.png)

Desde esta gráfica, podemos ver que los motores en forma de V (`vs` = 0), tienden a ser más pesados ​​y obtienen menos millas por galón mientras que los motores rectos (`vs` = 1) tienden a pesar menos y obtener más millas por galón. Sin embargo, es importante observar que un automóvil que pesa 3000 puntos (`wt` = 3) y tiene un motor en forma de V (`vs` = 0) obtiene menos millas por galón que un automóvil del mismo peso con un motor recto (`vs` = 1 ), sugiriendo que simplemente modelar una relación lineal entre peso y mpg no es apropiado.

A continuación, modelemos los datos, teniendo en cuenta esta confusión:

```r
## incluir el motor (vs) como un confundidor
ajuste <- lm (mpg ~ wt + vs, datos = mtcars)
ordenado
``` 

![modelo de confusión tomado en cuenta](images/06_inferential/06_datanalysis_inferential-49.png)

Aquí, obtenemos una imagen más precisa de lo que está pasando. Interpretar los modelos de regresión múltiple es un poco más complicado ya que hay más variables; Sin embargo, practicaremos cómo hacerlo ahora.

La mejor manera de interpretar los coeficientes en un modelo de regresión lineal múltiple es enfocarse en una sola variable de interés y mantener constantes todas las demás variables. Por ejemplo, nos centraremos en el peso (`wt`) mientras se mantiene constante (`vs`) para interpretar. Esto significa que para un motor en forma de V, esperamos ver una disminución de 4.44 millas por galón por cada 1000 libras de peso.

Podemos interpretar los coeficientes de manera similar si nos enfocamos en los motores (`vs`). Por ejemplo, para dos autos que pesan lo mismo, esperaríamos que un motor recto (`vs` = 1) obtuviera 3.5 millas más por galón que un motor en forma de V (`vs` = 0).

![modelo de confusión tomado en cuenta](images/06_inferential/06_datanalysis_inferential-50.png)

Finalmente, señalaremos que el valor de p para `wt` disminuyó en este modelo en relación con el modelo en el que no tuvimos en cuenta la confusión. Esto se debe a que el modelo no tenía inicialmente en cuenta la diferencia del motor. A veces, cuando se tienen en cuenta los factores de confusión, su variable de interés será más importante; sin embargo, con frecuencia, el valor de p aumentará, y eso está bien. Lo importante es que los datos están mejor modelados.

### La correlación no es causación

Es probable que haya escuchado a alguien decir antes que "la correlación no es una causa", ¡207607 y es verdad! De hecho, hay [sitios web completos](http://www.tylervigen.com/spurious-correlations) dedicated to this concept.  Let's make sure we know exactly what that means before moving on. In the plot you see here, as the divorce rate in Maine decreases, so does per capita consumption of margarine. These two lines are clearly correlated; however, there isn't really a strong (or any) para decir que uno causó el otro. Por lo tanto, solo porque vea dos cosas con la misma tendencia no significa que una haya causado la otra. Estas son simplemente **correlaciones espurias**- cosas que tienden juntas por casualidad.**Siempre**tenga esto en cuenta cuando haga un análisis inferencial, y asegúrese de que**nunca haga reclamos causales cuando todo lo que tiene son asociaciones**.

![La correlación no es igual a la causalidad](images/06_inferential/06_datanalysis_inferential-51.png)


De hecho, se podría argumentar que la única vez que puede hacer afirmaciones causales es cuando ha llevado a cabo un experimento aleatorio. **Los experimentos aleatorizados**son estudios que se diseñan y llevan a cabo al* asignar aleatoriamente a ciertos sujetos a un tratamiento y al resto de los individuos a otro tratamiento. Luego se aplica el tratamiento y se analizan los resultados. En el caso de un experimento aleatorio, se pueden comenzar a hacer afirmaciones causales. Sin embargo, aparte de esto, tenga cuidado con el lenguaje que elija y no exagere sus hallazgos.


### Resumen

En esta lección, hemos cubierto *mucho*. Comenzamos discutiendo que se requiere un análisis de datos inferenciales ya que a menudo no podemos tomar medidas de todos en nuestra población de interés. Por lo tanto, tomamos muestras representativas y estimamos cuál es la medida en la población más grande. Dado que esta es una estimación, siempre hay alguna medida de incertidumbre en torno a esta estimación. Hablamos sobre cómo se extraen las inferencias utilizando una única variable numérica y t-tests. También discutimos cómo probar si la proporción difiere entre los grupos usando `prop.test()` (el ejemplo de Nueva Gales del Sur). Finalmente, hablamos de regresión lineal simple y múltiple. Discutimos que la regresión lineal ayuda a describir la relación entre dos variables numéricas (ejemplo `trees`) y que la regresión lineal múltiple ayuda a explicar la confusión en un análisis (ejemplo `mtcars`). Terminaremos esta lección reiterando que ser capaz de sacar conclusiones e interpretaciones claras de sus análisis es fundamental y que nunca debe sacar conclusiones causales cuando tiene asociaciones.


### Diapositivas y Video

![Análisis inferencial](https://www.youtube.com/watch?v=zOHzTtYhgOY)

* [Diapositivas](https://docs.google.com/presentation/d/1wxCLy3ZQWCc28PsENi83qgKESkH-44nc0tuISMRlRvc/edit?usp=sharing)

{quiz, id: quiz_06_inferential}

### prueba de análisis inferencial

{choose-answers:4}
? ¿Por qué es necesario el análisis inferencial?

C) Porque a menudo no podemos estudiar a todos en una población.
C) Porque queremos poder inferir información sobre una población a partir de una muestra.
C) Para que podamos usar muestras representativas para inferir información sobre una población más grande
o) Porque permite a los analistas resumir los datos sin la necesidad de interpretación
o) Permite a los analistas cuantificar si los descubrimientos en su conjunto de datos probablemente se mantendrán en una nueva muestra
o) Le permite a uno predecir información sobre individuos más adelante
o) Ayuda a determinar la causa mecánica detrás de la relación en sus datos


{choose-answers:4, points:3}
), ¿cuánto esperaría que cambie la longitud del sépalo dado un aumento de una unidad en el ancho del sépalo?

C) disminuir en 0.22
m) aumentar en 0.22
o) aumentar en 1
o) disminuir en 1
o) disminuir en 6.52
o) aumentar en 6.52
o) p <0.05


{choose-answers:4, points:2}
) fuera 0.2, ¿qué significaría eso?

C) por cada 1 lb de aumento de peso, usted esperaría que la altura aumentara en 0.2 pulgadas.
C) por cada 1 lb de disminución de peso, esperaría que la altura aumentara en 0.2 pulgadas.
m) por cada 1 lb de aumento en altura, se esperaría que el peso aumentara en 0.2 pulgadas.
o) por cada 1 lb de disminución de peso, esperaría que la altura aumentara en 0.2 pulgadas.
o) por cada 1 lb de aumento en altura, usted esperaría que el peso disminuya en 0.2 pulgadas.
o) por cada 1 lb de aumento de peso, esperaría que la altura aumentara en 1 pulgada.
o) por cada 1 lb de disminución de peso, esperaría que la altura disminuya en 1 pulgada.

{choose-answers:4}
? Si tuviera una única variable numérica que normalmente estaba distribuida, ¿qué prueba usaría para determinar si su media era diferente de la media esperada?

C) prueba t
C)` 
o)` 
o)` 
o) regresión lineal simple
o) regresión lineal múltiple


{choose-answers:4}
? Para tener en cuenta la confusión, ¿cuál es un enfoque que podría considerar?

C) regresión lineal múltiple
o) prueba t
o)` 
o)` 
o)` 
o) regresión lineal simple

{choose-answers:4, points:2}
)` 

C) Regresión lineal simple.
o) regresión lineal múltiple
o) prueba t
o)` 
o)` 
o)` 

{/quiz}

{exercise, id: exercise_06_inferential}

### DataCamp: Inferencia para regresión lineal

{case-sensitive: false}
) en DataCamp. Inicia sesión y completa el primer capítulo: "Ideas inferenciales".

Una vez que haya completado el capítulo, escriba "completado"  en el cuadro a continuación.

*Nota*: Esto requiere un inicio de sesión de DataCamp, que cuesta dinero. Como ejercicio, esto no es obligatorio para aprobar el curso, pero lo*ayudará* a comprender mejor los conceptos que se tratan en estas lecciones.

*Recordatorio*: los videos en DataCamp son esenciales para entender el material. ¡Es mejor no saltarse estos videos!

! terminado

{/exercise}
