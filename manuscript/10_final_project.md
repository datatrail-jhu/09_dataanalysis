# Proyecto final

A lo largo de este conjunto de cursos, hemos tenido una serie de proyectos. Este es el último proyecto del conjunto de cursos que llamamos el proyecto Final. Todos estos serán incluidos como Ejercicios. Esto significa que *no* serán requeridos para aprobar el curso y recibir su certificado; sin embargo, completarlos realmente ayudará a mejorar su comprensión del material cubierto y para asegurarse de que ha comenzado a dominar las habilidades necesarias para ser un científico de datos.

En cada proyecto, nuestro objetivo será comenzar y hacer preguntas que lo guiarán a través del proyecto. Pero, intencionalmente, dejaremos las partes donde tiene que averiguar qué debe hacerse.

Este proyecto requerirá que usted:

* Importar datos de la Encuesta Americana de Uso del Tiempo.
* limpiar y ordenar los datos
* visualizar los datos
* Realizar un análisis exploratorio de datos.
* Realizar un análisis inferencial.

Puede acceder al proyecto yendo al ejercicio que acompaña a esta lección.

### Diapositivas

* [Diapositivas](https://docs.google.com/presentation/d/1HwadkXFrjPNRdQ1NKN8fW92vSBgsD4MK_sjhvnWrVac/edit?usp=sharing)

{exercise, id: final_project}

## Proyecto final

Este ejercicio se ha generado para practicar todo lo que ha aprendido en este conjunto de cursos.

### Configuración de GitHub

Para comenzar, querrás ir a GitHub e iniciar un nuevo repositorio:

- Llame a este repositorio `final_project`.
- Añadir una breve descripción
- Marque la casilla "Inicializar este repositorio con un README.
- Haga clic en `Create Repository` 

Una vez que se haya creado el repositorio, haga clic en `Clone or download` y copie el "Clone with HTTPS" link provisto. Lo usarás para clonar tu repositorio en RStudio Cloud.

**Nota**: Si está atascado en esto, estos pasos se cubrieron en detalle en un curso anterior: [Control de versión](https://leanpub.com/universities/courses/jhu/version-control). Consulte los materiales de este curso si está atascado en esta parte del proyecto.

### Configuración de RStudio Cloud

- Vaya a [Chromebook Data Science Space en RStudio Cloud](https://rstudio.cloud/spaces/3919/join?access_code=RUUQ%2BeEgKea0oMF7EJy4UePldyBBMu7d0amv2KFC)
- Haga clic en "Proyectos" tab en la parte superior del área de trabajo
- Haga una copia del proyecto: `cbds_final_project` 

En este proyecto debería ver un archivo `final_project.Rmd `. ¡Lo utilizarás para comenzar a trabajar en tu proyecto!

*Nota*: Si intenta tejer este documento en este momento,*obtendrá* un error porque hay un código en este documento que debe ser editado (¡usted!) Antes de que pueda tejer con éxito!

Para comenzar a usar el control de versiones, querrá clonar el repositorio de GitHub que acaba de crear en este espacio de trabajo. Para hacerlo, vaya a la Terminal y clone su proyecto en este espacio de trabajo.

Un nuevo directorio con el nombre de su repositorio GitHub ahora debe ser visible en la pestaña Archivos de RStudio Cloud. Ahora estás configurado para seguir tu proyecto con git.

### Configuración del proyecto Data Science

Como se mencionó anteriormente, querrá que todos sus proyectos de ciencia de datos se organicen desde el principio. ¡Vamos a hacer eso ahora!

Primero, use `cd` para ingresar al directorio de su Proyecto GitHub.

Una vez en el directorio correcto, use `mkdir` en el terminal para crear carpetas con la siguiente estructura:

- datos /
  - raw_data /
  - tidy_data /
- código /
  - raw_code /
  - final_code /
- figuras /
  - exploratory_figures /
  - explicaciones_figuras /
- productos /
  - escritura/

Ahora que sus directorios están configurados, querrá usar la Terminal (o el menú desplegable 'Más' en la pestaña Archivos) para **mover (`mv`) el archivo `final_project.Rmd ` a code / raw_code**in*su*versión de repositorio controlado**. Esto asegura que su archivo de código y sus datos en bruto estén en el directorio correcto.

Una vez que el documento .Rmd esté en la carpeta correcta, querrá cambiar **el autor de este documento** a su nombre en la parte superior del documento .Rmd (en el YAML). Guarde este cambio antes de pasar al siguiente paso.

**Nota**: Si está atascado en esto, estos pasos se cubrieron en detalle en un curso anterior: [Organizando proyectos de Data Science](https://leanpub.com/universities/courses/jhu/organizingdatascienceprojects). Consulte los materiales de este curso si está atascado en esta parte del proyecto.

### Empujando a GitHub

Querrá guardar los cambios en su proyecto regularmente empujándolos a GitHub. Ahora que ha configurado su estructura de archivos y ha agregado un archivo de código (.Rmd), es un buen momento para poner en escena, confirmar y enviar estos cambios a GitHub. ¡Hazlo ahora, y luego demora mucho en GitHub para ver los cambios en su sitio web!

**Nota**: Si está atascado en esto, estos pasos se cubrieron en detalle en un curso anterior: [Control de versión](https://leanpub.com/universities/courses/jhu/version-control). Consulte los materiales de este curso si está atascado en esta parte del proyecto.

### Los datos

La **Encuesta sobre el uso del tiempo en los Estados Unidos (ATUS, por sus siglas en inglés)** es una encuesta sobre el uso del tiempo en los estadounidenses, patrocinada por la Oficina de Estadísticas Laborales (BLS) y realizada por la Oficina del Censo de los Estados Unidos. A los encuestados de la encuesta se les pide que lleven un diario durante un día, registrando cuidadosamente la cantidad de tiempo que dedican a diversas actividades, incluyendo trabajo, ocio, cuidado de niños y actividades domésticas. La encuesta se ha realizado todos los años desde 2003.

En los datos se incluyen una serie de **variables demográficas**(como la edad, el sexo, la raza, el estado civil y la educación de los encuestados), así como**información detallada sobre ingresos y empleo**para cada encuestado. Si bien hay algunos cambios leves en la encuesta cada año, las preguntas más frecuentes siguen siendo las mismas. Puede encontrar los**diccionarios de datos**, que brindan información sobre las variables incluidas para cada encuesta anual en [https://www.bls.gov/tus/dictionaries.htm◆(https://www.bls.gov /tus/dictionaries.htm).


### Accediendo a los datos

Hay múltiples formas de acceder a los datos de ATUS; Sin embargo, para este proyecto, obtendrá los datos en bruto directamente de la fuente. Los datos de cada año se pueden encontrar en [https://www.bls.gov/tus/#data◆(https://www.bls.gov/tus/#data). Una vez allí, existe la opción de descargar un archivo de varios años, que incluye datos de todos los años en que se realizó la encuesta, pero **para los propósitos de este proyecto, solo veamos los datos de 2016**. En**Archivos de datos**, haga clic en Encuesta sobre el uso del tiempo en Estados Unidos `American Time Use Survey--2016 Microdata files`.

![Encuesta sobre el uso del tiempo en Estados Unidos](images/10_final_project/10_dataanalysis_final_project-1.png)

Serás llevado a una nueva pantalla. Desplácese hasta la sección **Archivos de datos ATUS básicos de 2016**. En esta sección, querrá**hacer clic para descargar** los dos archivos siguientes: `ATUS 2016 Activity summary file (zip)` y `ATUS-CPS 2016 file (zip)`.

![Descargar archivos de datos](images/10_final_project/10_dataanalysis_final_project-2.png)

* `ATUS 2016 Activity summary file (zip)` contiene información sobre el tiempo total que cada encuestado de ATUS dedicó a realizar cada una de las actividades enumeradas en la encuesta. Los datos de actividad incluyen información como códigos de actividad, horarios de inicio y finalización de la actividad y ubicaciones.
* El archivo `ATUS-CPS 2016 file (zip)` contiene información sobre cada miembro del hogar de todas las personas seleccionadas para participar en el ATUS.

Una vez que se hayan descargado, necesitarás **descomprimir los archivos**. Una vez descomprimido, verá el conjunto de datos en varios formatos de archivo diferentes, incluidos los archivos `.sas`, `.sps` y `.dat`.**Estaremos trabajando con los archivos .dat.** 

### Cargando los datos en R

Para utilizar los datos en RStudio Cloud, deberá **cargar los dos archivos .dat (`atuscps_2016.dat` y `atussum_2016.dat`)**en RStudio Cloud. Asegúrese de que los datos**estén almacenados en la carpeta `raw_data`**.

Una vez cargado en la carpeta correcta, podrá cargar los datos. Lo hará primero **ejecutando el fragmento `setup` en el archivo `final_project.Rmd`**y luego**ejecutando el código en el `atus-data` trozo de código**. Esto creará un objeto llamado `atus.all`.

? ¿Cuántas observaciones hay en el conjunto de datos?

! 10493; 10,493


### Analizar los datos

Ahora que tenemos los datos en RStudio Cloud, ¡comencemos a trabajar!

#### Análisis exploratorio de datos

Una vez que haya leído los datos, **explore los datos**,**agregando su código exploratorio inicial al fragmento de código `initial-exploration` en `final_project.Rmd`**. Luego,**responde las siguientes preguntas**:

{choose-answers: 4}
? Puede encontrar los diccionarios de datos (también llamados libros de códigos) en [https://www.bls.gov/tus/atuscpscodebk16.pdf◆(https://www.bls.gov/tus/atuscpscodebk16.pdf) para los datos de CPS y en [https://www.bls.gov/tus/atusintcodebk16.pdf◆(https://www.bls.gov/tus/atusintcodebk16.pdf) para el resto de las variables. El uso de este diccionario de datos es muy importante ya que se puede encontrar aquí mucha información acerca de las variables en los datos y cómo están codificadas. Al observar las variables en el marco de datos `atus.all`, vemos que hay muchas variables que comienzan con `t` seguidas de un número de 6 dígitos. Estas variables capturan la cantidad total de minutos que cada encuestado dedicó a realizar cada actividad. El enlace [https://www.bls.gov/tus/lexiconwex2016.pdf◆(https://www.bls.gov/tus/lexiconwex2016.pdf) enumera todos los códigos de actividad. Usando la información en [ese archivo](https://www.bls.gov/tus/atuscpscodebk16.pdf), ¿qué columna está asociada con la actividad "jugar juegos de computadora"? Su respuesta debe comenzar con `t` y luego un número de 6 dígitos que combine la categoría principal, el segundo nivel y el tercer nivel de la actividad. Por ejemplo, si la categoría principal es igual a 05, el segundo nivel es igual a 03 y el tercer nivel es igual a 01, entonces su respuesta debe ser `t050301`.

C) `t120307` 
o) `t030705` 
o) `t050310` 
o) `t051201` 
o) `t131103` 
o) `t031103` 
o) `t050202` 

{choose-answers: 4}
? En los datos, la variable **`t010101` contiene el número total de minutos que cada encuestado dedicó a realizar la actividad 010101**que está "durmiendo"  y la variable**`t010102` contiene el número total de minutos que cada encuestado pasó realizando la actividad 010102**, " insomnio." Encuentre la variable asociada con "Socializar y comunicarse con otros". 410420 ¿Cuánto tiempo, en promedio, dedica una persona de la muestra a "Socializar y comunicarse con los demás"? Una vez más, el enlace [https://www.bls.gov/tus/lexiconwex2016.pdf◆(https://www.bls.gov/tus/lexiconwex2016.pdf) enumera todos los códigos de actividad.

C) 38 minutos
o) 100 minutos
o) 45 minutos
o) 26 minutos
o) 60 minutos

Encuentre el código de actividad asociado con "Cuidar y ayudar a los niños con HH". Esta es una actividad de nivel 2, por lo que debemos agregar todas las variables que comienzan con `t0301`. Cree una columna en el marco de datos `atus.all` llamado `CHILDCARE` que es la suma de todas las columnas que comienzan con `t0301`. Aquí, deberá **cambiar** el fragmento de código `creating-childcare-var`.

Pase a la porción de código llamada `childcare-density-plot` y escriba el código en `ggplot2` para trazar la función de densidad de la variable `CHILDCARE`.


? Desde el diccionario de datos, ¿cuál es la variable que muestra el género del encuestado? (La respuesta distingue entre mayúsculas y minúsculas.)

! TESEX

? Desde el diccionario de datos, la variable que representa el género de los encuestados puede tomar uno de dos valores, `1` o `2`. ¿A qué grupo de género representa `1`?

A) hombres
b) mujeres

#### Análisis de datos inferenciales

Vamos a responder si las mujeres o los hombres pasan más tiempo con sus hijos. Comience por agrupar a los individuos por su género y calcule el tiempo promedio que los hombres y las mujeres pasan con sus hijos. Utilice el fragmento `gender-analysis` del código en el archivo .Rmd. Tenga en cuenta que debe reemplazar `FUNCTION` para calcular el promedio de la variable `CHILDCARE`.

? Los hombres y las mujeres son diferentes en la cantidad de tiempo que pasan con sus hijos. ¿Qué grupo pasa más tiempo, hombres o mujeres?

A) Las mujeres, en promedio, pasan unos 14 minutos más con sus hijos que los hombres.
b) Las mujeres, en promedio, pasan unos 33 minutos más con sus hijos que los hombres.
c) Los hombres, en promedio, pasan unos 33 minutos más con sus hijos que las mujeres.
d) Los hombres, en promedio, pasan unos 14 minutos más con sus hijos que las mujeres.


Use la función `table()` para ver la variable `TRDPFTPT` que muestra si la persona trabaja a tiempo completo o parcial. Notarás que la variable también toma el valor -1. Esto probablemente se deba a la falta de respuesta u otros motivos de recopilación de datos. Reemplace estos valores con `NA` en sus datos para que no afecten su análisis. Use el fragmento de código `replacing-na` para hacer esto y agregue sus comandos allí.

? ¿Cuántos `NAs` están en la variable ahora?

! 4119; 4,119

Ahora, vamos a explorar qué factores afectan el tiempo que pasan con los niños. Vamos a responder preguntas como:

- ¿Los padres más jóvenes pasan más tiempo con sus hijos?
- ¿Las personas más ricas pasan más tiempo con sus hijos en comparación con las personas más pobres?
- ¿Las parejas casadas pasan más tiempo con sus hijos en comparación con las madres solteras?
- ¿Los trabajadores a tiempo completo pasan más tiempo con sus hijos en comparación con los trabajadores a tiempo parcial?

Compara cada una de estas relaciones y presenta tus resultados en una tabla o una gráfica. Puede hacer esto encontrando primero estas variables en el diccionario de datos. Agregue su código en el fragmento `exploratory-analysis` en el archivo .Rmd. Asegúrese de que, en su análisis, limite sus datos a aquellos que tienen al menos un hijo (de 18 años o menos) en el hogar. La variable para el número de hijos (18 años o menos) en el hogar es `TRCHILDNUM`. Use el marco de datos `atus.all` que creó anteriormente y limite nuevamente sus datos a aquellos que tienen al menos un hijo (18 años o menos) en el hogar. La variable de ingreso es `HEFAMINC`. Otras variables son fáciles de encontrar en el diccionario de datos.

En el ejercicio anterior, observamos las relaciones bilaterales (bidireccionales). Por ejemplo, observamos cómo se relacionan los ingresos y el tiempo dedicado a los niños. Sin embargo, ha aprendido en este curso que otras variables de confusión pueden ser una fuente de sesgo en su análisis. Por ejemplo, el efecto de los ingresos en el tiempo que pasan con los niños puede estar sesgado por la cantidad de hijos que una persona tiene. Quizás las personas más ricas pasan menos tiempo porque tienen menos hijos. Es mucho mejor observar la relación de todas las variables relevantes asociadas con el tiempo que pasamos juntos con los niños. Ejecute una regresión lineal del estado civil, la edad, el sexo, el número de hijos (de 18 años o menos), los ingresos y el estado a tiempo completo versus a tiempo parcial. Agregue su código en el fragmento de código `reg-analysis`. Recuerde limitar la muestra a aquellos que tienen al menos un niño (18 años o menos) en el hogar. También asegúrese de cambiar los valores de la variable `TRDPFTPT` que son `-1` a `NA`.

{choose-answers: 4}
? ¿Cuál es el coeficiente de género ahora?

C) 22
o) -22
o) 10
o) -10
o) 5
o) -5

{choose-answers: 4}
? En la regresión, el coeficiente de la edad variable significa cuánto tiempo pasa con los niños cambia si la edad aumenta en 1. Según sus resultados, ¿cuál es la diferencia en minutos que pasan con niños entre dos personas con una diferencia de 10 años?

C) 16 minutos
o) 60 minutos
o) 10 minutos
o) 1.6 minutos
o) 160 minutos

En las siguientes preguntas, veremos si el tiempo dedicado a diferentes actividades varía según la edad. Sin embargo, solo consideraremos las actividades en los principales niveles de categoría. Hay 18 categorías principales en los datos que incluyen cuidado personal, actividades domésticas, cuidado y ayuda a los miembros del hogar, etc. Debido a que cada columna de actividad en los datos está en el 3er nivel, tendremos que comenzar sumando columnas en las categorías principales de actividad niveles Guarde el marco de datos resultante como `df.wide`. Use el fragmento de código `activity-cats` en el archivo .Rmd para esta parte.

{choose-answers: 4}
? ¿En qué grupo de actividades pasaron las personas, en promedio, la mayoría del tiempo?

C) Grupo de actividad 1.
o) grupo de actividad 3
o) grupo de actividad 5
o) grupo de actividad 7
o) grupo de actividad 9
o) grupo de actividad 11
o) grupo de actividad 13


{choose-answers: 4}
? ¿Cuál es la segunda actividad que consume más tiempo para los encuestados?

C) Grupo de actividad 12
o) grupo de actividad 4
o) grupo de actividad 6
o) grupo de actividad 8
o) grupo de actividad 10
o) grupo de actividad 2
o) grupo de actividad 14

{choose-answers: 4}
? ¿Cuál es el tiempo máximo que una persona de nuestra muestra dedica tiempo a "Trabajo y actividades relacionadas con el trabajo"?

C) 1350 minutos
o) 157 minutos
o) 241 minutos
o) 375 minutos
o) 525 minutos


Convierta los datos de ancho a largo usando el paquete de su elección y guarde el marco de datos como `df.long`. Use el fragmento de código `wide-to-long` para este propósito. Asegúrese de que su variable clave se llame `ACTIVITY` y que su variable de valor se llame `MINS`.

Ahora, agrupe el marco de datos que creó en el paso anterior por tipo de actividad (`ACTIVITY`) y edad (`TEAGE`). Calcule el tiempo promedio para cada grupo de edad y llámelo `AVGMINS`. En `ggplot2`, grafique `AVGMINS` contra `TEAGE` para cada categoría (paneles múltiples). Escriba su código en el fragmento de código `age-activity`. Etiqueta cada panel en tu gráfica con el nombre de la actividad apropiada.

{choose-answers: 4}
? ¿Para qué categorías el tiempo promedio empleado varía según la edad?

C) Actividad 1, Actividad 5, Actividad 12
o) Actividad 12, Actividad 15, Actividad 17
o) Actividad 7, Actividad 9, Actividad 15
o) Actividad 7, Actividad 16, Actividad 17
o) Actividad 4, Actividad 7, Actividad 17

? Según el gráfico, ¿qué es verdad sobre la categoría de actividad 5 (Trabajo y actividades relacionadas con el trabajo)?

a) Los mayores de 65 años son los que más trabajan.
b) Los trabajadores jóvenes, de mediana edad y viejos pasan más o menos el mismo número de horas trabajando.
c) Los jóvenes trabajan más que los de mediana edad.
D) Las personas de mediana edad son las que más trabajan en comparación con las personas más jóvenes y mayores.


? Según el gráfico, ¿qué es verdad sobre la categoría de actividad 12 (Socializar, relajarse y divertirse)?

A) Las personas mayores pasan más tiempo socializando.
b) Las personas de mediana edad son las más sociables.
c) Las personas más jóvenes socializan más que las personas mayores.
d) Los jóvenes son los más sociables.

#### Visualización de datos

Finalmente, en este último paso, vamos a crear una gráfica que muestra cómo los diferentes grupos de ingresos dedican tiempo a cada actividad. El gráfico se basa en la visualización de datos de Henrik Lindberg publicada [aquí](https://raw.githubusercontent.com/halhen/viz-pub/master/pastime-income/pastime.png). La única diferencia es que solo estamos mirando las 18 categorías principales de actividad. Usa los datos largos que creaste en la sección anterior y haz la gráfica lo más cercana posible a la gráfica de Henrik Lindberg. Escriba su código en el fragmento de código `activity-income`.


#### Guardar la trama

Una vez que haya trabajado con este fragmento de código y tenga una trama que se parece mucho a la trama de la publicación original (y que se ve arriba), querrá usar `ggsave()` para **guardar esta trama en las figuras / explicaciones_figuras**. Guarda esta figura como "activity-income.png". Haga esto usando el código parcial en el fragmento de código `save-plot`.


### Añadir texto de Markdown a .Rmd

Antes de finalizar su proyecto, querrá estar seguro de que hay **comentarios en sus fragmentos de código**y**texto fuera de sus fragmentos de código** para explicar lo que está haciendo en cada fragmento de código. Estas explicaciones son increíblemente útiles para alguien que no codifica o alguien que no conoce su proyecto.

**Nota**: Si está atascado en esto, estos pasos se cubrieron en detalle en un curso anterior: [Introducción a R](https://leanpub.com/universities/courses/jhu/introduction-to-r). Refer to the R Markdown lesson in this course if you're stuck on this part (or the next part) del proyecto.


### Tejer su documento R Markdown

Por último, pero no menos importante, querrá **Tejer su documento .Rmd en un documento HTML**. Si recibe un error, observe lo que dice el error y edite su documento .Rmd. ¡Entonces, intenta tejer de nuevo! La solución de problemas de estos mensajes de error le enseñará mucho sobre la codificación en R.

### Unos pocos controles finales

Un proyecto completo debe tener:

- Se completaron los fragmentos de código en todo el documento .Rmd (su documento de RMarkdown debe tejer sin ningún error)
- Archivo de texto README.md explicando tu proyecto
- Comentarios en su código trozos
- Respondió todas las preguntas a lo largo de este ejercicio.

### Final `push` para GitHub

Ahora que has finalizado tu proyecto, harás un último impulso **a GitHub**. `add`, `commit` y `push` su trabajo en GitHub. Navegue a su repositorio de GitHub y responda la pregunta final a continuación.

**Nota**: Si está atascado en esto, estos pasos se cubrieron en detalle en un curso anterior: [Control de versión](https://leanpub.com/universities/courses/jhu/version-control). Consulte los materiales de este curso si está atascado en esta parte del proyecto.


? Envíe la URL a su repositorio GitHub `final_project` a continuación.

! /(https:\/\/github.com.+\/final_project)/i

**¡Felicidades por terminar tu Proyecto Final!** 

{/exercise}

