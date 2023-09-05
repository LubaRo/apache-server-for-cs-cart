up:
	docker compose up php7.4_apache mysql phpmyadmin adminer mailpit

build:
	docker compose up --build php7.4_apache mysql phpmyadmin adminer mailpit

build_70:
	docker compose up --build php7.0_apache mysql phpmyadmin adminer mailpit

up_70:
	docker compose up php7.0_apache mysql phpmyadmin adminer mailpit

build_72:
	docker compose up --build php7.2_apache mysql phpmyadmin adminer mailpit

up_72:
	docker compose up php7.2_apache mysql phpmyadmin adminer mailpit

build_73:
	docker compose up --build php7.3_apache mysql phpmyadmin adminer mailpit

up_73:
	docker compose up php7.3_apache mysql phpmyadmin adminer mailpit
bash:
	docker compose run --rm php7.4_apache /bin/bash	
	# docker exec -it php8.0 bash
up_pit:
	docker compose up -d mailpit