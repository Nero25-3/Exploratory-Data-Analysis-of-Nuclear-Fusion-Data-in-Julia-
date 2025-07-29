.PHONY: generate test clean

generate:
	mkdir -p data
	env -i HOME=$(HOME) PATH=$(PATH) TERM=$(TERM) julia --startup-file=no --project=. src/generate_data.jl

test:
	env -i HOME=$(HOME) PATH=$(PATH) TERM=$(TERM) julia --startup-file=no --project=. test/runtests.jl

clean:
	rm -f data/synthetic_fusion_data.csv
	rm -f test/test_data.csv
