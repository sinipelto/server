#!/bin/bash

this=$(readlink -f "${0}")
path=$(dirname "${this}")

source ${path}/params

${path}/down.sh

# Down already waits
sleep 1

# -d so not waited (?)
${path}/up.sh
