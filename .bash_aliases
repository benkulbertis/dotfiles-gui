alias update='sudo apt-get update && sudo apt-get upgrade'
alias top="htop"
alias ls='ls -F --col'
alias packup='/bin/tar -czvf'
alias diskspace='df -h'
alias largest='find . -type f -print0 | xargs -0 du -s | sort -n | tail -10 | cut -f2 | xargs -I{} du -sh {}'
alias unpack='/bin/tar -xzvpf'
alias contents='/bin/tar -tzf'
alias mktd='tdir=`mktemp -d` && cd $tdir'
alias proc='ps aux | grep'
alias icanhazip='curl icanhazip.com --silent'

# Automatically select whether to do a regular or reverse DNS lookup based on input
function ds()
{
	if [[ "$1" =~ ^([0-9]{1,3})[.]([0-9]{1,3})[.]([0-9]{1,3})[.]([0-9]{1,3})$ ]]; then
		dig -x $1 +short
	else
		dig $1 +short
	fi
}

# Extract just about any archive
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
