#!/bin/bash

# Copyright (c) 2024 The Jaeger Authors.
# SPDX-License-Identifier: Apache-2.0

set -exu

DOCKERHUB_USERNAME=${DOCKERHUB_USERNAME:-"jaegertracingbot"}
DOCKERHUB_TOKEN=${DOCKERHUB_TOKEN:-}

echo "Performing a 'docker login' for DockerHub"
echo "${DOCKERHUB_TOKEN}" | docker login -u "${DOCKERHUB_USERNAME}" docker.io --password-stdin
