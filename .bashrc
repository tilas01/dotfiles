#
# ~/.bashrc
#

export EDITOR='vim'
export VISUAL='vim'

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias \
        up='yay' \
        rm="rm -v" \
        mkdir="mkdir -v" \
        cp="cp -v" \
        mv="mv -v" \
        myip="curl -s https://ipv4.icanhazip.com" \
        ports="netstat -tulanp" \
        cl="clear" \
        untar="tar -xvf" \
        sha="shasum -a 256" \
        ls="ls --color=auto" \
        grep="grep --color=auto" \
        fgrep="fgrep --color=auto" \
        egrep="egrep --color=auto" \
        diff="diff --color=auto" \
        i="sudo pacman -S" \
        sync="sudo reflector --verbose -c Australia -p https --sort rate --save /etc/pacman.d/mirrorlist"

cat ~/.cache/wal/sequences
