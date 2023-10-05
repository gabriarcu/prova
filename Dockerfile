# Usa l'immagine ufficiale di Node.js come base
FROM node:14

# Imposta la directory di lavoro
WORKDIR /app

# Copia i file necessari
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia tutti i file del progetto
COPY . .

# Compila l'app per la produzione
RUN npm run build

# Espone la porta 8080
EXPOSE 8080

# Avvia l'applicazione
CMD ["npm", "run", "start"]
