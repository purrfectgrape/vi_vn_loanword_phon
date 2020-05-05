test: fr-vi.fomabin fr-pron.txt
	@echo "Test fst against gold corpus"
	@cat fr-pron.txt | flookup -i -w "" fr-vi.fomabin | diff -y fr-vi-gold.tsv -

test-pairs: pairs fr-vi-gold.tsv
	@echo "PAIRS WITH NEW PRONS"
	@comm -23 pairs fr-vi-gold.tsv
	@comm -23 pairs fr-vi-gold.tsv | wc -l
	@echo "PAIRS NOT DONE"
	@comm -13 pairs fr-vi-gold.tsv
	@comm -13 pairs fr-vi-gold.tsv | wc -l
	@echo "PAIRS COVERED"
	@comm -12 pairs fr-vi-gold.tsv
	@comm -12 pairs fr-vi-gold.tsv | wc -l

pairs: fr-vi.fomabin fr-pron.txt
	@echo "create pairs"
	@cat fr-pron.txt | flookup -i -w "" fr-vi.fomabin | sort > pairs

fr-vi.fomabin: fr-vi.foma
	@foma -l fr-vi.foma -e "save stack fr-vi.fomabin" -s

fr-pron.txt: fr-vi-gold.tsv
	@cut -f1 fr-vi-gold.tsv > fr-pron.txt

clean:
	rm -f *.fomabin fr-pron.txt

.PHONY: clean

