source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.9'

group :production do
  gem "pg"
  gem 'thin'
  gem 'rails_12factor', '0.0.2'
end

group :development, :test do
  gem "sqlite3"
  gem "pg"
end

#gem 'carrierwave'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-rails'
  gem 'bootstrap-sass', '>= 2.1.0.0'
  gem 'font-awesome-sass-rails'
  gem "paperclip", "~> 3.0"
end

gem 'devise', '>= 2.1.2'
gem 'cancan', '>= 1.6.8'
gem 'rolify', '>= 3.2.0'
gem 'simple_form', '>= 2.0.3'

gem 'quiet_assets', '>= 1.0.1', :group => :development

gem 'rspec-rails', '>= 2.11.0', :group => [:development, :test]
gem 'email_spec', '>= 1.2.1', :group => :test
gem 'cucumber-rails', '>= 1.3.0', :group => :test, :require => false
gem 'database_cleaner', '>= 0.8.0', :group => :test
gem 'launchy', '>= 2.1.2', :group => :test
gem 'capybara', '>= 1.1.2', :group => :test
gem 'factory_girl_rails', '>= 4.1.0', :group => [:development, :test]
