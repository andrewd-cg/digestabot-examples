FROM cgr.dev/chainguard/python:latest@sha256:b720e8333748d1977a6b7971fc85c6bd051e7f7863149c3fa03b460166658ed8

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

