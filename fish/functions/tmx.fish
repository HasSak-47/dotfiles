function tmx --wraps=tmux --description 'alias tmx tmux'
    set v (pwd)
    set v (string replace -a "$HOME/" '' $v)
    tmux $argv new -s $v
end
