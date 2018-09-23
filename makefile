README.md:
	touch README.md
	echo "The Unix Workbench: Bash, Make, Git and Github" > README.md
	date >> README.md
	readlink -f guessinggame.sh | grep -c -v ^$$ guessinggame.sh  >> README.md
