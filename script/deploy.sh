#! /bin/bash

set -eu

echo "deploying changes"

if [ -z "$TRAVIS_PULL_REQUEST" ]; then
    echo "except don't publish site for pull requests"
    exit 0
fi


cd _site
git config --global user.name "Travis CI"
git config --global user.email papascott+travis@gmail.com
git add -A
git status
git commit -m "Lastest site built on successful travis build $TRAVIS_BUILD_NUMBER auto-pushed to github"
exit `git push`
