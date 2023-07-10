## Configuración e inscripción como miembro

Antes de iniciar la configuración debe asegurarse que ha completado el proceso de instalación correctamente y ha seguido la guía técnica de preparación para la configuración.

Para iniciar el proceso de configuración realice los siguientes pasos:

1. Acceda a la interfaz de su servidor de seguridad, que instaló en la sección anterior, desde un navegador colocando la ruta https://<subdominio>:4000 (el puerto 4000 es el que viene por defecto, si se configuró algún otro puerto para acceder a la interfaz de usuario debe utilizar ese).
2. Debe subir el archivo XML “Ancla de configuración”. Para esto debe dar click en buscar y seleccionar el archivo. Sale un mensaje de confirmación el cual debe aceptar.
[Nota: si nota que el mensaje de confirmación se queda cargando luego de aceptarlo y no continúa es probable que se deba a falta de comunicación entre su servidor y el servidor central. Debe asegurarse que haya comunicación entre ambos antes de continuar la configuración].
3. En la siguiente sección encontrará un formulario con 3 campos a completar.
    1. Clase de miembro: Esto hace referencia al grupo de entidad al que pertenece. Para una entidad del estado debe seleccionar “GOB”.
    2. Código de miembro: Aquí debe colocar oficiales de su institución. Si está bien escritas y registrada en el servidor central notará que el nombre de la institución aparecerá de forma automática en la parte de arriba del formulario.
    [Nota: si no aparece el nombre en la parte de arriba el registro podría fallar. Por favor informarlo a interoperabilidad@ogtic.gob.do]
    3. Código del servidor de seguridad: Aquí normalmente se coloca “SS” + más el número de orden del servidor. Si es el primer servidor que configuran esto debería quedar así: “SS1”, el siguiente sería “SS2” y así sucesivamente.
4. La siguiente sección es donde se coloca el PIN de seguridad para las llaves y certificados del servidor de seguridad. Este PIN es alfanumérico y debe seguir las mismas políticas de credenciales seguras que tienen en la institución. Este PIN normalmente se configura primero durante la instalación y se debe usar ese mismo en esta sección. Debe repetir el mismo PIN en ambos campos de esta pantalla, luego presiona el botón de continuar.

A este punto se ha completado satisfactoriamente la primera parte de la configuración. Ahora vamos a registrar nuestro nuevo servidor de seguridad en el servidor central siguiendo estos pasos:

1. Diríjase a la sección “Keys and certificates” (Llaves y certificados).

En esta sesión estará el almacén de llaves y certificados llamado “Soft Token”. Este está protegido por el PIN que fue configurado al momento de la instalación. Para hacer uso de este Soft Token de debe haber ingresado en el mismo. Para esto se debe dar click en el boton a la derecha del Soft Token que dice “Log in” y colocar el PIN. Si dice “Log out” es porque actuamente el Soft Token se encuentra listo para ser utilizado.

1. Abrir el Soft Token (con la flecha del lado izquierdo) y clickear el boton “Add Key”.
    1. En el formulario que aparece en pantalla debe colocar un label para la llave de autenticación. Por ej: AUTH. Dar click en “Next”
    2. En “Usage” elegir la opción “Authentication”. Dar click en “Continue”
    3. En “Server DNS Name” colocar el subdominio del servidor, comúnmente ss1.institucion.gob.do
    4. En “Country Code” colocar “DO”
    5. Click en “Generate CSR” para descargar el archivo CSR necesario para crear el certificado de autenticación
    6. Click en “Done”
2. Abrir el Soft Token (en caso de que no esté abierto) y clickear el boton “Add Key”.
    1. En el formulario que aparece en pantalla debe colocar un label para la llave de firma. Por ej: SIGN. Dar click en “Next”
    2. En “Usage” elegir la opción “Signing”. En “Client” elegir la única opción que debe haber. Dar click en “Continue”
    3. En “Country Code” colocar “DO”
    4. Click en “Generate CSR” para descargar el archivo CSR necesario para crear el certificado de firma
    5. Click en “Done”
3. Crear un archivo .zip con los 2 CSR que se acaban de generar y descargar
4. Enviar el archivo .zip a la dirección interoperabilidad@ogtic.gob.do. Copiar a kevin.jimenez@ogtic.gob.do
5. Esperar que los certificados sean firmados y recibidos por la misma vía.

Una ves recibido los certificados firmados deben ser importados dando click al botón de importación de certificados ubicado en la misma sección donde se crearon las llaves y los CSRs.

Luego se debe activar el certificado de autenticación y posteriormente se debe registrar. Este paso envía el registro del nuevo servidor al Servidor Central y un operador hace el proceso de verificación. En caso de que todo se encuentre correcto, se aprobará el registro y se reflejará en la sección del certificado de autenticación.
