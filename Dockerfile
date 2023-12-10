# Utiliser une image de base officielle Node.js
FROM node:latest

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json (si disponible)
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier tous les fichiers du projet dans le répertoire de travail du conteneur
COPY . .

# Exposer le port sur lequel Storybook s'exécute
EXPOSE 6006

# Lancer Storybook
CMD ["npm", "run", "storybook"]
