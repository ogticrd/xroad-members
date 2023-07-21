# Preguntas frecuentes

### P: **¿Qué tipo de información puedo intercambiar por X-Road?**
R: X-Road es una plataforma de intercambio de información de propósito general. Prácticamente no existen límites para el tipo de información que se pueda transaccionar.

### P: ¿Puedo enviar o recibir documentos?
R: Sí.

### P: ¿Puedo enviar documentos PDF?
R: Sí. Se puede usar la plataforma para enviar y recibir PDF, documentos de Word, Excel, PowerPoint, imágenes y demás.

### P: Si envío documentos con firma digital ¿Esta firma se pierde, se rompe o se compromete?
R: Debido a que la información que pasa por la plataforma llega intacta a su destino, cualquier documento con firma digital preserva todas sus propiedades. La firma digital del documento no se pierde, ni se rompre, ni se compromete de modo alguno.

### P: ¿Puedo enviar documentos pesados, Por ej: 100, 300, 500MB?
R: Sí. La plataforma está configurada por defecto para registrar todos los mensajes enviados y recibidos para poder ser verificados posteriormente. Este registro tiene un tamaño máximo permitido que puede ser ajustado. También se puede configurar para que registre el mensaje parcial o para que no lo registre.

### P: ¿Qué tan segura es la plataforma?
R: Uno de los aspectos principales de esta plataforma es la seguridad (si no es el más importante). Solo pueden participar en la plataforma miembro verificados y autenticados. Cada uno de los mensajes enviados son firmados digitalmente con criptografía segura, también se agrega un sello de tiempo que valida la existencia del mensaje en un momento determinado. Todos estos procesos son verificables y auditables.

## Preguntas técnicas

### P: No recibo la respuesta esperada ¿Cómo se si se trata de un error con X-Road?
R: Cuando X-Road devuelve un mensaje de error siempre agrega la cabecera "X-Road-Error" en la respuesta. Al realizar la integración con el sistema de información es buena idea verificar la respuesta de cada consulta a fin de encontrar esta llave en la cabecera. Si en la cabecera llega "X-Road-Id" (y otras), significa que el mensaje fue transportado mediante X-Road exitosamente.

