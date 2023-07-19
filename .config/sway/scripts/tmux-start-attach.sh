session="main"

tmux has-session -t $session 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s "$session">/dev/null 2>&1
    tmux kill-session -t 0
fi

tmux attach-session -t $session
clear
