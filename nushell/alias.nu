
alias n = nvim
alias h = helix
alias grep = rg
alias s = source
alias r = ranger
alias qe = exit
alias grep = grep --color=auto
alias du = dust
alias hg = (history | grep)

alias nz = nvim ~/.zshrc
alias sz = source ~/.zshrc
alias na = nvim ~/.config/nushell/alias.nu
alias nala = nvim ~/.config/alacritty/alacritty.yml
alias nc = nvim $nu.config-path
alias hc = helix ~/.config/nushell/alias.nu
alias hc = helix $nu.config-path
alias sn = source ~/.config/nushell/config.nu
alias nw = nvim ~/.config/wayfire.ini
alias nsy = nvim +PackerSync
alias nm = sudo nvim /etc/profile.d/my_env.sh
alias n. = nvim .

alias al = (neofetch|lolcat)
alias ls = exa --icons --tree --level=1
alias lss = exa --icons --sort=size --tree
alias ll = exa --icons --sort=size --tree --level=1 -l
alias la = exa --icons --sort=size --tree --level=1 -la
alias sg = (ss -lp | grep)
alias k = kill -9
alias cn = cd ~/.config/nvim

alias sp = sudo pacman
alias sps = sudo pacman -S
alias spss = sudo pacman -Ss
alias spq = sudo pacman -Q
alias syu = sudo pacman -Syu
alias sc = sudo systemctl
alias sb = sudo systemctl start bluetooth
alias wifi = sudo systemctl start create_ap
alias vm = (sudo systemctl start libvirtd; sudo virsh net-start default)
alias vmst = sudo virsh start
alias vmsp = sudo virsh shutdown

alias sr = redshift -m drm -PO 4500
alias codec = enca -i -L chinese
alias codecc = enca -x UTF8 -L chinese
alias cq = cd `/home/mere/.deepinwine/Deepin-TIM/dosdevices/c:/users/mere/My Documents/Tencent Files/2660507921/FileRecv/`

alias npr = nvim ~/Mygits/PL/Rust/rustBasics.md
alias npc = nvim ~/Mygits/PL/C/cBasics.md
alias py8 = source /opt/miniconda/bin/activate py38
alias de = conda deactivate
alias pi = curl cip.cc
alias tq = curl wttr.in

