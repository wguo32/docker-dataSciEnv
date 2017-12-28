all:
	docker build -t wguo32/docker-hadoop:latest ./docker-hadoop
	docker build -t wguo32/docker-hadoop-master:latest ./docker-hadoop-master
	docker-compose build

.PHONY: test clean

run:
	docker-compose up -d
	echo "done"

down:
	docker-compose down
