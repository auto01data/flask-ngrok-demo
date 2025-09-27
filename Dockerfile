# syntax=docker/dockerfile:1
FROM python:3.12-slim

# Prevents Python from writing .pyc files and buffers logs less
ENV PYTHONDONTWRITEBYTECODE=1         PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
CMD ["python", "app.py"]