# Siempre ubicarse en la carpeta


# crear el servicio "dc-fol-hackaton"
docker-compose up


# detener un servicio sin perderlo
docker-compose stop


# iniciar un servicio (ubicarse en la carpeta del yml)
docker-compose start


# listar los servicios (ubicarse en la carpeta del yml)
docker-compose ps
docker-compose ps --services -a


# eliminar el servicio (ubicarse en la carpeta del yml)
docker-compose down