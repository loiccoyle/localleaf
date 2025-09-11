#!/bin/sh

set -e

# Update UID and GID of user texlive

if ! id -u texlive > /dev/null 2>&1; then
  echo "User 'texlive' does not exist"
  exit 1
fi

if ! getent group texlive > /dev/null 2>&1; then
  echo "Group 'texlive' does not exist"
  exit 1
fi

: "${UID:=1000}"
: "${GID:=1000}"

CURRENT_UID=$(id -u texlive)
CURRENT_GID=$(id -g texlive)

if [ "$UID" -ne "$CURRENT_UID" ]
then
    usermod -u "$UID" texlive
fi

if [ "$GID" -ne "$CURRENT_GID" ]
then
    groupmod -g "$GID" texlive
fi

# Execute command passed into container

exec gosu texlive "$@"
