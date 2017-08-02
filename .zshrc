#- Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colored-man \
	colorize \
	zsh-syntax-highlighting \
	virtualenv \
	git \
	sbt \
	extract \
	docker \
	docker-compose \
	boot2docker \
	vi-mode \
	per-directory-history \
	z \
	mvn \
	gitfast \
	git-extras \
	github) #\
	# pyenv)
	# osx

source $ZSH/oh-my-zsh.sh

#source ~/.git-completion.zsh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
autoload -U zmv

export LC_ALL=en_US.UTF-8

export LANG=en_US.UTF-8

export TERM=xterm-256color

# The next line updates PATH for the Google Cloud SDK.
source '/Users/szymonmatejczyk/tools/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/szymonmatejczyk/tools/google-cloud-sdk/completion.zsh.inc'

[[ $EMACS = t ]] && zle -N zle-line-init
bindkey '^r' history-incremental-search-backward
bindkey '^R' history-incremental-search-backward
bindkey '^a' vi-beginning-of-line
bindkey '^e' vi-end-of-line
bindkey '^E' vi-end-of-line

alias gssh='gcloud compute ssh'
alias gbssh='ssh -i ~/.ssh/google_compute_engine -o StrictHostKeyChecking=no'

source ~/.iterm2_shell_integration.`basename $SHELL`

#typeset -U path
#path=(/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin /Library/Scala/current/bin /opt/local/bin /opt/local/sbin /Users/szymonmatejczyk/programy/maven/bin /Users/szymonmatejczyk/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /opt/X11/bin /usr/texbin /usr/local/opt/go/libexec/bin)  # $path

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias vim='emacsclient -nw -s foo -a ""'

alias presto-cli='~/teradata/presto/presto-cli/target/presto-cli-*-executable.jar --schema tiny --catalog tpch'

alias foggy='presto-cli --server cloud14hd01-2-2.labs.teradata.com:8989'

alias presto-docs='sphinx-build presto-docs/src/main/sphinx /tmp/test-doc'

eval "$(hub alias -s)"  # https://github.com/github/hub
