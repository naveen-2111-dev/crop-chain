#!/bin/bash

# this is a project submodule setup file

set -e

git submodule update --init --recursive
git submodule foreach 'git clean -fdx'
git submodule foreach 'git reset --hard'
git clean -fdx
git reset --hard
npx pnpm install