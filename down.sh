#!/bin/bash

this=$(readlink -f "${0}")
path=$(dirname "${this}")

source ${path}/params

eval "${binn} -f ${dockf} -p ${project} down"
