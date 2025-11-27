from .file_ops import write_file, read_file
from .logger import get_logger

logger = get_logger()

def main():
    logger.info("Aplicación iniciada.")
    write_file("output.txt", "Hola CI/CD Multi-Plataforma!")
    content = read_file("output.txt")
    logger.info(f"Contenido leído: {content}")

if __name__ == "__main__":
    main()
