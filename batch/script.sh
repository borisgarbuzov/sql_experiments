#!/bin/bash

source .env

sql="$(cat query.sql)"

PGPASSWORD="$POSTGRES_PASSWORD" "C:/Program Files/PostgreSQL/12/bin"/psql \
-t -A \
-h "$POSTGRES_HOST" \
-p "$POSTGRES_PORT" \
-d "$POSTGRES_DATABASE" \
-U "$POSTGRES_USERNAME" \
-c "$sql"