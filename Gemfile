source 'https://rubygems.org'

java_home = '/usr/lib/jvm/java-7-openjdk-amd64/'
ENV['JAVA_HOME'] = java_home if Dir.exist?(java_home)

gem 'rails', '4.2.4'
gem 'pg'
gem 'puma'
gem 'responders'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'newrelic_rpm'
gem 'oj'
gem 'oj_mimic_json'
gem 'ruby-prof'
gem 'redis', '~> 3.0.1'
gem 'hiredis', '~> 0.4.5'
gem 'redis-objects'

group :development, :test do
  gem 'pry'
end

#gem 'jasper-on-rails-pdf', github: "thiagocifani/jasper-on-rails-pdf"

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'capistrano', '~> 3.0.0'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'pry-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end
