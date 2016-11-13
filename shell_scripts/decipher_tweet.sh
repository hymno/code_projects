#!/bin/bash

# This is a decipher script for cipher_tweet.sh

# Declare the twitter handle of the cipher.
MESSENGER="_wraith0"
HASH="#fruits"
REPO_DICTIONARY='https://github.com/hymno/code_projects/blob/master/libraries/dictionary.txt'

# Make a repo directory to store and sync the dictionary.
DECIPHER_REPO=/Users/$USER/decipher_repo
sudo mkdir -p $DECIPHER_REPO
cd $DECIPHER_REPO

# Check for and install homebrew.
if [ ! command -v brew >/dev/null 2>&1 ] ; then
  echo 'Hey Mon, we just need to install the program Homebrew...'
  echo 'which will help us install Git :) I swear it'\`'s harmless.'
  # Install homebrew.
  /usr/bin/ruby -e \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check for and install git.
if [ ! command -v git >/dev/null 2>&1 ] ; then
  echo 'Okay, now installing git which will help us sync dictionaries :D'
  # Install git.
  brew install git
fi

# Check for and install t, then set up the twitter API.
if [ ! command -v t >/dev/null 2>&1 ] ; then
  echo 'Okay, just need to install t which is the commandline version of twitter :D'
  gem install t
fi

# Clone the library repo where dictionary.txt is stored.
git clone https://github.com/hymno/code_projects/tree/master/libraries

LOCAL_DICTIONARY="$REPO_DIRECTORY/dictionary.txt"
SIZE="$(wc -l < "$LOCAL_DICTIONARY")"
A="$(expr $SIZE / 26)"
B="$(expr $A + $A)"
C="$(expr $B + $A)"
D="$(expr $C + $A)"
E="$(expr $D + $A)"
F="$(expr $E + $A)"
G="$(expr $F + $A)"
H="$(expr $G + $A)"
I="$(expr $H + $A)"
J="$(expr $I + $A)"
K="$(expr $J + $A)"
L="$(expr $K + $A)"
M="$(expr $L + $A)"
N="$(expr $M + $A)"
O="$(expr $N + $A)"
P="$(expr $O + $A)"
Q="$(expr $P + $A)"
R="$(expr $Q + $A)"
S="$(expr $R + $A)"
T="$(expr $S + $A)"
U="$(expr $T + $A)"
V="$(expr $U + $A)"
W="$(expr $V + $A)"
X="$(expr $W + $A)"
Y="$(expr $X + $A)"
Z="$(expr $Y + $A)"

# Read the latest tweet
CIPHER="$(t search timeline @$MESSENGER $HASH | grep $HASH | head -1)"
echo $CIPHER

# build decipher script based on dictionary length
for word in $CIPHER
do
  # Separate the words from numbers and store them each.
  territory="$(echo ${word} | sed "s/[0-9]*//g")"
  district="$(echo $word | sed "s/[^0-9]*//g")"

  #Debug
  echo $word
  echo $territory
  echo $district
  echo

  # Decipher.
  # A
  if (( $territory == "Albert" )) ; then
    PLAIN=sed "${district}q;d" $LOCAL_DICTIONARY
  fi
done

echo $PLAIN

