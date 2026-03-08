FROM cgr.dev/chainguard/python:latest@sha256:7ca65e0945567fe07eebbd0dfc34486938b02a79b4851b2675b899599e2e659e

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

