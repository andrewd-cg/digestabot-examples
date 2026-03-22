FROM cgr.dev/chainguard/python:latest@sha256:dc6d95fe490f76869974e1dbe96d4db01c06d194030467a9501584c19466bb30

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

