#!/bin/bash

if [ "${CIRCLE_BRANCH}" == "master" ]; then
  ./gradlew bintrayUpload
fi
