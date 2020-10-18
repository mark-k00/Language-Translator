#!/bin/sh
echo GOT SHORTEST LINE
sort wc -L "$SRCLANG"-"$TRGLANG".csv > LongestLinefile
#head randomfile

cut -f 1 LongestLinefile > Linesourcelanguage
cut -f 2 LongestLinefile > Linetargetlanguage

#cut -f 1 "$SRCLANG"-"$TRGLANG".csv > sourcelanguage
# make sourcelanguage only shortest sentences here 

# seperate into different sets here
