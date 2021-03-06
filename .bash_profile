if [ -f $HOME/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -f $HOME/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f $HOME/.passwords ]; then
  source ~/.passwords
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

ec2l () {
  source $HOME/.private/aws/$1
}

function fa() {
  alias|grep $1
}

pryr() {
  RAILS_ENV=$1 pry -r ./config/environment
}


export BUNDLER_EDITOR="vim"

#As of go 1.2, a valid GOPATH is required to use the `go get` command:
#  https://golang.org/doc/code.html#GOPATH
#
#  You may wish to add the GOROOT-based install location to your PATH:
export GOPATH=~/go

export PATH="$HOME/.rbenv/bin:$PATH"
#Postgres command line utils
PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"
#AWS Elastic Beanstalk
PATH="/Applications/AWS-ElasticBeanstalk-CLI-2.6.0/eb/macosx/python2.7:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Homebrew install path
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin

export SPEC_OPTS="--format documentation --color"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
