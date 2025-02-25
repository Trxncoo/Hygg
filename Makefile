.PHONY: local-settings
local-settings:
	mkdir local && cp hygg/project/settings/templates/settings.dev.py ./local/settings.dev.py

.PHONY: install
install:
	poetry install --no-root

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

.PHONY: migrate
migrate:
	poetry run python -m hygg.manage migrate

.PHONY: makemigrations
makemigrations:
	poetry run python -m hygg.manage makemigrations

.PHONY: runserver
runserver:
	poetry run python -m hygg.manage runserver

.PHONY: createsuperuser
createsuperuser:
	poetry run python -m hygg.manage createsuperuser

.PHONY: up-dependencies-only
up-dependencies-only:
	test -f .env || touch .env
	docker compose -f docker-compose.dev.yml up --force-recreate -d db

.PHONY: stop-dependencies
stop-dependencies:
	docker compose -f docker-compose.dev.yml stop db

.PHONY: prune-all
prune-all:
	docker compose -f docker-compose.dev.yml down -v
	docker system prune --all -f
	docker volume prune -f

.PHONY: update
update: install migrate install-pre-commit ;

.PHONY: setup
setup: local-settings up-dependencies-only update createsuperuser runserver ;

.PHONY: dev
dev: up-dependencies-only runserver ;
