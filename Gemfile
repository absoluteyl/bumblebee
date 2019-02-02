source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.7'

# ----------------- #
# - Rails Default - #
# ----------------- #

gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
# gem 'mini_magick', '~> 4.8'
gem 'turbolinks', '~> 5.2.0'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# ------------ #
# - Database - #
# ------------ #

gem 'mysql2', '>= 0.4.4', '< 0.6.0', '0.5.2'

# ------------ #
# - BDD Test - #
# ------------ #

group :test do
  gem 'cucumber', '3.1.2'
  gem 'cucumber-rails', '1.6.0', require: false
  gem 'selenium-webdriver', '3.13.1'
end

# --------- #
# - Debug - #
# --------- #

group :development, :test do
  gem 'pry', '0.11.3'
  gem 'pry-rails', '0.3.6'
  # 優化 console 顯示
  gem 'awesome_print', '1.8.0', require: false
  gem 'hirb', '0.7.3', require: false
  gem 'hirb-unicode', '0.0.5', require: false
end

# Display full error content
group :development do
  gem 'better_errors', '2.4.0'
  gem 'binding_of_caller', '0.8.0'
  gem 'meta_request', '0.6.0'
end

gem 'aws-sdk-s3', '1.9.0'
gem 'bootstrap-sass', '~> 3.4.0'
gem 'cancancan', '2.2.0'
gem 'devise', '4.5.0'
gem 'devise-i18n', '1.6.2'
gem 'hamlit', '2.8.8'
gem 'jquery-rails', '4.3.3'
gem 'letter_opener', '1.6.0', group: :development
gem 'paperclip', '6.0.0'
gem 'simple_form', '4.1.0'
