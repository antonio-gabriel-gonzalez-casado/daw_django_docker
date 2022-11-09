# daw_django_docker
Ejemplo Django Docker con despliegue en Heroku

# Construir la imágen y arrancar el contenedor

En un terminal lanza el siguiente comando:
`docker-compose up -d --build`

# Logs de la aplicación
En Docker Desktop entrando en el contenedor o a través del siguiente comando en la terminal:
`docker-compose logs -f web`

web es el nombre del servicio en el docker-compose.yml

Comprueba que el servicio está levantando:

[http://localhost:8000/](http://localhost:8000/)

# Modificación de código
En el directorio:

/daw-django-heroku-docker/app/templates/students

1. Clona el repositorio:
`git clone https://github.com/antonio-gabriel-gonzalez-casado/daw_django_docker.git`
2. Crea una nueva rama que se llame develop_<TUSINICIALES>: 
`git checkout -b develop_aggc2 main`
3. Copia el archivo ejemplo.html a uno nuevo cuyo nombre sea las iniciales de tu nombre: <INICIALES>.html
4. Edita el fichero renombrado modificandolo por tus datos (no uses datos personales reales)

Prueba que tus cambios funcionan entrando en la url:
[http://localhost:8000/student/<iniciales>](http://localhost:8000/student/<iniciales>)

# Súbida código
1. Una vez modificado haz commit en tu rama.
`git commit -m "TUS INICIALES"`
2. Haz push a tu rama
`git push`
3. Pide un Pull request de tu rama con la rama de test indicando tus iniciales en el título del Pull Request desde la interfaz de github

# Flujo de despliegue
Una vez que el administrador de del reposito haya aprobado el Pull Request observa como se despliega tu cambio en el servidor de test:
[https://github.com/antonio-gabriel-gonzalez-casado/daw_django_docker/actions](https://github.com/antonio-gabriel-gonzalez-casado/daw_django_docker/actions) 

# Comprobar en servidor
Cuando se haya completado la action de github entra en el servidor de test para comprobar el cambio:

[https://test-daw-django-docker.herokuapp.com/](https://test-daw-django-docker.herokuapp.com/)

Añade a la url student/<TUSINICIALES> para ver tu cambio desplegado.


