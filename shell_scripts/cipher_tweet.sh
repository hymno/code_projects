#!/bin/bash
# A cipher that reads a user message, encrypts it, and tweets the encrypted message.
# Requires the twitter API program 't' connected to an existing twitter account.
# Download: https://github.com/sferik/t

echo "Enter your message."
read message
echo "Encrypting..."

# Dictionary filepath.
DICTIONARY=/Users/adrianthompson/depot/git/code_projects/libraries/dictionary.txt

# Loop over each word in the message separated by whitespace.
for word in $message
do
  # If the word doesn't exist in the dictionary, append it and sort the dictionary again.
  # -w: whole words -n: line number -m 1: first occurance
  # -Eo only matching regex,  ^[^:]+ only matches things in the line without the colon
  NUM="$(grep -wnm 1 $word $DICTIONARY | grep -Eo '^[^:]+')"
  if [ -z $NUM ] ; then
    echo "$word nonexistent in dictionary. Adding and re-sorting."
    echo $word >> $DICTIONARY
    #-f to ignore case, -u print only unique lines, -o outputs to file instead of stdo
    sort -fu $DICTIONARY -o $DICTIONARY
  fi
done

# Assign numeric ranges to each letter.
SIZE="$(wc -l < "$DICTIONARY")"
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

# Assign crypt words and relative range positions to each word in the message.
for word in $message
do
  # Get the numeric position of the word in the dictionary.
  NUM="$(grep -wnm 1 $word $DICTIONARY | grep -Eo '^[^:]+')"

  #A
  if (( $NUM < $A )) ; then
    CRYPT="Albert"
    RELNUM="$(expr $A - $NUM)"
  fi
  #B
  if ( (( $NUM >= $A )) && (( $NUM < $B )) ) ; then
    CRYPT="Blaise"
    RELNUM="$(expr $B - $NUM)"
  fi
  #C
  if ( (( $NUM >= $B )) && (( $NUM < $C )) ) ; then
    CRYPT="Christian"
    RELNUM="$(expr $C - $NUM)"
  fi
  #D
  if ( (( $NUM >= $C )) && (( $NUM < $D )) ) ; then
    CRYPT="Daniel"
    RELNUM="$(expr $D - $NUM)"
  fi
  #E
  if ( (( $NUM >= $D )) && (( $NUM < $E )) ) ; then
    CRYPT="Erwin"
    RELNUM="$(expr $E - $NUM)"
  fi
  #F
  if ( (( $NUM >= $E )) && (( $NUM < $F )) ) ; then
    CRYPT="Felix"
    RELNUM="$(expr $F - $NUM)"
  fi
  #G
  if ( (( $NUM >= $F )) && (( $NUM < $G )) ) ; then
    CRYPT="Galileo"
    RELNUM="$(expr $G - $NUM)"
  fi
  #H
  if ( (( $NUM >= $G )) && (( $NUM < $H )) ) ; then
    CRYPT="Hideki"
    RELNUM="$(expr $H - $NUM)"
  fi
  #I
  if ( (( $NUM >= $H )) && (( $NUM < $I )) ) ; then
    CRYPT="Isaac"
    RELNUM="$(expr $I - $NUM)"
  fi
  #J
  if ( (( $NUM >= $I )) && (( $NUM < $J )) ) ; then
    CRYPT="Jagadish"
    RELNUM="$(expr $J - $NUM)"
  fi
  #K
  if ( (( $NUM >= $J )) && (( $NUM < $K )) ) ; then
    CRYPT="Karl"
    RELNUM="$(expr $K - $NUM)"
  fi
  #L
  if ( (( $NUM >= $K )) && (( $NUM < $L )) ) ; then
    CRYPT="Ludwig"
    RELNUM="$(expr $L - $NUM)"
  fi
  #M
  if ( (( $NUM >= $L )) && (( $NUM < $M )) ) ; then
    CRYPT="Mileva"
    RELNUM="$(expr $M - $NUM)"
  fi
  #N
  if ( (( $NUM >= $M )) && (( $NUM < $N )) ) ; then
    CRYPT="Nevill"
    RELNUM="$(expr $N - $NUM)"
  fi
  #O
  if ( (( $NUM >= $N )) && (( $NUM < $O )) ) ; then
    CRYPT="Otto"
    RELNUM="$(expr $O - $NUM)"
  fi
  #P
  if ( (( $NUM >= $O )) && (( $NUM < $P )) ) ; then
    CRYPT="Pieter"
    RELNUM="$(expr $P - $NUM)"
  fi
  #Q
  if ( (( $NUM >= $P )) && (( $NUM < $Q )) ) ; then
    CRYPT="Qadeer"
    RELNUM="$(expr $Q - $NUM)"
  fi
  #R
  if ( (( $NUM >= $Q )) && (( $NUM < $R )) ) ; then
    CRYPT="Robert"
    RELNUM="$(expr $R - $NUM)"
  fi
  #S
  if ( (( $NUM >= $R )) && (( $NUM < $S )) ) ; then
    CRYPT="Sally"
    RELNUM="$(expr $S - $NUM)"
  fi
  #T
  if ( (( $NUM >= $S )) && (( $NUM < $T )) ) ; then
    CRYPT="Tasneem"
    RELNUM="$(expr $T - $NUM)"
  fi
  #U
  if ( (( $NUM >= $T )) && (( $NUM < $U )) ) ; then
    CRYPT="Ulrich"
    RELNUM="$(expr $U - $NUM)"
  fi
  #V
  if ( (( $NUM >= $U )) && (( $NUM < $V )) ) ; then
    CRYPT="Val"
    RELNUM="$(expr $V - $NUM)"
  fi
  #W
  if ( (( $NUM > $V )) && (( $NUM < $W )) ) ; then
    CRYPT="Werner"
    RELNUM="$(expr $W - $NUM)"
  fi
  #X
  if ( (( $NUM >= $W )) && (( $NUM < $X )) ) ; then
    CRYPT="Subrahmanyan"
    RELNUM="$(expr $X - $NUM)"
  fi
  #Y
  if ( (( $NUM >= $X )) && (( $NUM < $Y )) ) ; then
    CRYPT="Yoichiro"
    RELNUM="$(expr $Y - $NUM)"
  fi
  #Z
  if ( (( $NUM >= $Y )) && (( $NUM < $Z )) ) ; then
    CRYPT="Zhores"
    RELNUM="$(expr $Z - $NUM)"
  fi

  # Join the crypt word and range position.
  CRYPT="$CRYPT$RELNUM "
  # Append it to the cipher.
  CIPHER+=$CRYPT
done

CIPHER+=" "
CIPHER+='#free'

# Post the cipher to your twitter feed.
echo "Are you sure you want to tweet $CIPHER (y/n)?"
read response
if [ $response == "y" ] ; then
  t update "$CIPHER"
else
  echo "Aborted cipher."
fi
