#!/bin/bash

if [ ! -f ~/.wa_aliases ]; then
  touch ~/.wa_aliases
  echo "if [ -f ~/.wa_aliases ]; then
      . ~/.wa_aliases
  fi" >> ~/.bashrc
fi

signature=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

curl -fsSL https://raw.githubusercontent.com/webilio-xyz/webilio-commands/main/wa_aliases?s=$signature > ~/.wa_aliases