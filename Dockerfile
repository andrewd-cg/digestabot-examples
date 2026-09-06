FROM cgr.dev/chainguard/python:latest@sha256:115532a106aff6e820cd637809edd0c9239f2269d46fb9937cac703cc4d101e5

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

