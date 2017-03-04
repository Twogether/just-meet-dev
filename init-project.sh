#!/bin/bash
set -e



if ["$1" = ""]
then
  echo "Usage: $0 <github username>"
  exit
fi

cd ..
echo "Clone the api project from github to ../just-meet-api"
git clone https://github.com/$1/just-meet-api.git just-meet-api
git -C just-meet-api remote add upstream https://github.com/twogether/just-meet-api.git


echo "Clone the app project from github to ../just-meet-frontend"
git clone https://github.com/$1/just-meet-frontend.git just-meet-frontend
git -C project/just-meet-frontend remote add upstream https://github.com/twogether/just-meet-frontend.git
