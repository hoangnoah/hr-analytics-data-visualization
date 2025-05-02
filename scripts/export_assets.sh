#!/bin/bash

# Export dashboards
echo "Exporting dashboards..."
superset export_dashboards -f /app/backup/dashboards_backup.json

# Export charts
echo "Exporting charts..."
superset export_charts -f /app/backup/charts_backup.json

# Make sure the files are accessible
chmod 644 /app/backup/*.json 