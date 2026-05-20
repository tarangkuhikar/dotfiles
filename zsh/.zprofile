OS="$(uname)"
if [[ "${OS}" == "Darwin" ]] then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ "${OS}" == "Linux" && "$(tty)" == "/dev/tty1" ]] then
  start-hyprland
fi
