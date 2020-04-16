# simple-api-flask #
Simple API Flask using Python as Programming Language (Flask Framework), PostgreSQL as Database

### Requirements
Simple API is currently extended with the following requirements. Instructions on how to use them in your own application are linked below.

| Requirement | Version    |
| ----------- | ---------- |
| Python      | >= 3.7.7   |
| PIP         | >= 20.0.2  |
| Flask       | >= 1.1.2   |
| PosgtreSQL  | >= 12.0    |

### Setup
* Setup Python <https://www.python.org/>
* Setup PIP <https://pypi.org/project/pip/>
* Setup Flask <https://flask.palletsprojects.com/>
* Setup PostgreSQL <https://www.postgresql.org/>

### Installation
Make sure you the requirements above already install on your system. Or you could easily run with Docker to make your environment clean.

Clone the project to your directory and install the dependencies.
```sh
$ git clone git@github.com:moemoe89/simple-api-flask.git
$ cd simple-api-flask
$ pipenv install
```

Setup your environments.
```sh
$ cp .env.example .env
```
Change your PostgreSQL credentials depends on your PostgreSQL installed config.
```sh
FLASK_ENV=development
DATABASE_URL=postgres://postgres@127.0.0.1:5432/simple_api
JWT_SECRET_KEY=secret_key
```

### Migrate
Setup your migration following by this command.
```sh
$ python3 manage.py db init
$ python3 manage.py db migrate
$ python3 manage.py db upgrade
```

### Run Application
For run application:
```sh
$ python3 run.py
```

Verify the apllication by navigating to your server address in your preferred browser.

```sh
127.0.0.1:5000
```

### Docker
Simple API is very easy to install and deploy in a Docker container. Simply use the docker-compose build to build the image.

```sh
$ docker-compose build
```
Once done, run the Docker image by using docker-compose up command.

```sh
$ docker-compose up -d
```

Verify the application by navigating to your server address in your preferred browser.

```sh
127.0.0.1:5000
```

Stop application could be done with docker-compose stop command.
```sh
$ docker-compose stop
```

License
----

MIT