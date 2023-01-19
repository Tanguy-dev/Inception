NAME            :=		inception
VERSION			:=		1.0	

SRCS			:=		srcs/
COMPOSE_FILE	:=		${SRCS}/docker-compose.yml
ENV				:=		${SRCS}/.env
FLAGS			:=		-f ${COMPOSE_FILE} \
						-p ${NAME}

RED				:=		"\033[1;31m"
GREEN			:=		"\033[1;32m"
WHITE			:=		"\033[1;37m"
END				:=		"\033[0;0m"

all: build

build:
	@docker compose ${FLAGS} up -d --build
	@echo ${GREEN}"ready :"${WHITE}" - docker service are up"${END}

start:
	@docker compose ${FLAGS} start > /dev/null
	@echo ${GREEN}"ready :"${WHITE}" - docker service have been started"${END}

stop:
	@docker compose ${FLAGS} stop > /dev/null
	@echo ${RED}"stopped :"${WHITE}" - docker service have been stopped"${END}

status:
	@docker compose ${FLAGS} ps

clean:
	@rm -rf /home/thamon/data/www/* > /dev/null
	@rm -rf /home/thamon/data/db/* > /dev/null
	@echo ${GREEN}"- clean docker data"

fclean: clean
	@docker rmi -f nginx > /dev/null
	@docker rmi -f mariadb > /dev/null
	@docker rmi -f wordpress > /dev/null
	@echo ${GREEN}"- clean docker images"${END}
	@docker rm -f nginx > /dev/null
	@docker rm -f mariadb > /dev/null
	@docker rm -f wordpress > /dev/null
	@echo ${GREEN}"- clean docker containers"${END}
	@docker volume rm -f inception_db > /dev/null
	@docker volume rm -f inception_www > /dev/null
	@echo ${GREEN}"- clean docker volumes"${END}
	@docker network rm inception > /dev/null
	@echo ${GREEN}"- clean docker network"${END}

.PHONY:                 all clean fclean re stack map vector