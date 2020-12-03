#!/usr/bin/env bash

echo "Checking if Homebrew is installed..."

which -s brew
if [[ $? != 0 ]] ; then
    echo "No homebrew detected. Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Installed!"
fi

echo "Checking if Ruby is installed..."
which -s ruby
if [[ $? != 0  ]] ; then
    echo "No ruby detected. Please install ruby to contine!"
    break
else
    echo "Installed!"
fi



echo """
Installing chromedriver...
"""

$(brew tap homebrew/cask && brew cask install chromedriver && brew upgrade --cask chromedriver)

echo """
Complete! Run \"gem install bundler\" and \"bundle install\" and you should be good to go!
"""

