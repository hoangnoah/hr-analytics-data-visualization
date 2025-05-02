#!/bin/bash
set -e

# Upgrade the database
superset db upgrade

# Create an admin user if it doesn't exist
superset fab create-admin --username admin --firstname Admin --lastname User --email admin@superset.com --password admin || echo "Admin user already exists"

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

# Start the Superset web server
gunicorn --bind 0.0.0.0:8088 "superset.app:create_app()"