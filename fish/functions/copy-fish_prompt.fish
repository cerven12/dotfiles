function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if test "$USER" = 'root'
        echo -n (set_color red)'# '
    end

    # Main
    echo -n (set_color ff4500)'❯'(set_color 8a2be2)'❯'(set_color 696969)'❯'

    # Git
    set last_status $status
    printf '%s ' (__fish_git_prompt)
    set_color normal
end
