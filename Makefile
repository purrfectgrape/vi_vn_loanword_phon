test: fr-vi.fomabin fr-pron.txt
	@echo "Test fst against gold corpus"
	@cat fr-pron.txt | flookup -i -w "" fr-vi.fomabin | diff -y fr-vi-gold.tsv -

test-pairs: pairs
	@echo "PAIRS WITH NEW PRONS"
	@comm -23 pairs gold | uniq > pairs-new-prons.txt
	@comm -23 pairs gold | uniq | wc -l
	@echo "PAIRS NOT DONE"
	@comm -13 pairs gold | uniq > pairs-not-done.txt
	@comm -13 pairs gold | uniq | wc -l
	@echo "PAIRS DONE"
	@comm -12 pairs gold | uniq > pairs-done.txt
	@comm -12 pairs gold | uniq | wc -l

pairs: fr-vi.fomabin fr-pron.txt
	@echo "create pairs"
	@cat fr-pron.txt | flookup -i -w "" fr-vi.fomabin | sort | uniq > pairs
	@cat fr-vi-gold.tsv | sort | uniq > gold

fr-vi.fomabin: fr-vi.foma
	@foma -l fr-vi.foma -e "save stack fr-vi.fomabin" -s

fr-pron.txt: fr-vi-gold.tsv
	@cut -f1 fr-vi-gold.tsv | sort | uniq > fr-pron.txt

clean:
	rm -f *.fomabin fr-pron.txt gold pairs pairs-new-pron.txt pairs-not-done.txt pairs-done.txt

.PHONY: clean

