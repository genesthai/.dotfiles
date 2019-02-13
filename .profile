# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
if [ -e /home/genesthai/.nix-profile/etc/profile.d/nix.sh ]; then . /home/genesthai/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# https://www.dannyguo.com/blog/remap-caps-lock-to-escape-and-control/  ## -t 100
xcape -e 'Control_L=Escape' 



# Add snaps to PATH 
PATH="/snap:$PATH"

# Add linuxbrew ruby to path	
PATH=/home/linuxbrew/.linuxbrew/Homebrew/Library/Homebrew/vendor/portable-ruby/current/bin:$PATH


eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# LINUXBREW
PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# There's binaries in here.
PATH="/home/genesthai/.local/bin:$PATH"

# Add Doom Emacs to PATH
PATH="$HOME/.emacs.d/bin:$PATH"
export GIT_DISCOVERY_ACROSS_FILESYSTEM=1

if [ -f "$HOME/.nix-profile/bin/zsh" ] ; then
    exec /usr/bin/zsh
fi
