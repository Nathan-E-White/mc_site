#!/usr/bin/env bash

# Enable the Artifact Registry API
gcloud services enable artifactregistry.googleapis.com;

# Create an Artifact Registry repository to host docker images
gcloud beta artifacts repositories create docker-repository --repository-format=docker --location=us-central1;


