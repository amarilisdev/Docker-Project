# Docker Demo Project

Proyecto de ejemplo: Node.js + MongoDB + Docker Compose.

## Requisitos

- Docker
- Docker Compose

## Estructura

- `app/` — Código fuente de la app Node.js
- `Dockerfile` — Imagen de la app
- `docker-compose.yaml` — Orquestación de servicios
- `Makefile` — Comandos útiles

## Uso

```bash
docker compose up --build
# o usando Makefile
make up
