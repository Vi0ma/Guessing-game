#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    echo $(ls -1 | wc -l)
}

# Main game loop
guessing_game() {
    local correct_guess=$(get_file_count)
    local user_guess=0

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    # Loop until the user guesses correctly
    while true; do
        read -p "Enter your guess: " user_guess

        if [[ ! "$user_guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi

        if [[ "$user_guess" -lt "$correct_guess" ]]; then
            echo "Your guess is too low."
        elif [[ "$user_guess" -gt "$correct_guess" ]]; then
            echo "Your guess is too high."
        else
            echo "Congratulations! You guessed the correct number of files: $correct_guess."
            break
        fi
    done
}

# Call the game function
guessing_game
