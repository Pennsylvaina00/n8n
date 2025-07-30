FROM n8nio/n8n:latest

# 设置环境变量
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=your-password-here
ENV N8N_HOST=your-app-name.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://your-app-name.onrender.com

# 暴露端口
EXPOSE 5678

# 使用shell命令启动
CMD n8n start --tunnel
