#!/usr/bin/env bash;

CLOUD_SDK_REPO="/etc/yum.repos.d/google-cloud-sdk.repo";

# 1. Update DNF with the Cloud SDK repo information:
sudo tee -a "${CLOUD_SDK_REPO}" << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-e17-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM;

# 2. Install the Cloud SDK
dnf install google-cloud-sdk;

# 3. Install optional components
dnf install google-cloud-sdk-app-engine-java;

# 4. Initialize
gcloud init;

# 5. Update
gcloud components update;
