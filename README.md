# ISW-Moonmen

## Integrantes:

* Leonardo Angel Astudillo Villalón
* Juan Pablo Jorquera Zapata
* Eliecer Zambrano Reyes

## Notas:

Hasta ahora, se creo un ambiente de producción (usando Heroku), para visualizar de manera online la version actual.

Link: https://gpi-moonmen.herokuapp.com

## Instrucciones de ejecución

Para ejecutar el proyecto es necesario instalar Ruby 2.4.1 y Ruby on Rails 5.2.0, así como tener instalado y corriendo un servidor de PostgreSQL 10.4.

Iniciar un terminal en la carpeta con el proyecto descargado.

Ingresar `bundle install` en el terminal, para instalar dependencias.

Correr `rails db:migrate` para crear la base de datos actualizada.

Utilizar en terminal `rails s` para iniciar la instancia del sistema.

En URL de algún navegador, ingresar a [localhost:3000](http://localhost:3000) para visualizar el proyecto.

## Prueba de Uso

Se creó una página externa, en [laudus-fake](https://laudusfake.herokuapp.com/) con la cual se interactúa para simular el API del ERP Laudus. (Los correos deben estar bien asociados para la recepción de notificaciones por email)

En el sitio creado en heroku, se provee de varias cuentas para el testeo:
* Bodegueros Centrales:
    - bodegueroc1@bodeguero.cl
    - bodegueroc2@bodeguero.cl
    - bodegueroc3@bodeguero.cl
* Bodegueros de Obra:
    - bodegueroo1@bodeguero.cl
* Personal de Obra:
    - personal1@personal.cl
* Encargado de Compra:
    - encargado1@encargado.cl

Todos con contraseña: 123456


