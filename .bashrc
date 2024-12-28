# .bashrc

# Atualizações no PATH
export PATH=$PATH:/c/Users/rapha/AppData/Local/Microsoft/WinGet/Links
export LANG=en_US.UTF-8

# Ativa opções úteis do Bash
shopt -s cdspell    # Corrige erros de digitação ao usar 'cd'
shopt -s globstar   # Permite ** para navegação recursiva de diretórios

# Alias comuns
alias ll='ls -l'
alias cls='clear'
alias home='cd $home'
alias wup='winget upgrade'
alias gitcm='git commit -m'
alias gitrepo='start $(git remote get-url origin)'
alias gitcf='git commit -F tools/commit.txt'

# Git Bash Completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Bash Completion (geral)
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Inicialização do Starship
eval "$(starship init bash)"
