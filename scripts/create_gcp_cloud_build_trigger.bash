#!/usr/bin/env bash

# Enable the Cloud Build API
gcloud services enable cloudbuild.googleapis.com;

# Create a build trigger
gcloud beta builds triggers create github \
  --repo-name=mc_site                     \
  --repo-owner=nathan-e-white             \
  --branch-pattern="^master$"             \
  --build-config=cloudbuild.yaml;

