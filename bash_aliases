
# Changing directories
alias cd..="cd .."
alias ..="cd .."
alias up="cd .."
alias up2="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."


# Typing shortcuts for repos
alias cdp='cd ~/PROJ/'


# Extract info from git command line
git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'	
}

git_branch_paren() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


# Typing shortcuts for git command line
alias gs='git status'
alias gb='git branch'
alias gf='git fetch'

alias gc='git checkout'
alias gcb='git checkout -b'
alias gpb='git pull origin $(git_branch)'

alias gcm='git checkout main'
alias gpom='git pull origin main' 

alias ga='git add'
alias gad='get add .'
alias gd='git diff'
alias gcm='git commit -m'

alias gmom='git merge origin main'
alias gpob='git push origin $(git_branch)'

# Undo the last git add (because I added the wrong file).
alias grr='git reset'

# Undo the last git commit (because I just derped these aliases too fast). 
alias grsh='git reset --soft HEAD~1'

# I can't remember all these.  What are all the git aliases?
alias agg='alias | grep git'


# Bash shell prompt with color
# export PS1='\[\033[0;35m\]\h \[\033[0;33m\]\w\[\033[00m\]\[\033[01;00m\]$(git_branch_paren):'
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h:\[\033[01;34m\]\w\[\033[33m\]\$(git_branch_paren)\[\033[00m\]$ "
