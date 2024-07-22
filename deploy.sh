#! usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate to the builds output directory
cd dist

# place .nojekyll to bypass jekyll processing
echo > .nojekyll

#if you are deploying to a custom domain

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# If you are deploying to the https://<username>.github.io.git main

cd -