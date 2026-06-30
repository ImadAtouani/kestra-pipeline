FROM python:3.12-slim

# Installer les dépendances
RUN pip install --no-cache-dir \
    pymongo pandas openpyxl requests beautifulsoup4 sqlalchemy psycopg2-binary pyarrow kestra

# Copier les données dans l'image
COPY data/ /app/data/
COPY scripts/ /app/scripts/

WORKDIR /app