#!/bin/bash

# This is a decipher script for cipher_tweet.sh

# Declare the twitter handle of the cipher.
CIPHER="_wraith0"
HASH="#fruits"

# Make a repo directory to store and sync the dictionary.
DECIPHER_REPO=/Users/$USER/decipher_repo
mkdir $DECIPHER_REPO
cd $DECIPHER_REPO

# Check for and install homebrew.
if [ ! command -v brew >/dev/null 2>&1 ] ; then
    echo "Hey Mon, we just need to install the program 'Homebrew' \
		which will help us install Git :) I swear it's harmless."
    # Install homebrew.
    /usr/bin/ruby -e \
		"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check for and install git.
if [ ! command -v git >/dev/null 2>&1 ] ; then
	echo "Okay, now installing 'git' which will help us sync dictionaries :)"
    # Install git.
    brew install git
fi

# Check for and install t, then set up the twitter API.
if [ ! command -v t >/dev/null 2>&1 ] ; then
	echo "Okay, just need to install t which is the commandline version of twitter :)"
    brew install t
	# TODO: still need to setup API
fi

# Clone the library repo where dictionary.txt is stored.
git clone https://github.com/hymno/code_projects/tree/master/libraries

# Read the latest tweet
CODE="${t search timeline @$CIPHER $HASH | grep $HASH | head -1}"
echo $CODE

# build decipher script based on dictionary length
for word in $CODE
do
	# Separate the words from numbers and store them each.
	# Get dictionary length.
	# divide
	
done
