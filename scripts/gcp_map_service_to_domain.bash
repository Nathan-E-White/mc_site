#!/usr/bin/env bash

gcloud beta run domain-mappings create --service "${SERVICE_NAME}" --domain "${DOMAIN_NAME}";
