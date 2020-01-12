all:
	touch README.md
	echo "# Guessinggame" >> README.md
	echo "**The README was created:**" $$(date +"%D %T")\ >> README.md
	echo "**The number of lines of code contained in guessinggame.sh** -" $$(cat guessinggame.sh | wc -l) >> README.md

clean:
	rm README.md
