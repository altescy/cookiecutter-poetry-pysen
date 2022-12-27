FROM python:3.10-slim

RUN apt-get update \
    && apt-get install -y build-essential \
    && pip install --no-cache-dir --upgrade poetry cookiecutter

WORKDIR /work
COPY . .

CMD ["bash", "tests/test_generate_template.sh"]
