#!/usr/bin/env bash

gcloud iam service-accounts add-iam-policy-binding 592094670429-compute@developer.gserviceaccount.com --member="serviceAccount:592094670429@cloudbuild.gserviceaccount.com" --role="roles/iam.serviceAccountUser"
