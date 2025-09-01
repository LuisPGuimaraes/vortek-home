# Use a imagem oficial do Node.js 20 como base
FROM node:20-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de configuração de dependência
COPY package.json package-lock.json ./

# Instala as dependências
RUN npm ci

# Copia o restante dos arquivos da sua aplicação
COPY . .

# Constrói a aplicação para produção
RUN npm run build

# O comando que o container vai executar para iniciar o servidor
CMD [ "node", ".output/server/index.mjs" ]