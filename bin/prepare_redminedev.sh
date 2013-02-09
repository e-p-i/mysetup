#!/bin/sh

set -x

# exit if not rails dir
[ `ls Gemfile` == '' ] && echo 'No Gemfile found, so exit...' && exit

export RAILS_ENV=development

# export config/database.yml for development
cat << 'EOF' >config/database.yml
development:
  adapter: sqlite3
  database: db/development.sqlite3
EOF

cat <<'EOF' >>Gemfile
gem 'pry-rails'
gem 'minitest'
gem 'awesome_print'
gem 'hirb'
#gem 'debugger'
gem 'better_errors'
EOF

bundle install

rake generate_secret_token

rake db:migrate


