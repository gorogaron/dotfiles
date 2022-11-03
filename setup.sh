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

if $force_copy ; then
    yes | cp .bashrc ~/
    yes | cp .bash_profile ~/
else
    cp -i .bashrc ~/
    cp -i .bash_profile ~/
fi
