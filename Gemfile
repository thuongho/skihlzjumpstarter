source 'https://rubygems.org'

ruby '2.1.1'

gem 'rails', '4.0.0'
gem 'json', '~> 1.7.7'
gem 'rake', '10.1.0'

group :development do
  # gem 'sqlite3'
  gem 'pry-rails'
end

group :production do
  gem 'thin'
  gem 'rails_12factor'
end

# Gems used only for assets and not required
# in production environments by default.
# group :assets do
  gem 'sass-rails',   '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.0.3'

  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "twitter-bootstrap-rails"
# end


group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'shoulda'
end

# jQuery
gem 'jquery-rails', "~> 2.3.0"
gem 'jquery-ui-rails'

# Amazon Flexible Payments gem
gem 'amazon_flex_pay'

# Configuration File
gem 'rails_config'

# Use postgresql as the database for Active Record
gem 'pg'

# Use devise as authentication
gem 'devise'

# Omniauth for login through remote sites like facebook or twitter
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'