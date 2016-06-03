#!/bin/bash
set -e

if [ ! -n "$WERCKER_SBT_TASK" ]; then
    error "Please specify an $WERCKER_SBT_TASK"
fi

sbt -sbt-dir $WERCKER_CACHE_DIR/.sbt -sbt-boot $WERCKER_CACHE_DIR/.sbt/boot -ivy $WERCKER_CACHE_DIR/.ivy  $WERCKER_SBT_TASK
