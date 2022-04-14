@echo off

pushd %~dp0

git checkout .
git clean -fdx
git fetch -p
git pull

popd
