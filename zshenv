
export EDITOR=vim
export PAGER=less
export PATH=$PATH:$HOME/bin

# Ruby stuff
if [[ -s "$HOME/.ruby/mystuff.rb" ]]
then
    export RUBYLIB="$HOME/.ruby"
    export RUBYOPT="-r mystuff"
fi

# OS Specific and local env files
if [[ `uname` = 'Darwin' ]]
then
    [[ -s $HOME/.zshenv.osx ]] && source $HOME/.zshenv.osx
elif [[ `uname` = 'Linux' ]]
then
    [[ -s $HOME/.zshenv.linux ]] && source $HOME/.zshenv.linux
fi
[[ -s $HOME/.zshenv.local ]] && source $HOME/.zshenv.local

PATH=/usr/local/rvm/bin:$PATH # Add RVM to PATH for scripting
