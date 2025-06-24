FROM n8nio/n8n:latest

# Variáveis de ambiente essenciais
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=3000

# Expor porta
EXPOSE 3000
