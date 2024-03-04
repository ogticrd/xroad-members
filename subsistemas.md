## Subsistemas

<sup><sub>Este es el paso 5 de ésta guía de configuración. Se espera que se haya completado el [paso anterior relativo a la configuración](/configuracion.md). También puedes volver al [inicio](/README.md).</sub></sup>

En el contexto de X-Road, un subsistema es el mecanísmo utilizado para agrupar y organizar los servicios de transferencia de datos. Los subsistemas son esenciales en este proceso debido a que, además de agrupar servicios, sirven para identificar los proyectos en los que las entidades trabajan en materia de interoperabilidad y permiten que las entidades se otorguen accesos a través de estos.

Todos los miembros de la plataforma podrán ver los subsistemas que han creado los demás miembros. Además, los subsistemas pasan por un sistema de aprobación a través del Servidor Central. Con este sistema se busca asegurar la correcta creación del catálogo de servicios de interoperabilidad. La revisión realizada consta de validar que los subsistemas creados cumplen con los siguientes criterios:

- Debe ser un nombre descriptivo de proyecto (este punto es muy importante)
- Debe estar escrito totalmente en mayúsculas
- No debe contener espacios ni caracteres especiales (Ej: "*&#$)(][@! ")

**NOTA:** Es importante que este nombre de subsistema sea muy descriptivo y preferiblemente que concuerde con el nombre del proyecto relacionado. No debe contener nombres ambiguos o genéricos como: “PRODUCCION”, “PRUEBA”, “TEST”, “DATOS”. De ser recibidos serán rechazados por algún operador del Servidor Central de la plataforma, dejando inutilizable el subsistema en cuestión.

### Crear un subsistema

1. Ir a pestaña “Clients”
1. En la primera fila habrá un cliente con el nombre de su institución y un botón “Add subsistem” al que debe hacer click
1. Rellena el campo “Subsystem Code” con el nombre que le desea colocar al subsistema. Debe usar mayúsculas y no debe contener espacios y/o caracteres especiales
1. Debe mantener la opción de registrar subsistema activa
1. Finalmente debe dar click en “Add subsystem”

Registrar el subsistema en el servidor central es un proceso opcional, sin embargo, este no podrá ser utilizado en ningún proceso de interoperabilidad hasta que el mismo no tenga completado el registro.
El subsistema agregado solo funcionará si tiene un registro activo en el Servidor Central de la plataforma. Si agregó un nuevo subsistema, deberá enviar un registro el cual es revisado por un operador del Servidor Central a fin de garantizar que el subsistema cumple con las convenciones establecidas.

Una vez completada la creación de subsistemas puedes continuar al siguiente paso, la [creación de servicios](/04_crear_servicio.md).
