# Predicción y Aprendizaje Automático

En la última lección, discutimos que el análisis de datos inferenciales busca aprender algo sobre una población haciendo inferencias a partir de una muestra representativa. Si bien el objetivo de la inferencia es aprender algo sobre la población, cuando hablamos de **predicción**, el enfoque está en el individuo. El objetivo de los métodos de análisis predictivo y aprendizaje automático es**entrenar un modelo utilizando datos**para hacer predicciones sobre un*individuo*.

En otras palabras, el **objetivo del análisis predictivo**es utilizar los datos que tiene ahora para hacer**predicciones**sobre**datos futuros**.

Pasamos mucho tiempo tratando de predecir cosas en la vida diaria: el clima que se avecina, los resultados de los eventos deportivos y los resultados de las elecciones. Anteriormente mencionamos a Nate Silver en [FiveThirtyEight](fivethirtyeight.com), where they try and predict the outcomes of U.S. elections (and sporting events too!). Con datos y tendencias de sondeo históricos y sondeos actuales, FiveThirtyEight construye modelos para predecir los resultados y la próxima votación presidencial de los Estados Unidos, ¡y ha sido bastante acertado al hacerlo! Los modelos de FiveThirtyEight predijeron con precisión las elecciones de 2008 y 2012 y fueron considerados ampliamente como un valor atípico en las elecciones de 2016 en Estados Unidos, ya que fue uno de los pocos modelos que sugirieron que Donald Trump tenía posibilidades de ganar.

Predecir el resultado de las elecciones es un ejemplo clave de análisis predictivo, donde los datos históricos (datos que tienen ahora) se usan para predecir algo sobre el futuro.

![Conceptos básicos del análisis predictivo](images/07_prediction_ml/07_dataanalysis_prediction_ml-2.png)

En esta lección, repasaremos las piezas importantes para llevar a cabo un análisis predictivo, qué consideraciones se deben hacer al hacer predicciones, analizaremos qué es el aprendizaje automático y hablaremos sobre cómo evaluar la precisión dentro de un análisis predictivo.

### ¿Qué es el aprendizaje automático?

Hasta ahora hemos estado discutiendo el análisis predictivo. Sin embargo, es posible que haya escuchado a personas en las noticias o en la vida cotidiana hablar sobre el "aprendizaje automático". 136326El objetivo del aprendizaje automático es construir modelos (a menudo denominados **algoritmos**) a partir de los patrones en datos que se pueden usar para predicciones en el futuro. Para nuestros propósitos, es seguro argumentar que al hacer un análisis predictivo, en realidad estamos haciendo un aprendizaje automático. Como tal, usaremos el aprendizaje automático durante el resto de esta lección. Aquí,**aprendizaje automático** se refiere al uso de las relaciones dentro de un conjunto de datos para construir un modelo que se puede usar para la predicción.

Dicho esto, hay sin duda un campo completo de individuos dedicados al aprendizaje automático. Esta lección solo tocará los conceptos básicos dentro del campo.

### Aprendizaje automático

Para hacer predicciones para el futuro utilizando los datos que tiene ahora, hay cuatro pasos generales:

1. División de datos: ¿qué datos utilizará para capacitar a su modelo? ¿Para afinar tu modelo? ¿Para probar tu modelo?
2. Selección de variables: ¿qué variable (s) de los datos que tiene ahora va a utilizar para predecir resultados futuros?
3. Selección de modelo: ¿Cómo va a modelar los datos?
4. Evaluación de la precisión: ¿cómo evaluará la precisión de sus predicciones?

![Baisc Steps](images/07_prediction_ml/07_dataanalysis_prediction_ml-6.png)

### División de datos

Para el análisis predictivo (o aprendizaje automático), necesita datos sobre los cuales capacitar a su modelo. Estos son el conjunto de observaciones y las variables correspondientes que usará para construir su modelo predictivo. Sin embargo, un modelo predictivo solo vale algo si se puede predecir con precisión en un conjunto de datos futuro. Por lo tanto, a menudo, en el aprendizaje automático hay tres conjuntos de datos utilizados para construir un modelo predictivo: entrenar, sintonizar y probar.

#### Tren, Tune, Test

De acuerdo, hay que admitir que estas no son las palabras más comunes para este proceso. Muchas personas usan el tren, validan y prueban. Sin embargo, casi la mayoría de las personas usa el tren, prueba y validación, como lo demuestra este [encuesta de Twitter](https://twitter.com/michaelhoffman/status/989251677646704641):

![Encuesta de Twitter](images/07_prediction_ml/07_dataanalysis_prediction_ml-8.png)

Como tal, mencionamos esos términos para que los conozca, pero como las personas de aprendizaje automático no pueden ponerse de acuerdo sobre el orden de las palabras, en esta lección, hemos decidido utilizar una terminología más útil, como sugerido por [Carl de Boer](https://twitter.com/carldeboerphd?lang=en): entrenar, sintonizar y probar.

![Train, Tune, Test](images/07_prediction_ml/07_dataanalysis_prediction_ml-9.png)

##### Tren

Los datos de entrenamiento son los datos que describimos anteriormente. Los datos utilizados para construir su modelo predictivo. Estos datos se conocen como su conjunto de entrenamiento.

![datos de entrenamiento](images/07_prediction_ml/07_dataanalysis_prediction_ml-10.png)

##### sintonizar

Antes de comenzar, su conjunto de datos original a menudo se divide. Algunas de las observaciones (a menudo el 70%) de su conjunto de datos se utilizan para entrenar el modelo, mientras que el 30% se mantiene. Este conjunto retenido de observaciones de su conjunto de datos original se usa para mejorar (afinar) la precisión del modelo.

Estas muestras de espera se utilizan para ver si su modelo predictivo realiza o no predicciones con precisión en el conjunto de muestras *no* utilizadas para entrenar el modelo.

![datos de ajuste](images/07_prediction_ml/07_dataanalysis_prediction_ml-11.png)


##### Prueba

Finalmente, se usa un conjunto de datos independiente, uno que *no* es del mismo experimento o fuente que los datos utilizados para entrenar y sintonizar su modelo, para ver si su modelo predictivo realiza predicciones precisas en un conjunto de datos completamente nuevo. Los modelos predictivos que pueden generalizarse y hacer predicciones precisas en nuevos conjuntos de datos son los mejores modelos predictivos.

![datos de prueba](images/07_prediction_ml/07_dataanalysis_prediction_ml-12.png)


### Selección de variables

Para que el análisis predictivo valga la pena, debe poder predecir un resultado con precisión con los datos que tiene a mano.

Si todos los datos que tiene a la mano son las alturas de los elefantes en Asia, es probable que no pueda predecir el resultado de la próxima elección en los EE. UU. Por lo tanto, las variables en los datos que tiene a la mano tienen que estar relacionadas con el resultado que le interesa predecir de alguna manera (que no es el caso de las alturas de los elefantes y las elecciones en los Estados Unidos).

En cambio, para predecir las elecciones en los EE. UU., Es probable que desee algunos datos sobre los resultados de elecciones anteriores, tal vez información demográfica sobre los distritos electorales y tal vez alguna información sobre las edades o profesiones de las personas que votan. Es probable que todas estas variables sean útiles para predecir el resultado en una elección futura, pero ¿cuáles son realmente predictivas? ¿Todos ellos? ¿Algunos? El proceso de decidir qué variables utilizar para la predicción se denomina **selección de variables**.

![Selección de variable](images/07_prediction_ml/07_dataanalysis_prediction_ml-16.png)

Lo ideal es que incluyas las *menos variables*en tu modelo como sea posible. Solo tener algunas variables en su modelo evita tener que recopilar una tonelada de datos o construir un modelo realmente complicado. Sin embargo, desea que el modelo sea lo más preciso posible al hacer predicciones. Por lo tanto, siempre hay un*equilibrio* entre minimizar las variables incluidas (¡para incluir solo las variables más predictivas!) Y maximizar la precisión predictiva de su modelo.
En otras palabras, al igual que en el análisis inferencial, su capacidad para hacer predicciones precisas depende de si tiene o no mediciones sobre las variables correctas. Si no está midiendo las variables correctas para predecir un resultado, sus predicciones no serán precisas. Por lo tanto, **selección de variables**, es increíblemente importante.

Dicho todo esto, hay *hay* enfoques de aprendizaje automático que llevan a cabo la selección de variables, utilizando todos los datos para determinar qué variables del conjunto de datos son más útiles para la predicción. Sin embargo, ya sea que decida qué variables incluir o si la computadora decide por usted, la selección de variables es importante para una predicción precisa.

#### recordatorio de falta de causalidad

Como recordatorio, como se discutió en el análisis inferencial, solo porque una variable puede predecir otra, *no significa que una**cause**la otra*. En el análisis predictivo, está aprovechando la relación entre dos variables, utilizando una variable (o un*conjunto* de variables) para predecir una segunda variable. El hecho de que una variable predice con precisión otra variable no significa que estén relacionadas causalmente.
 

### Selección de modelo

Además, hay muchas formas de generar modelos de predicción. Cada modelo fue desarrollado para un propósito diferente y específico. Discutiremos algunos tipos de modelos predictivos aquí, con un enfoque en el uso de regresión lineal. Sin embargo, independientemente del modelo que elija usar para la predicción, es mejor tener en cuenta que, en general, los **más datos**que tiene y el**más sencillo es su modelo**, la mejor oportunidad que tiene a predecir con precisión los resultados futuros:

* Más datos: cuantas más observaciones tenga y más variables tenga que elegir para incluir en su modelo, más probabilidades tendrá de generar un modelo predictivo preciso. Sin embargo, tenga en cuenta que los conjuntos de datos grandes con una gran cantidad de datos faltantes o que se ingresaron incorrectamente no son mejores que los conjuntos de datos pequeños, completos y precisos. Tener un conjunto de datos confiable para construir su modelo es fundamental.
* Modelos simples: si puede predecir con precisión la altura de un individuo considerando solo la altura de los padres de esa persona, entonces hágalo. No es necesario incluir otras variables si una sola variable genera predicciones precisas. Un modelo simple que predice con precisión (independientemente del conjunto de datos en el que predice) es mejor que un modelo complicado.


#### Regresión vs. Clasificación

Antes de pasar a discutir los diversos modelos que puede usar para el análisis predictivo, es importante tener en cuenta la diferencia entre regresión y clasificación. **Regresión**se usa cuando intentas predecir una variable continua. Por ejemplo, si está tratando de predecir la edad de un individuo, usaría la regresión. Por otro lado,**clasificación** se utiliza para las variables categóricas, ya que predice a qué grupo pertenece una persona. Un ejemplo de una clasificación sería predecir el nivel de educación de alguien, ya que solo hay un número limitado de grupos en los que uno podría estar.

![Regresión vs. Clasificación](images/07_prediction_ml/07_dataanalysis_prediction_ml-20.png)

Con respecto al aprendizaje automático, ciertos métodos pueden usarse tanto para la regresión como para la clasificación, mientras que otros están diseñados exclusivamente para uno u otro.

En esta lección discutiremos un modelo de regresión y un modelo de clasificación. Sin embargo, hay literalmente [cientos de modelos](http://topepo.github.io/caret/available-models.html) disponibles para el modelado predictivo. Por lo tanto, es importante tener en cuenta que en realidad solo estamos rascando la superficie aquí.

#### Regresión lineal

¡Al igual que en la lección anterior sobre análisis inferencial, la regresión lineal es un método increíblemente poderoso en el aprendizaje automático! El concepto aquí es el mismo que en la última lección: vamos a capitalizar la relación lineal entre las variables. Sin embargo, en lugar de usar la regresión lineal para estimar algo sobre una población más grande, vamos a usar la regresión lineal para la predicción de una **variable continua**.

![regresión lineal](images/07_prediction_ml/07_dataanalysis_prediction_ml-21.png)

Para entender mejor esto, usemos un ejemplo conceptual. Considere tratar de predecir la edad de un niño a partir de su altura. Probablemente esperaría que un niño más alto fuera mayor. Entonces, imaginemos que estamos viendo aquí los datos de entrenamiento. Vemos la relación esperada entre la altura y la edad en este diagrama de dispersión.

![datos de entrenamiento para edad y talla](images/07_prediction_ml/07_dataanalysis_prediction_ml-22.png)

Utilizando los datos de entrenamiento, se realiza una regresión lineal para modelar la relación.

![la regresión lineal modela la relación entre la altura de un niño y su edad en los datos de entrenamiento](images/07_prediction_ml/07_dataanalysis_prediction_ml-23.png)

Ahora que tenemos nuestro modelo, ya no nos preocupamos por los puntos de datos individuales en los datos de entrenamiento. Simplemente usaremos el modelo de regresión lineal para hacer nuestras predicciones.

![Nuestro modelo de regresión lineal se usará para la predicción](images/07_prediction_ml/07_dataanalysis_prediction_ml-24.png)

Luego, en el futuro, cuando conozcamos la altura de un niño, podemos regresar a nuestra regresión lineal, proporcionarle la altura del nuevo niño y devolverá la edad del niño utilizando el modelo que hemos construido.

![predecir la edad a partir de la altura mediante regresión lineal](images/07_prediction_ml/07_dataanalysis_prediction_ml-25.png)

Conceptualmente, esto es lo que sucederá cuando usemos la regresión lineal para el aprendizaje automático. Sin embargo, se llevará a cabo matemáticamente, en lugar de gráficamente. Esto significa que no tendrá que mirar el gráfico para ver sus predicciones. Solo tendrá que ejecutar algunas líneas de código que llevarán a cabo los cálculos necesarios para generar predicciones.

Además, aquí estamos usando una sola variable (altura) para modelar la edad. Claramente, hay otras variables (como el sexo de un niño) que podrían afectar esta predicción. A menudo, los modelos de regresión incluirán múltiples variables predictoras que mejorarán la precisión de la predicción de la variable de resultado.


#### Árboles de clasificación y regresión (CART)

Alternativamente, cuando intente predecir una **variable categórica**, querrá ver los métodos de clasificación, en lugar de la regresión (que es para variables continuas). En estos casos, puede considerar el uso de un**árbol de clasificación y regresión (CART)** para la predicción. Si bien no es el único método de clasificación para el aprendizaje automático, las CART son un enfoque básico y comúnmente utilizado para la predicción de variables categóricas.

Conceptualmente, cuando se usa un CART para predicción, se genera un **árbol de decisión** a partir de los datos de entrenamiento. Un árbol de decisión ramifica los datos en función de las variables dentro de los datos. Por ejemplo, si estuviéramos tratando de predecir el nivel de educación de un individuo, probablemente usaríamos un conjunto de datos con información sobre el nivel de ingreso de muchas personas, el título del trabajo y la cantidad de hijos que tienen. Estas variables se utilizarían para generar el árbol.

Por ejemplo, tal vez la primera sucursal separaría a las personas que ganan menos de 40,000 dólares al año. Todos aquellos en los datos de entrenamiento que ganaron menos de 40K bajarían por la rama izquierda, mientras que todos los demás bajarían por la rama derecha.

![Comience a generar ramas para su árbol de decisión utilizando los datos para tomar decisiones](images/07_prediction_ml/07_dataanalysis_prediction_ml-27.png)

En cada nivel, los datos se seguirán dividiendo, utilizando la información en los datos de capacitación.

![Las ramas continúan generándose a partir de los datos de entrenamiento](images/07_prediction_ml/07_dataanalysis_prediction_ml-28.png)

Finalmente, se construirá un árbol de decisión completo, de manera que habrá una etiqueta para la variable que estamos tratando de predecir al final de cada rama.

![las etiquetas se asignan al final de cada árbol](images/07_prediction_ml/07_dataanalysis_prediction_ml-29.png)

Este CART se utilizará para la predicción en muestras futuras. Por lo tanto, si sigue el camino a lo largo del árbol de decisiones, para este ejemplo CART, un individuo que ganó más de $ 40,000 al año, estaba en una profesión de trabajo manual y tenía hijos, este CART predeciría que el nivel de educación de ese individuo era "Alto Colegio."

![Las predicciones se realizan siguiendo las decisiones sobre el árbol](images/07_prediction_ml/07_dataanalysis_prediction_ml-30.png)

De nuevo, esto es conceptual y gráficamente cómo funciona un CARRITO; sin embargo, al generar un CART, usted solo toma de nuevo unas pocas líneas de código para generar el modelo y llevar a cabo los cálculos necesarios.

### Precisión del modelo

Un dicho común es que la predicción es difícil, especialmente sobre el futuro. Esto es cierto en el análisis predictivo. Por lo tanto, es importante siempre evaluar cuidadosamente la precisión de su modelo y nunca exagerar qué tan bien puede hacer predicciones.

En general, si tus predicciones son correctas, ¡lo estás haciendo bien! Si tus predicciones son erróneas, no lo estás haciendo bien. Pero, ¿cómo definimos "bien"?

#### Tasas de error

Para evaluar si nuestros modelos predictivos funcionan bien o no, calculamos las tasas de error. Las dos formas más comunes de evaluar qué tan bien están haciendo nuestros modelos predictivos son:

1. RMSE (Error cuadrático medio)
2. la exactitud

Notaremos aquí que para evaluar el error, debe conocer la verdad (el valor real) además del valor predicho. Por lo tanto, RMSE y Accuracy se evalúan en los datos de entrenamiento y ajuste, en los que usted *sabe* el valor real, así como el valor predicho.

##### RMSE

El error de la raíz cuadrada media (RMSE) es una medida utilizada para evaluar el error de predicción para las variables continuas. En general, queremos minimizar el error en la predicción. Por lo tanto, un RMSE pequeño es mejor que un RMSE grande.

![RMSE](images/07_prediction_ml/07_dataanalysis_prediction_ml-33.png)

Hablando matemáticamente, el RMSE es la raíz cuadrada de la varianza. De lecciones anteriores, sabemos que **la varianza** tiene algo que ver con la confianza que tenemos en nuestra estimación. Ya que estamos tratando de determinar qué tan cerca están nuestras predicciones del valor real, este parece ser un buen lugar para comenzar.

Cuando observamos la ecuación, podemos ver que la diferencia entre los valores pronosticados y reales se calcula `(Predicted - Actual)` y que este valor se ajusta al cuadrado `(Predicted - Actual)^2`. Estas diferencias al cuadrado se agregan para cada individuo en su conjunto de datos (eso es lo que dice el sigma, o gran E). Este valor (la suma de todos los errores al cuadrado) se divide por el número de individuos en su conjunto de datos (`N`). Luego se toma esta raíz cuadrada de este valor. Así es como se calcula RMSE.

Examinamos esa descripción porque queremos señalar que cuando se cuadran las diferencias `(Predicted - Actual)^2`, los valores atípicos o las muestras cuya predicción estaba muy lejos de su valor real aumentarán mucho el RMSE. Por lo tanto, **algunos valores atípicos pueden llevar a valores RMSE realmente altos**, incluso si todas las otras predicciones fueron bastante buenas. Esto significa que es importante verificar si algunos valores atípicos (es decir, algunas predicciones erróneas) están llevando a un alto valor RMSE.


##### Exactitud

Alternativamente, para evaluar el error en la predicción de las variables categóricas, se usa con frecuencia **exactitud**. La precisión busca determinar el número de predicciones que coinciden con sus valores reales.

![Precisión](images/07_prediction_ml/07_dataanalysis_prediction_ml-35.png)

Cuanto más cerca esté este valor al 100%, mejor será su modelo predictivo. Cuanto más cercano al 0%, peores son las predicciones de tu modelo.

La precisión es una forma útil de evaluar el error en las variables categóricas, pero también se puede utilizar para valores numéricos. Sin embargo, solo tendrá en cuenta una predicción "correcta"  si coincide exactamente. En el caso de la edad, si la edad de una muestra es 10 y el modelo predice que es 10, el modelo dirá que se ha predicho correctamente. Sin embargo, si la edad de una muestra es 10 y se pronostica que es 9, se contará como incorrecta, aunque sea cercana. Una predicción de apagado por un año se marcará como incorrecta como una muestra predicha fuera de 50 años. Debido a esto, a menudo se opta por RMSE en lugar de precisión para las variables continuas.

### Ejemplos de aprendizaje automático

Para comprender mejor todos los conceptos que acabamos de analizar, veremos dos ejemplos, uno para la predicción de una variable continua mediante regresión lineal y el segundo para la predicción de un valor categórico mediante un CART.

#### El paquete `caret` 

Hay un paquete *increíblemente*útil disponible en R gracias al trabajo de [Max Kuhn](https://twitter.com/topepos?lang=en). Como se mencionó anteriormente, hay cientos de algoritmos de aprendizaje automático diferentes. El paquete R de Max `caret` los ha compilado en un solo marco, permitiéndole usar*muchos* diferentes modelos de aprendizaje automático a través de un solo paquete. Además, ha escrito [un libro muy útil](http://topepo.github.io/caret/) para acompañar el paquete. Usaremos este paquete a lo largo de estos ejemplos.

#### Predicción continua de variables: regresión lineal

Para este ejemplo, lo mantendremos simple y usaremos un conjunto de datos que haya visto antes: el conjunto de datos `iris`. De esta manera, puede concentrarse en la sintaxis utilizada en el paquete `caret` y en los pasos del análisis predictivo. En este ejemplo, intentaremos utilizar los datos del conjunto de datos `iris` para predecir `Sepal.Length` 

##### División de datos

Como se mencionó anteriormente, uno de los primeros pasos a menudo es tomar su conjunto de datos y dividirlo en un conjunto de entrenamiento y un conjunto de ajuste. Para hacer esto, cargaremos el paquete `caret` y usaremos la función `createDataPartition()` para dividir el conjunto de datos.

```r
## instalar y cargar paquetes
instalar.paquetes ("caret")
biblioteca (caret)
biblioteca (dplyr)

## obtener índice para conjunto de entrenamiento
set.seed (123)
trainIndex <- createDataPartition (iris $ Species, p = .7,
                                  list = FALSE,
                                  tiempos = 1)

## dividido en conjunto de entrenamiento y afinación
iris_train <- iris%>% slice (trainIndex)
iris_tune <- iris%>% slice (-trainIndex)

## echar un vistazo
str (iris_train)
str (iris_tune)
``` 

Después de ejecutar este código, si echamos un vistazo a los conjuntos de datos de entrenamiento y ajuste, podemos ver que el 70% de nuestras observaciones se encuentran en el conjunto de datos de entrenamiento y el 30% restante está en el conjunto de datos de ajuste, como especificamos.

![estructura de los datos de entrenamiento y ajuste](images/07_prediction_ml/07_dataanalysis_prediction_ml-39.png)

##### selección de variables

¿Qué pasa si primero intentamos predecir `Sepal.Length` en nuestros datos de entrenamiento de `Sepal.Width`? Para ello, proporcionamos la función `train` con el modelo y especificamos que el conjunto de datos que usaremos es el conjunto de datos `iris`. Además, le informamos a la función del tren que queremos ejecutar una regresión lineal (`lm`) y que queremos evaluar la precisión de nuestro modelo utilizando la métrica `RMSE`.

```r
## modelo de regresión del tren
set.seed (123)
fit.lm <- train (Sepal.Length ~ Sepal.Width,
                datos = iris,
                metodo = "lm",
                métrica = "RMSE")
``` 

Después de entrenar el modelo, echamos un vistazo a nuestro RMSE y vemos que es `0.82` para este conjunto de datos.

```r
## mirar RMSE
resultados fit.lm $
``` 

![RMSE](images/07_prediction_ml/07_dataanalysis_prediction_ml-41.png)

Usando este modelo, generaríamos predicciones de `Sepal.Length` en el conjunto de datos de ajuste usando la función `predict()`. Como sabemos el `Sepal.Length` real en el conjunto de ajustes, estas predicciones se pueden visualizar utilizando un diagrama de dispersión.

```r
## hacer predicciones en el conjunto de datos de ajuste
predicciones <- predice (fit.lm, iris_tune)


## visualizar resultados
iris_tune%>%
  mutar (predicciones = predicciones)%>%
  ggplot () +
  geom_point (aes (Sepal.Length, predicciones))
``` 

![Scatterplot muestra `Sepal.Length` no se pronostica bien desde `Sepal.Width` solo](images/07_prediction_ml/07_dataanalysis_prediction_ml-43.png)

Dada la falta de correlación, podemos ver que este modelo no predice bien la longitud del sépalo en nuestro conjunto de ajuste.

En este primer intento, especificamos qué variable usar para la predicción; sin embargo, qué pasaría si proporcionáramos a nuestro modelo de regresión todas las variables en el conjunto de datos (especificado por el `.` en el código aquí:

```r
## modelo de regresión del tren
set.seed (123)
fit.lm2 <- tren (Sepal.Length ~.,
                datos = iris,
                metodo = "lm",
                métrica = "RMSE")

## mirar RMSE
fit.lm2 $ resultados

## hacer predicciones en el conjunto de datos de ajuste
predictions2 <- predict (fit.lm2, iris_tune)


## visualizar resultados
iris_tune%>%
  mutar (predicciones = predicciones2)%>%
  ggplot () +
  geom_point (aes (Sepal.Length, predictions2))
``` 

![Diagrama de dispersión](images/07_prediction_ml/07_dataanalysis_prediction_ml-45.png)

##### Evaluación de la precisión

Ahora, cuando observamos los resultados, observamos una mejora visual en las predicciones de `Sepal.Length` dentro del conjunto de datos de ajuste, que también se refleja en la disminución de RMSE (0.324).

Aquí, al incluir variables adicionales (a menudo denominadas `features` en el aprendizaje automático), vemos una precisión de predicción mejorada. Hay formas más sólidas que probar diferentes variables en su modelo para seleccionar cuáles deben incluirse en su modelo predictivo. Estos serán cubiertos en las lecciones en la pista avanzada de este conjunto de cursos.

##### Selección de modelo

En este ejemplo (y en el siguiente ejemplo), hemos especificado previamente qué modelo íbamos a usar para el ejemplo antes de tiempo. Sin embargo, hay muchos modelos de regresión diferentes entre los que podríamos haber elegido y una serie de parámetros en cada uno que pueden ajustarse, cada uno de los cuales puede mejorar la precisión predictiva de su modelo. Aprender cómo elegir y afinar el mejor modelo se tratará en las lecciones en la pista avanzada de este Conjunto de cursos; sin embargo, por ahora notaremos que, como se especifica en el libro `caret`, la función `train()` tiene varias capacidades. Puede:

* evaluar cómo los diferentes parámetros de ajuste en el modelo afectan el rendimiento
* Elija el modelo 136326 "óptimo", dados estos parámetros
* Estimar el rendimiento del modelo (dado un conjunto de entrenamiento)

Aquí, no hemos jugado mucho con los parámetros de ajuste; sin embargo, consultar [la documentación sobre cómo hacer esto](http://topepo.github.io/caret/model-training-and-tuning.html#fitting-models-without-parameter-tuning) puede llevar a mejorar predicción a medida que genera modelos predictivos por su cuenta.


#### Predicción de variables categóricas: CARRITO

Un modelo de predicción más natural dado este conjunto de datos puede ser predecir qué es `Species` una flor, dadas sus medidas. Usaremos el conjunto de datos `iris` para realizar esta predicción de clasificación aquí, usando un CARRITO.

##### División de datos

La división de datos desde arriba se utilizará aquí. Por lo tanto, nuestro conjunto de entrenamiento seguirá siendo `iris_train` y nuestro conjunto de ajuste `iris_tune`.

##### selección de variables

Dada la naturaleza relativamente pequeña de este conjunto de datos, construiremos el CART utilizando todos los datos; sin embargo, dentro del paquete `caret` es posible una optimización adicional y más sólida de las variables que se incluyen en el modelo.

Aquí especificamos que queremos predecir `Species`, que queremos usar un CARRITO para hacerlo configurando el método en `rf`, y que, como es una variable categórica, usaremos `Accuracy` como nuestra métrica de evaluación.

```r
## CARRITO
set.seed (7)
fit.cart <- train (Species ~.,
                datos = iris,
                method = "rpart",
                metric = "Precisión")

## ver la precisión
resultados de fit.cart $

## hacer predicciones en el conjunto de datos de ajuste
predictions_cart <- predict (fit.cart, iris_tune)

table (iris_tune $ Species, predictions_cart)
``` 
##### Evaluación de la precisión

![`table()` salida](images/07_prediction_ml/07_dataanalysis_prediction_ml-48.png)

Aquí, vemos que en los datos de ajuste, el CART predijo con precisión las especies de la mayoría de las flores utilizando el modelo generado a partir de los datos de entrenamiento; sin embargo, hizo dos predicciones incorrectas (las 1 en la tabla).


### Resumen

En esta lección hemos cubierto los conceptos básicos de qué es el análisis predictivo, qué tipos de predicción se realizan comúnmente y cómo realizar un análisis predictivo utilizando el paquete caret. Seguramente, esta lección solo ha introducido los conceptos básicos del aprendizaje automático, ¡y todavía hay mucho por aprender para aprender más allá de lo que hay en esta lección!

### Recursos adicionales

* [El libro del paquete `caret`](http://topepo.github.io/caret/index.html)
* [Ejemplo de aprendizaje automático utilizando `caret` y el conjunto de datos `iris` para la clasificación](https://rstudio-pubs-static.s3.amazonaws.com/261616_3097bfd3aa4341faafede5ed2ca7bb39.html)

### Diapositivas y Video

![Predicción y aprendizaje automático](https://www.youtube.com/watch?v=rRJ38me_AlQ)

* [Diapositivas](https://docs.google.com/presentation/d/1GF3WXmqtbP8Ha2xnOEe9UZZ6MnSQwNL_-BeKA10hixQ/edit?usp=sharing)

{quiz, id: quiz_07_prediction_ml}

### Prueba de Predicción y Aprendizaje Automático

{choose-answers:4}
) sus datos, ¿qué dos conjuntos de datos genera?

C) entrenamiento, tuning
o) afinación, prueba
o) pruebas, validación
o) validación, puesta a punto
o) A, B
o) x, y

{choose-answers:4}
? Si estuviera buscando generar predicción de la altura de los individuos, ¿qué modelo y medida de precisión usaría?

C) regresión lineal, RMSE
C) `lm`, RMSE
o) `rpart`, RMSE
o) CARRITO, RMSE
o) CARRITO, exactitud
o) `rpart`, Precisión
o) `lm`, predicción
o) regresión lineal, predicción

{choose-answers:4, points:2}
), si desea usar un modelo basado en árbol para la predicción, ¿qué `method` podría especificar?

C) `adaboost` 
C) `treebag` 
C) `rpart` 
o) `svmLinear` 
o) `svmExpoString` 
o) `dda` 
o) `dwdPoly` 


{choose-answers:4, points: 2}
). De los modelos que probaron, ¿cuál fue el más preciso para predecir Especies en el conjunto de datos `iris`?

C) `lda` 
o) `rf` 
m) `rpart` 
o) `lm` 
o) `knn` 
o) `svm` 
o) `cart` 

{/quiz}

{exercise, id: exercise_07_prediction_ml}

### DataCamp: Tool Learning Toolbox

{case-sensitive: false}
) en Campamento. Inicia sesión y completa las dos primeras lecciones:

- Modelos de regresión: ajustándolos y evaluando su desempeño.
- Modelos de clasificación: ajustándolos y evaluando su desempeño.

Una vez que haya completado el curso, escriba "completado"  en el cuadro a continuación.

*Nota*: Esto requiere un inicio de sesión de DataCamp, que cuesta dinero. Como ejercicio, esto no es obligatorio para aprobar el curso, pero lo*ayudará* a comprender mejor los conceptos que se tratan en estas lecciones.

*Recordatorio*: los videos en DataCamp son esenciales para entender el material. ¡Es mejor no saltarse estos videos!

! terminado

{/exercise}
