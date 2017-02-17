#!/bin/bash

udapy -h >/dev/null || { echo "udapy is not installed, see https://github.com/udapi/udapi-python"; exit 1; }

# wget https://raw.githubusercontent.com/UniversalDependencies/UD_Irish/842a3271d4d7fdad375504b7dac111e50a1c2c29/ga-ud-dev.conllu
# wget https://raw.githubusercontent.com/UniversalDependencies/UD_Irish/842a3271d4d7fdad375504b7dac111e50a1c2c29/ga-ud-train.conllu
# wget https://raw.githubusercontent.com/UniversalDependencies/UD_Irish/d502bb5d393cd50206823a2bc6611068c8a6067f/ga-ud-test.conllu
# wget http://ufallab.ms.mff.cuni.cz/~popel/ga/orig.txt
# cat ga-ud-{train,dev,test}.conllu > orig.conllu

SCENARIO="read.Conllu read.AddSentences files=orig.txt ud.SplitUnderscoreTokens default_deprel=fixed ud.SetSpaceAfterFromText ud.Convert1to2 ud.ga.To2"
cat orig.conllu | sed '15901s/Loch_Garman\tLoch/Loch_Garman\tLoch_Garman/'| udapy -s $SCENARIO > ga-ud-all.conllu

#cat ga-ud-all.conllu | udapy -HAMC ud.MarkBugs skip='no-(VerbForm|PronType|NumType)' > bugs.html

# test/dev/train split
csplit ga-ud-all.conllu '/sent_id = 455/' '/sent_id = 900/'
mv xx00 ../ga-ud-test.conllu
mv xx01 ../ga-ud-dev.conllu
mv xx02 ../ga-ud-train.conllu
