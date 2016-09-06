#!/bin/bash

# A cipher that reads a user message, encrypts it, and tweets the encrypted message.

DICTIONARY=/Users/adrianthompson/projects/git/coding_projects/libraries/dictionary.txt

echo "Enter your message."
read message
echo "Encrypting..."

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

# Loop over each word in the message separated by whitespace.
for word in $message
do
  # Get the numeric position of the word in the dictionary. TODO: should add this as a preliminary for loop to get sizes before the encrypt step
  NUM="$(grep -wn $word $DICTIONARY | grep -Eo '^[^:]+')"
  
  # If the word doesn't exist in the dictionary, append it and sort the dictionary again.
  if [ -z $NUM ] ; then
    echo "$word nonexistent in dictionary. Adding and re-sorting."
    echo $word >> $DICTIONARY
    sort $DICTIONARY -f -o $DICTIONARY
    NUM="$(grep -wn $word $DICTIONARY | grep -Eo '^[^:]+')"
  fi

  # Assign crypt words and relative range positions to each word in the message.
  #A
  if (( $NUM < $A )) ; then
    CRYPT="acrid"
    RELNUM="$(expr $A - $NUM)"
  fi
  #B
  if ( (( $NUM >= $A )) && (( $NUM < $B )) ) ; then
    CRYPT="boa"
    RELNUM="$(expr $B - $NUM)"
  fi
  #C
  if ( (( $NUM >= $B )) && (( $NUM < $C )) ) ; then
    CRYPT="conflagrate"
    RELNUM="$(expr $C - $NUM)"
  fi
  #D
  if ( (( $NUM >= $C )) && (( $NUM < $D )) ) ; then
    CRYPT="dagger"
    RELNUM="$(expr $D - $NUM)"
  fi
  #E
  if ( (( $NUM >= $D )) && (( $NUM < $E )) ) ; then
    CRYPT="ephemeral"
    RELNUM="$(expr $E - $NUM)"
  fi
  #F
  if ( (( $NUM >= $E )) && (( $NUM < $F )) ) ; then
    CRYPT="fear"
    RELNUM="$(expr $F - $NUM)"
  fi
  #G
  if ( (( $NUM >= $F )) && (( $NUM < $G )) ) ; then
    CRYPT="gore"
    RELNUM="$(expr $G - $NUM)"
  fi
  #H
  if ( (( $NUM >= $G )) && (( $NUM < $H )) ) ; then
    CRYPT="halberd"
    RELNUM="$(expr $H - $NUM)"
  fi
  #I
  if ( (( $NUM >= $H )) && (( $NUM < $I )) ) ; then
    CRYPT="insidious"
    RELNUM="$(expr $I - $NUM)"
  fi
  #J
  if ( (( $NUM >= $I )) && (( $NUM < $J )) ) ; then
    CRYPT="Joule"
    RELNUM="$(expr $J - $NUM)"
  fi
  #K
  if ( (( $NUM >= $J )) && (( $NUM < $K )) ) ; then
    CRYPT="Kutta"
    RELNUM="$(expr $K - $NUM)"
  fi
  #L
  if ( (( $NUM >= $K )) && (( $NUM < $L )) ) ; then
    CRYPT="Love"
    RELNUM="$(expr $L - $NUM)"
  fi
  #M
  if ( (( $NUM >= $L )) && (( $NUM < $M )) ) ; then
    CRYPT="Manticore"
    RELNUM="$(expr $M - $NUM)"
  fi
  #N
  if ( (( $NUM >= $M )) && (( $NUM < $N )) ) ; then
    CRYPT="nojja"
    RELNUM="$(expr $N - $NUM)"
  fi
  #O
  if ( (( $NUM >= $N )) && (( $NUM < $O )) ) ; then
    CRYPT="Oort"
    RELNUM="$(expr $O - $NUM)"
  fi
  #P
  if ( (( $NUM >= $O )) && (( $NUM < $P )) ) ; then
    CRYPT="pious"
    RELNUM="$(expr $P - $NUM)"
  fi
  #Q
  if ( (( $NUM >= $P )) && (( $NUM < $Q )) ) ; then
    CRYPT="quality"
    RELNUM="$(expr $Q - $NUM)"
  fi
  #R
  if ( (( $NUM >= $Q )) && (( $NUM < $R )) ) ; then
    CRYPT="relax"
    RELNUM="$(expr $R - $NUM)"
  fi
  #S
  if ( (( $NUM >= $R )) && (( $NUM < $S )) ) ; then
    CRYPT="Sulfur"
    RELNUM="$(expr $S - $NUM)"
  fi
  #T
  if ( (( $NUM >= $S )) && (( $NUM < $T )) ) ; then
    CRYPT="turgor"
    RELNUM="$(expr $T - $NUM)"
  fi
  #U
  if ( (( $NUM >= $T )) && (( $NUM < $U )) ) ; then
    CRYPT="umbral"
    RELNUM="$(expr $U - $NUM)"
  fi
  #V
  if ( (( $NUM >= $U )) && (( $NUM < $V )) ) ; then
    CRYPT="Vola"
    RELNUM="$(expr $V - $NUM)"
  fi
  #W
  if ( (( $NUM > $V )) && (( $NUM < $W )) ) ; then
    CRYPT="Waals"
    RELNUM="$(expr $W - $NUM)"
  fi
  #X
  if ( (( $NUM >= $W )) && (( $NUM < $X )) ) ; then
    CRYPT="xenophobe"
    RELNUM="$(expr $X - $NUM)"
  fi
  #Y
  if ( (( $NUM >= $X )) && (( $NUM < $Y )) ) ; then
    CRYPT="Yxonomei"
    RELNUM="$(expr $Y - $NUM)"
  fi
  #Z
  if ( (( $NUM >= $Y )) && (( $NUM < $Z )) ) ; then
    CRYPT="ziggurat"
    RELNUM="$(expr $Z - $NUM)"
  fi

  # Join the crypt word and range position.
  CRYPT="$CRYPT$RELNUM "
  # Append it to the cipher.
  CIPHER+=$CRYPT
done

# Post the cipher to your twitter feed.
echo "Are you sure you want to tweet $CIPHER (y/n)?"
read response
if [ $response == "y" ] ; then
  t update "$CIPHER"
else
  echo "Aborted cipher."
fi
