# Docker based development environment for CS-Cart:
- PHP versions: 7.4;
- MySQL 5.7;
- apache web server.

## Requirements
- Docker
- docker-compose

## Run the environment using docker:

```bash
  make up
```

## Run the interacitve bash of the server

```bash
  make bash
```

## Apache

The root directory `www`. So put the cs-cart files there.


## Sending e-mails

There is Mailhog included. So to catch the emails by mailhog setup the cs-cart store in admin panel. Go to `Settings -> E-mails` and setup next fields:

- `Method of sending e-mails:` -> `via SMTP server`
- `SMTP host` -> `mailhog:1025`

## Database

All mysql data is stored in db_data folder. So it is persisted despite the state of containers.


### MySQL credentials:

Username: `root`

Password: `root`


## Result

- Apache web server available on localhost with ports 80 and 443.
- Mailhog web interface: http://localhost:8025/
- PhpMyAdmin web interface: http://localhost:8010/
