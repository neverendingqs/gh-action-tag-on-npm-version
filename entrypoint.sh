#!/bin/bash
set -eux

GIT_USER_NAME=${1}
GIT_USER_EMAIL=${2}
TAG_PREFIX=${3}

TAG="${TAG_PREFIX}$(cat package.json | jq -r '.version')"

if ! git tag | grep "${TAG}"; then
  git config user.name ${GIT_USER_NAME}
  git config user.email ${GIT_USER_EMAIL}

  git tag -a ${TAG} -m ${TAG}
  git push --follow-tags
else
  echo "'${TAG}' already exists. No action taken."
fi
