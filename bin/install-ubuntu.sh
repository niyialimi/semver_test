#!/bin/bash

echo 'installing dependencies'
sudo apt install python3-pip gawk &&\
pip3 install pre-commit


echo 'installing pre-commit hooks'
pre-commit install

echo 'setting pre-commit hooks to auto-install on clone in the future'
git config --global init.templateDir ~/.git-template
pre-commit init-templatedir ~/.git-template
