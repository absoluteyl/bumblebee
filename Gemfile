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
