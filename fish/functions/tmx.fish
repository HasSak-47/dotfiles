function tmx --wraps=tmux --description 'Attach to or create a tmux session named after the current directory'
    set v $(string replace -a "." "_"  $(string replace -a "$HOME/" '' $(pwd)))
    if tmux list-sessions | grep -q $v 
        tmux attach-session -t $v
    else
        tmux $argv new -s $v
    end
end
