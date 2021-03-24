#! /usr/bin/env bash

cd /scripts
git remote set-url origin "$REPO_URL"
git reset --hard
echo "git pull拉取最新代码..."
git -C /scripts pull --rebase
echo "npm install 安装最新依赖"
npm install --prefix /scripts