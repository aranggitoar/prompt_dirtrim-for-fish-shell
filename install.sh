#!/bin/bash

read -p "This script will copy the prompt_dirtrim function for fish shell and open your config.fish for you. Ready? (y/n) " CONFIRMATION

if [ "$CONFIRMATION" == "y" ]; then
	echo "Copying function into ~/.config/fish/functions/ .."
	cp ./prompt_dirtrim.fish ~/.config/fish/functions/
	echo "Done copying."

	echo "Opening your config.fish for you with" $EDITOR".."
	$EDITOR ~/.config/fish/
elif [ "$CONFIRMATION" == "n" ]; then
	echo "Run this script again when ready."
else
	echo "Please type specifically \"y\" or \"n\" in lowercase, this script is far from smart."
fi
