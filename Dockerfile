FROM cgr.dev/chainguard/python:latest@sha256:f6787bd56ad48a1afb89f229ada27195fd2b66942b7470a357604fbb655f1ba3

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

