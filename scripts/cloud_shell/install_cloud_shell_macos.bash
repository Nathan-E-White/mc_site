#!/usr/bin/env bash

DARWIN_SDK_ADDR="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-319.0.0-darwin-x86_64.tar.gz";
DARWIN_SDK_CHKS="5c37fc7199141c63b6e5b1dfc55ed88ae681077fcf2e5fbd9945ad378cdf8d4e";

# For best results, Python 3.5 or better is needed
brew install python;

# Download to your desired directory
wget "${DARWIN_SDK_ADDR}" ".";

# TODO: Check that the checksum matches the package

# TODO: tar -C /extract/to/path -xzvf /path/to/archive.tar.gz

# Add the Cloud SDK tools to the path, note this is interactive but can be automated
./google-cloud-sdk/install.sh;

# Run gcloud init to start up
./google-cloud-sdk/bin/gcloud init;

# TODO: Install Optional components

# Update your components
./google-cloud-sdk/bin/gcloud components update;

