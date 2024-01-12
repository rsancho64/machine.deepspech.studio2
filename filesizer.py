from pathlib import Path

file = "./data.cvs"
filesize = Path(file).stat().st_size
print(filesize)