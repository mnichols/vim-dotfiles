
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export DOCKER_HOST=tcp://192.168.59.103:2375

# added by travis gem
[ -f /Users/mnichols/.travis/travis.sh ] && source /Users/mnichols/.travis/travis.sh

stty start undef stop undef
