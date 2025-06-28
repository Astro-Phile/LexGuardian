install:
	pip install -r requirements.txt

run-server:
	uvicorn backend.server.main:app --reload

lint:
	flake8 backend frontend

test:
	pytest

docker-build:
	docker build -t lexguardian .

docker-up:
	docker-compose up -d
