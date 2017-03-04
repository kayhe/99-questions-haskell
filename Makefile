test: tests
	./tests
tests: tests.hs
	ghc tests.hs
clean: 
	find . -name \*.hi -delete
	find . -name \*.o -delete	
	find . -name \*.dyn_o -delete
	find . -name \*.dyn_hi -delete
