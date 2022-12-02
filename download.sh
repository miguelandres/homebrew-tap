#!/bin/zsh

os=${1="all_binaries"}
repo=${2="miguelandres/dotfiles-rs"}

URL=$(curl -s https://api.github.com/repos/$repo/releases/latest \
| grep "browser_download_url.*$os" \
| cut -d : -f 2,3 \
| tr -d \" \
| cut -c 2-)

echo "downloading $URL"
curl "$URL" -L -o df.tar.gz

shasum -a 256 df.tar.gz
rm df.tar.gz

