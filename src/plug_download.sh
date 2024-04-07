main() {
  if [[ -z $1 ]]; then
    echo " Usage: nex download plug git|mux|run|tools"
    echo
    exit 1
  fi

  local host_user=$(whoami)
  local plugin_name="$1.nexplugin"
  cd $(root_path)
  echo "Downloading Plugin - $plugin_name"

  if [[ $host_user == "chk" ]]; then
    git clone git@github.com:chanakasan/$plugin_name.git
  else
    git clone https://github.com/chanakasan/$plugin_name.git
  fi

  echo done
  echo
}

root_path() {
  echo $HOME/dotfiles
}

main $@