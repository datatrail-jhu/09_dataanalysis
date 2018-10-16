# Líneas de análisis de datos

En los trabajos de ciencia de datos en la industria, a menudo se analiza un conjunto de datos a lo largo del tiempo. Lo que esto significa es que la estructura del conjunto de datos no cambia, las variables que está recolectando siguen siendo las mismas, pero las observaciones sí lo hacen. Tal vez esté recolectando cifras de ventas para una empresa, y cada mes está volviendo a analizar el conjunto de datos para ver si las tendencias han cambiado o si es necesario modificar sus predicciones. O, posiblemente, esté analizando los datos de los usuarios donde cambian los datos demográficos y la cantidad de usuarios de su producto a lo largo del tiempo. En estos casos, donde las variables no cambian pero las observaciones sí, las tuberías pueden ser increíblemente útiles.

### Tuberías

Las tuberías son una serie de pasos que se pueden aplicar a un conjunto de datos. Es útil generar una canalización cada vez que te encuentras con un conjunto de datos que esperas encontrar nuevamente. Una tubería podría leer en un conjunto de datos, procesar ese conjunto de datos para obtener un formato ordenado, generar cifras para resumir los datos y generar predicciones. Esta tubería podría configurarse para ejecutarse en cualquier momento en que se generen nuevos datos o en una tabla de tiempo, por ejemplo, cada mes. En este sentido, las tuberías de la ciencia de datos deben ser **automatizadas**. En otras palabras, después de construir la tubería, no debería tener que hacer ningún trabajo adicional cada vez que ejecuta las tuberías.

Además, las tuberías tienen el beneficio adicional de que son **reproducibles**. Esto es útil para usted, ya que podrá reproducir sus resultados en cualquier momento. Pero, esto también es útil porque puede ser utilizado por cualquier persona que tenga acceso a los datos. El gasoducto funcionará si abandona la empresa y alguien se hace cargo de usted o si está enfermo y necesita tomarse un día libre.

### Consideraciones

Al generar una tubería, hay una serie de consideraciones a tener en cuenta antes y durante el desarrollo de las tuberías. Aquí, analizaremos cuándo considerar una canalización, qué considerar mientras está generando la tubería y cómo realizar un seguimiento de los cambios que se realizan en la tubería.

#### Cuándo hacer una tubería

Las tuberías son útiles cuando tiene una pregunta que responderá más de una vez. Por ejemplo, si tiene datos que se actualizarán con el tiempo, una canalización puede ser útil. Sin embargo, si está haciendo un análisis rápido en un solo conjunto de datos para responder a una pregunta que probablemente no tendrá que responder nuevamente en el futuro, entonces haga el análisis y obtenga su respuesta. Este no es el momento para generar una tubería. *Pero*, si es probable que vuelva a ejecutar el análisis en el futuro una vez que se hayan recopilado más datos, una vez que haya actualizado los números, o una vez que tenga datos de más personas, genere una tubería. En general,**las tuberías son útiles cuando hay una sola pregunta que tendrá que responder más de una vez**.

#### Incluyendo cheques apropiados

Una vez que haya decidido que una tubería será útil, el objetivo es que genere una tubería que, una vez que haga clic en un botón, se ejecutará todo el proceso de análisis y obtendrá su respuesta. Para que esto suceda, su canalización requerirá controles antes de que comience. Estas verificaciones deben mirar para ver:

* ¿Están los datos en el **formato esperado*? - ¿Estamos esperando datos tabulares con 10 columnas? Si es así, ¿los datos de entrada tienen el aspecto esperado?
* ¿Se incluyen las **variables necesarias** en el conjunto de datos? - Si vamos a utilizar la variable `sex`, ¿está ahí? Si no, ¿hay una columna llamada `Sex` o `gender`, y es esa la columna que queremos usar?
* ¿Son las **observaciones para las variables codificadas** como esperamos? - Si esperamos que las mujeres se codifiquen como `female`, ¿es eso lo que hay en los datos? ¿O están codificados como `F`, o incluso `0`?)

Las comprobaciones para garantizar que los datos de entrada sean el tipo correcto de datos para que la tubería se ejecute son increíblemente importantes. Estas son solo algunas comprobaciones que puede querer ejecutar en sus datos. También es posible que desee verificar para asegurarse de que los datos sean de las fechas esperadas o para asegurarse de que los datos no se truncan inesperadamente. Considerar qué controles necesitará realizar en sus datos es un primer paso importante para generar una canalización.

#### Evitando la codificación dura

En el desarrollo de tuberías, generalmente querrá evitar la codificación rígida siempre que sea posible. La codificación fija en una tubería se refiere a establecer un parámetro en una tubería que no se puede modificar sin entrar y editar el código. Por ejemplo, si mientras genera una tubería por primera vez, está trabajando con un conjunto de datos que tiene 100 observaciones. ¿Qué sucede si especifica que el conjunto de datos esperado debe tener 100 filas y escribe una verificación para eso? Bueno, la próxima vez que vaya a ejecutar el informe y reciba un error porque su nuevo conjunto de datos tiene 150 observaciones. Al codificar el número "100"  como un parámetro en su canalización, forzaría a su tubería a fallar innecesariamente. **Evitar la codificación permanente siempre que sea posible es una buena regla general** a medida que genera tuberías. Esto significa que simplemente especificará la entrada a su canalización (¡que podría incluir múltiples parámetros!) Y su tubería se ejecutará utilizando los datos que ingresó y el código en su canalización para generar los resultados. No tendrá que entrar y cambiar los números que haya codificado en su canalización.

#### escalabilidad

Además, su tubería debe ser escalable. Una tubería *escalable* es una que funcionará en un conjunto de datos pequeño y continuará funcionando a medida que el conjunto de datos se haga más grande. Es mejor asegurarse de que su canalización se haya generado para que se ejecute en su conjunto de datos, así como en conjuntos de datos más grandes que puedan generarse en el futuro.

#### Versiones

Finalmente, las tuberías deben ser versionadas. Si el formato del conjunto de datos cambia en el futuro, querrá poder actualizar su canalización, pero no desea perder la tubería original, ya que eso es lo que funciona en los conjuntos de datos más antiguos. O, si una API cambia (¡lo que hacen!), Deberá actualizar su canalización para tener en cuenta estos cambios. De nuevo, no quieres perder la versión anterior. **Las versiones** aquí se refieren al proceso de seguimiento de cambios en su canalización.

Cada vez que has presionado a GitHub, has estado usando un tipo de control de versiones. GitHub realiza un seguimiento de los compromisos, que realiza un seguimiento de cada versión de su trabajo. Sin embargo, en el desarrollo de tuberías, es mejor hacer un seguimiento explícito de las versiones de sus tuberías.

En el software, cada versión de una pieza de software a menudo es rastreada por un conjunto de tres números, cada uno de los cuales está separado por un lugar decimal. Un esquema general utilizado en las versiones de software es la versión de una pieza de software como `major.minor.patch`. En este esquema, una versión grande con **cambios de ruptura** (cambios que podrían hacer que versiones anteriores del software sean incompatibles con la versión actual) aumentará el primer número en la secuencia (`major`). El segundo valor (`minor`) se incrementará cuando se lance una versión del software que incluya nuevas características que no sean de última hora. Las versiones en las que se incrementa el tercer valor (`patch`) en la secuencia incluyen cambios ininterrumpidos que tienden a ser arreglos mínimos para el software.

![major.minor.patch](images/09_pipelines/09_dataanalysis_pipelines-6.png)

En este esquema, 0.9.0 representaría el software que está en desarrollo (conocido como la versión beta). Las mejoras incrementales en la versión beta serían las versiones 0.9.1 y 0.9.2, etc. El número `major` permanece en cero hasta la primera versión principal. Una vez lanzado, la primera versión del software sería 1.0.0. Pequeños cambios no importantes en esta versión aumentarían el número `patch`, haciendo versiones como 1.0.1 y 1.0.2. Cuando se agreguen nuevas características a esta pieza de software que no sean de última hora, se aumentará el segundo número `minor` y se lanzará la versión 1.1.0. La próxima vez que se agregue una característica que no se rompa, se lanzará la versión 1.2.0. Finalmente, cuando se hiciera un gran cambio en el futuro para mejorar el software en general, se lanzaría una nueva versión. Esta sería la versión 2.0.0.

![esquema de versión](images/09_pipelines/09_dataanalysis_pipelines-7.png)

Este esquema de desarrollo de software puede ser muy útil en el desarrollo de tuberías. Durante el desarrollo, una tubería debe tener una versión tal que la primera versión de la tubería sea 0.9.0. A medida que se realizan mejoras, el gasoducto puede aumentar su versión como se explicó anteriormente (0.9.1, 0.9.2, etc.). Cuando la canalización esté lista para ser implementada oficialmente, su versión será 1.0.0. Luego, a medida que se realizan los cambios y se mejora la canalización, el control de versiones permitirá realizar un seguimiento de estos cambios.


### Informes parametrizados

En R, una de las formas más sencillas de generar una canalización es escribir un informe **parametrizado**. Los informes parametrizados se pueden generar comenzando con un documento R Markdown (¡con el que ya está familiarizado!) Y agregando información adicional al YAML en la parte superior del documento. Los parámetros se pueden definir en la parte superior del informe usando el campo `params`. Por ejemplo, si desea especificar el archivo que estaba usando en su informe, podría definir un parámetro `filename` dentro del campo `params`. Luego, al representar el informe, debe especificar qué archivo usar para generar el informe, como puede ver aquí:

---
título: mi documento
salida: html_document
params
   nombre_archivo: nombre_archivo_archivo.csv
---

Este archivo podría luego representarse como un argumento dentro de la función `rmarkdown::render()`. El argumento `filename` podría actualizarse para usar cualquier archivo que desee usar para generar el informe:

```r
rmarkdown :: render ("MyDocument.Rmd", params = list (
  filename = "filename_filedate.csv")
)
``` 

Tenga en cuenta que para cualquier parámetro no especificado dentro de `rmarkdown::render()`, se utilizará el valor predeterminado dentro del documento R Markdown.

### Ejemplo de resultados de la encuesta de tuberías

Para entender realmente cómo se generaría una tubería, trabajemos con un conjunto de datos de ejemplo. En una lección anterior, hablamos sobre cómo puede leer una hoja de Google utilizando el paquete `googlesheets` para leer la versión más actualizada de la hoja de cálculo. En esta lección anterior, hablamos acerca de encuestar a sus amigos sobre cuántas horas pasan cada día trabajando, durmiendo, divirtiéndose, comiendo, socializando y otros. Volveremos a utilizar este ejemplo aquí para generar un informe parametrizado que analizará estos datos a medida que se actualicen.

#### Los datos

Los datos que usaremos para este ejemplo se pueden ver [aquí](https://docs.google.com/spreadsheets/d/e/2PACX-1vTuPnBT7Y6emAamDSaXo_RV-X54c0a6nJh4e-bqurRsNW_EIm6ygq90UVfySQbSg0Ue9-U4wSykQqKF/pubhtml). For our purposes, we're going to say that the first Sheet (`Sheet1`) es la información que se recopiló después de la primera semana de la encuesta, mientras que la Hoja `Sheet 2` contiene todos los datos recopilados en las dos primeras semanas.

![Datos de la hoja de Google](images/09_pipelines/09_dataanalysis_pipelines-10.png)

Imagina que una semana después de enviar la encuesta a tus amigos, sientes curiosidad por los resultados. ¡Así, usted escribe un informe parametrizado para visualizar los resultados! Lo hace porque desea poder analizar los datos con solo hacer clic en un botón y porque sabe que generará este informe nuevamente en el futuro una vez que se hayan recopilado más datos.

#### Siguiendo a lo largo

Si está interesado en ejecutar esta canalización y seguir por su cuenta, puede encontrar el código utilizado en esta lección [aquí](https://rstudio.cloud/project/48127). Puede hacer una copia de este espacio en RStudio Cloud y generar sus propios informes. La URL que querrá incluir cuando se le solicite es la siguiente URL: https://docs.google.com/spreadsheets/d/1MpGE4YHB14qBgrg3lqa1eq_Mb7L8TMOwTZtVzqQ0mmA.

Para comenzar a escribir el informe parametrizado, querrá configurar su informe en el formato Markdown R y leer sus datos en.

#### La puesta en marcha

Para comenzar, querrá abrir un nuevo documento R Markdown.

![Nuevo documento de Markdown R](images/09_pipelines/09_dataanalysis_pipelines-11.png)

En este documento, querrá especificar dos parámetros utilizando `params`:

![YAML de R Markdown](images/09_pipelines/09_dataanalysis_pipelines-12.png)

El parámetro `file_url` dice "preguntar". Esto significa que cuando vamos a tejer el informe, queremos RStudio para preguntar en ese momento qué URL utilizar para la hoja de Google. El segundo parámetro, `worksheet`, especifica que queremos que el valor predeterminado sea la primera hoja de cálculo, pero nos damos la flexibilidad de especificar una hoja de cálculo diferente, si así lo decidimos.

Después de configurar el YAML, desearemos instalar y cargar cualquier paquete que usaremos en el fragmento de código `setup`:

![`setup` code chunk](images/09_pipelines/09_dataanalysis_pipelines-13.png)

Aquí, estamos instalando cuatro paquetes. En este código indicamos que si los paquetes aún no se han instalado, hágalo. Luego, todos los paquetes se cargan en nuestra sesión de RStudio Cloud.

#### leyendo los datos en

Después de configurar el entorno de RStudio Cloud, los datos se leen en el fragmento de código `data`.

![`data` code chunk](images/09_pipelines/09_dataanalysis_pipelines-14.png)

Usando `gs_url()` y `gs_read()` del paquete `googlesheets` podemos leer en la Hoja de Google y especificar qué hoja de trabajo queremos incluir para el análisis. Observe el uso del objeto `params`. Cuando este archivo está trenzado, tomará el `params` especificado en el YAML como la entrada para compilar el informe. Veremos exactamente cómo hacerlo más adelante en esta lección. Tenga en cuenta que incluir un parámetro siempre comienza con el objeto `params`. A esto le sigue un signo de dólar (`$`). Finalmente, usa el nombre especificado en el YAML para especificar qué parámetro desea incluir en su código. Específicamente aquí, primero especificamos que queremos registrar la Hoja de Google usando `params$file_url` y luego especificamos qué hoja de trabajo leer especificando `params$worksheet`.

#### cheques

Antes de escribir realmente el código para analizar los datos, debe asegurarse de que su informe ejecute las comprobaciones adecuadas de los propios datos. Como se comentó anteriormente en esta lección, estas verificaciones deben garantizar que los datos estén en el formato que espera el resto del código. Por ejemplo, si accidentalmente especificó el archivo incorrecto en el que se ejecuta el informe, querría que su informe le envíe una advertencia informándole que los datos no eran lo que esperaba el informe. Los controles son partes increíblemente importantes de una tubería de ciencia de datos y no deben pasarse por alto.

En este ejemplo solo incluiremos una única comprobación; sin embargo, para la mayoría de las tuberías, seguramente querrá escribir algunas verificaciones más para **garantizar que su análisis se ejecutará correctamente** Siempre intente anticipar los posibles errores que los usuarios podrían cometer al generar este informe. Luego, escribe cheques para probar cada posible escenario. Recuerde, otros deberían poder generar este informe en su ausencia.

Aquí, agregaríamos este código a un fragmento de código llamado `checks`.

![`checks` trozo de código](images/09_pipelines/09_dataanalysis_pipelines-15.png)

En el código de este fragmento (a continuación), estamos comprobando si los nombres de columna esperados son los que figuran en la URL de la hoja de Google que se proporcionó. Verá que especificamos cuáles son los nombres de columna esperados al crear el objeto `columns`. Luego, la verificación mira cuántas columnas en la Hoja de Google son las mismas que las columnas especificadas en el objeto `columns`. Si no son todos iguales, el informe no se compilará y se generará un error.

Tenga en cuenta que hay tres tipos de comentarios que su código puede dar en R:

- **mensaje** - imprime un mensaje pero no detiene la ejecución
- **advertencia** - imprime un mensaje de advertencia pero no detiene la ejecución
- **detener** - detiene la ejecución de la expresión actual y ejecuta una acción de error

En este código, proporcionamos un mensaje `stop()` porque no queremos que el informe lleve a cabo el análisis a menos que los datos estén en el formato esperado. Sin embargo, en otros casos, es posible que solo desee imprimir un mensaje en la salida o proporcionar una advertencia al usuario, pero no detener la compilación del informe. En estos casos, utilizaría `message()` y `warning()`, respectivamente.

Finalmente, tenga en cuenta que en este fragmento de código hemos incluido `echo = FALSE`. Esto evalúa el código para que se realice la verificación, pero no se imprime en el informe de salida.

Una vez que haya escrito suficientes comprobaciones para asegurarse de que su informe solo se compilará cuando tenga los datos correctos en el formato correcto, estará listo para comenzar el análisis.

#### El analisis

Para analizar los datos, tal vez solo esté interesado en resumir la cantidad promedio de horas que sus amigos dedican a cada actividad. Para hacer esto, primero debe limpiar los datos y luego generar un gráfico.

##### Limpieza de datos

Antes de que pueda generar este gráfico, deberá verificar y limpiar sus datos. Para este ejemplo aquí, ¿qué pasaría si las personas dijeran que pasaron más de 24 horas haciendo cosas en un día? Bueno, sabemos que solo hay 24 horas en un día, por lo que es probable que desee excluir a estas personas del análisis, ya que no sabrá con seguridad dónde ocurrió el error en su entrada de datos. Debería escribir unas pocas líneas de código para hacer esto usando sus habilidades de manejo de datos.

![`clean` code chunk](images/09_pipelines/09_dataanalysis_pipelines-18.png)

Aquí, hemos especificado que no queremos que este fragmento de código se incluya en el informe final, usando `include = FALSE` en el fragmento de código. También hemos incluido comentarios para que cualquiera que vea el código en bruto sepa lo que hace el código. Pero, el informe final de punto no incluirá tales detalles.

También querrá asegurarse de que su informe proporcione una descripción de cuántos datos de individuos se incluyen en su análisis y cuántas muestras se han eliminado (¡un ejemplo de un análisis descriptivo!).

Debajo del fragmento de código, incluimos una breve descripción de los datos al especificar cuántas muestras se incluyen en el análisis y cuántas se han eliminado debido a problemas con sus datos mediante la sintaxis de Markdown. Ninguno de los números aquí ha sido codificado. Todos ellos se rellenarán automáticamente con el número apropiado cuando se teja el informe.

##### Análisis de los datos

Una vez que esté seguro de que sus datos están listos para ser utilizados para el análisis, escribirá el código para generar la trama. En este caso, no nos estamos enfocando en la trama, por lo que usamos un código muy básico, pero si este fuera un informe que enviaba a su jefe o equipo, es probable que desee mejorar las etiquetas, aumentar el tamaño de la fuente y tal vez cambiar el tema. Sin embargo, con esto, está listo para tejer su informe parametrizado.

![`analyze` code chunk](images/09_pipelines/09_dataanalysis_pipelines-19.png)

#### tejido de punto

Para generar su informe de punto, haga clic en la flecha a la derecha de "Tejer"  y seleccione "Tejer con parámetros ..."  en el menú desplegable.

![Tejer con parámetros ...](images/09_pipelines/09_dataanalysis_pipelines-20.png)

Si se le solicita, diga sí a la instalación de los paquetes necesarios. Luego, aparecerá una ventana donde el cuadro `file_url` dirá "preguntar", lo que indica que tendrá que especificar la URL aquí. La hoja de cálculo predeterminada es 1. Puede dejar esto como está o cambiarlo para especificar una hoja de cálculo diferente.

![Ventana emergente Tejer con parámetros](images/09_pipelines/09_dataanalysis_pipelines-21.png)

Después de agregar la URL para la hoja de Google correspondiente, querrá hacer clic en "Tejer"

![Después de agregar la URL, haga clic en Tejer](images/09_pipelines/09_dataanalysis_pipelines-22.png)

Su informe aparecerá! Aquí, vemos un resumen de los datos después de la primera semana de recopilación de información de sus amigos.

![Informe con datos de la encuesta](images/09_pipelines/09_dataanalysis_pipelines-23.png)

Vemos que la mayor parte del tiempo de tus amigos se gasta trabajando y durmiendo, ¡lo cual tiene bastante sentido!

Sin embargo, todo el punto de este informe es que puede ejecutarlo nuevamente con facilidad para un conjunto de datos actualizado, ya que es el punto principal de una canalización. La segunda hoja en esta hoja de Google representa sus datos actualizados. Por lo tanto, haremos clic nuevamente en "Tejer con parámetros"  y especificaremos la URL apropiada (igual que antes), pero cambiaremos la hoja de trabajo a '2'. Volveremos a tejer nuestro informe.

![Cambiar parámetro y volver a tejer](images/09_pipelines/09_dataanalysis_pipelines-24.png)

Así, ¡vemos los datos resumidos en más de nuestros amigos! La gente sigue trabajando y durmiendo más; Sin embargo, vemos mucha más variabilidad en este conjunto de datos actualizado.

![Informe con datos de encuesta actualizados](images/09_pipelines/09_dataanalysis_pipelines-25.png)

### Resumen

Esta lección ha cubierto qué es una canalización de ciencia de datos, cuando querría generar una, consideraciones a realizar al escribir una tubería, y un ejemplo simple de cómo generar una tubería de ciencia de datos usando informes parametrizados en R Markdown. Cuando vaya a trabajar con un conjunto de datos que se actualice o con una serie de conjuntos de datos diferentes que sean similares, comience por escribir un sólido canal de información científica.

### Recursos adicionales

* [Construyendo un pipeline de datos desde cero](https://medium.com/the-data-experience/building-a-data-pipeline-from-scratch-32b712cfb1db), por [Alan Marazzi](https://www.rdisorder.eu/)
* [Reportes de Markdown parametrizados R con RStudio Connect](https://www.rstudio.com/resources/videos/parameterized-r-markdown-reports-with-rstudio-connect/)
* [Informes parametrizados de RMarkdown](https://rmarkdown.rstudio.com/developer_parameterized_reports)
* [Capítulo 15: Informes parametrizados en R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/parameterized-reports.html), por Yihui Xie, J.J. Allaire, y Garrett Grolemund


### Diapositivas y Video

![Líneas de análisis de datos](https://www.youtube.com/watch?v=hwlCrwkyY6E)

* [Diapositivas](https://docs.google.com/presentation/d/1sEDrJwGZsLrdNptniI5OO_SyuWgUKPY75uIC0_CUdKI/edit?usp=sharing)

{quiz, id: quiz_09_pipelines}

### Prueba de datos Análisis de tuberías

{choose-answers: 4}
? ¿Cuándo generarías un oleoducto?

C) Si recibió datos para analizar, pero sabía que se actualizarían en el futuro.
C) Si le encargaron generar un informe financiero mensual
C) Si tuvieras que generar un informe de ventas semanal.
C) Si tuvieras que analizar diferentes conjuntos de datos que todos tenían un formato similar
o) Si le dieron un conjunto de datos que nunca antes había visto y le dijeron que lo analizara
o) Si su jefe pidió una respuesta rápida a una pregunta simple
o) Si a su equipo se le dio un análisis extraño para hacer un conjunto de datos atípicos
o) Si deseaba responder una pregunta, probablemente nunca tendría que volver a responder

{choose-answers: 4}
? Para especificar parámetros dentro de un informe parametrizado, ¿qué haría usted?

C) especifique `params` dentro del YAML
o) especifique `params` dentro del primer fragmento de código
o) define `params` cuando tejes
o) renderice su informe pero nunca especifique dentro del documento R Markdown
o) Tejer su informe pero nunca especificar dentro del documento R Markdown
o) Tejer su documento R Markdown sin parámetros

{choose-answers: 4}
? ¿Cuándo debería incluir los controles dentro de sus tuberías de ciencia de datos?

C) siempre
C) Cada vez que escribes un pipeline.
o) Solo cuando tienes un nuevo conjunto de datos
o) Solo cuando quieres comprobar algo muy rápido.
o) Solo cuando está trabajando con un tipo de conjunto de datos que no conoce
o) Nunca - llevan mucho tiempo
o) Solo cuando tengas tiempo

{choose-answers: 4}
? Para usar un parámetro `URL` en su informe, ¿cómo lo especificaría?

C) `params$URL` 
o) `param$URL` 
o) `param[URL]` 
o) `params["URL"]` 
o) `params$url` 
o) `param$url` 
o) `params$url_link`


{/quiz}
