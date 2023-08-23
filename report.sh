#!/bin/bash

source logger.sh

name=$1
if [ $# -eq 2 ]; then month=$2; else month=january; fi

log_work "$name" "$month"
