# PROMPT_DIRTRIM For Fish Shell
A fish shell function that acts like the PROMPT_DIRTRIM variable of bash.

You can also edit the replacement text by declaring a `prompt_dirtrim_text` universal variable.

### Installation

Run the install.sh script, it will copy the function into `~/.config/fish/functions/` and open your `config.fish` for you.

Usage example,

```config.fish
function fish_prompt
	set -U prompt_dirtrim_text '-'
	set -l prompt_pwd (prompt_dirtrim 2)

	set -l prompt_symbol '$'
	fish_is_root_user; and set prompt_symbol '#'
	set -l sep ' '

	echo -s $prompt_pwd $sep $prompt_symbol $sep
end
```

The snippet above will assign the retained 2 trailing directory components into a `prompt_pwd` local variable.

It will also replace the hidden text with '-'.

Without prompt_dirtrim:
```
~/foo/bar/baz $ 
```

With prompt_dirtrim:
```
-/bar/baz $ 
```

### Suggestions and Bug Reports
Feel free to open issues for suggestions and bug reports!
