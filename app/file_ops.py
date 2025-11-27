from pathlib import Path
from .logger import get_logger

logger = get_logger()

def write_file(filename, content):
    path = Path(filename)
    path.write_text(content)
    logger.info(f"Archivo {filename} creado con éxito.")

def read_file(filename):
    path = Path(filename)
    content = path.read_text()
    logger.info(f"Archivo {filename} leído con éxito.")
    return content
