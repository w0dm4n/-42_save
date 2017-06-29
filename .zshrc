# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
#export ZSH=/Users/frmarinh/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/munki"
# export MANPATH="/usr/local/man:$MANPATH"

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
clear
echo "#     #                                                                       "
echo "#     # ###### #      #       ####     #    #   ##    ####  ##### ###### #####"
echo "#     # #      #      #      #    #    ##  ##  #  #  #        #   #      #    #"
echo "####### #####  #      #      #    #    # ## # #    #  ####    #   #####  #    #"
echo "#     # #      #      #      #    #    #    # ######      #   #   #      #####"
echo "#     # #      #      #      #    #    #    # #    # #    #   #   #      #   #"
echo "#     # ###### ###### ######  ####     #    # #    #  ####    #   ###### #   #"
alias r="rm -rf"
alias c="cat"
alias ls="~/Desktop/work/ft_ls/ft_ls -lG"
alias lsa="~/Desktop/work/ft_ls/ft_ls -lGa"
alias fdp="/nfs/2015/f/frmarinh/Desktop/work/auto_push/auto"
USER=frmarinh
export USER
MAIL="$USER@student.42.fr"
export MAIL
#echo "____________________________________________________________________________"
#/nfs/zfs-student-2/users/frmarinh/Desktop/work/minishell/minishell
#source /nfs/2015/f/frmarinh/.Sublivim/sublivimrc.sh
#source /Users/frmarinh/.Sublivim/sublivimrc.sh
alias no_popup="/nfs/2015/f/frmarinh/Desktop/work/dieinhell_popup/no_popup.sh"
alias lockscreen='/System/Library/CoreServices/Menu\ Extras/user.menu/Contents/Resources/CGSession -suspend'
alias docker="~/.brew/bin/docker"
alias docker-machine="~/.brew/bin/docker-machine"
alias docker-env="~/.brew/bin/docker-machine env Char"
alias docker-exec="docker start new_alpine ; docker exec -it new_alpine /bin/zsh"
#search() { grep -rnw '.' -e "$1"; }
search()
{
	size=0
	nbr=0
	for var in "$@"
	do
		((size++))
	done
	for var in "$@"
	do
		((nbr++))
		if [ "$nbr" -eq "$size" ]
		then
			to_find="$var"
		fi
	done
	i=0
	for var in "$@"
	do
		((i++))
		if [ "$i" -lt "$size" ]
		then
			find . -name "$var" -exec grep -i "$to_find" {} \; -print
		fi
	done
	#find . -name "$1" -exec grep -i "$2" {} \; -print;
}
alias homebrew="~/.brew/bin/brew"
alias nasm="~/.brew/Cellar/nasm/2.12.02/bin/nasm"
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/frmarinh/.docker/machine/machines/Char"
export DOCKER_MACHINE_NAME="Char"
alias gobjdump="/Users/frmarinh/.brew/Cellar/binutils/2.28/bin/gobjdump"
PATH=$PATH:/Users/frmarinh/.brew/bin
alias tig="/Users/frmarinh/.brew/Cellar/tig/2.2.2/bin/tig"
