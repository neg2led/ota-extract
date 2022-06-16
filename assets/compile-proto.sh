#!/usr/bin/env bash
set -e

# get the parent directory of the script
SCRIPT_DIR=$(cd -- "$(dirname "$0")" &>/dev/null; pwd -P)

# change to one level up
pushd ${SCRIPT_DIR}/.. > /dev/null

# compile python module
protoc --proto_path=assets --python_out=src/protos assets/update_metadata.proto

# return to previous directory
popd > /dev/null

# done
exit 0
