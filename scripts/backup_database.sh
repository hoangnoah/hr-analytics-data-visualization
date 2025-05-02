#!/bin/bash

# Backup database
pg_dump -h postgres-superset -U superset superset > /docker-entrypoint-initdb.d/superset_backup.sql

# Make sure the backup is accessible
chmod 644 /docker-entrypoint-initdb.d/superset_backup.sql 