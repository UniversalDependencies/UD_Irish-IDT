#!/bin/bash

udapy -h >/dev/null || { echo "udapy is not installed, see https://github.com/udapi/udapi-python"; exit 1; }

SCENARIO="ud.ga.AdHoc ud.SplitUnderscoreTokens default_deprel=fixed ud.SetSpaceAfterFromText"
IN=ga-ud-all_convert-textline.conllu
cat $IN | udapy -s $SCENARIO > ga-ud-all.conllu

cat ga-ud-all.conllu | udapy -HAMC ud.MarkBugs skip='no-(VerbForm|PronType|NumType)' > bugs.html

# test/dev/train split
csplit ga-ud-all.conllu '/sent_id = 171/' '/sent_id = 621/'
mv xx00 ../ga-ud-test.conllu
mv xx01 ../ga-ud-dev.conllu
mv xx02 ../ga-ud-train.conllu
