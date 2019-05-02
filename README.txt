# Summary

A Universal Dependencies 1020-sentence treebank for modern Irish.

# Introduction

The Irish UD Treebank is a conversion of the Irish Dependency Treebank
(IDT), which was part of a PhD research project by Teresa Lynn at Dublin City University, Ireland (Lynn, 2016). 

---- The IDT data has been released on [GitHub] (https://github.com/tlynn747/IrishDependencyTreebank). The Treebank
contains 1020 sentences taken from the New Corpus of Ireland-Irish
(NCII), with text from books, newswire, websites and other media. These sentences are a subset of a gold-standard POS-tagged corpus for Irish. ----

The conversion from the IDT annotation scheme to the UD annotation scheme was designed by Teresa Lynn and Jennifer Foster at Dublin City University, Ireland. The mapping to UD is reported in Lynn et al., (2016)

The UD Treebank is split into two sets as follows:

* 454 trees (test)
* 566 trees (train)

Note: the split was formerly 150- test, 150-dev, 720-train, but have split as above for the 2017 CoNLL shared task on dependency parsing.

# Acknowledgments

We wish to thank all of the contributors to the original IDT annotation, including Elaine Uí Dhonnchadha for her gold POS-tagged corpus and linguistic advice. We would also like to acknowledge linguistic advice offered by Kevin Scannell in the conversion to UD effort.

Expansion of the IUDT from 2019-2021 is funded by the Irish Government Department of Culture, Heritage and the Gaeltacht.

This research is partially supported by Science Foundation Ireland through the ADAPT Centre for Digital Content Technology. The ADAPT Centre for Digital Content Technology is funded under the SFI Research Centres Programme (Grant 13/RC/2106)
and is co-funded under the European Regional Development Fund.


# Statistics

Trees: 1020
Token count: 23686
Dependency Relations: 36 of which 10 language specific
POS tags: 17


# Tokenisation

The tokenisation of the Irish data is the output of a Xerox Finite State tokenizer implemented by Uí Dhonnchadha (2002)

Note:
 - compound prepositions were previously connected as one token with '_'. Example: in aghaidh 'against' => in\_aghaidh
Now treated as multi-word units (fixed)

Other multi-word units are Proper Noun Strings (flat) and some fixed expressions like "cés moite" (apart from). MWE research is being carried out by Abigail Walsh (ADAPT Centre, DCU) as part of her PhD.



# Syntax

The Irish UD treebank uses 26 of the UD dependency labels. A further 10 language specific labels were introduced to deal with certain linguistic phenomena in Irish:

- acl:relcl for relative clauses
- case:voc for vocative particles
- compound:prt for verb particle heads
- csubj:cleft for cleft subjects
- csubj:cop for copular clausal subject
- flat:name for proper noun (personal) names
- mark:prt for (most) particles
- nmod:poss for possessive pronouns
- obl:prep for pronominal prepositions
- obl:tmod for nominal temporal modifiers
- xcomp:pred for predicates of the substantive verb "to be"



# References

Christian Brothers, 1988. New Irish Grammar, Dublin: C J Fallon

Lynn, Teresa , Ozlem Cetinoglu, Jennifer Foster, Elaine Uí Dhonnchadha, Mark Dras and Josef van Genabith, [Irish Treebanking and Parsing: A Preliminary Evaluation] (http://www.lrec-conf.org/proceedings/lrec2012/pdf/378_Paper.pdf), LREC 2012, Istanbul, May 2012

Lynn, Teresa, Jennifer Foster, Mark Dras and Elaine Uí Dhonnchadha, [Active Learning and the Irish Treebank] (http://www.alta.asn.au/events/alta2012/proceedings/pdf/U12-1005.pdf), ALTA 2012, Dunedin, NZ, December 2012

Lynn, Teresa, Jennifer Foster, Mark Dras and Josef van Genabith, [Working with a small dataset — semi-supervised dependency parsing for Irish] (http://www.nclt.dcu.ie/~tlynn/spmrl.pdf), SPMRL 2013, Seattle, USA, October 2013

Lynn, Teresa, Jennifer Foster, Mark Dras and Lamia Tounsi, [Cross-lingual Transfer Parsing for Low-Resourced Languages: An Irish Case Study] (http://www.nclt.dcu.ie/~tlynn/CLTW.pdf) CLTW 2014, Dublin, Ireland, August 2014

Teresa Lynn, [Irish Dependency Treebanking and Parsing] (http://www.nclt.dcu.ie/~tlynn/Teresa_PhDThesis_final.pdf), PhD Thesis, Dublin City University, Ireland and Macquarie University, Sydney, Australia, 2016

Lynn, Teresa and Jennifer Foster, [Universal Dependencies for Irish] (http://www.nclt.dcu.ie/~tlynn/Lynn_CLTW2016.pdf), CLTW 2016, Paris, France, July 2016

Stenson, N, 1981. Studies in Irish Syntax, Tübingen: Gunter Narr Verlag.

The Christian Brothers, New Irish Grammar, Dublin, Ireland: C.J. Fallon, March 1994

Uí Dhonnchadha, E. 2002. An Analyser and Generator for Irish Inflectional Morphology using Finite State Transducers, School of Computing, Dublin City University: Unpublished MSc Thesis.

Uí Dhonnchadha, E. 2009. Part-of-Speech Tagging and Partial Parsing for Irish using Finite-State Transducers and Constraint Grammar (PhD thesis)





# Changelog

15-05-2015 (v1.1)

* Changed POS tag for "féin" to PRON instead of NOUN
* Fixed the labelling and attachment of English (foreign) text strings
* Changed the labels for subjects of cleft constructions from 'nsubj' to 'csubj:cleft'


30-10-2015 (v1.2)

* Added morphological features to all relevant tokens

31-10-2015 (v1.2)

* Added fine-grained POS tags to 5th column


15-02-2017 (v2.0)

* Converted treebank to v2
* Added # sent_id and #text line
* Changed the data split (test=470, dev=450, train=100)

15-04-2018 (v2.2)

* Repository renamed from UD_Irish to UD_Irish-IDT
* data split now just test(454) and train(566) set.


01-11-2018 (v2.2)

* No changes/updates to Irish data


30-04-2019 (v2.4)

* Labelled more MWEs (fixed)
* Cleaned up bugs from v2 conversion (caught by new validator script)




# Metadata

=== Machine-readable metadata (DO NOT REMOVE!) ================================
Includes text: yes
Lemmas: converted with corrections
UPOS: converted with corrections
XPOS: automatic with corrections
Features: converted with corrections
Relations: converted with corrections
Data available since: UD v1.0
License: CC BY-SA 3.0
Genre: news fiction web legal
Contributors: Lynn, Teresa; Foster, Jennifer; Sarah McGuinness, Abigail Walsh
Contributing: elsewhere
Contact: teresa.lynn@adaptcentre.ie; jennifer.foster@dcu.ie
===============================================================================
