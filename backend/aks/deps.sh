#!/usr/bin/env bash

. ../../include/common.sh
[[ -d "${BUILD_DIR}" ]] || exit 0
. .envrc

if [[ "$DOWNLOAD_CATAPULT_DEPS" == "false" ]]; then
    ok "Skipping downloading AKS deps, using host binaries"
    exit 0
fi

azclipath=bin/az
if [ ! -e "$azclipath" ]; then
    # needs gcc libffi-devel python3-devel libopenssl-devel
    curl -o install.py https://azurecliprod.blob.core.windows.net/install.py && \
	printf "y\n$(pwd)/.lib/azure-cli\n$(pwd)/bin\nY\n$(pwd)/.envrc\n " | python3 ./install.py && \
        rm ./install.py
fi

terraformpath=bin/terraform
if [ ! -e "$terraformpath" ]; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        curl -o terraform.zip https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_darwin_amd64.zip
    else
        curl -o terraform.zip https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip
    fi
    unzip terraform.zip && rm -rf terraform.zip
    chmod +x terraform && mv terraform bin/
fi
