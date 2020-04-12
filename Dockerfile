FROM python:3.8.2

WORKDIR /usr/src/app
COPY . .

RUN pip install pipenv

RUN pipenv install

CMD ["python", "run.py"]