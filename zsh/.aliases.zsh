
alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"

alias af="sudo apt-fast install $@ -y"
alias afup="sudo apt-fast update"
alias afug="sudo apt-fast upgrade"
alias afupg="afup && afug"
alias afr="sudo apt-fast remove $@"

alias rmf="rm -rf $@"
alias h="history"
alias s="subl $@"
alias szh="s ~/.zshrc"
# alias dlsrv="ssh -i /home/genesthai/.ssh/aws-key-fast-ai.pem ubuntu@ec2-54-148-160-39.us-west-2.compute.amazonaws.com"

# Stop your instance: :
alias dlstop="aws ec2 stop-instances --instance-ids i-0eb4300b987d6766a"

# Start your instance:
alias dls="aws ec2 start-instances --instance-ids i-0eb4300b987d6766a"
alias dlstart="dls;sleep 20; echo -en "\007"; dlsrv"
# Reboot your instance:
alias dlreboot="aws ec2 reboot-instances --instance-ids i-0eb4300b987d6766a"



#########
# OS ALIASES
#########
alias ping="prettyping --nolegend"
alias top="htop"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"

#########
# GIT ALIASES
#########
# alias git="hub"
alias g="git $@"
alias ga="git add $@"
alias gcl="g clone $1"
alias gr="g reset"
alias grss="g reset --soft $@"
alias gfa="git fetch --all --prune"
alias grh="g reset --hard"
alias gpo="g push origin master"
alias gp="g push origin $@"
alias gphm="g push heroku master"
alias glog="g log --graph --date=short --decorate --pretty=oneline --abbrev-commit"
alias gf="git diff"

alias gfe="git fetch $@ --prune"
alias gchk="g checkout $@"
alias gpl="g pull"
alias grv="git remote -v"
alias grfl="g reflog"
alias grfls="g reflog stash"
alias gsha="g stash apply $@"
alias grb="g rebase $@"
alias gsh="g stash $@"
alias gshs="g stash save $@"
alias gb="g branch $@"
alias gs="g status -s"
alias gpcb="gp $(git rev-parse --abbrev-ref HEAD)"
alias gfc="g rev-list HEAD..master | tail -n 1"

####
#########
# EMACS ALIASES
#########
alias em="emacsclient -a \"\" -t"
alias ez="em ~/.zshrc"


#########
# TMUX ALIASES
#########
alias tma="tmux attach"



#########
# TRUFFLE ALIASES
#########
alias trf="truffle $@"
alias trfc="truffle compile"
alias trfm="truffle migrate"
alias trfco="truffle console"
alias trfb="trfc;trfm"
alias trfbc="trfc;trfm;trfco"

#########
# TRAVERSAL ALIASES
#########
alias t="touch $@"
alias ..="cd .."
alias d="cd ~/desktop"
#########

#########
# YARN ALIASES
#########
alias yi="yarn install"
alias y="yarn init --yes"
alias ya="yarn add $@"
alias yr="yarn run"
alias yrm="yarn remove $@"
alias yrs="yarn run start"
alias yrw="yarn run watch"
alias yrp="yarn run production"
alias yrt="yarn run test"
alias yrbd="yarn run build:dll"
alias yrb="yarn run build"
alias yad="yarn add $@ --dev"
alias yag="yarn global add $@"
alias yagr="yarn global remove $@"
alias yls="yarn ls"
alias yrv="yarn --version"


alias ngi="npm i -g $@"

#########
# PNPM ALIASES
#########
alias p="pnpm init --yes"
alias pig="pnpm install -g $@"
alias pid="pnpm install --save-dev $@"
alias pi="pnpm install $@"
alias pui="pnpm uninstall $@"
alias puig="pnpm uninstall -g $@"
# alias p=
# alias p=
# alias p=
# alias p=
#########
# BOOTSTRAPPING #########
alias CSS_loaders="yad css-loader style-loader node-sass sass-loader"
alias babel_config_dependencies="yad babel-plugin-transform-decorators-legacy babel-plugin-transform-class-properties babel-plugin-transform-es2015-classes babel-plugin-transform-runtime babel-plugin-syntax-async-functions babel-plugin-syntax-object-rest-spread babel-plugin-transform-async-to-generator babel-plugin-transform-class-properties babel-plugin-transform-object-rest-spread babel-core babel-loader babel-register babel-preset-react babel-preset-es2015 babel-preset-stage-3"
alias eslint_config_dependencies="yad eslint_d eslint-plugin-react"
alias react_dependencies="ya react react-dom react-hot-loader@3.0.0-beta.6"
alias webpack_dev_config_dependencies="yad webpack@2.1.0-beta.22 extract-text-webpack-plugin@2.0.0-beta.4 html-webpack-plugin happypack npm-install-webpack-plugin webpack-dashboard css-loader style-loader node-sass sass-loader babel-core babel-loader babel-register babel-polyfill babel-preset-react babel-preset-es2015 babel-preset-stage-3"
alias node_debug_presets="node-inspector nodemon"
# create a local copy of a pre-made .gitignore file
alias ignore_template="cat ~/.gitignore > .gitignore"
# boilerplate README.md file
alias readme_template="echo -e \"#\n---\n##\n---\n# By [](https://github.com/genesthai)\" > README.md"


#########
# UTILITY ALIASES
#########
alias c="bat $@"
alias sbp="bat ~/.zshrc | rg"
alias preview="fzf --preview 'bat --color \"always\" {}'\"\""
# alias wuzz="$GOPATH/bin/wuzz"

# alias n='nnn -d'

alias wipesublimesessioncache='rm ~/.config/sublime-text-3/Local/Auto\ Save\ Session.sublime_session'

alias yt="youtube-dl -c -i --external-downloader aria2c --external-downloader-args \"-j1 -x16 -s16 -k1M\""

alias own="sudo chmod -R ug+rwx $@"
alias sts="speedtest --secure --bytes"
alias stl="speedtest --list"
alias mk="mkdir -pv $@"
alias mkdir="mkdir -pv $@"
# alias l="exa -la --grid --classify"
# alias ls="exa --grid --classify"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias rt="rm *.torrent"

alias yarnupdate="curl -o- -L https://yarnpkg.com/install.sh | bash"
alias wh="which $@"


alias eth="ganache-cli $@"
#########
# WINDOWS ALIASES
#########
alias vcx="/mnt/c/Program\ Files/VcXsrv/vcxsrv.exe -multiwindow"
alias adb="/mnt/c/Users/platform-tools-latest-windows/platform-tools/adb.exe"

#########
# DOCKER ALIASES
#########
  # All containers

# alias dacs="docker ps -aq"
#   # All images

# alias daims="docker images -aq"
#   # Delete every Docker container
#   # Must be run first because images are attached to containers

# alias destroycontainers="docker rm $( dacs | awk '{print}' RS='\n' ORS=' ')"
#   # Delete every Docker image

# alias destroyimages="docker rmi $( daims | awk '{print}' RS='\n' ORS=' ')"
#   # Delete blank docker images

# alias destroyblanks="docker rmi $(daims | grep "<none>" | awk '{ print $3 }') -f"
#   # Copy arbitrary file/directory from last used container to target directory on host

################
# NIX
################
alias ne="nix-env $@"
alias nei="nix-env -i $@"

alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
# alias ~="cd ~" # `cd` is probably faster to type though
# alias -- -="cd -"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# # One of @janmoesen’s ProTip™s
# for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
# 	alias "${method}"="lwp-request -m '${method}'"
# done

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
