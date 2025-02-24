.PHONY: install
install:
	poetry install --no-root

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
update: install migrate ;
