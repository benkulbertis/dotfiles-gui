alias iptables-save='sudo sh -c "iptables-save > /etc/iptables.rules"'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias c="clear"
alias top="htop"
alias ls='ls -F --col'
alias ll='ls -l'
alias s='cd ..'
alias packup='/bin/tar -czvf'
alias diskspace='df -k'
alias largest='find . -type f -print0 | xargs -0 du -s | sort -n | tail -10 | cut -f2 | xargs -I{} du -sh {}'
alias unpack='/bin/tar -xzvpf'
alias contents='/bin/tar -tzf'
# make a temp dir, then immediately cd into it
alias mktd='tdir=`mktemp -d` && cd $tdir'
alias proc='ps aux | grep'
alias icanhazip='curl icanhazip.com --silent'

alias fix-apt-gpg='sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys'

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar e $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
