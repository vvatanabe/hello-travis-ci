#!/bin/bash -e

URL="https://script.google.com/macros/s/${WEB_HOOK_ID}/exec"
MESSAGE="${TRAVIS_REPO_SLUG} ${TRAVIS_BRANCH} ${TRAVIS_JOB_NUMBER} "

if [ ${TRAVIS_TEST_RESULT} ]; then
  MESSAGE+="passed"
else
  MESSAGE+="failed"
fi

curl -d 'message=${MESSAGE}' ${URL}