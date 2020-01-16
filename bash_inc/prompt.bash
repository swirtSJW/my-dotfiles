#!/usr/bin/env bash

function prompt() {

  case $TERM in
    "dumb")
      PS1="> "
      return
      ;;
    xterm*)
      TITLEBAR='\[\033]0;[\u@\h] \w\007\]'
      ;;
    *)
      TITLEBAR=''
      ;;
  esac

  local time="$grey`date +%T`"
  local git_branch="$(git_short_sha)$(scm_prompt_info)"
  if [[ $git_branch ]]
  then
    git_prompt=" $git_branch "
  else
    git_prompt=" "
  fi

  local prompt_char='» '

  PS1="$reset_color[$blue\u$reset_color@$green\H$reset_color] $yellow\w${reset_color}$git_prompt\n$time$red $prompt_char$reset_color"
  PS2='> '
  PS4='+ '
}


PROMPT_COMMAND=prompt

SCM_THEME_PROMPT_DIRTY=" $red✗${reset_color}"
SCM_THEME_PROMPT_CLEAN=" $green✓${reset_color}"
SCM_THEME_PROMPT_PREFIX='| '
SCM_THEME_PROMPT_SUFFIX=''

