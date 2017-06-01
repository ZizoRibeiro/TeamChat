# Install the Gems
bundle check || bundle install
# Load the server
bundle exec puma -C config/puma.rb
