#!/bin/sh


#shuf -o shuffledfile "$SRCLANG"-"$TRGLANG".csv
#head shuffledfile
sort -R "$SRCLANG"-"$TRGLANG".csv > randomfile
#head randomfile

cut -f 1 randomfile > sourcelanguage
cut -f 2 randomfile > targetlanguage

#get test set of source and target using head
head sourcelanguage > testsourcelanguage
head targetlanguage > testtargetlanguage
#get validation set of source and target using tail
tail sourcelanguage > validationsourcelanguage
tail targetlanguage > validationtargetlanguage

#get train set
#totalnumblines=$(wc -l sourcelanguage)           	#get total number of lines in whole set 
#echo $totalnumblines
#get train set of source language
head -n 99990 sourcelanguage > trainheadsource		#take the head of the set (excluding the tail - default number being 10)
tail -n 99980 trainheadsource > trainsourcelanguage												#take the tail of this new set excluding the head of it - this will give train set
#get train set of target language
head -n 99990 targetlanguage > trainheadtarget
tail -n 99980 trainheadtarget > traintargetlanguage

testSRCLANGWord=$(wc -w testsourcelanguage)
testTRGLANGWord=$(wc -w testtargetlanguage)
validSRCLANGWord=$(wc -w validationsourcelanguage)
validTRGLANGWord=$(wc -w validationtargetlanguage)
trainSRCLANGWord=$(wc -w trainsourcelanguage)
trainTRGLANGWord=$(wc -w traintargetlanguage)
echo $testSRCLANGWord
echo $testTRGLANGWord
echo $validSRCLANGWord
echo $validTRGLANGWord
echo $trainSRCLANGWord
echo $trainTRGLANGWord

totalnumblines=$(wc -l sourcelanguage)           	#get total number of lines in whole set 
echo $totalnumblines

export testSRCLANGWord
export testTRGLANGWord
export validSRCLANGWord
export validTRGLANGWord
export trainSRCLANGWord
export trainTRGLANGWord

export totalnumblines
#cut -f 1 "$SRCLANG"-"$TRGLANG".csv > sourcelanguage
#cut -f 2 "$SRCLANG"-"$TRGLANG".csv > targetlanguage
#head sourcelanguage
