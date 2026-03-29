FROM cgr.dev/chainguard/python:latest@sha256:af9f881767681598970f2d4316ffe1f42abcb0413282b555bf7ce9b0774a7c79

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

