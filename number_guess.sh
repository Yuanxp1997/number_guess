#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"

echo "Enter your username:"
read USERNAME

START_GAME() {
  NUM_GAMES=$($PSQL "SELECT games FROM users WHERE username = '$1' ")
  NEW_NUM_OF_GAMES=$((NUM_GAMES +1))
  BEST_GAME=$($PSQL "SELECT best FROM users WHERE username = '$1' ")
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  RAND=$((1 + RANDOM % 1000))
  NUM_GUESS=1
  while [[ $GUESS != $RAND ]]; do
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
    fi
    if (( GUESS > RAND )); then
      echo -e "\nIt's lower than that, guess again:"
    else
      echo -e "\nIt's higher than that, guess again:"
    fi
    read GUESS
    NUM_GUESS=$(( NUM_GUESS + 1 ))
  done
  if [[ ! $BEST_GAME =~ ^[0-9]+$ ]] || (( NUM_GUESS < BEST_GAME )); then
    UPDATE_BEST_RESULT=$($PSQL "UPDATE users SET best = $NUM_GUESS, games = $NEW_NUM_OF_GAMES WHERE username = '$1' ")
    if [[ $UPDATE_BEST_RESULT != 'UPDATE 1' ]]; then
      echo "error updating best game"
    fi
  else
    UPDATE_GAMES_RESULT=$($PSQL "UPDATE users SET games = $NEW_NUM_OF_GAMES WHERE username = '$1' ")
    if [[ $UPDATE_GAMES_RESULT != 'UPDATE 1' ]]; then
      echo "error updating number of game"
    fi
  fi
  echo "You guessed it in $NUM_GUESS tries. The secret number was $RAND. Nice job!"
}

FIND_USER_RESULT=$($PSQL "SELECT * FROM users WHERE username = '$USERNAME' ")
if [[ -z $FIND_USER_RESULT ]]; then
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  if [[ $INSERT_USER_RESULT != 'INSERT 0 1' ]]; then
    echo "error inserting user into databse"
  else
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    START_GAME "$USERNAME"
  fi
else
  echo $FIND_USER_RESULT | while read USERNAME BAR GAMES BAR BEST
  do
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST guesses."
  done
  START_GAME "$USERNAME"
fi
