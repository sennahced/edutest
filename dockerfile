#Utiliser la dernière version de python compatible avec l'app
FROM python:3.11
#Définir l'environnement de travail
WORKDIR /src
#Lancer l'installation des requirements
RUN pip install -r /src/requirements.txt

RUN pip install -e .
RUN pytest # to run tests
RUN pylint src && flake8 # to lint
RUN bandit -r src # to run security tests
