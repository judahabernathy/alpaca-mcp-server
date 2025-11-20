FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml README.md ./
COPY src/ ./src/
COPY .github/core .github/core

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir .

CMD ["sh", "-c", "alpaca-mcp-server serve --transport streamable-http --host 0.0.0.0 --port ${PORT:-8080}"]
