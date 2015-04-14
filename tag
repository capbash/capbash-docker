#!/bin/bash
[[ -z "$INFO_LEVEL" ]] && source ./bits/bootstrap/logging

TAG_OUTPUT=${LAUNCHER_DIR}/docker_tag.log

debug "  -- Tagging $NAME $VERSION"

if [[ -z "$DOCKER_ID" ]]; then
  error "Unable to load docker image id for $NAME"
  exit 1
fi

debug "  -- Found $NAME image $DOCKER_ID ($VERSION)"
(cd ${LAUNCHER_DIR} &&  IGNORE=$(docker tag -f $DOCKER_ID $NAME:$VERSION > $TAG_OUTPUT 2>&1))
ERROR="Error tagging DOCKER container $NAME ($VERSION), due to ..." ./bits/bootstrap/failonerrors $? $TAG_OUTPUT
[ $? -ne 0 ] && exit 1
debug "  -- Successfully tagged $NAME $VERSION"
