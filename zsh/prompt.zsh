autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' <%b>'

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

setopt PROMPT_SUBST
PROMPT='%F{green}%n%f %F{blue}%d%f%F{yellow}${vcs_info_msg_0_}%f %F{white}%#%f '
