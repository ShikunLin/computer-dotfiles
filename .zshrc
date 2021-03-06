# Author: Kim Silkebækken <kim.silkebaekken+github@gmail.com>
# Source: https://github.com/Lokaltog/sync
# Environment variables {{{
    # Command history {{{
        export HISTFILE=~/.zshhist
        export HISTSIZE=10000
        export SAVEHIST=$HISTSIZE
        export CLICOLOR=1
        export LSCOLORS=GxFxCxDxBxegedabagaced
    # }}}
    # Colors {{{
        export GREP_COLORS="38;5;230:sl=38;5;240:cs=38;5;100:mt=38;5;161:fn=38;5;197:ln=38;5;212:bn=38;5;44:se=38;5;166"
        export LS_COLORS="*.tar.bz2=38;5;226:*.tar.xz=38;5;130:*PKGBUILD=48;5;233;38;5;160:*.html=38;5;213:*.htm=38;5;213:*.vim=38;5;142:*.css=38;5;209:*.screenrc=38;5;120:*.procmailrc=38;5;120:*.zshrc=38;5;120:*.bashrc=38;5;120:*.xinitrc=38;5;120:*.vimrc=38;5;120:*.htoprc=38;5;120:*.muttrc=38;5;120:*.gtkrc-2.0=38;5;120:*.fehrc=38;5;120:*.rc=38;5;120:*.md=38;5;130:*.markdown=38;5;130:*.conf=38;5;148:*.h=38;5;81:*.rb=38;5;192:*.c=38;5;110:*.diff=38;5;31:*.yml=38;5;208:*.pl=38;5;178:*.csv=38;5;136:tw=38;5;003:*.chm=38;5;144:*.bin=38;5;249:*.pdf=38;5;203:*.mpg=38;5;38:*.ts=38;5;39:*.sfv=38;5;191:*.m3u=38;5;172:*.txt=38;5;192:*.log=38;5;190:*.swp=38;5;241:*.swo=38;5;240:*.theme=38;5;109:*.zsh=38;5;173:*.nfo=38;5;113:mi=38;5;124:or=38;5;160:ex=38;5;197:ln=target:pi=38;5;130:ow=38;5;208:fi=38;5;007:so=38;5;167:di=38;5;30:*.pm=38;5;197:*.pl=38;5;166:*.sh=38;5;243:*.patch=38;5;37:*.tar=38;5;118:*.tar.gz=38;5;172:*.zip=38;5;11::*.rar=38;5;11:*.tgz=38;5;11:*.7z=38;5;11:*.mp3=38;5;173:*.flac=38;5;166:*.mkv=38;5;115:*.avi=38;5;114:*.wmv=38;5;113:*.jpg=38;5;66:*.jpeg=38;5;67:*.png=38;5;68:*.pacnew=38;5;33"
    # }}}
    # Locale {{{
        export LANG="en_US.utf8"
        export LC_CTYPE="sk_SK.utf8"
        export LC_NUMERIC="sk_SK.utf8"
        export LC_TIME="sk_SK.utf8"
        export LC_COLLATE="sk_SK.utf8"
        export LC_MONETARY="sk_SK.utf8"
        export LC_MESSAGES="en_US.utf8"
        export LC_PAPER="sk_SK.utf8"
        export LC_NAME="sk_SK.utf8"
        export LC_ADDRESS="sk_SK.utf8"
        export LC_TELEPHONE="sk_SK.utf8"
        export LC_MEASUREMENT="sk_SK.utf8"
        export LC_IDENTIFICATION="sk_SK.utf8"
        export LC_ALL=""
    # }}}
    # Applications {{{
        export LESS_VIM="vim -R \
            -c 'let no_plugin_maps = 1' \
            -c 'set foldlevel=999 scrolloff=999 nolist noma nomod nonumber nowrap laststatus=2 foldcolumn=0 viminfo=' \
            -c 'map <Space> <C-D>' \
            -c 'noremap q :q<CR>' \
            -c 'hi RedundantSpaces none'"
        export PAGER="sed 's/\x1b\[[0-9]\{0,2\}\(;[0-9]\{1,2\}\)\{0,2\}m//g' | $LESS_VIM -" # remove ansi colors with sed
        export MANPAGER="sh -c \"unset PAGER; col -b -x | $LESS_VIM \
            -c 'set ft=man' \
            -c 'map K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' \
            -c 'normal M' \
            -\""
        export EDITOR="vim"
        export VISUAL="vim"
        export BROWSER="firefox"
        export DE="gnome"
        export TERM="xterm-256color"
    # }}}
# }}}
# Zsh options {{{
    typeset -g -A key
    typeset -U path cdpath fpath manpath

    setopt auto_cd # Change dir without cd
    setopt extended_glob # Regex globbing
    setopt notify # Report the status if background jobs immediately
    setopt complete_in_word # Not just at the end
    setopt always_to_end # When complete from middle, move cursor
    setopt no_match # Show error if pattern has no matches
    setopt no_beep # Disable beeps
    setopt list_packed # Compact completion lists
    setopt list_types # Show types in completion
    setopt rec_exact # Recognize exact, ambiguous matches
    setopt hist_verify # When using ! cmds, confirm first
    setopt hist_ignore_all_dups # Ignore dups in command history
    setopt hist_ignore_space # Don't add commands prepended by whitespace to history
    setopt append_history # Allow multiple sessions to append to the history file
    setopt extended_history # Save additional info to history file
    setopt inc_append_history # Append commands to history immediately
    setopt prompt_subst # Enable variable substitution in prompt
    setopt correct # Command correction
    setopt short_loops # Allow short loops
    setopt auto_pushd # Automatically push directories onto dirstack
# }}}
# Keybindings {{{
    bindkey -v

    bindkey '^?' backward-delete-char
    bindkey '^[[1~' beginning-of-line # Home
    bindkey '^[[4~' end-of-line # End
    bindkey '^[[3~' delete-char # Del
    bindkey '^[[5~' up-line-or-history  # Page Up
    bindkey '^[[6~' down-line-or-history # Page Down
    bindkey "^[[7~" beginning-of-line # Home
    bindkey "^[[8~" end-of-line # End
    bindkey '^[[A' up-line-or-search # Up
    bindkey '^[[D' backward-char # Left
    bindkey '^[[B' down-line-or-search # Down
    bindkey '^[[C' forward-char # Right
    bindkey "^[OH" beginning-of-line
    bindkey "^[OF" end-of-line
    bindkey "^r" history-incremental-search-backward
    bindkey "^A" beginning-of-line
    bindkey "^E" end-of-line
    bindkey "^K" vi-change-eol
# }}}
# Aliases {{{
    # General aliases {{{
        alias sudo="sudo -E"
        alias _="sudo"
        alias -- +="sudo"
        alias sv="+ vim"
        alias ls='ls -Fh --color'
        alias ss="+ -s"
        alias sd="+ shutdown -h now"
        alias rb="+ reboot"
        alias mv="nocorrect mv -iv"
        alias cp="nocorrect cp -iv"
        alias mkdir="nocorrect mkdir -vp"
        alias chmod="chmod -v"
        alias chown="chown -v"
        alias dv="dirs -v"
    # }}}
    # Default sudo commands {{{
        for cmd in pacman rc.d; do
            alias $cmd="+ $cmd"
        done
    # }}}
    # Suffix aliases {{{
        alias -s html=$BROWSER
        alias -s {php,tpl,txt,PKGBUILD}=$EDITOR
        alias -s {jpg,JPG,jpeg,JPEG,png,PNG,gif,GIF}="feh -FZd"
        alias -s {mpg,mpeg,avi,ogm,wmv,m4v,mp4,mov}="mplayer -idx"
        alias -s {pdf}="open"
    # }}}
    # Git aliases {{{
        alias g="git"
        alias gst="g status"
        alias gc="g commit -v"
        alias gp="g push"
    # }}}
    # Ruby aliases {{{
      alias be="bundle exec"
    # }}}
    # Utilities {{{
        alias goawayswapfilesyouareswapfilesidontevenneedyou='rm ~/.vim/tmp/swap/*'
    # }}}
# }}}
# Completion {{{
    autoload -Uz compinit && compinit
    # SSH hosts completion {{{
        [ -f ~/.ssh/config ] && : ${(A)ssh_config_hosts:=${${${${(@M)${(f)"$(<~/.ssh/config)"}:#Host *}#Host }:#*\**}:#*\?*}}
        [ -f ~/.ssh/known_hosts ] && : ${(A)ssh_known_hosts:=${${${(f)"$(<$HOME/.ssh/known_hosts)"}%%\ *}%%,*}}
        zstyle ':completion:*:*:*' hosts $ssh_config_hosts $ssh_known_hosts
    # }}}
    # General rules {{{
        zstyle ':completion:*' completer _complete _ignored
        zstyle ':completion:*' expand prefix suffix
        zstyle ':completion:*' group-name ''
        zstyle ':completion:*' ignore-parents parent pwd .. directory
        zstyle ':completion:*' insert-unambiguous true
        zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
        zstyle ':completion:*' menu select
        zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
        zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
        zstyle ':completion:*' squeeze-slashes true
        zstyle ':completion::complete:*' use-cache 1
        zstyle ':completion::complete:*' cache-path ~/.zshcache
        zstyle ':completion:*:*:kill:*' menu yes select
        zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
        zstyle ':completion:*:*:killall:*:processes' command 'ps --forest -A -o pid,user,cmd'
        zstyle ':completion:*:processes-names' command 'ps axho command'
        zstyle ':completion:*:processes' command 'ps -au$USER -o pid,time,cmd|grep -v "ps -au$USER -o pid,time,cmd"'
        zstyle ':completion:*:cd:*' ignored-patterns '(*/)#lost+found'
        zstyle ':completion:*:matches' group yes
        zstyle ':completion:*:options' description yes
        zstyle ':completion:*:options' auto-description '%d'
        zstyle ':completion:*:descriptions' format $'\e[01;33m-- %d --\e[0m'
        zstyle ':completion:*:messages' format $'\e[01;35m-- %d --\e[0m'
        zstyle ':completion:*:warnings' format $'\e[01;31m-- no matches found --\e[0m'
        zstyle ':completion:*:manuals' separate-sections true
        zstyle ':completion:*:manuals.*' insert-sections   true
        zstyle ':completion:*:man:*' menu yes select
        zstyle ':completion:*:rm:*' ignore-line yes
        zstyle ':completion:*:cp:*' ignore-line yes
        zstyle ':completion:*:mv:*' ignore-line yes
    # }}}
    # Generic GNU compl. for apps that understang long options {{{
        compdef _gnu_generic slrnpull make df du mv cp makepkg
    # }}}
# }}}
# Root settings {{{
    if [[ $UID == 0 ]]; then
        # Close root shell after 180 seconds
        export TMOUT=180
    fi
# }}}
# Prompt {{{
    if [[ "$TERM" == "rxvt-256color" ]]; then
        CLEAR='%{[0m%}'
        # Regular prompt {{{
            typeset -A \
                C_SSH \
                C_USER \
                C_DIR
            # Default colors {{{
                C_SSH[BG]=166
                C_SSH[FG]=214

                C_USER[BG]=22
                C_USER[FG]=40

                C_DIR[BG]=235
                C_DIR[FG]=248
            # }}}
            # Root colors {{{
                if [[ $UID == 0 ]]; then
                    C_USER[BG]=88
                    C_USER[FG]=196
                fi
            # }}}
            # SSH host section {{{
                if [[ ! -z "$SSH_CLIENT" ]]; then
                    SSHPROMPT='%{[(48;5;${C_SSH[BG]});(38;5;${C_SSH[FG]})m%} Ĥ %M '
                    SSHPROMPT=$SSHPROMPT'%{[(48;5;${C_USER[BG]});(38;5;${C_SSH[BG]})m%}ǡ'
                fi
            # }}}
            PROMPT=$SSHPROMPT'%{[(48;5;${C_USER[BG]});(38;5;${C_USER[FG]})m%} %n '
            PROMPT=$PROMPT'%{[(48;5;${C_DIR[BG]});(38;5;${C_USER[BG]})m%}➜ '
            PROMPT=$PROMPT'%{[(48;5;${C_DIR[BG]});(38;5;${C_DIR[FG]})m%}%3~ '
            PROMPT=$PROMPT'${CLEAR}%{[38;5;${C_DIR[BG]}m%}${CLEAR} '
        # }}}
        # Right prompt {{{
            # VCS colors {{{
                typeset -A \
                    C_VCS

                C_VCS[BG]=53
                C_VCS[FG_VCS]=162
                C_VCS[FG_BRANCH]=219

                VCSPROMPT='%{[38;5;'${C_VCS[BG]}'m%}'
                VCSPROMPT=$VCSPROMPT'%{[(48;5;'${C_VCS[BG]}');(38;5;'${C_VCS[FG_VCS]}')m%} %s'
                VCSPROMPT=$VCSPROMPT'%{[38;5;'${C_VCS[FG_BRANCH]}'m%} %b '${CLEAR}
            # }}}
            # VCS info {{{
                autoload -Uz vcs_info

                zstyle ':vcs_info:*' enable git svn hg
                zstyle ':vcs_info:*' formats $VCSPROMPT

                precmd(){
                    vcs_info
                }
            # }}}
            RPROMPT='${vcs_info_msg_0_}'
        # }}}
    else
      ### Segment drawing
      # A few utility functions to make it easy and re-usable to draw segmented prompts

      CURRENT_BG='NONE'
      SEGMENT_SEPARATOR=''

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
        local user=`whoami`

        if [[ "$user" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
          prompt_segment black default "%(!.%{%F{yellow}%}.)$user@%m"
        fi
      }

      # Git: branch/detached head, dirty status
      prompt_git() {
        local ref dirty
        if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
          ZSH_THEME_GIT_PROMPT_DIRTY='±'
          # dirty=$(parse_git_dirty)
          ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git show-ref --head -s --abbrev |head -n1 2> /dev/null)"
          if [[ -n $dirty ]]; then
            prompt_segment yellow black
          else
            prompt_segment green black
          fi
          echo -n "${ref/refs\/heads\//}$dirty"
        fi
      }

      # Dir: current working directory
      prompt_dir() {
        prompt_segment blue black '%~'
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

      ## Main prompt
      build_prompt() {
        RETVAL=$?
        prompt_status
        prompt_context
        prompt_dir
        prompt_git
        prompt_end
      }

      PROMPT='%{%f%b%k%}$(build_prompt) '
    fi
    # List prompt - don't ask 'do you want to see all ...' in menu selection {{{
        LISTPROMPT=''
    # }}}
    # Spelling prompt {{{
        SPROMPT='zsh: correct '%R' to '%r'? ([Y]es/[N]o/[E]dit/[A]bort) '
    # }}}
# }}}
# ZLE stuff {{{
    # Smart dot (e.g. enter ..../dir) {{{
        smartdot(){
            if [[ $LBUFFER = *.. ]]; then
                LBUFFER+=/..
            else
                LBUFFER+=.
            fi
        }
        zle -N smartdot smartdot
        bindkey . smartdot
    # }}}
    # Quick add sudo {{{
        insert_sudo(){
            if [[ $LBUFFER != "sudo "* && $LBUFFER != '+ '* ]]; then
                LBUFFER="+ $LBUFFER"
            fi
        }
        zle -N insert-sudo insert_sudo
        bindkey "^B" insert-sudo
    # }}}
    # Integrate ranger {{{
        integrate_ranger(){
            local before="$(pwd)"
            ranger $before <$TTY
            local after="$(grep \^\' ~/.config/ranger/bookmarks)"
            after[1,2]=
            if [[ $before != $after ]]; then
                cd $after
                print "ranger: $before -> $after"
            fi
            zle redisplay
            precmd
            zle reset-prompt
        }
        zle -N integrated-ranger integrate_ranger
        bindkey "^F" integrated-ranger
    # }}}
# }}}

## cd, because typing the backslash is A LOT of work!!
#### not needed due to ZSH autocd opt
alias ,='ls'
alias ,,='ls -al'
alias .='cd ../; ls'
alias ..='cd ../../; ls'
alias ...='cd ../../../; ls'
alias ....='cd ../../../../; ls'

export PATH="$PATH:$HOME/.npm-packages/bin:$HOME/.local/bin"
