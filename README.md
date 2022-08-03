<h1 align="center">TP ENTORNO DE PROGRAMACIÓN</h1>
<h1 align="center"></h1>


## Descripción del proyecto


Este repositorio, contiene 15 scripts en Bash y un Dockerfile que luego de emplearlo para crear y correr un contenedor de forma local, inicia un programa interactivo escrito en Bash para procesar archivos de texto. Este programa consta con 14 funcionalidades diferentes, en las cuales el usuario siguiendo las indicaciones, podrá obtener por pantalla los resultados especificados en cada función.




## Construido en


- Bash
- Docker


## Dependencias


- Docker
- GIT


## LINKS


- Docker Mac
[https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/ "https://www.docker.com/products/docker-desktop/")
- Docker Windows
[https://desktop.docker.com/windows](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=header "https://desktop.docker.com/windows")
- Docker Linux 
[https://docs.docker.com/desktop/install/linux-install/](https://docs.docker.com/desktop/install/linux-install/ "https://docs.docker.com/desktop/install/linux-install/")
- Git
[https://git-scm.com/book/en/v2/Getting-Started-Installing-Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git "://git-scm.com/book/en/v2/Getting-Started-Installing-Git")


## Como usarlo


En primera instancia debemos chequear el apartado DEPENDENCIAS. En caso de no contar con alguna de estas en el equipo que se quiera correr el programa, podremos encontrar su respectivo instructivo y dirección de descarga en el apartado LINKS.
Luego, como está leyendo este instructivo suponemos que ya está dentro del repositorio, por lo tanto, el segundo paso es clonarlo en su computadora. Para esto vamos a acceder a un terminal en nuestro equipo y crear un nuevo directorio (opcional-recomendado) con el comando:


 `sudo mkdir -p /home/ProcDeTexto` 
 
 
y nos desplazamos a esa dirección con:
 
` cd /home/ProcDeTexto
` 
 
Clonamos el repo dentro del nuevo directorio:
 
`git clone https://github.com/juliangg17/repo_entorno.git
` 
 
Una vez clonado, corroboramos que tenemos los mismos archivos comparando con en el repositorio de GitHub con:
 
`ls -la`
 
En caso que coincidan los archivos, ya podemos construir nuestra imagen de Docker ejecutando:
 
`sudo docker build –tag tuia/tpfinal:1.0 .`
 
Si el comando anterior corre y finaliza sin errores, veremos la nueva imagen de docker creada con el comando:
 
`sudo docker images`
 
 
En este punto, ya estamos en condiciones de ejecutar el programa corriendo el contenedor:
 
`sudo docker run -ti tuia/tpfinal:1.0 `


Automáticamente se ejecutará el programa y podremos ver el menú de elección desplegado, donde podremos optar por elegir la funcionalidad que deseemos. Este menú es interactivo, por lo cual no es necesario aclarar su funcionamiento en este instructivo.
En caso que hayamos salido del menú, para salir del contenedor debemos ejecutar en la consola `exit`. 
Cada vez que necesitemos usar el programa, ejecutaremos el comando:
 
`sudo docker run -ti tuia/tpfinal:1.0 `


## Autores
 
**García, Julián**
- [Perfil](https://github.com/juliangg17 "Julián García")
- [Email](mailto:juliangg17@gmail.com?)
 
**Herrera, Francisca**
- [Perfil](https://github.com/FranciscaHerr "Francisca Herrera")
- [Email](mailto:herrerafrancisca952@gmail.com?)
 
**Isaurralde, Ignacio**
- [Perfil](https://github.com/iisaurralde "Ignacio Isaurralde")
- [Email](mailto:iisaurralde13@gmail.com?)