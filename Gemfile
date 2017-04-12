source 'https://rubygems.org'
ruby '2.3.0'

gem 'rake'
gem 'sinatra'
gem 'puma'

group :development, :test do
  gem 'pry'
end

group :test do
  gem 'rspec-sinatra'
  gem 'rspec'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'capybara-webkit'
end

group :production do
  gem 'pg'
  gem 'unicorn'
end