all: README.md

README.md:
	touch README.md
	echo "#Litle project" > README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md  
