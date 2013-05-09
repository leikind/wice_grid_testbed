source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
gem "faker"
gem "coderay"
gem 'haml'

gem 'thin'

gem "heroku"

gem "wice_grid",  :path => 'vendor/wice_grid'
# gem "wice_grid",  '3.2.1.pre3'

gem 'jquery-ui-themes'

gem 'jquery-rails'
gem 'bootstrap-sass', '~> 2.0.0'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
end

group :development do
  gem 'mysql2'
end

group :test, :development do
  gem "rspec-rails", "~> 2.13.0"
  # gem 'capybara' , '1.1.2'
  gem 'capybara' , '~> 2.1.0'
  gem 'selenium-webdriver'
end

group :test do
  gem 'shoulda-matchers'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'


# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
