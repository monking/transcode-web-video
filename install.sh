#!/bin/bash
cd $(dirname $0)
sh_script_name="transcode-web-video"
sh_source="$(pwd)/$sh_script_name"
echo "Adding the script to /usr/local/bin/. This will prompt you for your password."
sh_target="/usr/local/bin/$sh_script_name"

if [[ -L $sh_target ]]; then
  read -p "\"$sh_source\" already exists. Replace? [Yn] "
  if [[ $REPLY =~ ^[Yy]|^$ ]]; then
    sudo unlink "$sh_target"
  else
    echo 'Cancelling install.'
    exit 0
  fi
fi

sudo ln -s "$sh_source" "$sh_target"
echo "The shell script has been added to \"$sh_target\""

read -p "Do you want to install an AppleScript shortcut for this script? [Yn] "
if [[ $REPLY =~ ^[Yy]|^$ ]]; then
  as_script_name="Transcode Web Video"
  as_source="$(pwd)/$as_script_name.scpt"
  as_target="$HOME/Library/Scripts/$as_script_name.scpt"
  if [[ -L $as_target ]]; then
    read -p "An AppleScript called \"$as_script_name\" already exists. Replace? [Yn] "
    if [[ $REPLY =~ ^[Yy]|^$ ]]; then
      unlink "$as_target"
    else
      echo 'Cancelling install.'
      exit 0
    fi
  fi
  ln -s "$as_source" "$as_target"
  echo "The AppleScript has been added to \"$as_target\""
fi

echo "All done."
