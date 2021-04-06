# add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Autocorrect typos in path names when using `cd`
shopt -s cdspell;


# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;


# add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Slack" killall;


#      ___   ___   ______   __   __   ________  ___   __      
#     /___/\/__/\ /_____/\ /_/\ /_/\ /_______/\/__/\ /__/\    
#     \::.\ \\ \ \\::::_\/_\:\ \\ \ \\__.::._\/\::\_\\  \ \   
#      \:: \/_) \ \\:\/___/\\:\ \\ \ \  \::\ \  \:. `-\  \ \  
#       \:. __  ( ( \::___\/_\:\_/.:\ \ _\::\ \__\:. _    \ \ 
#        \: \ )  \ \ \:\____/\\ ..::/ //__\::\__/\\. \`-\  \ \
#         \__\/\__\/  \_____\/ \___/_( \________\/ \__\/ \__\/
#
 
# git branch in prompt.
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h:\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "

# colors in ls
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


# eval "$(rbenv init -)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

