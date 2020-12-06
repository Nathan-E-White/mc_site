#!/usr/bin/env bash;

SIGNED_BY="/usr/share/keyrings/cloud.google.gpg";
GCP_APT="https://packages.cloud.google.com/apt";
GCP_SDK_List="/etc/apt/sources.list.d/google-cloud-sdk.list";
GCP_APT_GPG="https://packages.cloud.google.com/apt/doc/apt-key.gpg";

# Install the cloud SDK; assumes Ubuntu or Debian
sudo apt update && sudo apt -y upgrade;

# Add the Cloud SDK distribution URI as a package source
echo "deb [signed-by=${SIGNED_BY}] ${GCP_APT} cloud-sdk main" | sudo tee -a "${GCP_SDK_List}";

# Ensure that apt-transport-https is installed:
sudo apt install --yes apt-transport-https;

# Ensure that ca-certificates is installed:
sudo apt install --yes ca-certificates;

# Ensure that gnupg is installed:
sudo apt install --yes gnupg;

# Import the GCP public key
curl "${GCP_APT_GPG}" | sudo apt-key add - ;

# Update APT
sudo apt update;

# Install the Cloud SDK
sudo apt install --yes google-cloud-sdk;

# Install optional Cloud SDK components
# sudo apt install google-cloud-sdk-app-engine-java;

# TODO: Add GCP Tools & SDK to $PATH

# Initialize
gcloud init;

# Update the Google Cloud components
gcloud components update;

