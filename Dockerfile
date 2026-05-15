FROM python:3.11-slim
COPY . /app
WORKDIR /app
CMD ["python", "app.py"]
