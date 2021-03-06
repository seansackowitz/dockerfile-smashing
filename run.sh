#!/bin/bash

function install_widgets() {
  WIDGETS=$@
  if [[ ! -z "$WIDGETS" ]]; then
    for WIDGET in $WIDGETS; do
      echo -e "\nInstalling widget from gist $WIDGET"
      smashing install "$WIDGET"
    done
  fi
}

function install_gems() {
  GEMS=$@
  if [[ ! -z "$GEMS" ]]; then
    echo -e "\nInstalling gem(s): $GEMS"
    for GEM in $GEMS; do
      echo -e "\ngem '$GEM'" >> Gemfile
    done
  fi
}

if [[ ! -e /smashing/config.ru ]]; then
  git clone https://$GIT_USERNAME:$GIT_TOKEN@$GIT_REPO_URI .
else
  git pull
fi

if [[ ! -e /installed ]]; then
  install_widgets $WIDGETS
  install_gems $GEMS
  touch /installed
fi

bundle install

if [[ ! -z "$PORT" ]]; then
  PORT_ARG="-p $PORT"
fi

# Start smashing
exec smashing start $PORT_ARG
