# Path to your oh-my-zsh configuration.
export ZSH=$ZDOTDIR/oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="minimal"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(cabal \
git \
vi-mode \
#git-flow \
battery \
#colorize \
themes \
#mosh \
#history \
#zsh-syntax-highlighting \
history-substring-search \
#autosuggestions \
catimg \
colored-man \
cp \
dircycle \
fasd \
archlinux \
taskwarrior \
opp \
tmux \
docker \
vagrant \
zsh_reload)


source $ZSH/oh-my-zsh.sh

export PATH=/home/twebb/bin:/home/twebb/.cabal/bin:$PATH
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
#ZSH_HIGHLIGHT_STYLES[cursor]='bg=red,fg=green'

tmx twebb
# Customize to your needs...
