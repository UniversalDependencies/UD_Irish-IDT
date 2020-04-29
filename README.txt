# Summary

A Universal Dependencies 1763-sentence treebank for modern Irish.

# Introduction

The Irish UD Treebank is a conversion of the Irish Dependency Treebank
(IDT), which was part of a PhD research project by Teresa Lynn at Dublin City University, Ireland (Lynn, 2016).

---- The IDT data has been released on [GitHub] (https://github.com/tlynn747/IrishDependencyTreebank). The Treebank
contains 1020 sentences taken from the New Corpus of Ireland-Irish
(NCII), with text from books, newswire, websites and other media. These sentences are a subset of a gold-standard POS-tagged corpus for Irish. ----

The conversion from the IDT annotation scheme to the UD annotation scheme was designed by Teresa Lynn and Jennifer Foster at Dublin City University, Ireland. The mapping to UD is reported in Lynn et al., (2016)

The UD Treebank is split into two sets as follows:

* 454 trees (test)
* 451 trees (dev)
* 858 trees (train)

Note: the 451 dev trees were taken from the set of newly annotated trees. The rest of the newly annotated trees have been added to the
training set.

# Acknowledgments

We wish to thank all of the contributors to the original IDT annotation, including Elaine Uí Dhonnchadha for her gold POS-tagged corpus and linguistic advice. We would also like to acknowledge linguistic advice offered by Kevin Scannell in the conversion to UD effort.

Expansion of the IUDT from 2019-2021 is funded by the Irish Government Department of Culture, Heritage and the Gaeltacht.

This research is partially supported by Science Foundation Ireland through the ADAPT Centre for Digital Content Technology. The ADAPT Centre for Digital Content Technology is funded under the SFI Research Centres Programme (Grant 13/RC/2106)
and is co-funded under the European Regional Development Fund.


# Statistics

Trees: 1763
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

31-10-2019 (v2.5)

* reviewed MWEs such as flat, flat:name, fixed and compounds (many deps
  previously tagged as compounds are now nmod)
* Added 743 new trees
* Now including dev set
* Changes data split (test=454, dev=451, train=858) .. same test set trees
  as before


29-04-2020  (v2.6)

cleanup of v2.5 trees...

* Reviewed use of csubj:cleft vs acl:relcl 
* Reviewed the under-use of parataxis - many were mislabelled as nmod/ ccomp
* Updated morphological features for superlative adjective particle “is” 
* Fixed POS tag & features for compound relative particle dá
* Fixed instances where mí was incorrectly included as part of proper noun string for month (flat)
* Reviewed the POS and label attachment of fiú, ionas and siocair
* Labelled mar sin and mar sin féin as MWE (fixed)
* Ensured all instances of Más are treated as subordinate conjunction (despite copular features)
* Reviewed all uses of POS tag ‘X’ and replaced with appropriate tags (hangover from mapping of Guess label in PAROLE tags)
* Reviewed all abbreviation tagging
* Reviewed PP clefts - ensured the noun was the head of fronted phrase (not prep)
* Reviewed all PROPN  POS tags (some incorrectly tagged as NOUN)
* MWE labelling: ar bith, ar a laghad, seo caite, seo chugainn, go deo, cé chomh, chomh maith (le)
* MWE labelling: go minic no longer fixed
* Reviewed infinitive verb forms introduced with á or le - labelled as xcomp
* Ensure objects of verbal nouns are obj
* Ensure attachment of PP to verbal nouns in progressive aspectual phrases are labelled obl
* Cleaned up misuse of case label
* Reviewed use of “list” label for list operators (esp legal texts)
* Reviewed superlative adjective particle “IS” and auxiliary copular - some incorrect POS tagging
* Reviewed the dep label for “ach” - subordinate conjunction = mark, when it means “only” - mark:prt
* Reviewed the use of xcomp:pred  (mostly used with substantive verb, but sometimes as secondary predicate)
* Reviewed all questions (Cén, Cad, Conas, Céard, Cathain, Cá, Cár etc)
* Reviewed labelling of Seo/Sin/Sé as combined Copula/Pred 
* Reviewed all relative clauses in copular form (iad ar mhian leo…)
* Reviewed use of csubj:cop - for use in Copular phrases where subject was previously xcomp, ccomp
* Reviewed clefts that are copular phrases (Is é Micheal D. Higgins ba chionsiocair….)
* Split some merged sentences (e.g.189, 319, 973 etc)
* Introduced dislocated label
* Reviewed compounds
* Review of flat:foreign vs flat:name
* Cleaned up features of some non-relative instances of Nach  Is   AUX  Cop 
* Compound numbers - attached déag to first part of number instead of noun being quantified
* Revised analysis of pseudo clefts - Is é atá X ná Y 







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
Contributors: Lynn, Teresa; Foster, Jennifer; McGuinness, Sarah; Walsh, Abigail; Phelan, Jason
Contributing: elsewhere
Contact: teresa.lynn@adaptcentre.ie; jennifer.foster@dcu.ie
===============================================================================
