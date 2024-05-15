# ZSH options combined with oh-my-zsh configs
# See https://github.com/robbyrussell/oh-my-zsh/blob/master/templates/zshrc.zsh-template

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Default plugins can be found in ~/.oh-my-zsh/plugins/
# Custom plugins can be added to $ZSH_CUSTOM/plugins/
# Homebrew plugins needs to be loaded differently, as it uses another place for storage
plugins=(git zsh-autosuggestions colored-man-pages colorize brew web-search)

# some more options you can fiddle around with:
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# PATH
# append
# path+=('~/.emacs.d/bin')
# or prepend
# path=('/home/david/pear/bin' $path)
# export to sub-processes (make it inherited by child processes)
# export PATH

# I know that oh-my-zsh doesn't like that, but I am not going to keep all settings in multiple files.
# For now lets live with that solution, maybe I am going to switch to .zshrc completely, but until then just make
# sure that ~/bash_profile is compatible with zsh
source ~/.bash_profile

# load the oh-my-zsh environment
source $ZSH/oh-my-zsh.sh

eval "$(jump shell zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
