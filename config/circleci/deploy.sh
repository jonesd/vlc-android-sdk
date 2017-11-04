#!/bin/bash

if [ "${CIRCLE_BRANCH}" == "master" ]; then
  ./gradlew clean bintrayUpload
fi
