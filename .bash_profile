# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d $HOME/bin ] ; then  
    PATH=$HOME/bin:"${PATH}"
fi

alias p4st="pushd $P4ROOT;/usr/local/bin/perforce_status|less;popd"
alias gitp4on="cp /Users/nickflink/.gitconfig-p4 /Users/nickflink/.gitconfig"
alias gitp4off="cp /Users/nickflink/.gitconfig-cmd /Users/nickflink/.gitconfig"
alias gitclog="git log --graph --full-history --all --color --pretty=format:\"%C(yellow)%h %C(green)%d %C(red)%ce %C(blue)%cr %C(reset)%s\""
alias gitcdiff="git diff --color"
alias cdft="cd /Users/nickflink/Projects/GameDev/C4FlipCC"
alias cdms="cd /Users/nickflink/Projects/MacSetup"
##
# Your previous /Users/nickflink/.profile file was backed up as /Users/nickflink/.profile.macports-saved_2011-07-09_at_19:15:09
##

# MacPorts Installer addition on 2011-07-09_at_19:15:09: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/nickflink/.profile file was backed up as /Users/nickflink/.profile.macports-saved_2011-07-09_at_19:20:35
##
#Scons specific stuff
#export SCONS_DIR=/usr/local/Cellar/scons/2.1.0
export SCONS_DIR=/usr/local/Cellar/scons/2.1.0/libexec/scons-local
#end Scons specific stuff
#swtoolkit
PATH_TO_SWTOOLKIT=$HOME/troot/swtoolkit
export PATH=$PATH_TO_SWTOOLKIT:$PATH
#end swtoolkit
#Android / Java specific stuff
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK
export ANDROID_NDK_ROOT=$HOME/android-ndks/android-ndk-r8
export ANDROID_SDK_ROOT=$HOME/android-sdks/old-sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT
export ANDROID_NDK_HOME=$ANDROID_NDK_ROOT
PATH=$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.4.3/prebuilt/darwin-x86/bin/:$ANDROID_NDK_ROOT:$ANDROID_SDK_ROOT:$ANDROID_SDK_ROOT/platform-tools/:$ANDROID_SDK_ROOT/tools/:$HOME/troot/depot_tools/:$PATH

# Finished adapting your PATH environment variable for use with MacPorts.
# MacPorts Installer addition on 2011-07-09_at_19:20:35: adding an appropriate PATH variable for use with MacPorts.
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH
