#!/usr/bin/env bash

pid=$(pidof ssh-agent)

if [[ ! -z  $pid ]]; then
  # else run this block of code
  echo "stopping ssh-agent service with pidof: $(pidof ssh-agent)"
  kill -9 $(pidof ssh-agent)
  sleep 2
  echo "starting ssh-agent"
  eval `ssh-agent`
  sleep 2
  echo "setting up ssh-key"
  ssh-add ~/path/to/ssh/kay
  sleep 2
  git commit $1
fi
