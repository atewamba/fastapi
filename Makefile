install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=fastapi_test test_fastapi_test.py

format:
	black *.py

lint:
	pylint --disable=R,C fastapi_test.py

all: install lint test format

