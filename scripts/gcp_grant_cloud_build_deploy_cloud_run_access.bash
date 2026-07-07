#!/usr/bin/env bash

set -euo pipefail

: "${PROJECT_NUMBER:?Set PROJECT_NUMBER to the numeric Google Cloud project id.}"

gcloud iam service-accounts add-iam-policy-binding \
  "${PROJECT_NUMBER}-compute@developer.gserviceaccount.com" \
  --member="serviceAccount:${PROJECT_NUMBER}@cloudbuild.gserviceaccount.com" \
  --role="roles/iam.serviceAccountUser"
