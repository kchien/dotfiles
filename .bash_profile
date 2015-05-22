export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f $HOME/.bash_aliases ]; then
  source ~/.bash_aliases
fi
#alias mysql="cd /usr/local/mysql && sudo ./bin/mysqld_safe"
alias prydev='RAILS_ENV=development pry -r ./config/environment'

function fa() {
  alias|grep $1
}

pryr() {
  RAILS_ENV=$1 pry -r ./config/environment
}

ec2l () {
  source $HOME/.private/aws/$1
}

export BUNDLER_EDITOR="vim"

#As of go 1.2, a valid GOPATH is required to use the `go get` command:
#  https://golang.org/doc/code.html#GOPATH
#
#  You may wish to add the GOROOT-based install location to your PATH:
export GOPATH=~/go

#Postgres command line utils
PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"
#AWS Elastic Beanstalk 
PATH="/Applications/AWS-ElasticBeanstalk-CLI-2.6.0/eb/macosx/python2.7:$PATH"
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Homebrew install path
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin


