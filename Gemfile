source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'actionpack', '~> 6.0.3.3'
gem 'activemodel', '~> 6.0.3.3'
gem 'bootsnap', require: false
gem 'mysql2', '~> 0.5.2'
gem 'puma', '~> 3.7'
gem 'rails', '~> 6.0', '>= 6.0.3.3'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 5.0.0'
gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'
gem 'acts_as_follower', github: 'tcocca/acts_as_follower'
gem 'acts-as-taggable-on'
gem 'autoprefixer-rails'
gem 'bootstrap', '~> 4.4.1'
gem 'bootstrap-social-rails'
gem 'bootstrap-sass'
gem 'devise', '~> 4.7.1'
gem 'dotenv-rails'
gem 'factory_bot_rails'
gem 'faker'
gem 'font-awesome-rails'
gem 'font-awesome-sass'
gem 'gon'
gem 'image_processing'
gem 'jquery-rails'
gem 'meta-tags'
gem 'mini_magick'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'rails-i18n'
gem 'ransack'
gem 'ruby-oembed'
gem 'spring-commands-rspec'
gem 'aws-sdk-s3', '~> 1.2'
gem "gmaps4rails"
gem "geocoder"
# gem 'therubyracer', platforms: :ruby
# gem 'redis', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '>= 2.15'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.6.0'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
