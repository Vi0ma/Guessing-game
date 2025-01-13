README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "## Date of make run:" >> README.md
	@date >> README.md
	@echo "" >> README.md
	@echo "## Number of lines in guessinggame.sh:" >> README.md
	@wc -l < guessinggame.sh >> README.md
