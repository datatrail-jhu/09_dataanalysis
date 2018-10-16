# Análisis descriptivo

El objetivo del análisis descriptivo es **describir**o**resumir** un conjunto de datos. Cada vez que obtenga un nuevo conjunto de datos para examinar, este es el primer análisis que realizará. De hecho, si nunca resume los datos, no es un análisis de datos.

![El análisis descriptivo resume el conjunto de datos](images/04_descriptive/04_dataanalysis_descriptive-1.png)

Si piensa en un conjunto de datos como el animal en el elefante en medio de esta imagen, haciendo un análisis descriptivo son los monjes ciegos que examinan cada parte del elefante. Al igual que los monjes ciegos que están examinando cada una de las partes del elefante para comprenderlo completamente, el objetivo **de un análisis descriptivo es comprender los datos con los que está trabajando completamente**.

![examinando un conjunto de datos](images/04_descriptive/04_dataanalysis_descriptive-3.png)

El análisis descriptivo generará ante todo resúmenes simples sobre las muestras y sus mediciones para describir los datos con los que está trabajando. Hay una serie de estadísticas descriptivas comunes que analizaremos en esta lección: medidas de tendencia central (p. Ej., Media, mediana, modo) o medidas de variabilidad (p. Ej., Rango, desviaciones estándar o varianza).

Este tipo de análisis está dirigido a **resumir su conjunto de datos**A diferencia de los enfoques de análisis que analizaremos en las próximas lecciones, el análisis descriptivo no es*para*generalizar los resultados del análisis a una población más grande*ni* tratar de sacar conclusiones . La descripción de los datos está separada de la interpretación de los datos. Aquí, solo estamos resumiendo con lo que estamos trabajando.

Algunos ejemplos de análisis puramente descriptivos pueden verse en los censos. En un censo, el gobierno recopila una serie de mediciones en *todos* los ciudadanos del país. Después de recoger estos datos, se resumen. De este análisis descriptivo, aprendemos mucho sobre un país. Podrás aprender la distribución por edades de la población.

![Datos del censo de 2010 desglosados ​​por edad](images/04_descriptive/04_dataanalysis_descriptive-6.png)

Esto se puede desglosar más (o **estratificar**) por sexo para describir la distribución de edad por sexo. El objetivo de estos análisis es describir la población. No se hacen inferencias sobre lo que esto significa ni se hacen predicciones acerca de cómo los datos podrían evolucionar en el futuro. El punto de este (y todo) análisis descriptivo es resumir los datos recopilados.

![[Datos del censo de 2010 desglosados ​​por edad y sexo](images/04_descriptive/04_dataanalysis_descriptive-7.png)[Datos del censo de 2010 desglosados ​​por edad y sexo](NA

En esta lección, discutiremos los pasos necesarios para llevar a cabo un análisis descriptivo. Como esto será lo primero que hará cuando trabaje con un nuevo conjunto de datos, es importante analizar los ejemplos de esta lección paso a paso.

### Cómo describir un conjunto de datos

Cuando se le proporcione un nuevo conjunto de datos tabulares, ya sea un CSV que le haya enviado su jefe o una tabla que haya extraído de Internet, lo primero que querrá hacer es describir el conjunto de datos. Esto le ayuda a comprender qué tan grande es el conjunto de datos, qué información está contenida en el conjunto de datos y cómo se distribuye cada variable en el conjunto de datos.

![Análisis descriptivo](images/04_descriptive/04_dataanalysis_descriptive-5.png)

Para esta lección, vamos a alejarnos*del conjunto de datos `iris` o `mtcars` (ya que probablemente ya tengas un buen conocimiento de esos conjuntos de datos) y trabajaremos con un conjunto de datos que no hemos usado demasiado en este Conjunto de cursos: `msleep` (del paquete `ggplot2`). Este conjunto de datos incluye información sobre los mamíferos y sus hábitos de sueño. Cargaremos ese paquete y asignaremos el conjunto de datos al objeto `df`:

```r
## instalar y cargar el paquete
instalar.paquetes ("ggplot2")
biblioteca (ggplot2)

## asignar al objeto `df` 
df <- msleep
``` 

En general, lo primero que querrá saber acerca de su conjunto de datos es cuántas observaciones y cuántas variables está trabajando. Usted querrá entender el tamaño de su conjunto de datos.

Siempre puede mirar la pestaña Entorno en RStudio Cloud para ver cuántas observaciones y variables hay en su conjunto de datos; sin embargo, una vez que tenga muchos objetos, tendrá que desplazarse o buscar en esta lista para encontrar la información que está buscando.

![Pestaña Entorno](images/04_descriptive/04_dataanalysis_descriptive-11.png)

Para evitar tener que hacer eso, el enfoque más sencillo para obtener esta información es la función `dim()`, que le dará las **dimensiones** de su marco de datos. La salida se mostrará con el número de filas (observaciones) primero, seguido del número de columnas (variables).

``` 
## determinar las dimensiones
 oscuro (df)
``` 

![`dim()` salida](images/04_descriptive/04_dataanalysis_descriptive-12.png)

#### Variables

Hay formas adicionales de aprender un poco más sobre el conjunto de datos utilizando una función diferente. ¿Qué sucedería si quisiéramos saber no solo las dimensiones de nuestro conjunto de datos, sino también aprender un poco más sobre las variables con las que estamos trabajando?

Bueno, podríamos usar `dim()` y luego usar la función `colnames()` para determinar cuáles son los nombres de las variables en nuestro conjunto de datos:

``` 
## determinar nombres de variables
nombres de pila (df)
``` 

El resultado de los colnames nos dice que hay 11 variables en nuestro conjunto de datos y nos permite saber cuáles son los nombres de las variables para estos datos.

![`colnames()` salida](images/04_descriptive/04_dataanalysis_descriptive-13.png)

Pero, ¿qué pasaría si no quisiéramos usar dos funciones diferentes para esto *y*quisiéramos un poco más de información, como qué tipo de información se almacena en cada una de estas variables (columnas)? Para obtener*esa* información, recurrimos a la función `str()`, que nos proporciona información sobre la estructura del conjunto de datos.

```r
## estructura de visualización
str (df)
``` 

![`str()` salida](images/04_descriptive/04_dataanalysis_descriptive-14.png)

La salida aquí todavía nos dice el tamaño de `df` y los nombres de las variables, pero también aprendemos cuál es la clase de cada variable y vemos algunos de los valores para cada una de las variables.

Una función muy similar a `str()` es la función `glimpse()` del paquete `dplyr`. Como ha sido introducido anteriormente a esta función, solo queremos recordarle que `glimpse()` también se puede usar para comprender el tamaño y la estructura de su marco de datos

```r
## instalar y cargar el paquete
instalar.paquetes ("dplyr")
biblioteca (dplyr)

## vislumbrar sus datos
vislumbrar
``` 

![`glimpse()` salida](images/04_descriptive/04_dataanalysis_descriptive-15.png)

#### Valores faltantes

En cualquier análisis después de su análisis descriptivo, los datos faltantes pueden causar un problema. Por lo tanto, es mejor comprender desde un principio la falta de información en sus datos. **Falta** se refiere a observaciones que no están incluidas para una variable. En R, `NA` es la forma preferida de especificar los datos faltantes, por lo que si alguna vez genera datos, es mejor incluir `NA` siempre que tenga un valor faltante.

Sin embargo, las personas que están menos familiarizadas con la falta de código R de diferentes formas en sus datos: `-999`, `N/A`, `.`, ` `. Por lo tanto, es mejor verificar si la falta está codificada en su conjunto de datos. . Un recordatorio: a veces, diferentes variables dentro de un conjunto de datos individuales codificarán la falta de información de manera diferente. Esto no debería suceder, pero sucede, así que siempre tenga cuidado al buscar faltas.

En este conjunto de datos, todos los valores faltantes se codifican como `NA`, y de la salida de `str(df)` (o `glimpse(df)`), vemos que al menos unas pocas variables tienen `NA` valores. Sin embargo, desearemos cuantificar esta falta para ver qué variables tienen datos faltantes y cuántas observaciones dentro de cada variable faltan datos.

Para hacer esto, podemos escribir una función que calculará la ausencia dentro de cada una de nuestras variables. Para ello vamos a combinar algunas funciones. En el código aquí `is.na()` devuelve un lógico (VERDADERO / FALSO) dependiendo de si falta el valor (VERDADERO si falta). `sum()` luego calcula el número de valores VERDADEROS que hay dentro de una observación. Envolvemos esto en una función y luego usamos `sapply()` para calcular el número de valores faltantes en cada variable. El segundo bit del código hace exactamente lo mismo pero divide esos números por el número total de observaciones (usando `nrow(df)`. Para cada variable, esto devuelve la proporción de faltantes:

```r
## calcula cuántas NA hay en cada variable
sapply (df, function (x) sum (is.na (x)))

## calcular la proporción de desaparecidos
## para cada variable
sapply (df, function (x) sum (is.na (x))) / nrow (df)
``` 

![falta en `msleep`](images/04_descriptive/04_dataanalysis_descriptive-17.png)

Al ejecutar este código para nuestro marco de datos, vemos que muchas variables tienen valores perdidos. Específicamente, para interpretar esta salida para la variable `brainwt`, vemos que faltan datos en 27 observaciones. Esto corresponde al 32.5% de las observaciones en el conjunto de datos.

También es posible visualizar la falta de información para que podamos ver visualmente la cantidad de datos que faltan y determinar si las mismas muestras tienen datos que faltan en el conjunto de datos. Podría escribir una función para hacer esto usted mismo usando `ggplot2`; sin embargo, [Nicholas Tierney](http://www.njtierney.com/about/) has already written one for you. The function `ggplot_missing()` está incluida en su paquete `neato`, que está disponible en su GitHub.

Nota: si aún no ha instalado `devtools` en su espacio de RStudio Cloud, ejecutar el siguiente código tardará unos minutos.

```r
## instalar y cargar devtools
install.packages ("devtools")
biblioteca (devtools)

## instalar el paquete neato
devtools :: install_github ("njtierney / neato")
biblioteca (neato)

## visualizar la falta
ggplot_missing (df)
``` 

![`ggplot_missing()` salida](images/04_descriptive/04_dataanalysis_descriptive-19.png)

Aquí, vemos las variables enumeradas en la parte inferior. Cada fila en la visualización es una observación diferente. Los datos que faltan son de color gris. Los valores no perdidos están en negro. Centrándonos nuevamente en `brainwt`, podemos ver los 27 valores faltantes visualmente. También podemos ver que `sleep_cycle` es el que más falta, mientras que muchas variables no tienen datos faltantes.

Obtener una comprensión de qué valores faltan en su conjunto de datos es fundamental antes de pasar a cualquier otro tipo de análisis.

#### Forma

Determinar la forma de su variable es esencial antes de realizar cualquier análisis adicional. Los métodos estadísticos utilizados para la inferencia (analizados en una lección posterior) a menudo requieren que sus datos se distribuyan de cierta manera antes de que puedan aplicarse a los datos. Por lo tanto, poder describir la forma de sus variables es necesario durante su análisis descriptivo.

Cuando hablamos de la forma de los datos de uno, estamos discutiendo cómo se distribuyen los valores (observaciones) dentro de la variable. A menudo, primero determinamos qué tan dispersos están los números entre sí (¿todas las observaciones se encuentran entre 1 y 10? 1 y 1000? -1000 y 10?). Esto se conoce como el **rango** de los valores. El rango se describe por los valores mínimos y máximos tomados por las observaciones en la variable.

Después de establecer el rango, determinamos la forma o **distribución**de los datos. Más explícitamente, la distribución de los datos explica*cómo* los datos se distribuyen en este rango. ¿La mayoría de los valores están todos en el centro de este rango? O, ¿se extienden uniformemente en toda la gama? Hay una serie de distribuciones utilizadas comúnmente en el análisis de datos para describir los valores dentro de una variable. Cubriremos solo algunos de ellos en esta lección, pero tenga en cuenta que esto ciertamente no es una lista exhaustiva.

##### Distribución normal

La **distribución normal**(también conocida como la distribución**gaussiana**) es una distribución muy común y a menudo se describe como una curva en forma de campana. En esta distribución, los valores son simétricos alrededor del valor central con una alta densidad de los valores que caen alrededor del valor central. La mano izquierda de la curva refleja la mano derecha de la curva.

![Distribución normal](images/04_descriptive/04_dataanalysis_descriptive-21.png)

Una variable se puede describir como distribuida normalmente si:

* hay una fuerte tendencia a que los datos tomen un valor central: muchas de las observaciones se centran en el centro del rango
* Las desviaciones con respecto al valor central son igualmente probables en ambas direcciones
* La frecuencia de estas desviaciones con respecto al valor central se produce a la misma velocidad a ambos lados del valor central.

Mirando la variable `sleep_total` dentro de nuestro conjunto de datos de ejemplo, vemos que los datos son algo normales; Sin embargo, no son totalmente simétricos.

```r
ggplot (df, aes (sleep_total)) +
  geom_density ()
``` 

![distribución de `msleep` `sleep_total`](images/04_descriptive/04_dataanalysis_descriptive-22.png)

Una variable que se distribuye más normalmente se puede ver en el conjunto de datos `iris`, cuando se observa la variable `Sepal.Width`.

```r
ggplot (iris, aes (Sepal.Width)) +
  geom_density ()
``` 

![distribución de `iris` `Sepal.Width`](images/04_descriptive/04_dataanalysis_descriptive-23.png)



##### Distribución sesgada

Alternativamente, a veces los datos siguen una distribución sesgada. En una distribución sesgada, la mayoría de los valores caen a un extremo del rango, dejando una cola al otro lado. Cuando la cola está a la izquierda, se dice que la distribución está **sesgada a la izquierda**. Cuando está a la derecha, se dice que la distribución está**sesgada a la derecha**.

![Distribuciones sesgadas](images/04_descriptive/04_dataanalysis_descriptive-24.png)

Para ver un ejemplo del conjunto de datos `msleep`, veremos la variable `sleep_rem`. Aquí vemos que los datos están sesgados a la derecha, dado el cambio en los valores a la derecha, lo que lleva a una larga cola derecha. Aquí, la mayoría de los valores están en el extremo inferior del rango.

```r
ggplot (df, aes (sleep_rem)) +
  geom_density ()
``` 

![`sleep_rem` está sesgado a la derecha](images/04_descriptive/04_dataanalysis_descriptive-25.png)

##### Distribución uniforme

Finalmente, en las distribuciones que analizaremos hoy, a veces es probable que se encuentren valores para una variable en cualquier parte de la distribución. La curva para esta distribución se parece más a un rectángulo, ya que la probabilidad de que una observación tome un valor es constante en todo el rango de valores posibles.

![Distribución uniforme](images/04_descriptive/04_dataanalysis_descriptive-26.png)

##### Outliers

Ahora que hemos discutido las distribuciones, es importante discutir **valores atípicos** - o una observación que se aleje del resto de las observaciones en la distribución. Si observara una curva de densidad, podría identificar visualmente los valores atípicos como observaciones que se alejan del resto de las observaciones.

![curva de densidad con un valor atípico](images/04_descriptive/04_dataanalysis_descriptive-27.png)

Por ejemplo, imagine que tenía una muestra en la que todos los individuos de su muestra tienen entre 18 y 65 años de edad, pero luego tiene una muestra que tiene 1 año y otra que tiene 95 años.

![Población de muestra](images/04_descriptive/04_dataanalysis_descriptive-28.png)

Si tuviéramos que graficar los datos de edad en una gráfica de densidad, se vería algo así:

![ejemplo de mapa de densidad](images/04_descriptive/04_dataanalysis_descriptive-29.png)

El bebé y la persona mayor saldrían como atípicos en la trama.

Después de identificar los valores atípicos, uno debe determinar si las muestras de valores atípicos deben incluirse o eliminarse de su conjunto de datos. Esto es algo a tener en cuenta al realizar un análisis.

![precaución](images/04_descriptive/04_dataanalysis_descriptive-30.png)

A veces puede ser difícil decidir si se debe eliminar o no una muestra del conjunto de datos. En los términos más simples, *no se debe eliminar ninguna observación de su conjunto de datos a menos que haya un**motivo válido**para hacerlo*. Para un ejemplo más extremo, ¿qué pasaría si el conjunto de datos que acabamos de analizar (con todas las muestras con edades entre 18 y 65 años) tuviera una muestra con la edad de 600? Bueno, si estos son datos humanos, claramente sabemos que es un error de entrada de datos. Tal vez se suponía que tenía 60 años, pero no podemos estar seguros. Si podemos hacer un seguimiento de ese individuo y verificarlo, es mejor hacerlo, corregir el error, anotarlo y continuar con el análisis. Sin embargo, a menudo eso no es posible. En los casos de errores evidentes de entrada de datos, es probable que tenga que eliminar esa observación del conjunto de datos. Es válido hacerlo en este caso, ya que sabe que ocurrió un error y que la observación no fue precisa.

Los valores atípicos no solo se producen debido a errores de entrada de datos. Tal vez estuviste tomando el peso de tus observaciones en el transcurso de unas pocas semanas. En uno de estos días, su báscula se calibró incorrectamente, lo que llevó a mediciones incorrectas. En tal caso, tendría que eliminar estas observaciones incorrectas antes del análisis.

Los valores atípicos pueden ocurrir por una variedad de razones. Los valores atípicos pueden ocurrir debido a un error humano durante la entrada de datos, problemas técnicos con las herramientas utilizadas para la medición, como resultado de cambios climáticos que afectan la precisión de la medición o debido a procedimientos de muestreo deficientes. Siempre es importante mirar la distribución de sus observaciones de una variable para ver si algo se está alejando del resto de las observaciones. Si los hay, entonces es importante pensar por qué ocurrió esto y determinar si tiene una razón válida para eliminar las observaciones de los datos.

Una nota importante es que las observaciones nunca deben ser eliminadas para que sus resultados se vean mejor. Desear mejores resultados es **no** una razón válida para eliminar observaciones de su conjunto de datos.

###### Identificación de valores atípicos

Para identificar visualmente los valores atípicos, las gráficas de densidad y las gráficas de caja pueden ser muy útiles.

Por ejemplo, si volviéramos al conjunto de datos `iris` y miráramos la distribución de `Petal.Length`, veríamos una distribución bimodal (¡otra distribución más!). Las distribuciones bimodales se pueden identificar mediante diagramas desnity que tienen dos jorobas distintas. En estas distribuciones, hay dos modos diferentes: de aquí proviene el término "bimodal" . En esta trama, la curva sugiere que hay un número de flores con una longitud de pétalo menor que 2 y muchas con una longitud de pétalo alrededor de 5.

```r
## diagrama de densidad
biblioteca (ggplot)
ggplot (iris, aes (Petal.Length)) +
  geom_density ()
``` 

![`iris` gráfico de densidad](images/04_descriptive/04_dataanalysis_descriptive-32.png)

Dado que las dos jorobas en la parcela tienen aproximadamente la misma altura, esto muestra que no son solo una o dos flores con longitudes de pétalos mucho más pequeñas, sino que hay muchas. Por lo tanto, estas observaciones no son probablemente un valor atípico.

Para investigar más a fondo, veremos la longitud del pétalo desglosada por especies de flores:

```r
## diagrama de caja
ggplot (iris, aes (Species, Petal.Length)) +
  geom_boxplot ()
``` 

![`iris` boxplot](images/04_descriptive/04_dataanalysis_descriptive-33.png)

En esta gráfica de caja, observamos que `setosa` tiene una longitud de pétalo más corta, mientras que `virginica` tiene la más larga. ¡Si simplemente hubiéramos eliminado todas las flores de pétalos más cortos de nuestro conjunto de datos, habríamos perdido información sobre una especie completa!

Los diagramas de caja también son útiles porque trazan 660195 muestras "atípicas" como puntos fuera de la caja. De forma predeterminada, los diagramas de caja definen las observaciones 660195 de "valores atípicos" como aquellas que son 1.5 x IQR (rango intercuartil). El IQR es la distancia entre el primer y el tercer cuartil. Esta es una forma matemática para determinar si una muestra *puede*ser un valor atípico. Es visualmente útil, pero luego depende del analista determinar si se debe eliminar una observación. Si bien el diagrama de caja identifica valores atípicos en las especies setosa y versicolor, estos valores se encuentran a una distancia razonable del resto de los valores, y, a menos que pudiera determinar*por qué* ocurrió esto, no eliminaría estas observaciones del conjunto de datos

![`iris` diagrama de caja con anotaciones](images/04_descriptive/04_dataanalysis_descriptive-34.png)

#### Tendencia central

Una vez que sepa qué tan grande es su conjunto de datos, sobre qué variables tiene información, cuántos datos faltantes tiene para cada variable y la forma de sus datos, estará listo para comenzar a entender la *información dentro de los valores* de cada variable

Algunas de las medidas más simples e informativas que puede calcular sobre una variable numérica son las de **tendencia central**. Las dos medidas de tendencia central más utilizadas son: media y mediana. Estas medidas proporcionan información sobre el valor*típico*o*central* en la variable.

##### significa

La media (a menudo referida como el promedio) es igual a la suma de todas las observaciones en la variable dividida por el número total de observaciones en la variable. La media toma todos los valores de su variable y calcula el **valor más común**.

Entonces, si tuvieras el siguiente vector: `a <- c(1, 2, 3, 4, 5, 6)`, la media sería 3.5.

![calculando la media](images/04_descriptive/04_dataanalysis_descriptive-36.png)

Pero, ¿qué pasaría si agregáramos otro '3' a ese vector, de manera que fuera: `a <- c(1, 2, 3, 3, 4, 5, 6)`. Ahora, la media sería 3.43. Disminuiría el promedio para este conjunto de números, como puede ver en los cálculos aquí:

![promedio disminuido](images/04_descriptive/04_dataanalysis_descriptive-37.png)

Para calcular la media en R, la función es `mean()`. Aquí mostramos cómo calcular la media de una variable en R. Tenga en cuenta que cuando tenga NA en una variable, deberá informar a R para eliminar las NA (utilizando `na.rm=TRUE`) antes de calcular su media. De lo contrario, devolverá `NA`.

```r
## esto devolverá NA
mean (df $ sleep_cycle)

## tengo que decirle a R que ignore las AN
mean (df $ sleep_cycle, na.rm = TRUE)
``` 

![`mean(sleep_cycle)`](images/04_descriptive/04_dataanalysis_descriptive-38.png)

##### mediana

La mediana es la observación media para una variable después de que las observaciones en esa variable se hayan organizado en orden de magnitud (de la más pequeña a la más grande). La mediana es el **valor medio**.

Usando el mismo vector que usamos primero para calcular la mediana, vemos que el valor medio para este conjunto de números es 3.5 ya que este es el valor en el centro de este conjunto de números. Esto pasa a tener el mismo valor que la media.

Sin embargo, ese no es siempre el caso. Cuando sumamos ese segundo 3 en medio del conjunto de números, la mediana ahora es 3, ya que este es el valor en el centro de este conjunto de números. 3 es el valor medio.

![medianas](images/04_descriptive/04_dataanalysis_descriptive-40.png)

Para calcular la mediana en R, use la función `median()`. Nuevamente, cuando hay NA en la variable, debes decirle a R explícitamente que los elimine antes de calcular la mediana.

```r
## calcular la mediana
mediana (df $ sleep_cycle, na.rm = TRUE)
``` 

![mediana `sleep_cycle`](images/04_descriptive/04_dataanalysis_descriptive-41.png)

Si bien no es exactamente el mismo valor, la media y la mediana de `sleep_cycle` son similares (0.44 y 0.33). Sin embargo, este no es siempre el caso. Para los datos que están **sesgados**o contienen**valores atípicos** - valores que son muy diferentes del resto de los valores en la variable - la media y la mediana serán muy diferentes entre sí. En nuestro conjunto de datos de ejemplo, la media y los valores medianos para la variable `bodywt` son bastante diferentes entre sí.

```r
## calcular media y mediana
media (df $ bodywt)
mediana (df $ bodywt)

## mirar el histograma
ggplot (df, aes (bodywt)) +
  geom_histograma ()
``` 

![media vs mediana](images/04_descriptive/04_dataanalysis_descriptive-42.png)

Cuando observamos el histograma de los datos, vemos que la mayoría de los pesos corporales pesan menos de 200 libras. Por lo tanto, la mediana, o valor que estaría en el medio si alineara todos los pesos en orden, es de 1.6 kilogramos. Sin embargo, hay algunos mamíferos que son mucho más grandes que el resto de los animales. Estos mamíferos son **valores atípicos en el conjunto de datos**. Estos valores extremos aumentan la media. Estos animales más grandes conducen la media del conjunto de datos a 166 kilogramos.

Cuando tiene valores atípicos en el conjunto de datos, la mediana suele ser la medida de la tendencia central que querrá usar, ya que es resistente a los efectos de los valores atípicos.

##### modo

Hay una tercera medida, calculada con menos frecuencia, de la tendencia central para las variables continuas, conocida como el modo. Este es el valor que aparece con más frecuencia en su conjunto de datos. Por ejemplo, si su conjunto de datos `a` estuviera compuesto por los siguientes números `a <- c(0, 10, 10, 3, 5, 10, 10)`, 10 sería el modo ****, ya que ocurre cuatro veces. No importa si es el valor más grande, el valor más pequeño o en algún punto intermedio, el valor más frecuente en su conjunto de datos es el modo. No existe una función incorporada para calcular el modo en R para un valor numérico, lo que debería sugerir que, para las variables continuas, conocer el modo de una variable suele ser menos crucial que conocer la media y la mediana (lo que es cierto). Sin embargo, podrías escribir una función para calcularla. Para el vector anterior `a`, `which.max(tabulate(a))` devolvería el modo: 10. (Tenga en cuenta que esto no funcionaría si tuviera dos valores que se encontraron en el conjunto de datos en la misma frecuencia. Un enfoque más elocuente sería requerido.)

![modo de una variable continua](images/04_descriptive/04_dataanalysis_descriptive-43.png)

Sin embargo, para las variables categóricas, el nivel con la mayor cantidad de observaciones sería el modo. Esto se puede determinar utilizando la función `table()`, que desglosa el número de observaciones dentro de la variable categórica

![`table()` salida](images/04_descriptive/04_dataanalysis_descriptive-44.png)


Además, el modo para una variable categórica puede visualizarse generando una gráfica de barras:

```r
## graficar variable categórica para visualizar el modo
ggplot (df, aes (orden)) +
  geom_bar () +
  tema (axis.text.x = elemento_texto (ángulo = 90,
                                   hjust = 1,
                                   vjust = 0.5))
``` 

![`geom_bar` muestra visualmente el modo](images/04_descriptive/04_dataanalysis_descriptive-45.png)


#### variabilidad

Además de las medidas de tendencia central, las medidas de variabilidad son clave para describir los valores dentro de una variable. Dos medidas comunes y útiles de variabilidad son: desviación estándar y varianza. Ambas son medidas de
Cómo se distribuyen los valores en una variable.

##### varianza

La varianza te dice cómo están distribuidos los valores. Si todos los valores dentro de su variable son exactamente iguales, la varianza de esa variable será cero. Cuanto mayor sea su variación, más dispersos estarán sus valores. Tome el siguiente vector y calcule su varianza en R usando la función `var()`:

```r
## varianza de un vector donde todos los valores son iguales
a <- c (29, 29, 29, 29)
var (a)

## varianza de un vector con un valor muy diferente
b <- c (29, 29, 29, 29, 723678)
var (b)
``` 

![varianza](images/04_descriptive/04_dataanalysis_descriptive-47.png)

La única diferencia entre los dos vectores es que el segundo tiene un valor que es mucho mayor que "29". La varianza para este vector es por lo tanto mucho mayor.


##### Desviación estándar

Por definición, la desviación estándar es la raíz cuadrada de la varianza, por lo tanto, si tuviéramos que calcular la desviación estándar en R usando la función `sd()`, veríamos que la función `sd()` es igual a la raíz cuadrada de la varianza:

```r
## calcular la desviación estándar
SD (b)

## esto es lo mismo que la raíz cuadrada de la varianza
sqrt (var (b))
``` 

![Desviación estándar](images/04_descriptive/04_dataanalysis_descriptive-48.png)

Para ambas medidas de varianza, el valor mínimo es 0. Cuanto mayor sea el número, más dispersos estarán los valores en el valor.


### Resumiendo sus datos

A menudo, querrá incluir tablas en sus informes que resuman su conjunto de datos. Estos incluirán el número de observaciones en su conjunto de datos y tal vez la media / mediana y la desviación estándar de algunas variables. Estos podrían organizarse en una tabla utilizando lo que aprendió en el curso de visualización de datos sobre la generación de tablas.

#### skimr

Alternativamente, hay un paquete útil que resumirá todas las variables dentro de su conjunto de datos. El paquete `skimr` proporciona una salida ordenada con información sobre su conjunto de datos.

Para usar `skimr`, deberá instalar y cargar el paquete antes de usar la función útil `skim()` para obtener una instantánea de su conjunto de datos.

```r
instalar.paquetes ("skimr")
biblioteca (skimr)
desnatado (df)
``` 

![`skim()` salida](images/04_descriptive/04_dataanalysis_descriptive-49.png)

El resultado de skim resume por separado las variables categóricas y continuas. Para las variables continuas, obtiene información sobre la media y la mediana (`p50`) de la columna. Usted sabe cuál es el rango de la variable (`p0` es el valor mínimo, `p100` es el valor máximo para las variables continuas). También obtiene una medida de variabilidad con la desviación estándar (`sd`). ¡Incluso cuantifica el número de valores perdidos (`missing`) y le muestra la distribución de cada variable (`hist`)! Esta función puede ser increíblemente útil para obtener una instantánea rápida de lo que está sucediendo con su conjunto de datos.

#### Análisis descriptivos publicados

En los trabajos académicos, los análisis descriptivos a menudo conducen a la información incluida en la primera tabla del documento. Estas tablas resumen información sobre las muestras utilizadas para el análisis en el documento. Aquí, estamos viendo la primera tabla en un [artículo publicado en el New England Journal of Medicine por The CATT Research Group](https://www.nejm.org/doi/full/10.1056/nejmoa1102673).

![Tabla 1](images/04_descriptive/04_dataanalysis_descriptive-50.png)

Podemos ver que hay mucha información descriptiva que se resume en esta tabla con solo echarle un vistazo. Si nos acercamos y simplemente nos enfocamos en la parte superior de la tabla, vemos que los autores han desglosado varias variables (las filas) y resumieron cuántos pacientes tenían en cada una de sus categorías experimentales (las columnas). Centrándonos específicamente en el sexo, podemos ver que había 183 mujeres y 118 hombres en su primer grupo experimental. En los paréntesis, resumen el porcentaje de su muestra. En esta misma categoría, la muestra fue 60.8% femenina y 39.2% masculina.

![Tabla 1 - solo la parte superior](images/04_descriptive/04_dataanalysis_descriptive-51.png)


Brindamos esto aquí como un ejemplo de cómo alguien incluiría un análisis descriptivo en un informe o publicación. No siempre tiene que ser tan largo, pero siempre debe describir sus datos cuando los comparte con otros.

### Resumen

Esta lección cubrió las partes necesarias para llevar a cabo un análisis descriptivo. En general, la descripción de un conjunto de datos implica la descripción del número de observaciones y variables en su conjunto de datos, la comprensión de la falta y la comprensión de la forma, la tendencia central y la variabilidad de cada variable. La descripción debe ocurrir como el primer paso en cualquier análisis de datos.

### Recursos adicionales

* [Visualizar datos incompletos y faltantes](https://flowingdata.com/2018/01/30/visualizing-incomplete-and-missing-data/?utm_content=buffer8adce&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer) por Yau](http://flowingdata.com/about-nathan)
* [`neato` package](https://github.com/njtierney/neato), de [Nicholas Tierney](http://www.njtierney.com)
* [Utilizando el paquete `skimr`](https://cran.r-project.org/web/packages/skimr/vignettes/Using_skimr.html), por [Elin Waring](https://elinwaring.org/)

### Diapositivas y Video

![Análisis descriptivo](https://www.youtube.com/watch?v=b_Lhz3HKDys)

* [Diapositivas](https://docs.google.com/presentation/d/1sDojkPrY2T5_qwT2bLD-8DRGcUHie1N9I95e6U2Jimc/edit?usp=sharing)

{quiz, id: quiz_04_descriptive}

### prueba de análisis descriptivo

{choose-answers:4}
? ¿Cuál de los siguientes describe un análisis descriptivo?

C) Haga histogramas de sus datos de muestra para calcular la media, la mediana y la varianza de cada variable en su conjunto de datos
C) Genere una tabla que resuma el número de observaciones en su conjunto de datos, así como las tendencias centrales y las variaciones de cada variable
o) Sacar conclusiones de su distribución de datos de muestra e inferir para la población más grande
o) Use su distribución de datos de muestra para hacer predicciones para el futuro
o) Adapte los modelos de regresión a sus datos de muestra y use sus datos para interpretar los coeficientes en el modelo
o) Usa tu conjunto de datos para entender el vínculo mecánico entre dos variables
o) Use su conjunto de datos para ejecutar un ensayo aleatorio, lo que resulta en una comprensión causal

{choose-answers:4, points:3}
)

C) sesgado a la derecha
o) Normal
m) sesgado a la izquierda
o) Uniforme
o) Poisson
o) Bernoulli

{choose-answers:4}
? Para una variable continua con una distribución sesgada, ¿cuál es la medida más adecuada de la tendencia central?

C) mediana
m) significa
o) modo
o) desviación estándar
o) varianza
onaranja

{choose-answers:4}
? Para describir qué tan dispersos están los números en tu variable, ¿qué podrías usar?

C) desviación estándar
C) varianza
C) rango
o) modo
o) mediana
o) significa
o) suma


{/quiz}
