#!/usr/bin/env bash
  
PID_OF_SSH_AGENT=$(pidof ssh-agent)
REMOTE_URL=$(git remote -v)
PATH_TO_SSH="Enter/path/to/ssh/key/here"

if [[ -z "$REMOTE_URL" ]]; then
  echo "unable to push changes! URL to repository not set"
  exit 1
else
  echo "pushing commit to remote repository"
  if [[ ! -z  $PID_OF_SSH_AGENT ]]; then
    echo "stopping ssh-agent service with pidof: $PID_OF_SSH_AGENT"
    kill -9 "$PID_OF_SSH_AGENT"
    sleep 2
    echo "starting ssh-agent"
    eval `ssh-agent`
    sleep 2
    echo "setting up ssh-key"
    ssh-add "$PATH_TO_SSH_KEY"
    sleep 2
    git commit $1
  fi
fi

