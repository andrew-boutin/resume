# So we can see what commands get ran from the command line output.
SHELL = sh -xv

default: run

.PHONY: run
run:
	docker build -t latexresumebuilder .
	docker run --rm -v $(PWD):/resume latexresumebuilder
