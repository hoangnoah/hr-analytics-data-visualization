#!/bin/bash

# Create backup directory if not exists
mkdir -p /app/backup/charts

# Export individual charts
echo "Exporting charts..."
superset export_dashboards --dashboard-file /app/backup/charts/charts_backup.json

# Make files accessible
chmod 644 /app/backup/charts/*.json

echo "Charts have been exported to database/backup/charts/" 