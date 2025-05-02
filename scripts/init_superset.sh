#!/bin/bash

# Wait for database to be ready
echo "Waiting for database to be ready..."
while ! nc -z postgres-superset 5432; do
  sleep 1
done

# Initialize Superset
superset db upgrade

# Create admin user
superset fab create-admin \
    --username admin \
    --firstname Superset \
    --lastname Admin \
    --email admin@superset.com \
    --password admin

# Initialize Superset
superset init

# Import dashboards and charts if they exist
if [ -f "/app/backup/dashboards_backup.json" ]; then
    echo "Importing dashboards..."
    superset import_dashboards -p /app/backup/dashboards_backup.json
fi

if [ -f "/app/backup/charts_backup.json" ]; then
    echo "Importing charts..."
    superset import_charts -p /app/backup/charts_backup.json
fi 