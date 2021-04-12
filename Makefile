up:
	docker network create spark-net
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down
	docker network rm spark-net

exampleSparkSubmit:
	docker-compose -f docker-compose-staging.yml up exampleSparkSubmit