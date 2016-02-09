# encoding: utf-8
source 'https://rubygems.org'

ruby "2.2.3"

gem 'rails', '4.2.4'

gem 'annotate', git: 'git://github.com/ctran/annotate_models.git'
gem 'faker'
gem 'coderay'
gem 'haml'
gem 'turbolinks'
gem 'puma'
gem 'test-unit'

gem 'wice_grid', '3.6.0.pre4'
# gem 'wice_grid',  path: 'vendor/wice_grid'

gem 'font-awesome-sass',  '~> 4.3'

gem 'jquery-ui-themes'

gem 'protected_attributes'

gem 'jquery-rails'
gem 'jquery-ui-rails'

gem 'bootstrap-sass', '3.1.1.1'
gem 'sass-rails', '>= 3.2'
gem 'sprockets', '2.11.0' # http://stackoverflow.com/questions/22392862/undefined-method-environment-for-nilnilclass-when-importing-bootstrap

gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer'

gem 'uglifier', '>= 1.0.3'

group :production do
  gem 'pg'
end

group :development do
  gem 'mysql2'
  gem 'quiet_assets'
end

group :test, :development do
  gem 'rspec-rails', '~> 2.13.0'
  # gem 'capybara' , '1.1.2'
  gem 'capybara', '~> 2.1.0'
  gem 'selenium-webdriver'
  gem 'poltergeist'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara-screenshot'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
