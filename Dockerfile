FROM cgr.dev/chainguard/python:latest@sha256:fd6d0771e8ec99b1710dfc3d72ca19ba2ff6b14f72b7978922ab0c8acb72c3f3

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0", "--port", "8000"]

