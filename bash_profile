# .bash_profile

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
export PATH


# git-prompt
source ~/dotfiles/git-prompt.sh
# 下記の$(__git_ps1 " (\[\e[36m\e[40m\]%s\[\e[0m\])") の部分がブランチが入る部分
export PS1='[\u@\h \W$(__git_ps1 " (\[\e[36m\e[40m\]%s\[\e[0m\])")]\$ '

alias la='ls -al'
alias ll='ls -al'
alias less='less -R'
alias grep='grep --color=auto'

# nolsという変数に false をセットするとlsしない
# export nols=false
cd() {
  builtin cd "$@" && [ "$nols" != "false" ] && ls
}

backup() {
  dir=$(dirname $1)
  file=$(basename $1)

  if [ -d $1 ]; then
    cp -r ${dir}/${file} ${dir}/${file}_$(date +"%Y%m%d%H%I%S")
  elif [ -f $1 ]; then
    cp ${dir}/${file} ${dir}/${file}_$(date +"%Y%m%d%H%I%S")
  fi
}
