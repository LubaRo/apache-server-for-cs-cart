up:
	docker compose up php7.4_apache mysql phpmyadmin adminer mailhog

build:
	docker compose up --build php7.4_apache mysql phpmyadmin adminer mailhog

build_70:
	docker compose up --build php7.0_apache mysql phpmyadmin adminer mailhog

up_70:
	docker compose up php7.0_apache mysql phpmyadmin adminer mailhog

build_72:
	docker compose up --build php7.2_apache mysql phpmyadmin adminer mailhog

up_72:
	docker compose up php7.2_apache mysql phpmyadmin adminer mailhog

build_73:
	docker compose up --build php7.3_apache mysql phpmyadmin adminer mailhog

up_73:
	docker compose up php7.3_apache mysql phpmyadmin adminer mailhog
bash:
	docker compose run --rm php7.4_apache /bin/bash	
	# docker exec -it php8.0 bash
