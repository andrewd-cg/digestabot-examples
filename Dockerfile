FROM cgr.dev/chainguard/python:latest@sha256:197cf542e9f4dc373864faecd4fd1a4f642622e654e9196881ca852e8fdf26bd

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

