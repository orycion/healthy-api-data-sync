#!/bin/bash

echo "Dumping the production database"
pg_dump \
    -d $PRODUCTION_DATABASE_URL \
    --verbose \
    --clean \
    --file dump.out \
    --format c

echo "Restoring the staging database"
pg_restore \
    -d $STAGING_DATABASE_URL \
    --verbose \
    --clean \
    --no-acl \
    --no-owner \
    dump.out
