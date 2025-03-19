# Utilise une image Python officielle comme base
FROM python:3.11

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY . /app/

# Créer un environnement virtuel dans /app/venv
RUN python -m venv venv

# Activer l'environnement et installer les dépendances
RUN /app/venv/bin/pip install --upgrade pip && \
    /app/venv/bin/pip install --no-cache-dir -r requirements.txt

# Utiliser l'environnement virtuel pour exécuter l'application
CMD ["/app/venv/bin/python", "app.py"]