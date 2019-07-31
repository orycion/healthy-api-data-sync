#!/bin/bash

echo "Dumping the production database"
pg_dump $PRODUCTION_DATABASE_URL -f dump.sql

echo "Restoring the staging database"
psql $STAGING_DATABASE_URL -f dump.sql
