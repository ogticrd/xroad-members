# Guía Paso a Paso para Usar Terraform con Google Cloud Platform

## Requisitos Previos
Antes de comenzar a usar Terraform, asegúrate de tener los siguientes requisitos:

- **Terraform**: Asegúrate de tener Terraform instalado en tu máquina local. Puedes descargarlo desde el [sitio web oficial de Terraform](https://www.terraform.io/downloads.html).

- **Cuenta de Google Cloud Platform (GCP)**: Si planeas usar Terraform con GCP, necesitarás una cuenta de GCP. También debes tener instalada y autenticada la CLI de `gcloud`. Debe de instalar el [SDK](https://cloud.google.com/sdk/docs/install-sdk)

## Paso 1: Clonar el Repositorio (si corresponde)
Si estás utilizando un sistema de control de versiones como Git y tus configuraciones de Terraform están almacenadas en un repositorio, comienza clonando el repositorio en tu máquina local:

```bash
git clone git@github.com:opticrd/xroad-members.git
cd terraform
```

## Paso 2: Configurar la Autenticación

Para GCP, puedes utilizar la CLI de gcloud:
```
gcloud auth login
```

## Paso 3: Revisar la Configuración de Terraform
Revisa y edita los archivos de configuración de Terraform (*.tf) para definir tu infraestructura. Asegúrate de especificar variables, recursos y configuraciones según tus requerimientos. Consulta la [documentación oficial de Terraform](https://developer.hashicorp.com/terraform/language) para obtener orientación sobre cómo debe escribir sus configuraciones.

## Paso 4: Inicializar Terraform
 En el directorio que contiene tus archivos de configuración de Terraform, ejecuta:

 ```
 terraform init
 ```

## Paso 5: Planificar la Infraestructura
Para obtener una vista previa de los cambios que Terraform realizará en tu infraestructura. 
ejecuta:
```
terraform plan
```
Revisa el plan para asegurarte de que esté alineado con tus expectativas. Realiza los ajustes necesarios en tus archivos de configuración si es necesario.

## Paso 6: Aplicar los Cambios
Para crear o actualizar tu infraestructura según la configuración de Terraform, ejecuta:
```
terraform apply
```

Terraform te pedirá confirmar los cambios. Escribe "yes" para proceder. Luego, Terraform creará o modificará recursos según tu configuración.

## Paso 7: Verificar y Probar
Después de aplicar los cambios, verifica que tu infraestructura esté funcionando como se espera. Accede y prueba los servicios o recursos desplegados.

## Paso 8: Destruir Recursos (si es necesario)
Si deseas desmantelar la infraestructura creada por Terraform, utiliza el siguiente comando:
```
terraform destroy
```
Ten precaución al utilizar este comando, ya que eliminará todos los recursos definidos en tu configuración. Confirma la destrucción cuando se te solicite.
