#!/usr/bin/env bash

gcloud projects list --filter="$(gcloud config get-value project)" --format="value(PROJECT_NUMBER)";
