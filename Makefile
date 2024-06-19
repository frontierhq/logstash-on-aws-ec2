build:

clean:
	rm -rf src/.terraform

deploy:
	PIPENV_DOTENV_LOCATION=".config/.env" pipenv run python scripts/deploy.py

destroy:
	PIPENV_DOTENV_LOCATION=".config/.env" pipenv run python scripts/destroy.py

install:
	pipenv install --dev
	pipenv run pre-commit install

install_ci:
	pipenv sync

test: test.lint test.script

test.lint: test.lint.python test.lint.yaml

test.lint.python:
	pipenv run flake8 scripts

test.lint.yaml:
	pipenv run yamllint .

test.script:
	pipenv run python scripts/test.py
