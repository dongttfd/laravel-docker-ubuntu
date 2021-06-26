# BASIC DOCKER COMPOSE FOR LARAVEL FRAMEWORK

## Settup

- Download and [Configuration](#configuration)

- Run `build.sh` with `sh` or `git bash`

## Clean

- Run `clean.sh`  with `sh` or `git bash` (**Danger:** This command are going to clean all `images`, `containers`, `networks`, `volumes` at your docker)

## Configuration

- Config vhosts at `etc/conf/vhost.conf`

- Entrypoin database at `etc/sql`

- Modify `docker-compose.yml` to custom your docker

- Config `supervisor` at `etc/conf/supervisor.d/laravel-worker.conf` or add new program to `etc/conf/supervisor.d` folder

- Config `crontab` at `etc/conf/laravel.cron`

## Environment

```bash

OS: Ubuntu 20.04

Apache 2.4.x

PHP 7.4.x

Mariadb 10.4.x

Nodejs v14.x

Npm 6.14.x

```

## Others

```
composer 2.x

supervisor

crontab
```