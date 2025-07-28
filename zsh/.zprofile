host=$(uname)
if [[ "$host" == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
