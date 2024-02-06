#Utiliser la dernière version de python compatible avec l'app
FROM python:3.11
#Définir l'environnement de travail
WORKDIR /src
#Lancer l'installation des requirements
COPY . .
RUN pip install -r requirements.txt

RUN pip install -e .

CMD [ "flask","--app","/edutest:flaskapp","run","--host","0.0.0.0"]
