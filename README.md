# Proyecto FINAL: Implementación de Apache Guacamole y Nginx con Terraform y Ansible

Este proyecto demuestra la implementación de contenedores Docker utilizando Terraform y la configuración de un archivo HTML en un servidor Nginx utilizando Ansible.

## Descripción de la Actividad

La actividad consiste en levantar dos contenedores Docker, uno para Nginx y otro para PostgreSQL, utilizando Terraform. Luego, se utiliza Ansible para modificar el contenido del archivo `index.html` en el contenedor de Nginx para que muestre la siguiente información:

- Alumno: Samuel Rojano Herrera
- Matrícula: 2679928
- Materia: DevOps Avanzado (IaC y Seguridad)
- Profesor: Francisco Javier Rodríguez González


## Prerrequisitos

Asegúrate de tener instalados los siguientes componentes:

- Docker
- Docker Compose
- Terraform
- Ansible
- WSL (Windows Subsystem for Linux) si estás trabajando en un entorno Windows

## Documentacion de pasos:

1. Primeramente se crea un archivo main.tf en cual desglosaremos la informacion para la imagen y el contenedor que crearemos.
2. Se ejecutan los comandos terraform init y terraform apply.
3. Se crea el archivo playbook.yml y el inventory.ini y se coloca la informacion para posteriormente utilizar los comandos mendiante ansible.
4. Se ejecuta el playbook mediante ansible para hacer los cambios del html.
5. Se reinicia el contenedor si es necesario para ver los cambios realizados.

## Video de Demostración

Puedes ver el video de demostración a continuación:

<iframe width="560" height="315" src="https://youtu.be/1n2U4dydbw4" frameborder="0" allowfullscreen></iframe>
