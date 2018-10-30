source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'dotenv-deployment'
gem 'dotenv-rails'

# Required gems for QA and linked data access
gem 'qa_server', '1.0.0'
gem 'qa', github: 'samvera/questioning_authority', branch: 'min_context'
gem 'linkeddata'

# Other gems
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'lograge'
gem 'mysql2'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'uglifier', '>= 1.3.0'

group :development, :integration, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bixby', '~> 1.0.0'
  gem 'byebug'
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'database_cleaner'
  gem 'factory_bot_rails', '~> 4.4', require: false
  gem 'faker'
  # gem 'friendly_errors'
  # gem 'launchy', '~> 2.4', '>= 2.4.3'
  gem 'listen'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'rspec-activemodel-mocks'
  gem 'rubocop'
  gem 'rubocop-checkstyle_formatter', require: false
end

group :development do
  # gem 'meta_request'
  gem 'spring'
  gem 'web-console', '~> 3.0'
  gem 'xray-rails'
end

gem 'swagger-docs'