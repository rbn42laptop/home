#!/bin/bash
cd ~
export DEL_PATH=$1

git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch $DEL_PATH' --prune-empty --tag-name-filter cat -- --all

git push origin --force --all

git push origin --force --tags
