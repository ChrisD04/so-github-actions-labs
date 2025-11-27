# Imagen base
FROM ubuntu:22.04

# Instalar herramientas básicas
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    procps \
    && rm -rf /var/lib/apt/lists/*

# Comando por defecto
CMD ["bash", "-c", "while true; do echo 'Contenedor corriendo...'; sleep 10; done"]
