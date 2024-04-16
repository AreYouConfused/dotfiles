if status is-interactive
    # Commands to run in interactive sessions can go here
    if test -z "$TMUX" && test -n "$SSH_TTY"
        exec tmux new -A -s ssh_tmux
    end
end
