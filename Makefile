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

.PHONY: update
update: install migrate install-pre-commit ;
