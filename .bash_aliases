# Default to human readable figures
alias df='df -h'
alias du='du -h'
#
# Misc :)
# alias find=???
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias la='ls -a --color=auto'
alias ll='ls -al --color=auto'

alias tag='ctags -R *' # run ctags recursively
