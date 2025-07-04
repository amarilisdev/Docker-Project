# ==============================================================================
# Makefile para gestionar el proyecto Dockerizado
# ==============================================================================

# .PHONY evita que make se confunda si existe un archivo con el mismo nombre
.PHONY: up down logs clean help

# Comando por defecto si solo se escribe "make"
default: help

# Levanta todos los servicios en segundo plano y reconstruye las imágenes
up:
	@echo "🚀  Levantando los contenedores..."
	docker compose up --build -d

# Detiene y elimina los contenedores, redes y volúmenes
down:
	@echo "🛑  Deteniendo y limpiando los contenedores..."
	docker compose down

# Muestra los logs de todos los servicios en tiempo real
logs:
	@echo "📜  Mostrando los logs..."
	docker compose logs -f

# Entra en la terminal del contenedor del backend (Node.js)
shell-backend:
	@echo "💻  Accediendo al contenedor del backend..."
	docker compose exec backend sh

# Entra en la terminal del contenedor del frontend (React)
shell-frontend:
	@echo "🎨  Accediendo al contenedor del frontend..."
	docker compose exec frontend sh

# Muestra esta ayuda
help:
	@echo "Comandos disponibles:"
	@echo "  make up              -> Levanta todos los servicios."
	@echo "  make down            -> Detiene y elimina los servicios."
	@echo "  make logs            -> Muestra los logs en tiempo real."
	@echo "  make shell-backend   -> Entra en la terminal del backend."
	@echo "  make shell-frontend  -> Entra en la terminal del frontend."