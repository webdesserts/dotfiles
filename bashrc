#!/bin/bash

       #===========================================#
      #     ____             __                   #
     #     / __ )____ ______/ /_  __________     #
    #     / __  / __ `/ ___/ __ \/ ___/ ___/    #
   #   _ / /_/ / /_/ (__  ) / / / /  / /__     #
  #   (_)_____/\__,_/____/_/ /_/_/   \___/    #
 #                                           #
#===========================================#
# The main bash config file. Bash originates from sh, which is not another
# shell, but a POSIX standard. For example /bin/sh actually points to a dash
# implementation on all Ubuntu systems. Bash incudes some extra features on top
# of sh to make it a little bit more "programmable" (these are usually refered
# to as bashisms).
#
# The bashrc contains all config for non-login interactive bash sessions. For
# login sessions, see the .bash_profile instead.


  #======#
 # Path #
#======#

# Add things to the PATH here
export PATH=~/bin:\
/usr/local/bin:\
$PATH

  #======================#
 # Personal Preferences #
#======================#

# Bash Prompt
reset='\[\e[0m\]'
black='\[\e[0;30m\]'
red='\[\e[0;31m\]'
green='\[\e[0;32m\]'
yellow='\[\e[0;33m\]'
blue='\[\e[0;34m\]'
purple='\[\e[0;35m\]'
cyan='\[\e[0;36m\]'
white='\[\e[0;37m\]'
PS1="${cyan}\u${reset}@${red}\h\n ${blue}\w${reset}> "

  #=================#
 # Helpful Scripts #
#=================#

exists() { command -v "$1" >/dev/null 2>&1; }
weather() { curl -4 http://wttr.in/"$1"; }

  #=========#
 # Aliases #
#=========#

if exists nvim; then
  alias vim="nvim"
  alias vi="nvim"
fi

if exists hub; then
  eval "$(hub alias -s)"
fi

