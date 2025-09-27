OS="$(uname)"
if [[ "${OS}" == "Darwin" ]] then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ "${OS}" == "Linux" ]] then
  if uwsm check may-start; then
	  exec uwsm start hyprland-uwsm.desktop
  fi
fi
