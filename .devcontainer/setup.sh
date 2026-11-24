#!/usr/bin/env bash
set -e

sudo apt-get update
sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa

if [ ! -d "$HOME/flutter" ]; then
  git clone https://github.com/flutter/flutter.git -b stable --depth 1 "$HOME/flutter"
fi

if ! grep -q 'flutter/bin' "$HOME/.bashrc"; then
  echo 'export PATH="$HOME/flutter/bin:$PATH"' >> "$HOME/.bashrc"
fi

export PATH="$HOME/flutter/bin:$PATH"

flutter config --enable-web
flutter precache --web
flutter pub get
