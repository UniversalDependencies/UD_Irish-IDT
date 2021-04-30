# Summary

A Universal Dependencies 4910-sentence treebank for modern Irish.

# Introduction

The Irish UD Treebank (IUDT) is a conversion of the Irish Dependency Treebank
(IDT), which was part of a PhD research project by Teresa Lynn at Dublin City University, Ireland (Lynn, 2016).

---- The (smaller) IDT dataset has also been released on [GitHub]
(https://github.com/tlynn747/IrishDependencyTreebank). ----

The Treebank contains 4910 sentences.

The first 2924 of which were taken from the New Corpus of Ireland-Irish (NCII), with text from books, newswire, websites and other media. These sentences are a subset of a gold-standard POS-tagged corpus for Irish made available by Elaine Uí Dhonnchadha of Trinity College Dublin. ----

The subsequent 1986 sentences were taken from a corpus of Irish public administration translations and are available under the Open Data (PSI) directive for sharing of pubic data:
Citizens information website: (20%)
Dublin City Council (DCC): (25%)
DEpartment of Culture, Heritage and the Gaeltacht (DCHG):(9%)
Udaras na Gaeltachta: (25%)
EUbookshop: (21%)



The conversion from the IDT annotation scheme to the UD annotation scheme for the first release (1020 IDT trees) was designed by Teresa Lynn and Jennifer Foster at Dublin City University, Ireland. The mapping to UD is reported in Lynn et al., (2016) Conversion of sentences 1-1020 was automatic, with manual review. Subsequent updates or changes have been a combination of automatic labelling and manual review.
All trees with sentence ID greater than 1021 were created through an automatic pre-parsing approach followed by manual review.

The UD Treebank is split into two sets as follows:

* 454 trees (test)
* 451 trees (dev)
* 4005 trees (train)

Note: the 451 dev trees were taken from the set of newly annotated
trees in the v2.5 release. Selection of test sentences haven't changed since v1.0
(but annotations and quality have!)


# Acknowledgements

We wish to thank all of the contributors to the original IDT annotation, including Elaine Uí Dhonnchadha for her gold POS-tagged corpus and linguistic advice. We would also like to acknowledge linguistic advice offered by Kevin Scannell in the conversion to UD effort.

Expansion of the IUDT from 2019-2021 is funded by the Irish Government
Department of Culture, Heritage and the Gaeltacht under the GaelTech project.

This research is partially supported by Science Foundation Ireland through the ADAPT Centre for Digital Content Technology. The ADAPT Centre for Digital Content Technology is funded under the SFI Research Centres Programme (Grant 13/RC/2106)
and is co-funded under the European Regional Development Fund.


# Statistics

Trees: 4910
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

# Morphological Features
Word of caution for anyone including morphological features in training parsing models:
There are a number of issues relating to morphological features. Many were missing in the v2.6 release (e.g. Case=NomAcc) and the v2.7 expansion set (sentence 2925 onwards) were automatically predicted. Not all of these have yet been fully manually reviewed. This is expected to be completed for release v2.8.


# References

Christian Brothers, 1988. New Irish Grammar, Dublin: C J Fallon

Lynn, Teresa , Ozlem Cetinoglu, Jennifer Foster, Elaine Uí Dhonnchadha, Mark Dras and Josef van Genabith, [Irish Treebanking and Parsing: A Preliminary Evaluation] (http://www.lrec-conf.org/proceedings/lrec2012/pdf/378_Paper.pdf), LREC 2012, Istanbul, May 2012

Lynn, Teresa, Jennifer Foster, Mark Dras and Elaine Uí Dhonnchadha, [Active Learning and the Irish Treebank] (http://www.alta.asn.au/events/alta2012/proceedings/pdf/U12-1005.pdf), ALTA 2012, Dunedin, NZ, December 2012

Lynn, Teresa, Jennifer Foster, Mark Dras and Josef van Genabith, [Working with a small dataset — semi-supervised dependency parsing for Irish] (http://www.nclt.dcu.ie/~tlynn/spmrl.pdf), SPMRL 2013, Seattle, USA, October 2013

Lynn, Teresa, Jennifer Foster, Mark Dras and Lamia Tounsi, [Cross-lingual Transfer Parsing for Low-Resourced Languages: An Irish Case Study] (http://www.nclt.dcu.ie/~tlynn/CLTW.pdf) CLTW 2014, Dublin, Ireland, August 2014

Teresa Lynn, [Irish Dependency Treebanking and Parsing] (http://www.nclt.dcu.ie/~tlynn/Teresa_PhDThesis_final.pdf), PhD Thesis, Dublin City University, Ireland and Macquarie University, Sydney, Australia, 2016

Lynn, Teresa and Jennifer Foster, [Universal Dependencies for Irish] (http://www.nclt.dcu.ie/~tlynn/Lynn_CLTW2016.pdf), CLTW 2016, Paris, France, July 2016

McGuinness, Sarah, Jason Phelan, Abigail Walsh and Teresa Lynn, Annotating MWEs in the Irish UD Treebank, In Proceedings of the Fourth Universal Dependencies Workshop, COLING 2020, Barcelona, Spain (to appear)

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

cleanup of v2.5 trees (sentences 1-1763)

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
* Introduction of discourse and orphan label

29-04-2020  (v2.6)

* Addition of 1161 trees. Annotation involved pre-parsing followed by manual review. IAA among annotators is kappa (Cohen) of 0.9



30-10-2020  (v2.7)

* Addition of 1986 trees. 
* This data was taken from a new domain (public administration) to provide a broader coverage of the language in terms of words and structure types. 
* Annotations were automatically predicted based on parsing models trained on v2.6. Manual review then carried out on tokenisation, lemmas, POS tags, attachments and dep values  (same annotators as v2.6 release).


29-04-2021  (v2.8)


Summary of changes:


Notable changes in annotation choices

* Use of `flat` restricted to strings _without_ clear internal syntax
* Named Entity information added to MISC column as NamedEntity=Yes in Proper Noun strings formerly labelled as `flat`
* Nouns in compound prepositions were previously tagged as ADP - now NOUN. Both tokens have the features `PrepForm=Cmpd`
* Lemma of DET "na' changed to "an"
* Review of "go leor" - where instances that are nominal are no longer labelled as `advmod` but play the headnoun role. Subsequent nominals (e.g. go leor daoine) are to be attached as `nmod`
* Some instances of ó retagged as SCONJ instead of ADP (e.g. ó scriobhadh an leirmheas sentid = 667, ó foilsíodh é sentid = 769)
* Features of imperfect verbs changed from Mood=Imp to Aspect=Imp
* Added features for habitual present verb forms (Aspect=Hab|Tense=Pres) e.g. bíonn
* a thuilleadh and a lán -no longer `fixed`
* Split gender features (Gender=Fem,Masc) in cases where the word form represents both e.g. a c(h)ara, a (d)t(h)uismitheoirí
* Distinguished between Direct and Indirect relative pronouns
* Feature Person=0 for autonomous verbs, i.e. briathar saor (removing Voice=Auto)
* Feature Form=Ecl and Form=Len only applicable when mutation is explicit (ie not words beginning with l, r, and n, even though previous word usually triggers mutation)
* Removed dialect XPOS (CU, CM, CC) - replaced with appropriate XPOS and kept dialect info in features
* déag labelled as `nmod` now instead of `compound` as it can be split (e.g. cuig mhí déag)



Removing inconsistencies:

* Morphological features reviewed (previously predicted and inconsistent)
* Compound Preposition features coverage extended to cover this list https://universaldependencies.org/ga/feat/PrepForm.html
* Ensured all PPs attached to verbal nouns as `obl`
* Cleanup of direct speech attachments (`parataxis`)
* `advmod` used for negative particles (ní fhaca, níor dhuisigh etc)
* taobh amuigh/istigh = NOUN + ADJ, attached as `obl`
* Nationalities tagged as PROPN
* Months and Days of the week are all PROPN
* Application of case features: based only on surface form (not syntactic role). Therefore not all nouns in PP are marked dative and some genitive instances are nominative in form e.g. "mairtírigh eile _Sheachtain_ na Cásca"
* Lemma of certain prefixed words to retain prefix (e.g. neamh/chomh/leath : i.e. neamhfhicsean" as the lemma of "neamhfhicsin") 
* Full review of use of NounType=Slender/NotSlender  and NounType=Weak/Strong
* Consistency check for the use of Polarity=Neg on verbs
* Cleanup of case features in NOUNs ADJ and DET
* Cleanup of gender features in NOUNs
* Cleanup of definite features in NOUNS
* 13 sentences in v2.7 were missing morphological info - updated for v2.8
* Mutations removed from some predicted lemmas
* Review of POS-tags for Dar+le -- VERB+ADP, and deprel attachment as ccomp in some cases and parataxis in others
* Cleanup of missing vocative case features on some NOUNs
* (part-) Review of acl underuse






# Metadata

=== Machine-readable metadata (DO NOT REMOVE!) ================================
Includes text: yes
Lemmas: converted with corrections
UPOS: converted with corrections
XPOS: automatic with corrections
Features: automatic with corrections
Relations: automatic with corrections
Data available since: UD v1.0
License: CC BY-SA 3.0
Genre: news fiction web legal government
Contributors: Lynn, Teresa; Foster, Jennifer; McGuinness, Sarah; Walsh, Abigail; Phelan, Jason; Scannell, Kevin
Contributing: elsewhere
Contact: teresa.lynn@adaptcentre.ie; jennifer.foster@dcu.ie
===============================================================================
