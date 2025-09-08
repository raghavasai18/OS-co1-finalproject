#!/usr/bin/env bash
# guessinggame.sh

# Function to count files in the current directory
function file_count {
    echo $(ls -1 | wc -l)
}

# Store the correct number of files
correct=$(file_count)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Loop until user guesses correctly
while true
do
    read -p "Enter your guess: " guess

    if [[ $guess -eq $correct ]]
    then
        echo "🎉 Congratulations! You guessed correctly."
        break
    elif [[ $guess -lt $correct ]]
    then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
