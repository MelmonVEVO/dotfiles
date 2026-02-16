# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# options
HISTFILE=~/.zsh_histfile
HISTSIZE=100000
SAVEHIST=100000
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt VI

export EDITOR=nvim

# aliases
alias gib='sudo pacman -S'
alias yeet='sudo pacman -Rns'
alias upd='sudo pacman -Syu'
alias pkgdb='sudo pacman -Sy'
alias pse='pacman -Ss'
alias lsize='ls --human-readable --size -1 -S --classify'
alias gih='history | grep'
alias lh='history | less'
alias please='sudo $(history -p !!)'
alias rmd='rm -r'
alias fucking='sudo'
alias vim='nvim'
alias emacs='nvim'
alias zshcfg='nvim ~/.zshrc'
alias nuke='killall -9'
alias :q='echo You might need some coffee.'
alias :wq='echo You should probably stop staring at the terminal.'
alias meow='cat'
alias pipes='pipes.sh'
alias sl='sl | lolcat'
alias neofetch='fastfetch'
alias dotgit="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias hyprcfg="nvim ~/.config/hypr/hyprland.conf"
alias gdvim="nvim --listen /tmp/godot.pipe"


PATH=$PATH:$HOME/.local/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# java
export JAVA_HOME=$HOME/.local/bin/jdk-17.0.16-full

eval "$(zoxide init zsh)"

# pnpm
export PNPM_HOME="/home/kisaki/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# plugins
source ~/powerlevel10k/powerlevel10k.zsh-theme
source /opt/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
