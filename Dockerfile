FROM node:16

# Crear directorio de la app
WORKDIR /usr/src/app

# Instalar dependencias
# Se utiliza un wildcard para copiar tanto package.json y package-lock.json
COPY package*.json ./


RUN npm install

# Si se está haciendo un build para production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080

CMD ["node", "server.js"]
