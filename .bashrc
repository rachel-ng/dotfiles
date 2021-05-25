export VISUAL=vim
export EDITOR="$VISUAL"


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
#export LSCOLORS=ExFxCxDxBxegedabagacad

# https://github.com/seebi/dircolors-solarized/issues/10#issue-1093648
#export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

# https://github.com/seebi/dircolors-solarized/issues/10#issuecomment-381545995
# export LSCOLORS=exgxfeaeBxxehehbadacea

