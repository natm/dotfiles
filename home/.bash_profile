# Netflix OpenConnect octools
if [ -f /Users/nat/stash/ot/octools ]; then
  export OC_REPO_PATH=/Users/nat/stash/ot/octools
  source ${OC_REPO_PATH}/shell/oc_bash_profile.sh
fi

# Google Cloud SDK
if [ -f /Users/nat/google-cloud-sdk ]; then
  source '/Users/nat/google-cloud-sdk/path.bash.inc'
  source '/Users/nat/google-cloud-sdk/completion.bash.inc'
fi

function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ ! $git_status =~ "working directory clean" ]]; then
    echo -e "\033[0;31m"
  elif [[ $git_status =~ "Your branch is ahead of" ]]; then
    echo -e "\033[0;33m"
  elif [[ $git_status =~ "nothing to commit" ]]; then
    echo -e "\033[0;32m"
  else
    echo -e "\033[38;5;95m"
  fi
}
function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="On branch ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo "($branch)"
  elif [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "($commit)"
  fi
}
export PATH=/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  # special prompt for netflix laptop
  if [ "$(hostname -s)" == "natnf" ]; then
    export PS1="$REDBOLD\u$YELLOW@$RED\h\[\033[00m\]:$CYAN\w\[\033[00m\] \[\$(git_color)\]\$(git_branch)\[\033[00m\]\$ "
  else
    export PS1="$GREEN\u$YELLOW@$PURPLE\h\[\033[00m\]:$CYAN\w\[\033[00m\] \[\$(git_color)\]\$(git_branch)\[\033[00m\]\$ "
  fi
}
prompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

eval `ssh-agent -s` &>/dev/null
ssh-add &>/dev/null
