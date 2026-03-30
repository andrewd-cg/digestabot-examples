FROM cgr.dev/chainguard/python:latest@sha256:82ce9b301e8b33bb874f12c0e8ff0dccdac65fc4814f28217473410b3345688d

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

