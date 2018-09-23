README.md:
	touch README.md
	echo "The Unix Workbench: Bash, Make, Git and Github" > README.md
	echo " " >> README.md
	date >> README.md
	echo " " >> README.md
	echo readlink -f guessinggame.sh | grep -c -v ^$$ guessinggame.sh  >> README.md
