
# set up the prompt

# autoload -uz promptinit
# promptinit
# prompt adam1

# You may need to manually set your language environment
export LANG=en_US.UTF-8

setopt histignorealldups sharehistory
setopt autocd

 # use emacs keybindings even if our editor is set to vi
 # bindkey -e

# source ~/dotfiles/zsh/.oh-my-zsh.zsh
source ~/dotfiles/zsh/.exports.zsh
source ~/dotfiles/zsh/.aliases.zsh
# source ~/dotfiles/zsh/.functions.zsh
source ~/dotfiles/zsh/.env.zsh
# ~/.zshrc
source ~/.zsh_plugins.sh
# for file in ~/dotfiles/zsh/{.*}; do
#     [ -r "$file"] && [ -f "$file"] && source "$file";
# done
# unset file;

# # all of our zsh files
# typeset -u config_files
# config_files=($zsh/**/*.zsh)

# # load the path files
# for file in ${(m)config_files:#*/path.zsh}
# do
#   source $file
# done
