[![CircleCI](https://circleci.com/gh/eloirobe/mdas_neo4j.svg?style=svg)](https://circleci.com/gh/eloirobe/mdas_neo4j)

# MDAS NoSQL Neo4j <img src="https://go.neo4j.com/rs/710-RRC-335/images/neo4j_logo_globe.png" width="50" height="50" />
Bienvenidos a la imagen de Neo4j para a la asignatura de NoSQL del master [Máster en Desarrollo y Arquitectura de Software (MDAS)](https://www.salleurl.edu/es/estudios/master-en-desarrollo-y-arquitectura-software)

Para arrancar el Neo4j y empezar a utilizar la imagen de docker realizar lo siguiente:

*Requisitos previo tener instalado docker*

1) Clonar el repositorio
```bash
git clone https://github.com/eloirobe/mdas_neo4j.git
```
2) Arrancar la imagen de docker
```bash
cd mdas_neo4j
## En modo stdout
docker-compose up
## En modo silencioso
docker-compose up -d
```
3) Una vez haya arrancado loguearse en el navegador con la siguiente url
```
http://localhost:7474/
```
4) El usuario es neo4j contraseña test
