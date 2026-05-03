FROM cgr.dev/chainguard/python:latest@sha256:7008762c7af3488711ff14f4d27020580a8dd612dd7391651677f8e6b4a9612b

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

