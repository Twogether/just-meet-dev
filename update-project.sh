#!/bin/bash
set -e

cd ..
cd just-meet-api
git pull upstream master
composer install

cd ..
cd just-meet-frontend
git pull upstream master
npm install

