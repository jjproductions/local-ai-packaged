# # prior versions: 1.108.2
FROM n8nio/n8n:1.120.3

# Install Python and pip
USER root
RUN apk add --no-cache python3 py3-pip \
    && pip install --break-system-packages --no-cache-dir openpyxl
# Switch back to n8n user
USER node
