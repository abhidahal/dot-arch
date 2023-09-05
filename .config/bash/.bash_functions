#!/bin/bash
function mkcd() {
  DIR="$*"
  if [ $# -lt 1 ]; then
    echo -e "\e[31mdirectory field can't be empty\n\e[0mmkcd <directory>"
    return
  fi
  mkdir "${DIR}" && cd "${DIR}"
}

function cl() {
  DIR="$*";
  if [ $# -lt 1 ]; then
    DIR=$HOME;
  fi;
  builtin cd "${DIR}" && exa
}

function ghp() {
  KEYWORD="$*";
  if [ $# -lt 1 ]; then
    echo -e "\e[31mcommand cannot be empty\n\e[0mghp <git-command>"
    return
  fi;
  cat ~/.config/.gitCommands | grep $KEYWORD
}


function gcnpr() {
  TICKET="$1";
  MESSAGE="$2";
  if [ $# -lt 2 ]; then
    echo -e "\e[31mcommand cannot be empty\n\e[0mgcnpr <ticket> <message>"
    return
  fi;
  git checkout -b $TICKET && git commit -m "$MESSAGE" && git push  origin $TICKET && git checkout -
}


function gcpr() {
  TICKET="$1";
  MESSAGE="$2";
  if [ $# -lt 1 ]; then
    echo -e "\e[31mcommand cannot be empty\n\e[0mgcpr <ticket> <message>"
    return
  fi;
  git checkout $TICKET && git commit -m "$MESSAGE" && git push  origin $TICKET && git checkout -
}

function get() {
  FCOMMAND="$*";
  HELP="-h";
  if [ $# -lt 1 ]; then
    echo -e "\e[31mcommand cannot be empty\n\e[0mget <command>:<searchword>"
    return
  fi;

#while test $# -gt 0; do
#  case "$1" in
#    -h|--help)
#      echo " "
#      echo -e "\e[0;32mget [options] [command]:[serchword]\e[0m"
#      echo " "
#      echo "options:"
#      echo "-h, --help                show brief help"
#      return
#      ;;
#  esac
#done

      SEARCHWORD="${FCOMMAND#*:}";
      COMMAND="${FCOMMAND%":$SEARCHWORD"}";
      echo "$COMMAND | grep $SEARCHWORD"
      echo $COMMAND
      echo $SEARCHWORD
      $COMMAND | grep $SEARCHWORD
}
