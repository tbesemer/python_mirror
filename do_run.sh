#!/bin/sh

MY_DIR=`pwd`
docker run -v "$MY_DIR:/sonic" -w "/sonic" -it debian_test:stretch
