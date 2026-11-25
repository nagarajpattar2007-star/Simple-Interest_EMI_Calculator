# Dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY FinanceUtils.py Test_Finance_Utils.py ./

RUN pip install --no-cache-dir pytest

CMD ["sh", "-c", "pytest -v && python FinanceUtils.py"]