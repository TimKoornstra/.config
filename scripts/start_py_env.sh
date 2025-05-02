#!/usr/bin/env bash

# Usage: start_py_env.sh <env-name> [session-name]
if [ -z "$1" ]; then
  echo "Usage: $0 <conda-env> [session-name]"
  exit 1
fi

ENV="$1"
SESSION="${2:-${ENV}-dev}"

# (Optional) kill any old session of the same name:
# tmux kill-session -t "$SESSION" 2>/dev/null

# 1) Create a new, detached session named $SESSION with a default shell
tmux new-session -d -s "$SESSION" -n editor

# 2) In the “editor” window: activate env then launch nvim
tmux send-keys -t "$SESSION:editor" "conda activate $ENV" C-m
tmux send-keys -t "$SESSION:editor" "nvim" C-m

# 3) Create a second window called “shell”, defaulting to your interactive zsh
tmux new-window -t "$SESSION" -n shell

# 4) In the “shell” window: activate env and leave you at the prompt
tmux send-keys -t "$SESSION:shell" "conda activate $ENV" C-m

# 5) Select the “shell” window so that’s where you land
tmux select-window -t "$SESSION:shell"

# 6) Attach to the session
tmux attach -t "$SESSION"

