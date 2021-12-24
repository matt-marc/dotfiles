#!/bin/sh
tmux new-session -s blawb \; \
        send-keys 'cd ~/BLawB/src/' C-m \; \
        send-keys 'clear' C-m \; \
        send-keys 'ls' C-m \; \
        split-window -v -p 10 \; \
        send-keys 'cd ~/BLawB/build/' C-m \; \
        send-keys 'clear' C-m \; \
        select-pane -t 0 \; \
