#!/bin/bash

read REQUIREMENT

case $REQUIREMENT in

  "build")
    cd ~/workspace/ci-cd-sample-app; yarn build > /dev/null; echo $?
    ;;

  "start")
    grep -E "\"start\": \"parcel src/index.html\"" ~/workspace/ci-cd-sample-app/package.json > /dev/null; echo $?
    ;;

esac

# grep -E "\"build\": \"webpack --mode production\"" ~/workspace/ci-cd-sample-app/package.json