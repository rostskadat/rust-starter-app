#!/bin/sh

session_name=$(basename $(pwd))
window_name=main

# Create a new session in detached mode
tmux new-session -d -s ${session_name} -n ${window_name}

# Split the window horizontally and then vertically
tmux split-window -h
tmux split-window -v

# Send the relevant commands
tmux send-keys -t "${session_name}:${window_name}.0" '/usr/local/bin/opencode-cli' C-m
tmux send-keys -t "${session_name}:${window_name}.1" 'cargo watch' C-m
tmux attach-session -t ${session_name}
