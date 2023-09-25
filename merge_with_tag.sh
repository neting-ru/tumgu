#!/bin/bash

git checkout prd
git pull origin prd
git merge --no-ff dev -m "Merge dev into prd"

short_hash=`git rev-parse --short HEAD`
git tag -a $short_hash -m "Tagging merge of dev into prd"

git push origin prd
git push origin --tags
