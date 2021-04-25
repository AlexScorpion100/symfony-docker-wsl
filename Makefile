CONTAINER_MYSETUPSHARE=mysetupshare
UID=$$(id -u)
GID=$$(id -g)

#------------------------------------------ ={ THIS IS TO INSTALL }= ------------------------------------------
install:
	cd symfony; composer install; yarn install

#------------------------------------------ ={ THIS IS FOR DOCKER }= ------------------------------------------
build:
	docker-compose build

build-clean:
	docker-compose build --no-cache --force-rm --compress

start:
	make composer-install; make stop; export UID; export GID; docker-compose up

stop:
	docker-compose down

list:
	docker-compose ps

space:
	docker rmi $$(docker images --filter "dangling=true" -q --no-trunc); docker rm $$(docker ps -qa --no-trunc --filter "status=exited"); docker volume rm $$(docker volume ls -qf dangling=true);

local-bash:
	docker-compose run ${CONTAINER_DATABASE} bash

backup-stage-db-to-local:
	docker-compose run ${CONTAINER_DATABASE} bash dump-staging-dbs.sh -export

#------------------------------------------ ={ THIS IS SHORTCUTS }= ------------------------------------------
#This will migrate your new entity to your database
migrate:
	docker-compose exec php bin/console make:migration
	docker-compose exec php bin/console doctrine:migrations:migrate
