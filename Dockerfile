# Dockerfile para n8n no Railway
FROM n8nio/n8n:latest

# Definir diretório de trabalho
WORKDIR /home/node/.n8n

# Instalar dependências adicionais se necessário
USER root
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    freetype-dev \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    python3 \
    py3-pip \
    build-base

# Voltar para usuário node
USER node

# Definir variáveis de ambiente
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=3000
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://monitoria-cerc-railway-production.railway.app/
ENV GENERIC_TIMEZONE=America/Sao_Paulo
ENV TZ=America/Sao_Paulo

# Expor porta
EXPOSE 3000

# Comando para iniciar n8n
CMD ["n8n"]
