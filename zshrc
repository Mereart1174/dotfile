export JAVA_HOME="/usr/lib/jvm/default"
export LD_LIBRARY_PATH=${JAVA_HOME}/lib/server:${LD_LIBRARY_PATH}

export EDITOR="nvim --noplugin"
export PAGER="less"
# export VISUAL="nvim --noplugin"

export CARGO_BIN="$HOME/.cargo/bin"

export GOROOT="/usr/lib/go"
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"

# bat
export BAT_THEME="Dracula"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

export SCREENSHOT=$HOME/Screenshot/

export PATH=$GOBIN:$JAVA_HOME:$FLUTTER_GIT_DIRECTORY:$CARGO_BIN:$HOME/.pub-cache/bin:$PATH
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

# starship and zoxide
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# ignore case when completing
autoload -Uz compinit && compinit -u
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

HISTFILE=~/.config/zsh/zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    # zsh-completions
)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias sudo=doas
alias suod=doas
alias n=nvim
alias h=helix
alias nn="nvim --clean"
alias grep=rg
alias cd=z
alias s=source
alias r=ranger
alias qe=exit
alias du=dust
# alias hm="home-manager"
# alias cat="bat --show-all --plain"
alias cat="bat --plain"
alias m="mkdir -p"
alias rm="rm -iv"
alias hg="history 1 | rg"

alias nz="nvim ~/.zshrc"
alias sz="source ~/.zshrc"
# alias nw="nvim ~/.config/wayfire.ini"
alias na="nvim ~/.config/alacritty/alacritty.yml"
# alias nf="nvim flake.nix"
alias nh="nvim ~/.config/hypr/hyprland.conf"
alias nsy="nvim +PackerSync"
alias np="doas nvim /etc/profile.d/my_env.sh"
alias rr="cargo r"
alias nm="nvim src/main.rs"
alias nb="nvim src/lib.rs"
alias nc="nvim Cargo.toml"
alias ce="nvim ~/Mygits/Learning/CE/common.md"

alias al="neofetch|lolcat"
alias ls="exa --icons --group-directories-first --tree --level=1"
alias lss="exa --icons --group-directories-first --tree --level=3"
alias lsss="exa --icons --group-directories-first --tree"
alias ll="exa --icons --group-directories-first --tree --level=1 -lh"
alias la="exa --icons --group-directories-first --sort=size --tree --level=1 -lah"
alias sg="ss -lp | grep"
alias k="kill -9"

alias sp="sudo pacman"
alias sps="sudo pacman -S"
alias spss="pacman -Ss"
alias spq="pacman -Q"
alias syu="sudo pacman -Syu"
alias cmd="pacman -F"
alias sc="sudo systemctl"
alias sb="sudo systemctl start bluetooth"
# alias sd="sudo systemctl start docker"
alias vm="sudo systemctl start libvirtd; sudo virsh net-start default"
alias vmo="sudo virsh start"
alias vmp="sudo virsh shutdown"
alias ipad="sudo systemctl start avahi-daemon.service; uxplay"

alias codec="enca -i -L chinese"
alias codecc="enca -x UTF8 -L chinese"

alias py37="source /opt/miniconda/bin/activate py37"
alias py38="source /opt/miniconda/bin/activate py38"
alias py10="source /opt/miniconda/bin/activate py10"
alias de="conda deactivate"
alias pi="curl cip.cc"
alias tq="curl wttr.in"
alias fy="trans :zh-CN"
alias pd="podman"
alias pdps="podman ps"
alias slxd="doas systemctl start lxd"
alias scc="doas systemctl start cockpit"
alias cman="man -M /usr/share/man/zh_CN"
alias fq="export http_proxy=127.0.0.1:7890; export https_proxy=127.0.0.1:7890"
alias rdb="rust-lldb"
alias sprr="cargo search --registry crates-io"
alias ng="nvim gg"
alias plog='bat /var/log/pacman.log | rg "installed|reinstalled|removed|downgraded|upgraded"'
alias httpser="npx http-server"
alias pgsql="podman exec -it mypg psql -U postgres -d postgres"
alias psql="podman exec -it mypg psql -U mypg -d pgdb"
alias windows="doas mount /dev/nvme0n1p1 /mnt/win"

ex ()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)     tar xjf $1     ;;
            *.tar.gz)      tar xzf $1     ;;
            *.rar)         unrar x $1     ;;
            *.tar)         tar xf $1      ;;
            *.tbz2)        tar xjf $1     ;;
            *.tgz)         tar xzf $1     ;;
            *.zip)         unzip -O GBK $1       ;;
            *.7z)          7z x $1        ;;
            *.tar.xz)      tar xf $1      ;;
            *.tar.zst)     tar xf $1      ;;
            *)             echo "'$1'   cannot be extracted via ex()"   ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
bindkey -e
