FROM cgr.dev/chainguard/python:latest@sha256:319bd725e8856df518b3b0bed21fae652f94918c8b98cc6d2f13467516720035

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

