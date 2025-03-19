# Utilise une image Python officielle comme base
FROM python:3.11

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY . /app/

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Définir la commande à exécuter au lancement du conteneur
CMD ["python", "app.py"]