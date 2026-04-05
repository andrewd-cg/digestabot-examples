FROM cgr.dev/chainguard/python:latest@sha256:5050e88595e02879be85d0c1f9f8f3ffc743d8fe925d9b4c501df95e682ec5d1

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

