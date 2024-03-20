# Reference:  lilydjwg/dotzsh

export EDITOR="nvim"
export PAGER="less"
# export VISUAL="nvim --noplugin"

export CARGO_BIN="$HOME/.cargo/bin"
# export NPM_BIN="$HOME/.pnpm/bin"
# export PATH=$CARGO_BIN:$NPM_BIN:$PATH
export PATH=$CARGO_BIN:$PATH

# bat
export BAT_THEME="Dracula"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

# starship zoxide
eval "$(starship init zsh)"
# eval "$(zoxide init zsh)"
# eval "$(direnv hook zsh)"

# ignore case when completing
autoload -Uz compinit && compinit -u
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

HISTFILE=~/.config/zsh/zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 不保存重复的历史记录项
setopt hist_save_no_dups
setopt hist_ignore_dups

# 在命令前添加空格，不将此命令添加到记录文件中
setopt hist_ignore_space

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
alias sn="doas nvim"
alias grep=rg
# alias cd=z
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
alias nw="nvim ~/.config/wayfire.ini"
alias na="nvim ~/.config/alacritty/alacritty.yml"
alias nh="nvim ~/.config/hypr/hyprland.conf"
alias np="doas nvim /etc/profile.d/my_env.sh"
alias nm="nvim src/main.rs"
alias nb="nvim src/lib.rs"
alias nc="nvim Cargo.toml"
alias nf="nvim flake.nix"
alias ce="nvim ~/Mygits/Learning/CE/common.md"
alias nce="nvim ~/Mygits/Learning/CE/nix.md"
alias rr="cargo r"

alias nl="neofetch | lolcat"
alias ls="eza --icons --group-directories-first --tree --level=1"
alias lss="eza --icons --group-directories-first --tree --level=3"
alias lsss="eza --icons --group-directories-first --tree"
alias ll="eza --icons --group-directories-first --tree --level=1 -lh"
alias la="eza --icons --group-directories-first --sort=size --tree --level=1 -lah"
alias sg="ss -lp | grep"
alias k="kill -9"

alias sp="doas pacman"
alias sps="doas pacman -S"
alias spss="pacman -Ss"
alias spnn="nix search nixpkgs"
alias sprr="cargo search --registry crates-io"
alias spq="pacman -Q"
alias syu="doas pacman -Syu"
alias spf="pacman -F"
alias spr="doas pacman -Rns"
alias sc="doas systemctl"
alias sb="doas systemctl start bluetooth"
# alias sd="doas systemctl start docker"
alias vm="doas systemctl start libvirtd; doas virsh net-start default"
alias vmo="doas virsh start"
alias vmp="doas virsh shutdown"
alias ipad="doas systemctl start avahi-daemon.service; uxplay"

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
alias ng="nvim gg"
alias plog='bat /var/log/pacman.log | rg "installed|reinstalled|removed|downgraded|upgraded"'
# alias plog='cat /var/log/pacman.log | grep -P/E "installed|reinstalled|removed|downgraded|upgraded"'
alias httpser="npx http-server"
alias pgsql="podman exec -it mypg psql -U postgres -d postgres"
alias mypg="pd start mypg; podman exec -it mypg psql -U mypg -d"
alias windows="doas mount /dev/nvme0n1p1 /mnt"
alias nixos="doas mount /dev/nvme0n1p7 /mnt"
alias mynix="pd start nix; pd exec -it nix bash"

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

# pnpm
export PNPM_HOME="/home/phil/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
