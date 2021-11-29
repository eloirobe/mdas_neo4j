help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start: ## Start all containers
	docker-compose up

start-background: ## Start all containers
	docker-compose up -d

restoreDb: ## Restore Db to make exercise
	docker run --interactive --tty --rm     --publish=7474:7474 --publish=7687:7687     --volume=${PWD}/data:/data     --volume=${PWD}/import:/import     --user="$(id -u):$(id -g)"     neo4j:latest neo4j-admin load --from=/import/mdas-neo4j-exercise.dump --database=neo4j --force

dumpDb: ## Make a Backup Db 
	docker run --interactive --tty --rm     --publish=7474:7474 --publish=7687:7687     --volume=${PWD}/data:/data     --volume=${PWD}/import:/import     --user="$(id -u):$(id -g)"     neo4j:latest neo4j-admin dump --database=neo4j --to=/import/mdas-neo4j-exercise.dump

stop: ## Stop Conainers
	docker-compose stop

clean: ## Clean everything
	docker-compose down -v
	rm -fr data
