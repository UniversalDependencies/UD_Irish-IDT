#!/bin/bash

udapy -h >/dev/null || { echo "udapy is not installed, see https://github.com/udapi/udapi-python"; exit 1; }

SCENARIO="ud.SplitUnderscoreTokens default_deprel=fixed ud.SetSpaceAfterFromText ud.Convert1to2 skip=nmod"
IN=ga-ud-all_convert-textline.conllu
cat $IN | sed '17183s/Loch_Garman\tLoch/Loch_Garman\tLoch_Garman/'| udapy -s $SCENARIO util.Eval node='del node.misc["ManualCheck"]' > ga-ud-all.conllu

cat ga-ud-all.conllu | udapy -HAMC ud.MarkBugs skip='no-(VerbForm|PronType|NumType)' > bugs.html

# test/dev/train split
csplit ga-ud-all.conllu '/sent_id = 455/' '/sent_id = 900/'
mv xx00 ../ga-ud-test.conllu
mv xx01 ../ga-ud-dev.conllu
mv xx02 ../ga-ud-train.conllu
