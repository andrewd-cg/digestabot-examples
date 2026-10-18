FROM cgr.dev/chainguard/python:latest@sha256:26a608c1549ee52eeb717bf66bce5e60cebaa4a0cd2a57774dfd49484bd38c9a

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

