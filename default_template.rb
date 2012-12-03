gem 'haml'
gem 'haml-rails'
#assets gems
gem 'therubyracer', group: :assets
gem 'twitter-bootstrap-rails', group: :assets
#development gems

#test gems
gem 'cucumber-rails', require: false, group: :test
gem 'cucumber-rails-training-wheels', group: :test
gem 'database_cleaner', group: :test
gem 'capybara', group: :test
gem 'launchy',  group: :test
gem 'simplecov', group: :test
gem 'factory_girl', require: false, group: :test
gem 'factory_girl_rails', require: false, group: :test
gem 'faker', group: :test
gem 'rb-inotify', group: :test
gem 'libnotify', group: :test
gem 'guard-spork', '0.3.2', group: :test
gem 'spork', group: :test

gem 'pg', group: :production
gem 'rspec-rails', group: [:development, :test]
gem 'guard-rspec', group: [ :development, :test ]

run 'bundle install --without production'

#Rspec and Cucumber
generate 'rspec:install'
generate 'cucumber:install'
generate 'bootstrap:install'

#Twitter bootstrap
run 'rm app/views/layouts/application.html.erb'
generate 'bootstrap:layout application fixed -f'
#Spork
run 'spork --bootstrap'
run "echo '--color --drb' >> .rspec" 
run 'guard init'
run "echo 'Don't forget to add --drb in cucumber.yml and edit spec_helper.rb"

