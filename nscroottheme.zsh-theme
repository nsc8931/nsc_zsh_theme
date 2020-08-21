MY_PREFIX="%{$fg_bold[white]%}# %{$fg_bold[cyan]%}%n %{$fg_bold[white]%}@ %{$fg_bold[green]%}%m %{$reset_color%}in %{$fg_bold[yellow]%}%~ "
MY_SUFFIX="%(?:%{$fg[green]%}# %{$reset_color%}:%{$fg[red]%}# %{$reset_color%})"
PROMPT="$MY_PREFIX"
PROMPT+='$(git_prompt_info)%{$reset_color%} %{$fg[white]%}%D{[%X]}
$MY_SUFFIX'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}on %{$fg_bold[white]%}git:(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[white]%}) %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[white]%})"
