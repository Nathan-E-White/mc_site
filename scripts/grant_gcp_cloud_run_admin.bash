#!/usr/bin/env bash

gcloud projects add-iam-policy-binding ${PROJECT_ID}    \
  --member "serviceAccount:${PROJECT_NUMBER}@cloudbuild.gserviceaccount.com"   \
  --role roles/run.admin;


