#!/bin/bash
script_name="Transcode Web Video"
cd $(dirname $0)
source="$(pwd)/$script_name.scpt"
target="$HOME/Library/Scripts/$script_name.scpt"
if [[ -L $target ]]; then
  read -p "An AppleScript called \"$script_name\" already exists. Replace? [Yn] "
  if [[ $REPLY =~ ^[Yy] ]]; then
    unlink "$target"
  else
    echo 'Cancelling install.'
    exit 0
  fi
fi
ln -s "$source" "$target"
echo "The AppleScript has been added to \"$target\""
