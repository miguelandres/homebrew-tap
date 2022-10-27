#!/bin/bash

os=${1=macos-universal}
repo=${2="miguelandres/dotfiles"}

URL=$(curl -s https://api.github.com/repos/$repo/releases/latest \
| grep "browser_download_url.*$os" \
| cut -d : -f 2,3 \
| tr -d \" \
| cut -c 2-)

echo "downloading $URL"
curl "$URL" -L -o df.tar.gz

shasum -a 256 df.tar.gz
rm df.tar.gz

