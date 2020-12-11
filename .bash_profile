# add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;


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



