# Odoo

https://github.com/odoo/docker/blob/master/12.0

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)

## How to run

Copy `docker-compose.example.yml` to `docker-compose.yml`

Copy `config/odoo.example.conf` to `config/odoo.conf`

then edit your own configuration

`docker-compose up -d`

## Environment Variables

- `DB_HOST`: The address of the postgres server. If you used a postgres container, set to the name of the container. Defaults to db.
- `DB_PORT`: The port the postgres server is listening to. Defaults to 5432.
- `DB_USER`: The postgres role with which Odoo will connect. If you used a postgres container, set to the same value as POSTGRES_USER. Defaults to odoo.
- `DB_PASSWORD`: The password of the postgres role with which Odoo will connect. If you used a postgres container, set to the same value as POSTGRES_PASSWORD. Defaults to odoo.
