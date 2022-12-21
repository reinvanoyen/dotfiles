#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function installDotfiles() {
  rsync --exclude ".git/" \
    --exclude ".idea/" \
    --exclude ".DS_Store" \
    --exclude "install.sh" \
    --exclude "README.md" \
    -avh --no-perms . ~;
  source ~/.zshrc;
}
echo 'This will (over)write files in your home directory. Are you sure? [y/n]'
read YN

if [[ $YN == 'y' ||  $YN == 'Y' ]]
then
  installDotfiles
fi

unset installDotfiles;
