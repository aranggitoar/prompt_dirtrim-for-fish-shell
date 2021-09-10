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

function prompt_dirtrim -d "Trim the prompt_pwd length into the specified count"

	set -l pwd_length (math (prompt_pwd | string split / | count) - 1)
	set -l trim_length $argv
	set -l replacement_str '...'

	if test -n "$prompt_dirtrim_text"
		set replacement_str $prompt_dirtrim_text
	end

	if test $pwd_length -gt $trim_length
		set -l trim_count (math $pwd_length - $trim_length)
		echo (string replace -r '/(.[^/]+/){'"$trim_count"'}' \
		''"$replacement_str"'/' (prompt_pwd))
	else if [ $pwd_length -lt $trim_length ]
		echo (prompt_pwd)
	end

end
