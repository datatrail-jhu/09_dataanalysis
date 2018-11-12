# Análisis exploratorio

El objetivo de un análisis exploratorio es examinar, o **explorar**los datos y encontrar**relaciones** que no se conocían previamente. Los análisis exploratorios exploran cómo las diferentes medidas podrían estar relacionadas entre sí, pero no confirman esa relación como causal, es decir, una variable que causa a otra. Probablemente ha escuchado la frase "La correlación no implica causalidad", 901570 y los análisis exploratorios se encuentran en la raíz de este dicho. El hecho de que observe una relación entre dos variables durante el análisis exploratorio, no significa que una necesariamente cause la otra.

Debido a esto, los análisis exploratorios, aunque son útiles para descubrir nuevas conexiones, ¡no deberían ser la última palabra para responder una pregunta! Puede permitirle formular hipótesis e impulsar el diseño de estudios futuros y la recopilación de datos, pero el análisis exploratorio por sí solo nunca debe usarse como la última palabra sobre por qué o cómo los datos pueden estar relacionados entre sí. En resumen, el análisis exploratorio nos ayuda a hacer mejores preguntas, pero no responde a las preguntas. Más específicamente, exploramos datos para:

* Comprender las propiedades de los datos, como las relaciones no lineales, la existencia de valores perdidos, la existencia de valores atípicos, etc.
* Encontrar patrones en datos tales como asociaciones, diferencias de grupo, factores de confusión, etc.
* Sugerir estrategias de modelado tales como modelos lineales vs. no lineales, transformación.
* "Debug" analyses
* Comunicar resultados.


### Principios generales del análisis exploratorio.

Podemos resumir los principios generales del análisis exploratorio de la siguiente manera:

* Buscar valores faltantes.
* Buscar valores atípicos
* Usar parcelas para explorar relaciones
* Usa tablas para explorar relaciones
* Si es necesario, transformar variables.


Estos principios pueden ser más claros en un ejemplo. Usaremos un conjunto de datos de [Kaggle.com](www.kaggle.com) que contiene 120 años de historia de los Juegos Olímpicos sobre atletas y resultados. Si no tiene una cuenta en Kaggle, cree una y vaya al enlace https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results y en "Fuentes de datos" descargue el `athlete_events.csv` en su computadora.

![Conjunto de datos sobre 120 años de historia de los Juegos Olímpicos sobre atletas y resultados](images/05_exploratory/05_dataanalysis_exploratory-3.png)

Cargue los datos en RStudio.cloud e importe el archivo csv con los comandos que ha aprendido. Desafortunadamente, no puede descargar el archivo csv directamente desde la dirección web ya que la descarga de conjuntos de datos en Kaggle requiere iniciar sesión.

![Importando datos usando `read_csv()`](images/05_exploratory/05_dataanalysis_exploratory-4.png)

Como aprendimos anteriormente, podemos usar el paquete `skimr` para echar un vistazo a los datos.

![Utilizando el paquete skimr para tener un resumen de los datos](images/05_exploratory/05_dataanalysis_exploratory-5.png)

Vemos que el conjunto de datos contiene 15 variables y 271,116 observaciones. Algunas de las variables son de tipo factor y otras son de tipo entero o numérico. El conjunto de datos incluye variables sobre atletas como el nombre, el sexo, el deporte jugado, si recibieron una medalla, edad y altura. Primero necesitamos entender las propiedades de los datos. Así que vamos a empezar con los valores perdidos.

![Tenemos diferentes tipos de variables en nuestros datos](images/05_exploratory/05_dataanalysis_exploratory-6.png)


Primero, los resultados de la función `skim()` indican que algunas de nuestras variables tienen muchos valores faltantes. Por ejemplo, la variable `Medal` tiene 231,333 valores perdidos. En general, este es un lugar de preocupación ya que la mayoría de los análisis estadísticos ignoran las observaciones con valores faltantes. Sin embargo, es obvio que los valores faltantes para la variable `Medal` son principalmente porque el atleta no recibió ninguna medalla. Así que este tipo de valor perdido no debería ser un problema. Sin embargo, nos faltan valores en las variables `Height` y `Age`. Como vamos a utilizar estas variables en nuestro análisis en esta lección, las observaciones con valores perdidos para estas dos variables se eliminarán de nuestro análisis. Recuerde que `NA` es el carácter más común para los valores faltantes, pero a veces se codifican como espacios, 999, -1 o "faltantes". Compruebe los valores que faltan en una variedad de formas.

![Hay algunos valores faltantes en los datos](images/05_exploratory/05_dataanalysis_exploratory-7.png)


En segundo lugar, podemos ver que hay algunos valores atípicos en algunas de las variables numéricas. Por ejemplo, mire el resumen de la variable `Age`. Aunque la edad promedio entre todos los atletas es de alrededor de 25, hay una persona que tiene 97 años (dato curioso: use el comando `subset(df, df$Age == 97)` para consultar la información sobre este atleta. Verá que el nombre del atleta es John Quincy Adams Ward y compitió en el deporte (!) Art Competitions Mixed Sculpturing en 1928. Este artista es conocido por su estatua de George Washington frente al Federal Hall en Wall Street en la ciudad de Nueva York. .) Siempre es bueno saber acerca de la existencia de valores atípicos en su muestra. Los valores atípicos pueden sesgar significativamente los resultados de su análisis. También puede encontrar valores atípicos observando la distribución de su variable.

![Hay un valor atípico en la variable Age](images/05_exploratory/05_dataanalysis_exploratory-8.png)


Los histogramas, en general, son una de las mejores maneras de observar una variable y detectar anomalías. Puede ver que la edad de la mayoría de los individuos en la muestra es entre 18 y 35 años.

![Histograma de la variable Edad](images/05_exploratory/05_dataanalysis_exploratory-9.png)


Ahora, en lugar de simplemente resumir los puntos de datos dentro de una sola variable, podemos ver cómo dos o más variables pueden estar relacionadas entre sí. Por ejemplo, nos gusta saber si existe una asociación entre la edad de los atletas y su género. Una de las maneras de hacer esto es observar un diagrama de caja de edades agrupadas por género, es decir, la distribución de la edad separada para atletas masculinos y femeninos. Boxplot muestra la distribución de la edad variable para los grupos de género. Puede ver que la edad promedio es ligeramente mayor para los hombres que para las mujeres.

![Gráfico de caja de la variable Edad para hombres y mujeres](images/05_exploratory/05_dataanalysis_exploratory-10.png)

Si estamos interesados ​​en ver la distribución de atletas masculinos y femeninos a lo largo del tiempo, podemos usar tablas de frecuencia. Primero creamos una tabla de frecuencia de la proporción de mujeres en cada evento olímpico. Las tablas son buenas para observar las variables de factores o caracteres.


![Combinar datos para encontrar la proporción de atletas femeninas en el tiempo](images/05_exploratory/05_dataanalysis_exploratory-11.png)


Ahora, si queremos trazar esta tendencia, podemos usar `geom_line()` desde `ggplot`. Es interesante que la proporción de mujeres entre todos los atletas que alguna vez estuvo en un nivel muy bajo a principios del siglo XX ha aumentado hasta casi el 50% en los tiempos modernos.

![Gráfico de la participación de atletas femeninas en el tiempo](images/05_exploratory/05_dataanalysis_exploratory-12.png)

En general, los gráficos más importantes en el análisis exploratorio de datos son:

* Gráficos de dispersión (`geom_point()`)
* Histogramas (`geom_histogram()`)
* Gráficas de densidad (`geom_density()`)
* Gráficos de caja (`geom_boxplot()`)
* Barplots (`geom_bar()`)

Para terminar nuestra lección sobre análisis exploratorio, consideremos una pregunta: ¿es más probable que los atletas más altos ganen una medalla? Para responder a esta pregunta podemos utilizar diferentes métodos. Podemos ver la distribución de la altura para aquellos que recibieron una medalla y aquellos que no lo hicieron. Podemos utilizar boxplots o barplots. La elección es suya, pero como las gráficas de caja son más informativas, las utilizaremos. Primero podemos crear una variable que indique si el atleta tiene alguna medalla (la variable `Medal` indica el tipo de medallas). Tenga en cuenta que la variable `has.medal` es una transformación de la variable `Medal`.

![Creando una variable que muestra si el atleta tiene una medalla o no](images/05_exploratory/05_dataanalysis_exploratory-14.png)

Y ahora, usamos el siguiente código para crear el diagrama de caja.

![Gráfico de caja para la relación entre la altura y haber ganado una medalla](images/05_exploratory/05_dataanalysis_exploratory-15.png)

Lo que es obvio es que los que tienen una medalla son más altos. ¿Podemos decir que ser alto aumenta la probabilidad de ganar una medalla en los Juegos Olímpicos? La respuesta a esta pregunta es que no sabemos. Hay algunos escenarios posibles. Por ejemplo, podría ser cierto que ser alto aumenta las posibilidades de ganar medallas. Pero también podría ser que haya más medallas otorgadas en deportes como el voleibol o el baloncesto que requieren atletas más altos. En estos deportes, cada miembro del equipo ganador obtiene una medalla (incluso si el país cuenta solo una medalla se cuenta para el país). Como resultado, podemos terminar teniendo tantos atletas altos con una medalla en cada Olimpiada. También podría ser que haya otros factores de confusión involucrados que expliquen por qué un atleta gana una medalla. Aprenderemos sobre variables de confusión en lecciones futuras. Por ahora, es importante saber, como dijimos al comienzo de esta lección, que asociación o correlación no significa causalidad.


### Diapositivas y Video

![Análisis exploratorio](https://www.youtube.com/watch?v=lqHlLC652zw)

* [Diapositivas](https://docs.google.com/presentation/d/1fVhtSr4JTBQW4oSxtJ4u3T6EijVvXIa8DnSgz7_L9r0/edit?usp=sharing)

{quiz, id: quiz_05_exploratory}

### prueba de análisis exploratorio

{choose-answers:4}
?1 ¿Cuál de las siguientes no está entre las razones por las que usamos el análisis exploratorio?

C) Uso del análisis de predicción.
C) Realizar análisis de regresión para poder inferir resultados sobre la población general.
o) Comprender las propiedades de los datos, como las relaciones no lineales, la existencia de valores perdidos, la existencia de valores atípicos, etc.
o) Encontrar patrones en datos tales como asociaciones, diferencias de grupo, factores de confusión, etc.
o) Sugerir estrategias de modelado tales como modelos lineales vs. no lineales, transformación
o) "Debug" analyses
o) Comunicar resultados

{choose-answers:4}
?2 ¿Cuál de los siguientes no se encuentra entre los principios generales del análisis exploratorio?

C) Los valores atípicos no deben ser verificados ya que contienen información importante
C) Las regresiones no lineales son mejores que las regresiones lineales
C) Siempre use tablas de resumen en el análisis exploratorio en lugar de gráficos
o) Busca valores faltantes
o) Usar parcelas para explorar relaciones
o) Usa tablas para explorar relaciones
o) Si es necesario, transformar variables.

{choose-answers:4, points:2}
?3 En el conjunto de datos utilizado en esta lección, ¿cuál es el número de valores faltantes en la variable `Age`?

C) 9474
m) 60171
o) 261642
o) 0
o) 271116

{choose-answers:4, points:2}
?3 En el [conjunto de datos](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results) utilizado en esta lección, ¿cuál es el número de valores faltantes en el variable `Height`?

C) 60171
m) 9474
o) 261642
o) 0
o) 271116

{choose-answers:4}
?4 En el [conjunto de datos](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results) utilizado en esta lección, ¿cuál es el peso del atleta más pesado?

C) 214
o) 25
o) 60
o) 70
o) 70.7
o) 79

{choose-answers:4}
?4 En el [conjunto de datos](https://www.kaggle.com/heesoo37/120-years-of-olympic-history-athletes-and-results) utilizado en esta lección, ¿cuál es la altura del atleta más alto?

C) 226
m) 214
o) 127
o) 60
o) 100
o) 70.7
o) 79

{choose-answers:4}
?5 ¿Cuál de las siguientes funciones `ggplot2` se puede usar para producir un diagrama de dispersión?

C)`
m)`
o)`
o)`
o)`

{choose-answers:4}
?5 ¿Cuál de las siguientes funciones de `ggplot2` se puede usar para producir un gráfico de barras?

C)`
m)`
o)`
o)`
o)`

{points:3}
?6 Vaya a [Chromebook Data Science Space en RStudio Cloud](https://rstudio.cloud/spaces/3919/join?access_code=RUUQ%2BeEgKea0oMF7EJy4UePldyBBMu7d0amv2KFC) and click on your copy of the 'swirl' project (If you haven't made a copy yet, do so now.) Then, type `swirl()` para comenzar. Dile a Swirl tu primer nombre cuando te pregunte cómo llamarte. Luego, escriba el número que corresponde al curso `CBDS Data Analysis`. Escriba el número que corresponde a la lección `L05 Exploratory Analysis Q01 Swirl`. ¡Haz este módulo remolino! Una vez completado, pegue el código al final de la lección aquí.

! /.+(FdHp|vp1F|ZDic|jFbv|t8UC|USLe|1dZb|a66z|P4Jk|kzFD).+/i


{points:3}
?7 Dentro del mismo curso de swirl: `CBDS Getting Data`, navegue a la lección `L05 Exploratory Analysis Q02 Swirl`. ¡Haz este módulo remolino! Una vez completado, pegue el código proporcionado al final del módulo de remolino aquí.

! /.+(b3JA|Bx0b|JwPw|DlLI|Zq19|vn6g|DpIe|gMM5|mAiU|vRzJ).+/i

{points:3}
?8 Dentro del mismo curso de swirl: `CBDS Getting Data`, navegue a la lección `L05 Exploratory Analysis Q03 Swirl`. ¡Haz este módulo remolino! Una vez completado, pegue el código proporcionado al final del módulo de remolino aquí.

! /.+(2CZB|FauT|Bjpx|MnXb|CLcf|Ainc|dvav|Fvcl|6gNn|zchI).+/i

{points:3}
?9 Dentro del mismo curso de swirl: `CBDS Getting Data`, navegue a la lección `L05 Exploratory Analysis Q04 Swirl`. ¡Haz este módulo remolino! Una vez completado, pegue el código proporcionado al final del módulo de remolino aquí.

! /.+(S9C5|GkSz|LsiP|cm9Z|tsT1|xx8h|ud6J|dtF8|cpWo|UxWB).+/i

{/quiz}
