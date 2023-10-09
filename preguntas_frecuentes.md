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

### P: ¿Quién administra la plataforma?
R: Según el decreto presidencial No. 92-22, que establece el Marco Nacional de Interoperabilidad, en el Artículo 5, el 2do punto, encarga la gestión de la Plataforma Única de Interoperabilidad a OGTIC bajo los lineamientos de gobernanza definidos por el MAP. 

### P: ¿Es OGTIC intermediario de los mensajes intercambiados? ¿Qué hace OGTIC con esa información?
R: La Plataforma Única de Interoperabilidad es un canal de comunicación P2P (de punto a punto). Esto significa que la comunicación entre 2 entes ocurre de manera directa, sin intermediarios de ningún tipo. En algún momento, OGTIC pudiera hacer uso de la información anonimizada generada o registrada por la plataforma únicamente con fines estadisticos.

### P: ¿OGTIC será la responsable de proveer los datos que están disponible en la plataforma?
R: La Plataforma Única de Interoperabilidad es un canal de comunicación P2P (de punto a punto). Esto significa que la información que está disponible en la plataforma viene directamente de la entidad que la custodia, siempre que esta entidad haya otorgado permisos de lectura explícitos a la institución consultante.

### P: ¿Cómo se garantizará que la información esté siempre disponible?
R: La Plataforma Única de Interoperabilidad es un canal de comunicación descentralizado. Cada entidad que custodia la información tiene la responsabilidad de mantener disponible la información. Como canal de comunicación descentralizado, la plataforma no tiene incidencia directa en la disponibilidad de la información.

## Preguntas técnicas

### P: No recibo la respuesta esperada ¿Cómo se si se trata de un error con X-Road?
R: Cuando X-Road devuelve un mensaje de error siempre agrega la cabecera "X-Road-Error" en la respuesta. Al realizar la integración con el sistema de información es buena idea verificar la respuesta de cada consulta a fin de encontrar esta llave en la cabecera. Si en la cabecera llega "X-Road-Id" (y otras), significa que el mensaje fue transportado mediante X-Road exitosamente.

