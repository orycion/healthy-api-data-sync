# PostgreSQL Data Sync

Syncing our production database to staging.

## Setup

1. Deploy the app to Heroku and install the Heroku Scheduler add-on.
2. Add a scheduled entry for `./sync.sh` every day at the time you want the sync to run.
