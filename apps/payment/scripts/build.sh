#!/usr/bin/env bash

set -ev

SCRIPT_DIR=$(dirname "$0")

if [[ -z "$GROUP" ]] ; then
    echo "Cannot find GROUP env var"
    exit 1
fi

if [[ -z "$COMMIT" ]] ; then
    echo "Cannot find COMMIT env var"
    exit 1
fi

if [[ "$(uname)" == "Darwin" ]]; then
    DOCKER_CMD=docker
else
    DOCKER_CMD="sudo docker"
fi
CODE_DIR=$(cd $SCRIPT_DIR/..; pwd)
echo $CODE_DIR

mkdir $CODE_DIR/docker/payment/vendor && cp $CODE_DIR/vendor/manifest $CODE_DIR/vendor/

REPO=${GROUP}/$(basename payment);

$DOCKER_CMD build -t ${REPO}-dev -f $CODE_DIR/Dockerfile $CODE_DIR/docker/payment;
$DOCKER_CMD create --name payment ${REPO}-dev;
$DOCKER_CMD cp payment:/app/main $CODE_DIR/docker/payment/app;
$DOCKER_CMD rm payment;
$DOCKER_CMD build -t ${REPO}:${COMMIT} -f $CODE_DIR/Dockerfile-release $CODE_DIR;
