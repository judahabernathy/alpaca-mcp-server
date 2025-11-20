FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml README.md ./
COPY src/ ./src/
COPY .github/core .github/core

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir .

CMD ["uvicorn", "alpaca_mcp_server.server:_build_http_server_app", "--factory", "--host", "0.0.0.0", "--port", "${PORT:-8080}"]
