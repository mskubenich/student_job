source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc


gem 'haml-rails'
gem 'bootstrap-sass'
gem 'bootstrap-sass-extras'
gem 'will_paginate-bootstrap', '~> 1.0.1'
gem 'cancancan'
gem 'backbone-on-rails'
gem 'handlebars_assets'
gem 'hamlbars', '~> 2.0'

group :development, :test do
  gem 'mysql2'
end

group :test do
  gem 'simplecov', require: false
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end