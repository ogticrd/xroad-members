# Consumo de Servicios a través de la Plataforma de Interoperabilidad

Para consumir un servicio de otra institución mediante la plataforma de interoperabilidad, es imprescindible contar con la siguiente información:

- **Member Class**: La clase del miembro que proporciona el servicio. Ejemplo: GOB, COM, etc.
- **Member Name**: El nombre del miembro que ofrece el servicio, generalmente representado por las siglas oficiales de la institución.
- **Subsystem**: El código del subsistema que se va a consumir.
- **Service**: El código del servicio que contiene el endpoint a utilizar.
- **Endpoint**: El endpoint final que proporciona la información deseada.

Además, es necesario incluir el parámetro **X-Road-Client** en los encabezados de la petición. Este parámetro identifica al subsistema (cliente) que realizará la solicitud, es decir, el subsistema de la institución que está requiriendo la información.

El formato del **X-Road-Client** es el siguiente:  
`{CountryCode}/{MemberClass}/{MemberName}/{Subsystem}`  
Ejemplo: `DO/GOB/OGTIC/VALIDADOR`.

Es importante destacar que la institución que provee los datos debe conceder permisos a este cliente para permitir el acceso a la información.

Con estos datos, se puede construir la URL final para realizar la consulta, que sigue este formato:  
`/r1/{CountryCode}/{MemberClass}/{MemberName}/{Service}/{Endpoint}`

La petición debe realizarse al servidor de seguridad de la institución que consume el servicio, quedando la URL resultante de la siguiente manera:

`https://127.0.0.42/r1/DO/GOB/OGTIC/EMPLEADOS/EjemploDeConsulta/40200000000`

Para autorizar la solicitud del servicio, el subsistema consumidor debe incluirse en los encabezados de la petición bajo el parámetro **X-Road-Client**, por ejemplo:  
`X-Road-Client: DO/GOB/OGTIC/VALIDADOR`.

**Nota**: Herramientas como Postman, por defecto, no permiten certificados autofirmados. Por ello, puede ser necesario deshabilitar la verificación SSL en la configuración de la aplicación. Esta acción no representa un problema de seguridad, ya que la comunicación se realiza dentro de la red interna de la institución.
