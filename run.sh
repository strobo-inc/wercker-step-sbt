#!/bin/bash
set -e

if [ ! -n "$WERCKER_SBT_TASK" ]; then
    error "Please specify an $WERCKER_SBT_TASK"
fi

sbt $WERCKER_SBT_TASK
