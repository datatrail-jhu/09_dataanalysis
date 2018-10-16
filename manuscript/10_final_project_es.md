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

). Consulte los materiales de este curso si está atascado en esta parte del proyecto.

### Configuración de RStudio Cloud

)
- Haga clic en "Proyectos" tab en la parte superior del área de trabajo
- Haga una copia del proyecto: `cbds_final_project` 

En este proyecto debería ver un archivo `final_project.Rmd `. ¡Lo utilizarás para comenzar a trabajar en tu proyecto!

) Antes de que pueda tejer con éxito!

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

) el archivo `final_project.Rmd ` a code / raw_code**in*su*versión de repositorio controlado**. Esto asegura que su archivo de código y sus datos en bruto estén en el directorio correcto.

). Guarde este cambio antes de pasar al siguiente paso.

). Consulte los materiales de este curso si está atascado en esta parte del proyecto.

### Empujando a GitHub

), es un buen momento para poner en escena, confirmar y enviar estos cambios a GitHub. ¡Hazlo ahora, y luego demora mucho en GitHub para ver los cambios en su sitio web!

). Consulte los materiales de este curso si está atascado en esta parte del proyecto.

### Los datos

) y realizada por la Oficina del Censo de los Estados Unidos. A los encuestados de la encuesta se les pide que lleven un diario durante un día, registrando cuidadosamente la cantidad de tiempo que dedican a diversas actividades, incluyendo trabajo, ocio, cuidado de niños y actividades domésticas. La encuesta se ha realizado todos los años desde 2003.

).


### Accediendo a los datos

). Una vez allí, existe la opción de descargar un archivo de varios años, que incluye datos de todos los años en que se realizó la encuesta, pero **para los propósitos de este proyecto, solo veamos los datos de 2016**. En**Archivos de datos**, haga clic en `American Time Use Survey--2016 Microdata files`.

)

)`.

)

)` contiene información sobre el tiempo total que cada encuestado de ATUS dedicó a realizar cada una de las actividades enumeradas en la encuesta. Los datos de actividad incluyen información como códigos de actividad, horarios de inicio y finalización de la actividad y ubicaciones.
)` contiene información sobre cada miembro del hogar de todas las personas seleccionadas para participar en el ATUS.

Una vez que se hayan descargado, necesitarás **descomprimir los archivos**. Una vez descomprimido, verá el conjunto de datos en varios formatos de archivo diferentes, incluidos los archivos `.sas`, `.sps` y `.dat`.**Estaremos trabajando con los archivos .dat.** 

### Cargando los datos en R

)**en RStudio Cloud. Asegúrese de que los datos**estén almacenados en la carpeta `raw_data`**.

Una vez cargado en la carpeta correcta, podrá cargar los datos. Lo hará primero **ejecutando el fragmento `setup` en el archivo `final_project.Rmd`**y luego**ejecutando el código en el `atus-data` trozo de código**. Esto creará un objeto llamado `atus.all`.

? ¿Cuántas observaciones hay en el conjunto de datos?

! 10493; 10,493


### Analizar los datos

Ahora que tenemos los datos en RStudio Cloud, ¡comencemos a trabajar!

#### Análisis exploratorio de datos

Una vez que se hayan leído los datos, **explore los datos**,**agregando su código exploratorio inicial al fragmento de código `initial-exploration` en `final_project.Rmd`**. Luego,**responde las siguientes preguntas**:

{choose-answers: 4}
), ¿qué columna está asociada con la actividad "jugar juegos de computadora"? Su respuesta debe comenzar con `t` y luego un número de 6 dígitos que combine la categoría principal, el segundo nivel y el tercer nivel de la actividad. Por ejemplo, si la categoría principal es igual a 05, el segundo nivel es igual a 03 y el tercer nivel es igual a 01, entonces su respuesta debe ser `t050301`.

C) `t120307` 
o) `t030705` 
o) `t050310` 
o) `t051201` 
o) `t131103` 
o) `t031103` 
o) `t050202` 

{choose-answers: 4}
) enumera todos los códigos de actividad.

C) 38 minutos
o) 100 minutos
o) 45 minutos
o) 26 minutos
o) 60 minutos

Encuentre el código de actividad asociado con "Cuidar y ayudar a los niños con HH". Esta es una actividad de nivel 2, por lo que debemos agregar todas las variables que comienzan con `t0301`. Cree una columna en el marco de datos `atus.all` llamado `CHILDCARE` que es la suma de todas las columnas que comienzan con `t0301`. Aquí, deberá **cambiar** el fragmento de código `creating-childcare-var`.

Pase al fragmento de código llamado `childcare-density-plot` y escriba el código en `ggplot2` para trazar la función de densidad de la variable `CHILDCARE`.


)

! TESEX

? Del diccionario de datos, la variable que representa el género de los encuestados puede tomar uno de los dos valores, `1` o `2`. ¿A qué grupo de género representa `1`?

A) hombres
b) mujeres

#### Análisis de datos inferenciales

Vamos a responder si las mujeres o los hombres pasan más tiempo con sus hijos. Comience por agrupar a los individuos por su género y calcule el tiempo promedio que los hombres y las mujeres pasan con sus hijos. Use el fragmento de código `gender-analysis` en el archivo .Rmd. Tenga en cuenta que debe reemplazar `FUNCTION` para calcular el promedio de la variable `CHILDCARE`.

? Los hombres y las mujeres son diferentes en la cantidad de tiempo que pasan con sus hijos. ¿Qué grupo pasa más tiempo, hombres o mujeres?

A) Las mujeres, en promedio, pasan unos 14 minutos más con sus hijos que los hombres.
b) Las mujeres, en promedio, pasan unos 33 minutos más con sus hijos que los hombres.
c) Los hombres, en promedio, pasan unos 33 minutos más con sus hijos que las mujeres.
d) Los hombres, en promedio, pasan unos 14 minutos más con sus hijos que las mujeres.


)` para ver la variable `TRDPFTPT` que muestra si la persona trabaja a tiempo completo o parcial. Notarás que la variable también toma el valor -1. Esto probablemente se deba a la falta de respuesta u otros motivos de recopilación de datos. Reemplace estos valores con `NA` en sus datos para que no afecten su análisis. Use el fragmento de código `replacing-na` para hacer esto y agregue sus comandos allí.

? ¿Cuántos `NAs` están en la variable ahora?

! 4119; 4,119

Ahora, vamos a explorar qué factores afectan el tiempo que pasan con los niños. Vamos a responder preguntas como:

- ¿Los padres más jóvenes pasan más tiempo con sus hijos?
- ¿Las personas más ricas pasan más tiempo con sus hijos en comparación con las personas más pobres?
- ¿Las parejas casadas pasan más tiempo con sus hijos en comparación con las madres solteras?
- ¿Los trabajadores a tiempo completo pasan más tiempo con sus hijos en comparación con los trabajadores a tiempo parcial?

) en el hogar. La variable de ingreso es `HEFAMINC`. Otras variables son fáciles de encontrar en el diccionario de datos.

) en el hogar. También asegúrese de cambiar los valores de la variable `TRDPFTPT` que son `-1` a `NA`.

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


Convierta los datos de ancho a largo usando el paquete de su elección y guarde el marco de datos como `df.long`. Utilice el fragmento de código `wide-to-long` para este propósito. Asegúrese de que su variable clave se llame `ACTIVITY` y que su variable de valor se llame `MINS`.

). Ingrese su código en el fragmento `age-activity`. Etiqueta cada panel en tu gráfica con el nombre de la actividad apropiada.

{choose-answers: 4}
? ¿Para qué categorías el tiempo promedio empleado varía según la edad?

C) Actividad 1, Actividad 5, Actividad 12
o) Actividad 12, Actividad 15, Actividad 17
o) Actividad 7, Actividad 9, Actividad 15
o) Actividad 7, Actividad 16, Actividad 17
o) Actividad 4, Actividad 7, Actividad 17

)?

a) Los mayores de 65 años son los que más trabajan.
b) Los trabajadores jóvenes, de mediana edad y viejos pasan más o menos el mismo número de horas trabajando.
c) Los jóvenes trabajan más que los de mediana edad.
D) Las personas de mediana edad son las que más trabajan en comparación con las personas más jóvenes y mayores.


)?

A) Las personas mayores pasan más tiempo socializando.
b) Las personas de mediana edad son las más sociables.
c) Las personas más jóvenes socializan más que las personas mayores.
d) Los jóvenes son los más sociables.

#### Visualización de datos

). La única diferencia es que solo estamos mirando las 18 categorías principales de actividad. Usa los datos largos que creaste en la sección anterior y haz la gráfica lo más cercana posible a la gráfica de Henrik Lindberg. Escriba su código en el fragmento de código `activity-income`.


#### Guardar la trama

)` para **guardar esta trama en las figuras / explicaciones_figuras**. Guarda esta figura como "activity-income.png". Haga esto usando el código parcial en el fragmento de código `save-plot`.


### Añadir texto de Markdown a .Rmd

Antes de finalizar su proyecto, querrá estar seguro de que hay **comentarios en sus fragmentos de código**y**texto fuera de sus fragmentos de código** para explicar lo que está haciendo en cada fragmento de código. Estas explicaciones son increíblemente útiles para alguien que no codifica o alguien que no conoce su proyecto.

) del proyecto.


### Tejer su documento R Markdown

Por último, pero no menos importante, querrá **Tejer su documento .Rmd en un documento HTML**. Si recibe un error, observe lo que dice el error y edite su documento .Rmd. ¡Entonces, intenta tejer de nuevo! La solución de problemas de estos mensajes de error le enseñará mucho sobre la codificación en R.

### Unos pocos controles finales

Un proyecto completo debe tener:

)
- Archivo de texto README.md explicando tu proyecto
- Comentarios en su código trozos
- Respondió todas las preguntas a lo largo de este ejercicio.

### Final `push` a GitHub

Ahora que has finalizado tu proyecto, harás un último impulso **a GitHub**. `add`, `commit` y `push` su trabajo a GitHub. Navegue a su repositorio de GitHub y responda la pregunta final a continuación.

). Consulte los materiales de este curso si está atascado en esta parte del proyecto.


? Envíe la URL a su repositorio `final_project` GitHub a continuación.

)/i

**¡Felicidades por terminar tu Proyecto Final!** 

{/exercise}

