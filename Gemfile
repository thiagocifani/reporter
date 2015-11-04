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

group :development, :test do
  gem 'pry'
end

gem 'jasper-on-rails-pdf', github: "thiagocifani/jasper-on-rails-pdf"

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'pry-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end
