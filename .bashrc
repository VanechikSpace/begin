PS1="\t \e[1;32m[\u| \w] \$\e[m " 
#[[ $TERM != "screen" ]] && exec tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
