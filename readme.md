Proyecto para curso de programación web full stack UTN, Cuadrado Soriano Valentin.

En este proyecto se abarcó la idea de crear una página web para almacenar datos de acceso de diferentes páginas para cada usuario, por lo que con la ayuda de lo visto en clase y algunos tutoriales de youtube, se logró crear una página web con sistema de registro/sesion, que almacena las listas de datos de cada usuario y permite modificarlas/eliminarlas a gusto.

- MySql:

Para las bases de datos se usó mysql, trabajando principalmente desde MySql workbench, ya que complementos como xampp o mysql desde consola no funcionaron.
Hay 2 tablas principales, links (que almacena los datos de lista) y users (que almacena los registros de usuario para las sesiones), ambas conectadas por las columnas user_id & users(id) respectivamente.
(las tablas se fueron modificando entre lo que se mostraba en los tutoriales y las necesidades de la página, no obstante, se dejó en la carpeta MySql (que no tiene conneción directa al archivo) un registro de creación y modificación de tablas para mostrar como fue el proceso)
Para conectarse a la base de datos, se han de rellenar los campos en el archivo "keys.js"

- Motores de plantilla:

Handlebars fue el motor de plantilla utilizado, que entre las funciones explicadas en clase y un par mas aprendidas para conectar los archivos .js con los .hbs, se crearon todas las vistas html junto con el uso de estilos de bootstrap 5 y un archivo css para estilos personalizados.

- Dependencias usadas:

-Brcypt: Encriptación de contraseñas
-Conect flash: Mostrar carteles de exito o error al completar una función.
-Todo lo de express: Manejo de datos
-Morgan: Mostrar por consola los metodos GET & POST para ver como responde el servidor.
-MySql/2: Conectar a la base de datos.
-Passport: Validación de sesiones
-timeago: Un middleware para mostrar tiempo de una forma lejible y no como se almacena en MySql

- Errores:

El unico error que no se pudo solucionar fue el echo de que al editar una lista no se puede apretar la nav-bar porque la pagina crashea, este error no se pudo solucionar y se lo dejó como tal, asique al visitar esa vista, aprete "guardar" para proseguir.







