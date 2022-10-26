#!/bin/bash

URL=$(curl -s https://api.github.com/repos/miguelandres/dotfiles-rs/releases/latest \
| grep "browser_download_url.*macos-universal" \
| cut -d : -f 2,3 \
| tr -d \" \
| cut -c 2-)

echo "$URL"
curl $URL -L -s -o df.tar.gz

shasum -a 256 df.tar.gz

rm df.tar.gz
