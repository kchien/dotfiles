export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias h="history"
alias ls="ls -F"
alias ll="ls -al"
alias lt="ls -rot"
alias lr="ls -R"
alias mysql="cd /usr/local/mysql && sudo ./bin/mysqld_safe"
alias prydev='RAILS_ENV=development pry -r ./config/environment'

function fa() {
  alias|grep $1
}



export BUNDLER_EDITOR="mvim"

#Postgres command line utils
PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

#AWS Elastic Beanstalk 
PATH="/Applications/AWS-ElasticBeanstalk-CLI-2.6.0/eb/macosx/python2.7/:$PATH"

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

