# daw_django_docker
Ejemplo Django Docker con despliegue en Heroku

# Construir la imágen y arrancar el contenedor

En un terminal lanza el siguiente comando:
`docker-compose up -d --build`

# Logs de la aplicación
En Docker Desktop entrando en el contenedor o a través del siguiente comando en la terminal:
`docker-compose logs -f web`

web es el nombre del servicio en el docker-compose.yml

# Modificación de código
En el directorio:

/daw-django-heroku-docker/app/templates/students

1. Copia el archivo ejemplo.html a uno nuevo cuyo nombre sea las iniciales de tu nombre.
2. Edita el fichero renombrado modificandolo por tus datos (no uses datos personales reales)
3. Una vez modificado haz commit en tu rama.
4. Pide un merge request de tu rama con la rama de test indicando tus iniciales en el título del Merge Request
