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
