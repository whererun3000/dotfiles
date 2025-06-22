if (( $+commands[starship] )); then
  # ignore oh-my-zsh theme
  unset ZSH_THEME

  eval "$(starship init zsh)"
else
  echo 'starship not found, please install it from https://starship.rs'
fi
