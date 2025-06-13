# Variables
NODE_VERSION = 16
BUILD_DIR = build

# Regla por defecto
all: install build

# Instalar dependencias
install:
	@echo "Instalando dependencias..."
	yarn install

# Construir el sitio estático
build:
	@echo "Construyendo sitio estático..."
	yarn build

# Limpiar la carpeta de build
clean:
	@echo "Limpiando carpeta de build..."
	rm -rf $(BUILD_DIR)

# Verificar versión de Node y Yarn
check:
	@echo "Versión de Node:"
	node -v
	@echo "Versión de Yarn:"
	yarn -v

# Ejecutar todo el flujo
deploy: clean install build
	@echo "Listo para subir a GitHub Pages. (Subida se hace vía GitHub Actions en push a main)"
