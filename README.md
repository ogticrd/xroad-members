![logo_ogtic](https://github.com/opticrd/xroad-members/assets/2160489/221a0cd9-9236-46da-a6c7-73e93c61f3e7)

# Repositorio de miembros de la Plataforma Única de Interoperabilidad del Estado Dominicano

1. [Introducción](#introducción-a-xroad-y-la-plataforma-única-de-interoperabilidad)
2. [Requisitos](#requisitos)
3. [Instalación](#instalación)
4. [Notas Adicionales](#notas-adicionales)
5. [Desinstalación](#desinstalación)


## Introducción a XRoad y la Plataforma Única de Interoperabilidad:
XRoad es un marco de interoperabilidad diseñado para permitir la comunicación segura entre sistemas diferentes en entornos gubernamentales y empresariales. Las instituciones pueden usar diferentes tipos de computadoras, software o tecnologías de comunicación. Por ejemplo, un sistema puede funcionar en un servidor Linux mientras que otro funciona en un servidor Windows, o pueden utilizar lenguajes de programación diferentes. La interoperabilidad entre estos sistemas puede ser un desafío debido a sus diferencias, y XRoad ayuda a superar estos desafíos facilitando la comunicación segura entre ellos.

En un mundo donde la seguridad y la interoperabilidad son fundamentales, XRoad desempeña un papel crucial al proporcionar un entorno confiable para la comunicación entre sistemas informáticos. Facilita la colaboración entre organizaciones, promueve la eficiencia operativa y mejora la prestación de servicios a ciudadanos y empresas.

Esta documentación ayudará a la instalación del servidor de seguridad requerido para ser miembro de la Plataforma Única de Interoperabilidad.


## Requisitos

Antes de iniciar debe asegurarse que cumple con los siguientes requisitos:
- Servidor virtual con Ubuntu 22.04 LTS (al menos 2-4cpu, 3-4GB RAM, +20GB SSD)
- Subdominio público (ss1.<dominio de la institucion> - ej: ss1.ogtic.gob.do)
- El servidor debe poder acceder a internet
- El servidor debe poder ser accedido desde internet por los puertos: 5500, 5577
- El servidor debe poder ser accedido desde la red local por los puertos: 443, 4000

## Instalación

Aprovechamos la tecnología de contenedores para realizar el despliegue del servidor de seguridad.
  
1. Necesitaremos docker y docker compose. Procederemos a instalarlo mediante la herramienta "snap":
```sh
sudo snap install docker
```

2. Descargamos este mismo repositorio con el siguiente comando:
```sh
git clone https://github.com/opticrd/xroad-members.git
```

3. Accedemos al directorio del repositorio que acabamos de descargar:
```sh
cd xroad-members
```

4. Creamos nuestro archivo de configuración a partir del archivo plantilla que se encuentra en el repositorio:
```sh
cp .env.example .env
```

5. Editamos la configuración (con nano, vim o el editor de su preferencia):
```sh
nano .env
```
En este archivo encontrará las configuraciones básicas a realizar. Debe cambiar al menos el PIN y el Password del usuario administrador. Si cambia el nombre de usuario no debe usar "xroad" por ser un usuario existente utilizado para tareas del sistema.

6. Por último, procedemos a lanzar la aplicación:
```sh
sudo docker-compose up -d
```

Si todo se ejecutó satisfactoriamente debería poder entrar a la interfaz de la aplicación desde un navegador web entrando a subdominio:4000.

Con esto queda completado el proceso de instalación. El próximo paso es configurar el servicio instalado e incluirse como miembro de la plataforma.

### Notas Adicionales:
- Si luego de completar el proceso no puede ver la intefaz de inicio de sesión en el navegador mostrado en el último paso de la guía de instalación, diríjase a la sesión de problemas frecuentes.
- En caso de que necesite revertir todo el proceso de instalación puede ir a la guía de desinstalación.

## Desinstalación

En caso de que necesite revertir todo el proceso de instalación se puede realizar eliminando el contenedor desplegado en la instalación y adicionalmente borrar los volumenes donde se encuentran todos los archivos de configuración y los datos que había recopilado en la plataforma hasta el momento.

Primero debe buscar el directorio (o carpeta) donde descargó el repositorio al momento de la instalación. Una vez entre al directorio del repositorio descargado debe encontrar el archivo "docker-compose.yml". En ese caso está listo para proceder con la desintalación con los siguientes comandos:

```sh
sudo docker-compose down -v;
cd ..;
rm -rf xroad-members;
```

Con esto ha quedado completamente eliminado del sistema el componente técnico de la Plataforma Única de Interoperabilidad.
