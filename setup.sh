#!/bin/bash

force_copy="false"

while test $# -gt 0; do
  case "$1" in
    --force)
      echo "Overwriting dotfiles without asking for confirmation..."
      force_copy=true
      shift
      ;;
    *)
      shift
      ;;
  esac
done

dotfiles_path=`dirname $0`

if $force_copy ; then
    yes | cp ${dotfiles_path}/.bashrc ~/
    yes | cp ${dotfiles_path}/.bash_profile ~/
else
    cp -i ${dotfiles_path}/.bashrc ~/
    cp -i ${dotfiles_path}/.bash_profile ~/
fi
