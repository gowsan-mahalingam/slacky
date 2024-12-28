# Utiliser une image de base Node.js
FROM node:18

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json si disponibles (ceci évite les erreurs si absent)
COPY package*.json ./

# Installer NestJS CLI globalement (ignore l'absence de package.json pour cette commande)
RUN npm install -g @nestjs/cli

# Exposer le port 3000
EXPOSE 3000

# Commande de démarrage par défaut
CMD ["/bin/bash"]
