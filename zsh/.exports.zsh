#Change ls colours
# LS_COLORS="ow=01;36;40" && export LS_COLORS

HISTFILE=~/.zsh_history
# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000

PROMPT_COMMAND='history -a'

HISTCONTROL=ignoreboth


# remove the use of certain commands from history
HISTIGNORE='bg:fg:history'

# Record timestamps -- added 11/16/18
HISTTIMEFORMAT='%F %T '

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

PATH="$HOME/.nix-profile/bin:$PATH"

# added by pipx (https://github.com/cs01/pipx)
export PATH="/home/genesthai/.local/bin:$PATH"

#######
# FZF #
#######

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(em {})+abort'"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export FZF_ALT_C_COMMAND="bfs -type d -nohidden"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
########
# RUST #
########
RUST_SRC_PATH="~/.multirust/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rustc"
export racer_rust_src_path="~/.multirust/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rustc"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
