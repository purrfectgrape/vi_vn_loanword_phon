test: fr-vi.fomabin fr-vi-gold.tsv
	@echo "Test fst against gold corpus"
	@cut -f1 fr-vi-gold.tsv | sort | uniq | flookup -i -w "" fr-vi.fomabin | diff --suppress-common-lines -y fr-vi-gold.tsv -

fr-vi.fomabin: fr-vi.foma
	@foma -l fr-vi.foma -e "save stack fr-vi.fomabin" -s

clean:
	rm -f *.fomabin

.PHONY: clean

