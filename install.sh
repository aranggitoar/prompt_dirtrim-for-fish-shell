# PROMPT_DIRTRIM for Fish Shell
# A fish shell function that acts like the PROMPT_DIRTRIM variable of bash.
# Copyright (C)	2021-present	Aranggi Toar
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# Full notice: https://github.com/aranggitoar/prompt_dirtrim-for-fish-shell/blob/main/LICENSE
# Or ./LICENSE in the original source tree.

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
