# 1. Imagen base con el runtime necesario
FROM node:20-alpine

# 2. Carpetas de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar archivos de dependencias e instalarlas
COPY package*.json ./
RUN npm ci --only=production

# 4. Copiar todo el código fuente del proyecto
COPY . .

# 5. Puerto que usará la aplicación dentro del contenedor
EXPOSE 3000

# 6. Comando para iniciar la aplicación
CMD ["npm", "start"]
