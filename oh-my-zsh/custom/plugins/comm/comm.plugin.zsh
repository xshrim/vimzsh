########################################
# Git
########################################

# Default values for the appearance of the prompt. Configure at will.
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_SEPARATOR="ǀ"
#ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[red]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[yellow]%}ǀ%{$fg[cyan]%}⚑"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[yellow]%}ǀ%{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[yellow]%}ǀ%{$fg[magenta]%}✚"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%}ǀ%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[yellow]%}ǀ%{$fg[yellow]%}✱"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}ǀ%{$fg[yellow]%}✤"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}ǀ%{$fg[yellow]%}⬙"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%}ǀ%{$fg_bold[green]%}✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}ǀ%{$fg_bold[red]%}✘"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}ǀ%{$fg[white]%}●"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}ǀ%{$fg[red]%}✦"

########################################


########################################
# Powerline
#
# vim:ft=zsh ts=2 sw=2 sts=2
#
# ZYSzys's Theme - https://github.com/ZYSzys/zys-zsh-theme
# A Powerline-inspired theme for ZSH
#
# # README
#
# In order for this theme to render correctly, you will need a
# [Powerline-patched font](https://github.com/Lokaltog/powerline-fonts).
# Make sure you have a recent version: the code points that Powerline
# uses changed in 2012, and older versions will display incorrectly,
# in confusing ways.
#
# In addition, I recommend the
# [Solarized theme](https://github.com/altercation/solarized/) and, if you're
# using it on Mac OS X, [iTerm 2](http://www.iterm2.com/) over Terminal.app -
# it has significantly better color fidelity.
#
# # Goals
#
# The aim of this theme is to only show you *relevant* information. Like most
# prompts, it will only show git information when in a git working directory.
# However, it goes a step further: everything from the current user and
# hostname to whether the last call exited with an error to whether background
# jobs are running in this shell will all be displayed automatically when
# appropriate.

### Segment drawing
# A few utility functions to make it easy and re-usable to draw segmented prompts
###########################################

CURRENT_BG='NONE'
RCURRENT_BG='NONE'

# Special Powerline characters

() {
  local LC_ALL="" LC_CTYPE="en_US.UTF-8"
  # NOTE: This segment separator character is correct.  In 2012, Powerline changed
  # the code points they use for their special characters. This is the new code point.
  # If this is not working for you, you probably have an old version of the
  # Powerline-patched fonts installed. Download and install the new version.
  # Do not submit PRs to change this unless you have reviewed the Powerline code point
  # history and have new information.
  # This is defined using a Unicode escape sequence so it is unambiguously readable, regardless of
  # what font the user is viewing this source code in. Do not replace the
  # escape sequence with a single literal character.
  # Do not change this! Do not make it '\u2b80'; that is the old, wrong code point.
  SEGMENT_SEPARATOR=$'\ue0b0'
  RSEGMENT_SEPARATOR=$'\ue0b2'
}


# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

rprompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"

  if [[ $RCURRENT_BG != 'NONE' && $1 != $RCURRENT_BG ]]; then
    echo -n " %{%K{$RCURRENT_BG}%F{$1}%}$RSEGMENT_SEPARATOR%{$fg%}"
    echo -n "%{$bg%}%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  RCURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}


prompt_start() {
  if [[ $RCURRENT_BG == 'NONE' || $1 != $RCURRENT_BG ]]; then
    RCURRENT_BG=$1
    echo -n " %{%k%F{$RCURRENT_BG}%}$RSEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  #echo -n "%{%f%}"
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

### Prompt components
# Each component will draw itself, and hide itself if no information needs to be shown

# Context: user@hostname (who am I and where am I)
prompt_context() {
  # if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
  #   prompt_segment black default "%(!.%{%F{yellow}%}.)$USER@%m"
  # fi
}

# Git: branch/detached head, dirty status
prompt_git() {
  (( $+commands[git] )) || return
  local PL_BRANCH_CHAR
  () {
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    PL_BRANCH_CHAR=$'\ue0a0'         # 
  }
  local ref dirty mode repo_path
  repo_path=$(git rev-parse --git-dir 2>/dev/null)

  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    dirty=$(parse_git_dirty)
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git rev-parse --short HEAD 2> /dev/null)"
    if [[ -n $dirty ]]; then
      prompt_segment yellow black
    else
      prompt_segment green black
    fi

    if [[ -e "${repo_path}/BISECT_LOG" ]]; then
      mode=" <B>"
    elif [[ -e "${repo_path}/MERGE_HEAD" ]]; then
      mode=" >M<"
    elif [[ -e "${repo_path}/rebase" || -e "${repo_path}/rebase-apply" || -e "${repo_path}/rebase-merge" || -e "${repo_path}/../.dotest" ]]; then
      mode=" >R>"
    fi

    setopt promptsubst
    autoload -Uz vcs_info

    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' get-revision true
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:*' stagedstr '✚'
    zstyle ':vcs_info:*' unstagedstr '●'
    zstyle ':vcs_info:*' formats ' %u%c'
    zstyle ':vcs_info:*' actionformats ' %u%c'
    vcs_info
    echo -n "${ref/refs\/heads\//$PL_BRANCH_CHAR }${vcs_info_msg_0_%% }${mode}"
  fi
}

prompt_bzr() {
    (( $+commands[bzr] )) || return
    if (bzr status >/dev/null 2>&1); then
        status_mod=`bzr status | head -n1 | grep "modified" | wc -m`
        status_all=`bzr status | head -n1 | wc -m`
        revision=`bzr log | head -n2 | tail -n1 | sed 's/^revno: //'`
        if [[ $status_mod -gt 0 ]] ; then
            prompt_segment yellow black
            echo -n "bzr@"$revision "✚ "
        else
            if [[ $status_all -gt 0 ]] ; then
                prompt_segment yellow black
                echo -n "bzr@"$revision

            else
                prompt_segment green black
                echo -n "bzr@"$revision
            fi
        fi
    fi
}

prompt_hg() {
  (( $+commands[hg] )) || return
  local rev status
  if $(hg id >/dev/null 2>&1); then
    if $(hg prompt >/dev/null 2>&1); then
      if [[ $(hg prompt "{status|unknown}") = "?" ]]; then
        # if files are not added
        prompt_segment red white
        st='±'
      elif [[ -n $(hg prompt "{status|modified}") ]]; then
        # if any modification
        prompt_segment yellow black
        st='±'
      else
        # if working copy is clean
        prompt_segment green black
      fi
      echo -n $(hg prompt "☿ {rev}@{branch}") $st
    else
      st=""
      rev=$(hg id -n 2>/dev/null | sed 's/[^-0-9]//g')
      branch=$(hg id -b 2>/dev/null)
      if `hg st | grep -q "^\?"`; then
        prompt_segment red black
        st='±'
      elif `hg st | grep -q "^[MA]"`; then
        prompt_segment yellow black
        st='±'
      else
        prompt_segment green black
      fi
      echo -n "☿ $rev@$branch" $st
    fi
  fi
}

# Dir: current working directory
prompt_dir() {
  prompt_segment blue black '%~'
}

# Virtualenv: current working virtualenv
prompt_virtualenv() {
  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
    prompt_segment blue black "(`basename $virtualenv_path`)"
  fi
}

# Status:
# - was there an error
# - am I root
# - are there background jobs?
prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}✘"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}⚙"

  [[ -n "$symbols" ]] && prompt_segment black default "$symbols"
}

# Date:
# Time:
rprompt_dtime() {
  rprompt_segment blue black '%D %T'
}

# status
rprompt_status() {
rprompt_segment yellow black '%?'
}


## Main prompt
build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_virtualenv
  prompt_context
  prompt_dir
  prompt_git
  prompt_bzr
  prompt_hg
  prompt_end
}

build_rprompt() {
    prompt_start blue
    rprompt_dtime
    rprompt_status
}

########################################
# Settings
########################################


#color{{{
autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
eval _$color='%{$terminfo[bold]$fg[${(L)color}]%}'
eval $color='%{$fg[${(L)color}]%}'
(( count = $count + 1 ))
done
FINISH="%{$terminfo[sgr0]%}"
#}}}

# symbols to choose from:
# ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ✹ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ▾⚢ ⚲ ⚳ ⚴ ⚥ ☿ ⚤ ⚦ ⚒ ⚑ ⚐ ♺ ♻ ♼ ⓐ ⑃ ᐅ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷ 
# ✡ ✔ ✘ ✗ ✖ ✚ ✱ ✤ ✦ ● ❤ ➜ ➟ ➼ ➤ ☁ ◀▶▲✂ ✎ ✐ 𝝙 ♒ ⑊ # ⑄ # ⓧ ⑂⨍ ⨎ ⨏ ⨷ ◯ ⩚ ⩛ ⩡ ⩱ ⩲ ± ⩵  ⩶ ⨠ ❮ » ‹ ⏎
# ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟  ⬤ ☀ ☂ ✭ ⚡ * Ⓞ ⓣ Ⓓ ⓜ ⓤ ⓡ ⑁ 〒 ǀ ǁ ǂ ĭ Ť Ŧ ↵ ⌚ ➦  ⚙  ✖ ⨀ ⨁ ⨂ ☛ ☚ ☎
# ★ ☯ ☮ ☣ ☢ ❥ ✧ ✪ ♬ ♫ ♪ ♩ ✉ ✯ ✮ ✿ ❀ ❁ ❂ ❉ ❄ ❅ ❆ ✝ ✓ ☑ ☐ ღ ⁂ ☽☾ϟ✢✠✝✛✜☩☨☥✁☊✒✑✏✎✐⌛✇✈

# ✄⏎⇧⇪⌂⌘⌫♈♉♋♌☺☹⚢✶⌑➢➣➥➦➪➩➨↰↱↲↳↴↶↷⇕⇖⇗⇘⇙⇚⇛⇧⇨⇦⇩⇪➔➘➙➚➛➜➝➞⏎➟➠➡☇☊☋⇍⇎⇏⇕➳➷➸➹➺➻
# ⤴⤵↵↔◆◇◢◣◤◥◊❖⎔⊞⊿◁◃◂◄▲△▴▼▾▿◮◭◐◑◒⦿◕◔⊖⊘『』
# ﹃﹄【】︼︻︽︾︿﹀﹃﹄╽╾╼╿╏╍╌┅┄┆┇┈┉⋓⋒⋑⋐┊┋┥┤┴┵┶┧┷┸┨┲┱┰┠┟┞┝├┬┫├┍┎┏┐┑┒┓└└┕┖┗┘┙┚┛

# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
#命令提示符 {{{
precmd () {
#local gitprompt=$(git_super_status)
local gitprompt=$(git_prompt_info)
local zero='%([BSUbfksu]|([FK]|){*})'
local gitpromptsize=${#${(S%%)gitprompt//$~zero/}}

local smile="%(?,$GREEN☀%{$reset_color%},$RED☂%{$reset_color%})"
local count_db_wth_char=${#${${(%):-%/}//[[:ascii:]]/}}
HBAR=" -"

local theme="default"

if [[ $theme == "complex" ]]; then
    local leftsize=${#${(%):-♆<%M %/}}+$gitpromptsize+$count_db_wth_char
    local rightsize=${#${(%):-%D %T>♆}}

    FILLBAR="\${(l.(($COLUMNS - ($leftsize + $rightsize +2)))..${HBAR}.)}"

    #RPROMPT=$(echo "%(?..$RED%?$FINISH)")
    PROMPT=$(echo "$_BLUE♆<$_CYAN%M $_GREEN%/${gitprompt} $_YELLOW${(e)FILLBAR} $_MAGENTA%D %T$_BLUE>♆$FINISH
$fg_bold[yellow][ $MAGENTA%n $BLUE%h ${smile}$fg_bold[yellow] ] $_RED%(!.➤.⨠) $FINISH")
elif [[ $theme == "simple" ]]; then
    local leftsize=${#${(%):-♆<%M@%n %/}}+$gitpromptsize+$count_db_wth_char
    local rightsize=${#${(%):-%D %T %h>♆}}+2

    FILLBAR="\${(l.(($COLUMNS - ($leftsize + $rightsize +2)))..${HBAR}.)}"

    #RPROMPT=$(echo "%(?..$RED%?$FINISH)")
    PROMPT=$(echo "$_BLUE♆<$_CYAN%M$YELLOW@$MAGENTA%n $_GREEN%/${gitprompt} $_YELLOW${(e)FILLBAR} ${smile} $_MAGENTA%D %T %h$_BLUE>♆$FINISH
$_RED%(!.➤.⨠) $FINISH")
elif [[ $theme == "classic" ]]; then
    PROMPT="%{${fg_bold[blue]}%}✿ %{${fg_bold[red]}%}%m%(!.☢.❖)%n %{${fg_bold[magenta]}%}:: %{${fg_bold[yellow]}%}%~%{${fg_bold[cyan]}%}$(git_prompt_info) %(?,%{${fg_bold[green]}%}☀%{$reset_color%},%{${fg_bold[red]}%}☂%{$reset_color%}) %{${fg_bold[blue]}%}»%{${reset_color}%} "
elif [[ $theme == "power" ]]; then
    PROMPT='%{%f%b%k%}$(build_prompt) '
    #RPROMPT='%{%F{yellow}%}[%*]'
    RPROMPT='%{%f%b%k%}$(build_rprompt) '
    #echo $(build_prompt)
    #echo $(build_rprompt)
    # TODO 继续完善
elif [[ $theme == "minimal" ]]; then
    PROMPT='%(?,%{${fg_bold[green]}%}☀%{$reset_color%},%{${fg_bold[red]}%}☂%{$reset_color%}) %{$fg_bold[yellow]%}%~%{$reset_color%}$(git_prompt_info) %{${fg_bold[magenta]}%}%(!.➤.⨠)%{${reset_color}%} '
else
    PROMPT="%{${fg_bold[blue]}%}✿ %{${fg_bold[red]}%}%m%(!.☢.❖)%n %{${fg_bold[magenta]}%}:: %{${fg_bold[yellow]}%}%~%{${fg_bold[cyan]}%}$(git_prompt_info) %(?,%{${fg_bold[green]}%}☀%{$reset_color%},%{${fg_bold[red]}%}☂%{$reset_color%}) %{${fg_bold[blue]}%}»%{${reset_color}%} "
    RPROMPT='%{${fg_bold[red]}%}< %w %T %! > %{${fg_bold[blue]}%}✿%{${reset_color}%}'
    # TODO 继续完善
fi

#在 Emacs终端 中使用 Zsh 的一些设置
if [[ "$TERM" == "dumb" ]]; then
setopt No_zle
PROMPT='%n@%M %/
>>'
fi
}

#}}}

#清空历史记录
#cat /dev/null > ${HOME}/.zhistory
#cat /dev/null > ${HOME}/.zsh_history

#标题栏、任务栏样式{{{
#case $TERM in (*xterm*|*rxvt*|(dt|k|E)term)
# preexec () { print -Pn "\e]0;%n@%M//%/\ $1\a" }
#;;
#esac
#}}}

#关于历史纪录的配置 {{{
#历史纪录条目数量
export HISTSIZE=100000
#注销后保存的历史纪录条目数量
export SAVEHIST=100000
#历史纪录文件
export HISTFILE=~/.zhistory
#以附加的方式写入历史纪录
setopt INC_APPEND_HISTORY
#如果连续输入的命令相同，历史纪录中只保留一个
setopt HIST_IGNORE_DUPS
#为历史纪录中的命令添加时间戳
setopt EXTENDED_HISTORY

#启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTO_PUSHD
#相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS

#在命令前添加空格，不将此命令添加到纪录文件中
setopt HIST_IGNORE_SPACE
#}}}

#每个目录使用独立的历史纪录{{{
#cd() {
#builtin cd "$@"                             # do actual cd
#fc -W                                       # write current history  file
#local HISTDIR="$HOME/.zsh_history$PWD"      # use nested folders for history
#if  [ ! -d "$HISTDIR" ] ; then          # create folder if needed
#mkdir -p "$HISTDIR"
#fi
#export HISTFILE="$HISTDIR/zhistory"     # set new history file
#touch $HISTFILE
#local ohistsize=$HISTSIZE
#HISTSIZE=0                              # Discard previous dir's history
#HISTSIZE=$ohistsize                     # Prepare for new dir's history
#fc -R                                       #read from current histfile
#}
#mkdir -p $HOME/.zsh_history$PWD
#export HISTFILE="$HOME/.zsh_history$PWD/zhistory"
 
#function allhistory { cat $(find $HOME/.zsh_history -name zhistory) }
#function convhistory {
#sort $1 | uniq |
#sed 's/^:\([ 0-9]*\):[0-9]*;\(.*\)/\1::::::\2/' |
#awk -F"::::::" '{ $1=strftime("%Y-%m-%d %T",$1) "|"; print }'
#}
#使用 histall 命令查看全部历史纪录
#function histall { convhistory =(allhistory) |
#sed '/^.\{20\} *cd/i\\' }
#使用 hist 查看当前目录历史纪录
#function hist { convhistory $HISTFILE }
 
#全部历史纪录 top50
#function top50 { allhistory | awk -F':[ 0-9]*:[0-9]*;' '{ $1="" ; print }' | sed 's/ /\n/g' | sed '/^$/d' | sort | uniq -c | sort -nr | head -n 50 }
 
#}}}

#杂项 {{{
#允许在交互模式中使用注释 例如：
#cmd #这是注释
setopt INTERACTIVE_COMMENTS

#启用自动 cd，输入目录名回车进入目录
#稍微有点混乱，不如 cd 补全实用
#setopt AUTO_CD

#禁用自动解析通配符
setopt no_nomatch

#扩展路径
#/v/c/p/p => /var/cache/pacman/pkg
setopt complete_in_word

#禁用 core dumps
limit coredumpsize 0

#Emacs风格 键绑定
bindkey -e
#设置 [DEL]键 为向后删除
bindkey "\e[3~" delete-char

#以下字符视为单词的一部分
WORDCHARS='*?_-[]~=&;!#$%^(){}<>'
#}}}

#自动补全功能 {{{
setopt AUTO_LIST
setopt AUTO_MENU
#开启此选项，补全时会直接选中菜单项
#setopt MENU_COMPLETE

#自动补全缓存
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path .zcache
zstyle ':completion:*:cd:*' ignore-parents parent pwd

#自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect: lines: %L matches: %M [%p]'

zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate

#路径补全
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'
zstyle ':completion::complete:*' '\\'


#修正大小写
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
#错误校正   坑爹功能
#zstyle ':completion:*' completer _complete _match _approximate
#zstyle ':completion:*:match:*' original only
#zstyle ':completion:*:approximate:*' max-errors 1 numeric

#kill 命令补全
compdef pkill=killall
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:processes' command 'ps -au$USER'

#补全类型提示分组
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
zstyle ':completion:*:corrections' format $'\e[01;32m -- %d (errors: %e) --\e[0m'

# cd ~ 补全顺序
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
#}}}

##行编辑高亮模式 {{{
# Ctrl+@ 设置标记，标记和光标点之间为 region
zle_highlight=(region:bg=magenta #选中区域
special:bold #特殊字符
isearch:underline) #搜索时使用的关键字
#}}}

##空行(光标在行首)补全 "cd " {{{
user-complete(){
case $BUFFER in
"" ) # 空行填入 "cd "
BUFFER="cd "
zle end-of-line
zle expand-or-complete
;;
"cd " ) # TAB + 空格 替换为 "cd ~"
BUFFER="cd ~"
zle end-of-line
zle expand-or-complete
;;
" " )
BUFFER="!?"
zle end-of-line
;;
"cd --" ) # "cd --" 替换为 "cd +"
BUFFER="cd +"
zle end-of-line
zle expand-or-complete
;;
"cd +-" ) # "cd +-" 替换为 "cd -"
BUFFER="cd -"
zle end-of-line
zle expand-or-complete
;;
* )
zle expand-or-complete
;;
esac
}
zle -N user-complete
bindkey "\t" user-complete

#显示 path-directories ，避免候选项唯一时直接选中
cdpath="/home"
#}}}

##在命令前插入 sudo {{{
#定义功能
sudo-command-line() {
[[ -z $BUFFER ]] && zle up-history
[[ $BUFFER != sudo\ * ]] && BUFFER="sudo $BUFFER"
zle end-of-line #光标移动到行末
}
zle -N sudo-command-line
#定义快捷键为： [Esc] [Esc]
bindkey "\e\e" sudo-command-line
#}}}

#命令别名 {{{
if [ -f ~/.vimrc ];then
    alias vim='vim -u ~/.vimrc'
fi
alias -g vi='vim'
alias -g ls='ls -F --color=auto'
alias -g ll='ls -l'
alias -g la='ls -a'
alias -g l='ls'
alias -g cls='clear'
alias -g mkdir='mkdir -p'
#alias -g md='mkdir'
#alias -g jobs='jobs -l'
#alias -g cp='rsync -avP --progress'
#alias -g mv='rsync -avP --progress --remove-source-files'
alias -g grep='grep -P --color=auto'
#alias ping='fping -e'
#alias sudo='sudo env PATH=$PATH'

#alias -g history='history -fi'
alias open='xdg-open'


#[Esc][h] man 当前命令时，显示简短说明
alias run-help >&/dev/null && unalias run-help
autoload run-help

#历史命令 top10
alias top10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'
#}}}

#路径别名 {{{
#进入相应的路径时只要 cd ~xxx
hash -d HIST="$HISTDIR"
#}}}

#{{{自定义补全
#补全 ping
zstyle ':completion:*:ping:*' hosts g.cn facebook.com

#def pacman-color completion as pacman
#compdef pacman-color=pacman
#}}}

#{{{ F1 计算器
arith-eval-echo() {
LBUFFER="${LBUFFER}echo \$(( "
RBUFFER=" ))$RBUFFER"
}
zle -N arith-eval-echo
bindkey "^[[11~" arith-eval-echo
#}}}

####{{{
#function timeconv { date -d @$1 +"%Y-%m-%d %T" }

# }}}

# ccat 高亮显示输出
# alias cat='ccat'

# pygments 高亮显示输出
function pat() {
    local style="monokai"
    if [ $# -eq 0 ]; then
        pygmentize -P style=$style -P tabsize=4 -f terminal256 -g
    else
        for NAME in $@; do
            pygmentize -P style=$style -P tabsize=4 -f terminal256 -g "$NAME"
        done
    fi
}
# alias cat='pat'

# highlight 高亮显示输出
function hl() {
    local syntax="zsh"
    local style="bipolar"
    if [ $# -eq 0 ]; then
        highlight -O xterm256 -t 4 -s $style -S $syntax
    else
        highlight -O xterm256 -t 4 -s $style $@ 2> /dev/null || highlight -O xterm256 -t 4 -s $style -S $syntax $@
    fi
}
# alias cat='hl'

command_not_found_handler () {      #if the command is not found, let bash show the message and advice(zsh could only show "command not found").
        runcnf=1 
        retval=127 
        [ ! -S /var/run/dbus/system_bus_socket ] && runcnf=0 
        [ ! -x /usr/libexec/packagekitd ] && runcnf=0 
        if [ $runcnf -eq 1 ]
        then
                /usr/libexec/pk-command-not-found $@
                retval=$? 
        fi
        return 0                   #if return $retval, both the bash and zsh messages will be shown in the terminal, if return 0, only the bash massage will be shown.
}

####{{{
#function command_not_found_handler() {
#python /usr/lib/command-not-found $1
#return 0
#}
# }}}

#zmodload zsh/mathfunc
#autoload -U zsh-mime-setup
#zsh-mime-setup
#setopt EXTENDED_GLOB
#autoload -U promptinit
#promptinit
#prompt redhat
 
#setopt correctall
#autoload compinstall

## END OF FILE #################################################################
# vim:filetype=zsh foldmethod=marker autoindent expandtab shiftwidth=4

#autojump
if [ $commands[autojump] ]; then # check if autojump is installed
  if [ -f $HOME/.autojump/etc/profile.d/autojump.zsh ]; then # manual user-local installation
    . $HOME/.autojump/etc/profile.d/autojump.zsh
  elif [ -f /usr/share/autojump/autojump.zsh ]; then # debian and ubuntu package
    . /usr/share/autojump/autojump.zsh
  elif [ -f /etc/profile.d/autojump.zsh ]; then # manual installation
    . /etc/profile.d/autojump.zsh
  elif [ -f /etc/profile.d/autojump.sh ]; then # gentoo installation
    . /etc/profile.d/autojump.sh
  elif [ -f /usr/local/share/autojump/autojump.zsh ]; then # freebsd installation
    . /usr/local/share/autojump/autojump.zsh
  elif [ -f /opt/local/etc/profile.d/autojump.zsh ]; then # mac os x with ports
    . /opt/local/etc/profile.d/autojump.zsh
  elif [ $commands[brew] -a -f `brew --prefix`/etc/autojump.zsh ]; then # mac os x with brew
    . `brew --prefix`/etc/autojump.zsh
  fi
fi

# web_search from terminal
function web_search() {
  # get the open command
  local open_cmd
  if [[ "$OSTYPE" = darwin* ]]; then
    open_cmd='open'
  else
    open_cmd='xdg-open'
  fi

  # check whether the search engine is supported
  if [[ ! $1 =~ '(google|bing|baidu|pan115|zhongzilou)' ]];
  then
    echo "Search engine $1 not supported."
    return 1
  fi

  local url="https://www.$1.com"

  # no keyword provided, simply open the search engine homepage
  if [[ $# -le 1 ]]; then
    $open_cmd "$url"
    return
  fi
  local kwd=($@)
  unset kwd[1]
  kwd=$(echo $kwd)
  case $1 in
    "baidu")
        url="${url}/s?wd=$kwd"
        ;;
    "pan115")
        url="${url/https/http}/search?key=$kwd"
        ;;
     "zhongzilou")
        url="${url}/list/$kwd""/1"
        ;;
    *)
        url="${url}/search?q=$kwd"
  esac

  #shift   # shift out $1

  #url="${url%?}" # remove the last '+'
  nohup $open_cmd "$url" &> /dev/null 
}
alias baidu='web_search baidu'
alias bing='web_search bing'
alias google='web_search google'
#add your own !bang searches here
alias pan='web_search pan115'
alias zzl='web_search zhongzilou'

#extract自动解压，同样适用于bash
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in $@
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar) 
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}

#漂亮又实用的命令高亮界面
setopt extended_glob
 TOKENS_FOLLOWED_BY_COMMANDS=('|' '||' ';' '&' '&&' 'sudo' 'do' 'time' 'strace')
 
recolor-cmd() {
    region_highlight=()
    colorize=true
    start_pos=0
    for arg in ${(z)BUFFER}; do
        ((start_pos+=${#BUFFER[$start_pos+1,-1]}-${#${BUFFER[$start_pos+1,-1]## #}}))
        ((end_pos=$start_pos+${#arg}))
        if $colorize; then
            colorize=false
            res=$(LC_ALL=C builtin type $arg 2>/dev/null)
            case $res in
                *'reserved word'*)   style="fg=magenta,bold";;
                *'alias for'*)       style="fg=cyan,bold";;
                *'shell builtin'*)   style="fg=yellow,bold";;
                *'shell function'*)  style='fg=green,bold';;
                *"$arg is"*)
                    [[ $arg = 'sudo' ]] && style="fg=red,bold" || style="fg=blue,bold";;
                *)                   style="fg=cyan,bold";;
            esac
            region_highlight+=("$start_pos $end_pos $style")
        fi
        [[ ${${TOKENS_FOLLOWED_BY_COMMANDS[(r)${arg//|/\|}]}:+yes} = 'yes' ]] && colorize=true
        start_pos=$end_pos
    done
}

 
#高亮命令和自动补全命令的插件均注册了self-insert和backward-delete-char事件，一次后注册的会覆盖前注册的，所以直接在后注册的函数中调用命令高亮的函数即可
check-cmd-self-insert() { zle .self-insert && recolor-cmd }
check-cmd-backward-delete-char() { zle .backward-delete-char && recolor-cmd }
 
zle -N self-insert check-cmd-self-insert
zle -N backward-delete-char check-cmd-backward-delete-char

#彩色补全菜单
# eval $(dircolors -b)

#文件类型高亮
# export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*=02;36:*.cmd=01;32:*.CMD=01;32:*.exe=01;32:*.EXE=01;32:*.com=01;32:*.COM=01;32:*.ocx=01;32:*.OCX=01;32:*.bat=01;32:*.BAT=01;32:*.rsp=01;32:*.RSP=01;32:*.btm=01;32:*.BTM=01;32:*.dll=01;32:*.DLL=01;32:*.tar=00;31:*.TAR=00;31:*.xz=00;31:*.XZ=00;31:*.tbz=00;31:*.TBZ=00;31:*.tgz=00;31:*.TGZ=00;31:*.rpm=00;31:*.RPM=00;31:*.deb=00;31:*.DEB=00;31:*.arj=00;31:*.ARJ=00;31:*.jar=00;31:*.JAR=00;31:*.taz=00;31:*.TAZ=00;31:*.lzh=00;31:*.LZH=00;31:*.lzma=00;31:*.LZMA=00;31:*.rar=00;31:*.RAR=00;31:*.zip=00;31:*.ZIP=00;31:*.iso=00;31:*.ISO=00;31:*.zoo=00;31:*.ZOO=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.GZ=00;31:*.bz2=00;31:*.BZ2=00;31:*.tb2=00;31:*.TB2=00;31:*.tz2=00;31:*.TZ2=00;31:*.tbz2=00;31:*.TBZ2=00;31:*.bin=00;31:*.BIN=00;31:*.bak=00;31:*.BAK=00;31:*.new=00;31:*.NEW=00;31:*.old=00;31:*.OLD=00;31:*.cab=00;31:*.CAB=00;31:*.mdf=01;31:*.MDF=01;31:*.vdi=01;31:*.VDI=01;31:*.box=01;31:*.BOX=01;31:*.vbox=01;31:*.VBOX=01;31:*.bmp=01;33:*.BMP=01;33:*.fli=01;33:*.FLI=01;33:*.gif=01;33:*.GIF=01;33:*.jpg=01;33:*.JPG=01;33:*.jpeg=01;33:*.JPEG=01;33:*.mng=01;33:*.MNG=01;33:*.mov=01;33:*.MOV=01;33:*.mpg=01;33:*.MPG=01;33:*.pcx=01;33:*.PCX=01;33:*.pbm=01;33:*.PBM=01;33:*.pgm=01;33:*.PGM=01;33:*.png=01;33:*.PNG=01;33:*.ico=01;33:*.ICO=01;33:*.ppm=01;33:*.PPM=01;33:*.tga=01;33:*.TGA=01;33:*.tif=01;33:*.TIF=01;33:*.tiff=01;33:*.TIFF=01;33:*.xbm=01;33:*.XBM=01;33:*.xpm=01;33:*.XPM=01;33:*.dl=01;33:*.DL=01;33:*.gl=01;33:*.GL=01;33:*.avi=01;36:*.AVI=01;36:*.wmv=01;36:*.WMV=01;36:*.rm=01;36:*.RM=01;36:*.rmvb=01;36:*.RMVB=01;36:*mp4=01;36:*.MP4=01;36:*.swf=01;36:*.SWF=01;36:*.mkv=01;36:*.MKV=01;36:*.otf=02;33:*.OTF=02;33:*.ttf=02;33:*.TTF=02;33:*.eot=02;33:*.EOT=02;33:*.woff=02;33:*.WOFF=02;33:*.ttc=02;33:*.TTC=02;33:*.woff2=02;33:*.WOFF2=02;33:*.fon=02;33:*.FON=02;33:*.font=02;33:*.FONT=02;33:*.aiff=02;34:*.AIFF=02;34:*.au=02;34:*.AU=02;34:*.mid=02;34:*.MID=02;34:*.mp3=02;34:*.MP3=02;34:*.ogg=02;34:*.OGG=02;34:*.voc=02;34:*.VOC=02;34:*.wav=02;34:*.WAV=02;34:*.tmp=00;33:*.TMP=00;33:*.temp=00;33:*.TEMP=00;33:*.txt=00;33:*.TXT=00;33:*.ini=00;33:*.INI=00;33:*.cf=00;33:*.CF=00;33:*.conf=00;33:*.CONF=00;33:*.cfg=00;33:*.CFG=00;33:*.properties=00;33:*.PROPERTIES=00;33:*.log=00;33:*.LOG=00;33:*.pas=00;33:*.PAS=00;33:*.pass=00;33:*.PASS=00;33:*.map=00;33:*.MAP=00;33:*.out=00;33:*.OUT=00;33:*.res=00;33:*.RES=00;33:*.todo=00;33:*.TODO=00;33:*.crt=00;33:*.CRT=00;33:*.pem=00;33:*.PEM=00;33:*.doc=00;33:*.DOC=00;33:*.docx=00;33:*.DOCX=00;33:*.xls=00;33:*.XLS=00;33:*.xlsx=00;33:*.XLSX=00;33:*.ppt=00;33:*.PPT=00;33:*.pptx=00;33:*.PPTX=00;33:*.pdf=00;33:*.PDF=00;33:*.chm=00;33:*.CHM=00;33:*.csv=00;33:*.CSV=00;33:*.wps=00;33:*.WPS=00;33:*.desktop=02;35:*.DESKTOP=02;35:*.tx=02;35:*.TX=02;35:*.block=02;35:*.BLOCK=02;35:*.idx=02;35:*.IDX=02;35:*.wiz=02;35:*.WIZ=02;35:*.sock=02;35:*.SOCK=02;35:*.pid=02;35:*.PID=02;35:*.et=02;35:*.ET=02;35:*.zsh=00;35:*.ZSH=00;35:*.fish=00;35:*.FISH=00;35:*.bashrc=00;35:*.BASHRC=00;35:*.zshrc=00;35:*.ZSHRC=00;35:*.vimrc=00;35:*.VIMRC=00;35:*.md=00;35:*.MD=00;35:*.yaml=00;35:*.YAML=00;35:*.xml=00;35:*.XML=00;35:*.xaml=00;35:*.XAML=00;35:*.repo=00;35:*.REPO=00;35:*.js=00;35:*.JS=00;35:*.json=00;35:*.JSON=00;35:*.sh=00;35:*.SH=00;35:*.css=00;35:*.CSS=00;35:*.htm=00;35:*.HTM=00;35:*.html=00;35:*.HTML=00;35:*.svg=00;35:*.SVG=00;35:*.h=00;35:*.H=00;35:*.hpp=00;35:*.HPP=00;35:*.hxx=00;35:*.HXX=00;35:*.c=00;35:*.C=00;35:*.obj=00;35:*.OBJ=00;35:*.cpp=00;35:*.CPP=00;35:*.c++=00;35:*.C++=00;35:*.cxx=00;35:*.CXX=00;35:*.cc=00;35:*.CC=00;35:*.cs=00;35:*.CS=00;35:*.vb=00;35:*.VB=00;35:*.java=00;35:*.JAVA=00;35:*.do=00;35:*.DO=00;35:*.asp=00;35:*.ASP=00;35:*.aspx=00;35:*.ASPX=00;35:*.m=00;35:*.M=00;35:*.php=00;35:*.PHP=00;35:*.jsp=00;35:*.JSP=00;35:*.pl=00;35:*.PL=00;35:*.prl=00;35:*.PRL=00;35:*.lua=00;35:*.LUA=00;35:*.d=00;35:*.D=00;35:*.rs=00;35:*.RS=00;35:*.rb=00;35:*.RB=00;35:*.py=00;35:*.PY=00;35:*.pyc=00;35:*.PYC=00;35:*.s=00;35:*.S=00;35:*.f=00;35:*.F=00;35:*.go=00;35:*.GO=00;35:*.scala=00;35:*.SCALA=00;35:*.sol=00;35:*.SOL=00;35:*.tcl=00;35:*.TCL=00;35:*.sql=00;35:*.SQL=00;35:*.test=02;36:'

eval $(dircolors -b $(dirname $0)/DIR_COLORS)

export ZLSCOLORS="${LS_COLORS}"
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

#强制启用颜色高亮
force_color_prompt=yes

#高亮man帮助文档，zsh中启用colored-man可达到一样效果
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# syntax color definition
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

typeset -A ZSH_HIGHLIGHT_STYLES

# ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
# ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'

ZSH_HIGHLIGHT_STYLES[default]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=033,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=032,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=031,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=036,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=034,bold
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=034,bold
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=071,bold
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=fg=211,underline
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=125,underline
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=fg=223,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=158,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=214,bold,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=180,bold
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=181,bold
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=093,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=062,bold
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063,bold
ZSH_HIGHLIGHT_STYLES[double-quoted-argument_unclosed]=fg=064,bold
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=131,bold
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=011,bold
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=132,bold
ZSH_HIGHLIGHT_STYLES[comment]=fg=101,bold
ZSH_HIGHLIGHT_STYLES[redirection]=fg=125,bold
ZSH_HIGHLIGHT_STYLES[assign]=fg=magenta,bold
# ZSH_HIGHLIGHT_STYLES[assign]=none

ZSH_HIGHLIGHT_REGEXP+=('\bsudo\b' fg=123,bold)

# vi mode
#使用:<<' 注释内容 ' 的形式注释掉Incremental completion插件，删除空行的单引号可以重新启用
# Updates editor information when the keymap changes.
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

# Ensure that the prompt is redrawn when the terminal size changes.
TRAPWINCH() {
  zle &&  zle -R
}

zle -N zle-keymap-select
zle -N edit-command-line


bindkey -v

# allow v to edit the command line (standard behaviour)
autoload -Uz edit-command-line
bindkey -M vicmd 'v' edit-command-line

# allow ctrl-p, ctrl-n for navigate history (standard behaviour)
bindkey '^P' up-history
bindkey '^N' down-history

# allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# allow ctrl-r to perform backward search in history
bindkey '^r' history-incremental-search-backward

# allow ctrl-a and ctrl-e to move to beginning/end of line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# if mode indicator wasn't setup by theme, define default
if [[ "$MODE_INDICATOR" == "" ]]; then
  MODE_INDICATOR="%{$fg_bold[red]%}<%{$fg[red]%}<<%{$reset_color%}"
fi

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}"
}

# define right prompt, if it wasn't defined by a theme
if [[ "$RPS1" == "" && "$RPROMPT" == "" ]]; then
  RPS1='$(vi_mode_prompt_info)'
fi


#使用:<<' 注释内容 ' 的形式注释掉Incremental completion插件，删除空行的单引号可以重新启用
:<<'
# Incremental completion for zsh
# by y.fujii <y-fujii at mimosa-pudica.net>, public domain

autoload -U compinit
zle -N self-insert self-insert-incr
zle -N vi-cmd-mode-incr
zle -N vi-backward-delete-char-incr
zle -N backward-delete-char-incr
zle -N expand-or-complete-prefix-incr
compinit

bindkey -M viins '^[' vi-cmd-mode-incr
bindkey -M viins '^h' vi-backward-delete-char-incr
bindkey -M viins '^?' vi-backward-delete-char-incr
bindkey -M viins '^i' expand-or-complete-prefix-incr
bindkey -M emacs '^h' backward-delete-char-incr
bindkey -M emacs '^?' backward-delete-char-incr
bindkey -M emacs '^i' expand-or-complete-prefix-incr

unsetopt automenu
compdef -d scp
compdef -d tar
compdef -d make
compdef -d java
compdef -d svn
compdef -d cvs

# TODO:
#     cp dir/

now_predict=0

function limit-completion
{
	if ((compstate[nmatches] <= 1)); then
		zle -M ""
#     elif ((compstate[list_lines] > 6)); then
#		 compstate[list]=""
#        zle -M "too many matches."
	fi
}

function correct-prediction
{
	if ((now_predict == 1)); then
		if [[ "$BUFFER" != "$buffer_prd" ]] || ((CURSOR != cursor_org)); then
			now_predict=0
		fi
	fi
	recolor-cmd
}

function remove-prediction
{
	if ((now_predict == 1)); then
		BUFFER="$buffer_org"
		now_predict=0
	fi
	recolor-cmd
}

function show-prediction
{
	#assert(now_predict == 0)
	if
		((PENDING == 0)) &&
		((CURSOR > 1)) &&
		[[ "$PREBUFFER" == "" ]] &&
		[[ "$BUFFER[CURSOR]" != " " ]]
	then
		cursor_org="$CURSOR"
		buffer_org="$BUFFER"
		#comppostfuncs=(limit-completion)
		zle complete-word
		cursor_prd="$CURSOR"
		buffer_prd="$BUFFER"
		if [[ "$buffer_org[1,cursor_org]" == "$buffer_prd[1,cursor_org]" ]]; then
			CURSOR="$cursor_org"
			if [[ "$buffer_org" != "$buffer_prd" ]] || ((cursor_org != cursor_prd)); then
				now_predict=1
			fi
		else
			BUFFER="$buffer_org"
			CURSOR="$cursor_org"
		fi
		echo -n "\e[32m"
	else
		zle -M ""
	fi
}

function preexec
{
	echo -n "\e[39m"
}

function vi-cmd-mode-incr
{
	correct-prediction
	remove-prediction
	zle vi-cmd-mode
}

function self-insert-incr
{
	correct-prediction
	remove-prediction
	if zle .self-insert; then
		show-prediction
	fi
	recolor-cmd
}

function vi-backward-delete-char-incr
{
	correct-prediction
	remove-prediction
	if zle vi-backward-delete-char; then
		show-prediction
	fi
}

function backward-delete-char-incr
{
	correct-prediction
	remove-prediction
	if zle backward-delete-char; then
		show-prediction
	fi
	recolor-cmd
}

function expand-or-complete-prefix-incr
{
	correct-prediction
	if ((now_predict == 1)); then
		CURSOR="$cursor_prd"
		now_predict=0
		comppostfuncs=(limit-completion)
		zle list-choices
	else
		remove-prediction
		zle expand-or-complete-prefix
	fi
	recolor-cmd
}
'
