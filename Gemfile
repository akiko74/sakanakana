source 'http://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
#gem 'ruby-debug',:require=>nil

#画像縮小用
gem 'paperclip', "~> 3.4"


#Twitter表示用
gem 'twitter'

#Exifコントロール用
gem 'exifr', :git => 'git://github.com/remvee/exifr.git'

#devise認証用
gem 'devise'

gem "will_paginate", "~> 3.0.pre2"

#ER図出力用
gem "rails-erd", :git => 'git://github.com/voormedia/rails-erd.git'

group :assets do
  gem 'sass-rails',   "~> 3.2.3"
  gem 'coffee-rails', "~> 3.2.1"
  gem 'uglifier',     ">= 1.0.3"
  gem 'therubyracer'
end

gem 'jquery-rails'

group :production do
  # Deploy with Capistrano
  gem 'capistrano'
  gem 'rvm-capistrano'
  gem 'passenger'
end
# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

group :development, :test do
  gem 'capybara'
  gem 'rspec'
  gem 'debugger'
  gem 'cucumber-rails',:require => false
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'capistrano'
end
