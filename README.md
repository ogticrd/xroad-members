![logo_ogtic](https://github.com/opticrd/xroad-members/assets/2160489/221a0cd9-9236-46da-a6c7-73e93c61f3e7)

# Repositorio de miembros de la Plataforma Única de Interoperabilidad del Estado Dominicano

Esta documentación ayudará a la instalación del servidor de seguridad requerido para ser miembro de la Plataforma Única de Interoperabilidad.

Antes de iniciar debe asegurarse que cumple con los siguientes requisitos:
- Servidor virtual con Ubuntu 22.04 LTS (al menos 2-4cpu, 3-4GB RAM, +20GB SSD)
- Subdominio público (ss1.<dominio de la institucion> - ej: ss1.ogtig.gob.do)
- El servidor debe poder acceder a internet
- El servidor debe poder ser accedido desde internet por los puertos: 5500, 5577
- El servidor debe poder ser accedido desde la red local por los puertos: 443, 4000

Aprovechamos la tecnología de contenedores para realizar el despliegue del servidor de seguridad.
  
Para esto necesitaremos docker y docker compose. Procederemos a instalarlo mediante la herramienta "snap":
```sh
  sudo snap install docker
```

Luego descargamos este repositorio:
```sh
  git clone https://github.com/opticrd/xroad-members.git
```

Accedemos al directorio del repositorio que acabamos de descargar:
```sh
  cd xroad-members
```

Creamos nuestro archivo de configuración:
```sh
  cp .env.example .env
```

Editamos la configuración (con nano, vim o el editor de su preferencia):
```sh
  nano .env
```
En este archivo encontrará las configuraciones básicas a realizar. Debe cambiar al menos el PIN y el Password del usuario administrador.

Por último, procedemos a lanzar la aplicación:
```sh
  sudo docker-compose up -d
```

Si todo se ejecutó satisfactoriamente debería poder entrar a la interfaz de la aplicación desde un navegador web entrando a subdominio:4000.
  
## Para desinstalar el aplicativo
```sh
  sudo docker-compose down -v;
  cd ..;
  rm -rf xroad-members;
```
  
A partir de aquí se puede volver al primer paso para instalar nuevamente.
