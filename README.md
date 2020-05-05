# vi_vn_loanword_phon
Project to model French-Vietnamese phonological adaptation with a rule-based tranducer.

fr-dicts directory contains two French dictionaries: fr-FR.txt has more than 200+ entries and fr-freedict-ipa.tsv is a smaller dict with syllabification info and stress marking.

fr-wordlist.tsv contains French words that have been borrowed into Vietnamese according to Kang, Pham, Storme (2014) paper.

loan-corpus-533-raw contains 533 loanwords still in use from Vera and Judith's paper.
"This corpus is a selection of 533 Vietnamese nouns of French origin, based on a corpus of currently 1038 words, compiled on the basis of various sources. It provides the data of our conference paper on tonal, syllabic and segmental aspects of French loanwords into Vietnamese (Scholvin & Meinschaefer, 2018). Corpora from Barker (1969), Huynh (2010) and V. K. Nguyễn (2013) were taken as a starting point. Informal interviews with Vietnamese informants helped to expand the corpus. The informants are native speakers of Vietnamese living in Germany who have learned Vietnamese in Vietnam as a first language and acquired German in their adult life as a second language. Although they do not have any knowledge of French, they are aware of the French origin of the words they mentioned. For all 533 selected nouns, it has been checked that they are still in use, drawing on native informants' judgments as well as on word frequency and use in the World Wide Web and in a Vietnamese dictionary (Bùi et al., 2003). Concerning the pronunciation of loanwords in the corpus, the phonetic transcriptions of the Vietnamese loanwords were initially generated automatically on the basis of the orthographic representation (Kirby, 2008) and then checked with reference to native informants' pronunciation. Phonetic transcriptions of the French source words are based on the standard hexagonal pronunciation as may be found in common dictionaries (Rey-Debove & Rey, 2013). We publish this corpus as we want to be transparent about our findings and share the data that we collected."

fr-vera-judith-533.tsv includes all words from "A comprehensive corpus of French loanwords into Vietnamese", after manual review, clean up of typos, wrong pronunciations. This corpus removes all pronunciations that do not conform to Hanoi phonology.

fr-vi-gold.tsv includes IPA-only pairs from "A comprehensive corpus of French loanwords into Vietnamese" paper, after reconciliation. It also includes pronunciations generated from fr-vi.foma that was deemed to be a faithful and correct adaptation.
