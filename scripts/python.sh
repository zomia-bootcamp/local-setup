#!/usr/bin/env bash
. ./scripts/parse_yaml.sh

eval $(parse_yaml ./scripts/config.yml "config_")

# if operating system is NOT macOS
if [[ $(uname -s) != 'Darwin' ]]; then
  # install python and pip
  sudo apt-get update
  sudo apt-get install -y python3.7 python3-pip
  # install pipenv, pylint globally
  pip3 install pipenv pylint pylint-django
  # print success
  echo `python ––version`
else
  if [[ $# -eq 0 ]]; then
    # install pyenv for python version management
    brew install pyenv
    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
    echo -e '\nFinished installing pyenv. Restart the terminal completely\n'
  fi

  # If script is ran with the `python` argument
  if [[ $1 = "python" ]]; then
    # Install python build dependencies
    brew install openssl readline sqlite3 xz zlib

    # Install python version
    pyenv install $config_python_version
    pyenv global $config_python_version

    echo `python --version`

    # install python, pipenv homebrew on OSX only
    brew install pipenv
    pip3 install pylint pylint-django
  fi
fi
