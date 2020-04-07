test: fr_vi.fomabin fr_vi_gold.tsv
	@echo "Test fst against gold corpus"
	@cut -f1 fr_vi_gold.tsv | flookup -i -w "" fr_vi.fomabin | diff --suppress-common-lines -y fr_vi_gold.tsv -

fr_vi.fomabin: fr_vi.foma
	@foma -l fr_vi.foma -e "save stack fr_vi.fomabin" -s

clean:
	rm -f *.fomabin

.PHONY: clean

