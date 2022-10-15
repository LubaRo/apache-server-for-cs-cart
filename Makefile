up:
	docker-compose up --build php7.4_apache

bash:
	docker-compose run --rm php7.4_apache /bin/bash	
	# docker exec -it php8.0 bash
