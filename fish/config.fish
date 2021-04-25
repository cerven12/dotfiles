set PATH /usr/local/bin /usr/sbin $PATH
# alias of neovim
alias vi='nvim'

# ペイン作成のscriptのエイリアス
alias ide='~/.scripts/ide'

# tmux
alias tm='tmux'
alias tmks='tmux kill-session'
alias tmkl='tmux kill-sever'

# git
alias g='git'

# bobthefishの設定
set -g theme_date_format "+%Y-%m-%d %H:%M:%S"
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_date no
set -g theme_display_cmd_duration no
set -g theme_newline_cursor yes
set -g theme_display_git_master_branch yes
set -g theme_color_scheme dracula
set -g theme_display_nvm no

# ls command color change => chien
export LSCOLORS=gxfxcxdxbxegedabagacad

# below is not use now
# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'
# tmux の自動起動
if test -z $TMUX
  tmux new-session
end
