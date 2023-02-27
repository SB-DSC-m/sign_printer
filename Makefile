test:
	poetry run pytest --verbose tests/

lint:
	poetry run flake8 --show-source

format:
	poetry run black --diff .

clean:
	find . -type d -name '__pycache__' -exec rm -rf {} +

build:
	docker build --tag sign_printer .

run:
	docker run sign_printer $(text)
