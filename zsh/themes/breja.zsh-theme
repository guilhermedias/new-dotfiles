# My oh-my-zsh theme based on Bira - https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/bira.zsh-theme
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m%{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
    local user_symbol='$'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%} %~%{$reset_color%}'

local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="╭─○ ${user_host} ${current_dir} ${git_branch}
╰─○ %B${user_symbol}%b "
RPS1="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%}]"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}%B✓%b"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✗%b"
