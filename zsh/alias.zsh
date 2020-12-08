# Global alias definition

export LSCOLORS=gxfxcxdxbxegedabagacad
case ${OSTYPE} in
    darwin*)  colorflag='-G' ;;
    linux*)   colorflag='--color=auto' ;;
esac
alias lst="ls -ltr ${colorflag}"
alias ls="ls ${colorflag}"
alias la="ls -la ${colorflag}"
alias ll="ls -l ${colorflag}"

alias dki="docker run -it --rm"
alias dekx="docker exec -it"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias em='emacs .'


### k8s
alias _fzfk8salias="fzf --height 25 --header-lines=1 --reverse --multi --cycle"
alias -g P='$(kubectl get pods | _fzfk8salias | awk "{print \$1}")'
alias -g RS='$(kubectl get rs   | _fzfk8salias | awk "{print \$1}")'
alias -g DEP='$(kubectl get deploy  | _fzfk8salias | awk "{print \$1}")'
alias -g J='$(kubectl get job  | _fzfk8salias | awk "{print \$1}")'
alias -g CJ='$(kubectl get cj  | _fzfk8salias | awk "{print \$1}")'
alias -g DEP='$(kubectl get deploy  | _fzfk8salias | awk "{print \$1}")'
alias -g SVC='$(kubectl get svc  | _fzfk8salias | awk "{print \$1}")'
alias -g CM='$(kubectl get cm  | _fzfk8salias | awk "{print \$1}")'
alias -g SEC='$(kubectl get secret  | _fzfk8salias | awk "{print \$1}")'
alias -g NP='$(kubectl get networkpolicies  | _fzfk8salias | awk "{print \$1}")'
###
