#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "tst_db" -f "/docker-entrypoint-initdb.d/init_tables/tst_db.sql"

echo "tst"
