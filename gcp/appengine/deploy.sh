#!/bin/bash

pushd frontend3
npm run build
popd

pipenv lock -r > requirements.txt
gcloud app deploy app.yaml cron.yaml cron-service.yaml --project=oss-vdb
