# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.7.2'

gem 'activerecord', '~> 6.1', require: 'active_record'
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'require_all', '~> 3.0'
gem 'shotgun', '~> 0.9.2'
gem 'sinatra', '~> 2.1'
gem 'sinatra-activerecord', '~> 2.0', '>= 2.0.21', require: 'sinatra/activerecord'
gem 'pg', '~> 1.2', '>= 1.2.3'
gem 'carrierwave', '~> 2.1', require: ['carrierwave', 'carrierwave/orm/activerecord']
gem 'sinatra-flash', '~> 0.3.0'

group :development do
  gem 'rake', '~> 13.0', '>= 13.0.3'
  gem 'rubocop', '~> 1.7'
  gem 'tux', '~> 0.3.0'
end

group :test do
  gem 'capybara', '~> 3.34'
  gem 'database_cleaner', '~> 1.8', '>= 1.8.5'
  gem 'rspec', '~> 3.10'
  gem 'simplecov', '~> 0.20.0'
end
