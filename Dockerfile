FROM cgr.dev/chainguard/python:latest@sha256:18974e90873baf1217c62e0daeed36ea873fb577193f7ce4814c051e78c68c03

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

