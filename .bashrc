### Dont use vi
alias vi="/usr/local/bin/vim"

export PS1="\w$ "
### See http://hackercodex.com/guide/mac-osx-mountain-lion-10.8-configuration/
# Set architecture flags
export ARCHFLAGS="-arch x86_64"
### End http://hackercodex.com/guide/mac-osx-mountain-lion-10.8-configuration/

### PATHS
# Ensure user-installed binaries take precedence
export PATH=/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

### CMAKE
# add cmake to path
export PATH="$PATH:/Applications/CMake.app/Contents/bin"

### TRAVIS
# added by travis gem
[ -f /Users/mnichols/.travis/travis.sh ] && source /Users/mnichols/.travis/travis.sh

### RBENV

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### DOCKER
# configure the shell for docker
# eval $(docker-machine env default)

### ReactNative support
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools:$ANDROID_HOME/platform-tools

### Ensure ssh-agent startup in background
# eval "$(ssh-agent -s)"

source /Users/mnichols/perl5/perlbrew/etc/bashrc

### GIT BASH COMPLETION
# ref: https://gist.github.com/trey/2722934#gistcomment-1888794
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
    source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi
GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='[\u@mbp \w$(__git_ps1)]\$ '
export PS1='\w$(__git_ps1) $ '
