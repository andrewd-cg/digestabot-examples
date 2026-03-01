FROM cgr.dev/chainguard/python:latest@sha256:e47c748a643dc09d98587839d62ae8b76aa2a192af6ec6506fa6a305901b7810

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

