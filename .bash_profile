# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

alias f='open -a Finder ./'
alias rm=trash
alias mv="mv -i"
alias cp="cp -i"
alias c="clear"

# mkdir and cd in
mkd () { mkdir -p "$1" && cd "$1"; }

# open in quick look
ql () { qlmanage -p "$*" >& /dev/null; }


xman() {
	open x-man-page://$@
}

pman() {
    man -t $@ | open -f -a "Preview"
}

# prints the path of the front Finder window. Desktop if no window open
# http://scriptingosx.com/2017/02/terminal-finder-interaction/
# https://scriptingosx.com/2017/05/configuring-bash-with-aliases-and-functions/
function pwdf () {
	osascript <<EOS
		tell application "Finder"
			if (count of Finder windows) is 0 then
				set dir to (desktop as alias)
			else
				set dir to ((target of Finder window 1) as alias)
			end if
			return POSIX path of dir
		end tell
EOS
}

alias cdf='pwdf; cd "$(pwdf)"'



alias bash-r="source ~/.bash_profile"
alias bash-e="vim ~/.bash_profile"
alias bash-c="cat ~/.bash_profile"

alias hosts="sudo vim /etc/hosts"


alias kh=". ~/Documents/kh/bin/activate"


alias ssh-hunter="ssh -t USERNAME@eniac.cs.hunter.cuny.edu 'ssh cslab2'"


alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

docs() {
    cd ~/Documents/$*
}

alias txtbks="cd ~/Documents/txtbks; open ../txtbks; ls"
alias 235="cd ~/Documents/assignments; ls"
alias 2c4s="cd ~/Documents/2\ cool\ 4\ skool/; ls"
alias cs="cd ~/Documents/2\ cool\ 4\ skool/cs335; ls"


# git
alias ginit='f(){git init && git commit -m "init" && git branch -M main && git remote add origin git@github.com:rachel-ng/"$1".git && git push -u origin main; unset -f f; }; f'

gitpush() {
    git pull
    git commit -m "$*"
    git push
}

alias push=gitpush
alias pull="git pull"
alias status="git status"

gitclone() {
  git_dir="$(basename "$1" .git)"
  git_dir_resolved=${2:-$git_dir}
  git clone "$@" && cd "$git_dir_resolved";
}

alias clone=gitclone


#      ___   ___   ______   __   __   ________  ___   __      
#     /___/\/__/\ /_____/\ /_/\ /_/\ /_______/\/__/\ /__/\    
#     \::.\ \\ \ \\::::_\/_\:\ \\ \ \\__.::._\/\::\_\\  \ \   
#      \:: \/_) \ \\:\/___/\\:\ \\ \ \  \::\ \  \:. `-\  \ \  
#       \:. __  ( ( \::___\/_\:\_/.:\ \ _\::\ \__\:. _    \ \ 
#        \: \ )  \ \ \:\____/\\ ..::/ //__\::\__/\\. \`-\  \ \
#         \__\/\__\/  \_____\/ \___/_( \________\/ \__\/ \__\/
#
 
# Git branch in prompt.
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h:\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "

# Colors in ls
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#Ignore zsh warning 
export BASH_SILENCE_DEPRECATION_WARNING=1


