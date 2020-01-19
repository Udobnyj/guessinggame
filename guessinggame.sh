#!/bin/bash

# This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number

function guessinggame {
	
	# use -p for adding / to directories, and then count only files and hidden files
	local current_files_number=$(ls -ap | grep -v / |  wc -l)

	echo "Hello. Please answer how many files are in the current directory?"

	local is_correct_answer=1

	while [[ $is_correct_answer -eq 1 ]]
	do
		read files_number

		# Check if it number
		if [[ $files_number =~ ^[0-9]+$ ]]
		then
			if [[ $files_number -gt $current_files_number ]]
			then
				echo "Sorry, it's number is too high. Please try again"
			elif [[ $files_number -lt $current_files_number ]]
			then
				echo "Sorry, it's number is too low. Please try again"
			else
				echo "Wow! You are right. The current files number is $files_number"
				is_correct_answer=0
			fi
		else
			echo "Sorry, the answer should be an integer number. Please try again"
		fi
	done
}

guessinggame
