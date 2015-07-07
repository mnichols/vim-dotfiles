export PS1="\w$ "
### See http://hackercodex.com/guide/mac-osx-mountain-lion-10.8-configuration/
# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export PATH=/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
# Load .bashrc if it exists
test -f ~/.bashrc && source ~/.bashrc
### End http://hackercodex.com/guide/mac-osx-mountain-lion-10.8-configuration/


#scala error 
#http://softwareinabottle.wordpress.com/2012/10/21/scala-fixing-the-pesky-java-lang-outofmemoryerror-permgen-space-with-sbt/ 
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:PermSize=256M -XX:MaxPermSize=512M"



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
