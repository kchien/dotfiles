alias be="bundle exec"
alias bspec='bundle exec rake rspec SPEC_OPTS="-f d -c"'
alias chrome="google-chrome-stable&"
alias cop='rubocop'
alias g='git'
alias h='history'
alias hseed="heroku run rake db:seed_fu"
alias ls="ls -F"
alias ll="ls -al"
alias lt="ls -rot"
alias lr="ls -R"
alias ll='ls -al'
alias lr='ls -R'
alias lt='ls -rot'
alias prydev='RAILS_ENV=development pry -r ./config/environment'
alias prytest='RAILS_ENV=test pry -r ./config/environment'
alias speccov='COVERAGE=true bundle exec rake rspec SPEC_OPTS="-f d -c"'
alias xclip="xclip -selection c"

#
#heroku
#
alias hseed="heroku run rake db:seed_fu"

#
# containerized commands
#
alias aws='docker run --rm -t $(tty &>/dev/null && echo "-i") -e "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -e "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" -e "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" -v "$(pwd):/project" mesosphere/aws-cli'
