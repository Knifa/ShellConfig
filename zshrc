# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="knifa"

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

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy/mm/dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dircycle sudo tmux)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export EDITOR='vim'

# Load nvm if it exists.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Load pyenv if it exists.
export PYENV_ROOT="$HOME/.pyenv"
[ -s "$PYENV_ROOT/bin/pyenv" ] && 
	export PATH="$PYENV_ROOT/bin:$PATH" && 
	eval "$(pyenv init -)"

# Set dircolors if it exists
[ -r "$HOME/.dircolors" ] && eval `dircolors "$HOME/.dircolors"`

alias  l='ls --color=always --group-directories-first -hgo --time-style=+"%Y-%m-%d"'
alias la='ls --color=always --group-directories-first -hAgo --time-style=+"%Y-%m-%d"'
alias lv='ls --color=always --group-directories-first -hlA --time-style=+"%Y-%m-%d"'
alias ls='ls --color=auto --group-directories-first -h --time-style=+"%Y-%m-%d"'

if type 'perl' > /dev/null; then
	function _l {
                l $@ \
                | perl -ne 's#\s+\d+(?=\s+\d+)(?!\s+\d+-)##; print;'
        }; alias l='_l'

	function _la {
        	la $@ \
        	| perl -ne 's#\s+\d+(?=\s+\d+)(?!\s+\d+-)##; print;'
	}; alias la='_la'

	function _lv {
	       	lv $@ \
        	| perl -ne 's#\s+\d+(?=\s+\D+)(?=\s+\D+)##; print;'
	}; alias lv='_lv'
fi
