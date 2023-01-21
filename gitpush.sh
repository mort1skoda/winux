#!/bin/bash

git add --all
DATE=$(date +"%Y-%m-%d %H:%M:%S")
git commit -m "$DATE"
git push


