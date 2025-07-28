export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH="$ZDOTDIR/oh-my-zsh"
export ZSH_CUSTOM="$ZDOTDIR/custom"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup

export EDITOR=nvim
export GIT_EDITOR=nvim
export VISUAL=nvim
export DIFFPROG="nvim -d"
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"
