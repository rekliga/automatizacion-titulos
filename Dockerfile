FROM python:3.11-slim-buster

WORKDIR /app

# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .

# Instala las dependencias
RUN pip3 install --no-cache-dir -r requirements.txt

# Copia el resto de la aplicación
COPY . .

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 8080

# Ejecuta el comando para iniciar la aplicación
CMD ["python3", "main.py"]
