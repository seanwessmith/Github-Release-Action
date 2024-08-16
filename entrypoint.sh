#!/bin/sh

# Fail on any error.
set -e

echo "Setting up workdir ${INPUT_WORKDIR}"
if [ ! -z "${INPUT_WORKDIR}" ]; then
    echo "Changing working directory to ${INPUT_WORKDIR}"
    cd "${INPUT_WORKDIR}"
fi

gh release create $INPUT_TAG -t "${INPUT_TITLE} ($(date +%Y-%m-%d))" --generate-notes