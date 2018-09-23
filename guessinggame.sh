#!/usr/bin/env bash
# File: guessinggame.sh

function count_in_dir(){

	all_files=()

	for file in *;
	do
		all_files+=("$file")
	done

	echo ${#all_files[*]}	
}

result=$(count_in_dir)

answer=false

while [[ $answer == false ]]; do

	echo "How many files are in the current directory?"
	echo "Make a guess: "
	read response

	if [[ $response == $result ]]; then
		answer=true
		echo "Congrats, you nailed it!"

	elif [[ $response -gt $result ]]; then
		echo "Incorrect guess, there are less files. Try again!"

	elif [[  $response -lt $result ]]; then
		echo "Incorrect guess, there are more files. Try again!"

	else
		echo "Sorry, wrong answer. Try again!"
		
	fi
done