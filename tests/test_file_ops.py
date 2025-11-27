import pytest
from app.file_ops import write_file, read_file
from pathlib import Path

def test_write_and_read_file(tmp_path):
    test_file = tmp_path / "test.txt"
    write_file(test_file, "Hola Test!")
    content = read_file(test_file)
    assert content == "Hola Test!"
