#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

my_branch='settings-v2'
# alias cc='clang'
alias og='v ~/small_talk/g.md'
alias library_card='echo -n "4090008710672" | xclip -selection clipboard'
alias wifi_boost='sudo iw wlan0 set power_save off'
alias wifi_status='iw wlan0 get power_save'

alias wifi_list="nmcli device wifi list"
alias wifi_connect='echo "sudo nmcli device wifi connect SSID password \"password\""'

alias c='cd ~/dev/projects/c/'
alias go='cd ~/dev/projects/gantry_ops/'
alias fb='cd ~/small_talk/go_fb/'
alias da='dart analyze ~/dev/projects/gantry_ops/apps/lr_client'
alias dfa='dart fix --apply  ~/dev/projects/gantry_ops/apps/lr_client'
alias gk='~/dev/projects/gantry_ops/never_commit/raise_kong_url_limit.sh'

alias ls='ls -alh --color=always --group-directories-first'
alias grep='grep --color=auto'
alias v='vim'
alias lg='lazygit'
alias loc='tokei'

#bc - bash config
bc() { v ~/.bashrc && source ~/.bashrc; }

#PS1='[\u@\h \W]\$ '
#source ~/git-prompt.sh
#PS1='PS1_CMD1=$(__git_ps1 " (%s)")'; 
#PS1='\n\n\[\e[0m\]\[\e[38;5;35m\]╭─(\[\e[38;5;38m\]\t\[\e[38;5;35m\]) ($?) \W${PS1_CMD1} \$\n╰── '
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\n\n╭─($?) \W (${PS1_CMD1}) \$\n╰── '

export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"
export FLUTTER_WEB_BROWSER_FLAGS="--user-data-dir=/home/$USER/.config/google-chrome --profile-directory='Profile 1'"

alias iskoBrightKaren='brightnessctl set '

alias podStatus='systemctl --user status podman.socket'
alias podRestart='systemctl --user restart podman.socket'
alias podVerifySocket='ls -la /run/user/1000/podman/podman.sock'

alias aaBattery='cat /sys/class/power_supply/BAT0/capacity'
alias aaMirrorMonitor='xrandr --output HDMI-1 --auto --same-as eDP-1 --mode 1920x1080'
alias aaOnHdmiConnected='xrandr --output HDMI-1 --auto --right-of eDP-1'
alias aaOnHdmiDisconnected='xrandr --auto'


alias fpg='flutter pub get'
alias fcg='dart run build_runner build --delete-conflicting-outputs'

alias ss='flameshot gui -d 2000'
alias srmonitor='ffmpeg -f x11grab -s 1920x1080 -i :0.0+1920,0 ~/recording.mp4'
alias srlaptop='ffmpeg -f x11grab -r 30 -s 1920x1200 -i :0.0 -c:v libx264 -preset ultrafast -crf 23 output.mp4'

alias sb='supabase'
alias sbs='sb start --ignore-health-check && gk'
alias sbS='sb stop --no-backup'
alias sbr='sb db reset && gk'

alias g='git'
alias gd='g difftool -y'
alias gA='g add .'
# gp and gP can not be git native aliases as git aliases are case-insensitive
alias gp='g pull'
alias gpr='gp --rebase'
alias gP='g push'
alias gPf='g push --force-with-lease'
alias gg='g co staging'
alias ggmain='g co main'
alias ggmy='g co $my_branch'
alias gcane='g commit --amend --no-edit'
alias acne='gA && gcane'
alias gsr='git reset --soft $(git merge-base HEAD staging)'
alias gwip='gA && g ci -m "wip"';
alias gwipp='gwip && gP';

alias acid='gA;g ci -m "$(date)"';

export DATABASE_URL="postgresql://postgres:postgres@127.0.0.1:54322/postgres" # default password is postgres
alias psqlgo='psql postgresql://postgres:postgres@127.0.0.1:54322/postgres' # default password is postgres


#gcp - git commit push
gcp() {
  gA
  g ci -m "$*"
  gP
}


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Created by `pipx` on 2026-01-10 04:54:31
export PATH="$PATH:/home/spades/.local/bin"


# so the executables installed by pub are in the path:
export PATH="$PATH":"$HOME/.pub-cache/bin"

#export docker host because we are using podman
export DOCKER_HOST=unix:///run/user/1000/podman/podman.sock

#if you open the version file and decide not to release after all, quit vim with :cq — it exits nonzero and aborts the entire run.
gopro() {
    cd ~/dev/projects/gantry_ops &&
    if [ -n "$(git status --porcelain)" ]; then
        echo "gopro: uncommitted changes in working tree — aborting" >&2
        return 1
    fi
    git checkout staging &&
    git pull &&
    vim apps/lr_client/lib/core/app_version.dart &&
    git add -A &&
    git commit -m "${1:-updated version}" &&
    git push &&
    git checkout main &&
    git pull &&
    git merge staging &&
    git push &&
    git checkout staging
}

~/dev/projects/c/greetings "Master $(logname)"
#echo "⚡ Shell re-armed at $(date). Proceed."  
#sudo timedatectl set-time "2026-08-28 09:04:10"
