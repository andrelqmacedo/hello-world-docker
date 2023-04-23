# Imagem base
FROM node:14

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia o package.json e package-lock.json para dentro do container
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia todo o código fonte para dentro do container
COPY . .

# Expõe a porta 3000 do container
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["npm", "start"]
