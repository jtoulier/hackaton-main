# Siempre ubicarse en la carpeta

# crear el servicio "dc-fol-reto2-local"
docker-compose up --detach --scale dc-fol-reto2-local=1


# detener un servicio sin perderlo
docker-compose stop dc-fol-reto2-local

# iniciar un servicio (ubicarse en la carpeta del yml)
docker-compose start dc-fol-reto2-local

# listar los servicios (ubicarse en la carpeta del yml)
docker-compose ps
docker-compose ps --services -a

# eliminar el servicio (ubicarse en la carpeta del yml)
docker-compose down