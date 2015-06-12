EMOJI=(😄 😁 😈 😋 😎 😜 😸)

function random_emoji {
  echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"

PROMPT='$(random_emoji) %{$fg_bold[green]%}%p%{$fg[cyan]%} %~ ${ret_status}%{$fg_bold[blue]%}%{$fg_bold[blue]%}%{$reset_color%}'

RPROMPT='%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}% '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
