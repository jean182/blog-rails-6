# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "bootsnap", ">= 1.4.2", require: false
gem "jbuilder", "~> 2.7"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.12"
gem "rails", "~> 6.0.0"
gem "sass-rails", "~> 5"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

group :development, :test do
  gem "factory_bot"
  gem "faker", git: "https://github.com/faker-ruby/faker.git", branch: "master"
  gem "pry-byebug"
  gem "rspec-core", git: "https://github.com/rspec/rspec-core"
  gem "rspec-expectations", git: "https://github.com/rspec/rspec-expectations"
  gem "rspec-mocks", git: "https://github.com/rspec/rspec-mocks"
  gem "rspec-rails", "~> 4.0.0.beta2"
  gem "rspec-support", git: "https://github.com/rspec/rspec-support"
  gem "rubocop", "~> 0.74.0", require: false
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "shoulda-matchers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
