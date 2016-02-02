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

eval "$(rbenv init -)"
### DOCKER
# configure the shell for docker
# eval $(docker-machine env default)
