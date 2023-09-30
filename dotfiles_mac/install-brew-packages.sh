#!/bin/bash

# Brew packages install
brew install $(cat ./brew-packages.txt)

# Brew cask packages install
brew install --cask $(cat ./brew-cask-packages.txt)
