#!/bin/sh

if [ ! -z "${INPUT_WORKDIR}" ]; then
    cd "${INPUT_WORKDIR}"
fi

gh release create $INPUT_TAG -t "${INPUT_TITLE}" --notes-file <(echo "${INPUT_NOTES}"; gh release view --json body --jq .body $INPUT_TAG)
