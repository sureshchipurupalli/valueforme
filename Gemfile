source 'http://rubygems.org'
ruby "2.3.1"

gem 'rails', '~> 4.2', '>= 4.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'

 group :production, :staging do
   gem "wkhtmltopdf-heroku"
 end

gem 'thin'

gem 'wkhtmltopdf-binary',:github =>"thuylc/wkhtmltopdf-binary"


# Gems used only for assets and not required
# in production environments by default.
gem 'coffee-rails', '~> 4.0.1'
gem 'uglifier', '>= 2.5.0'

gem "jquery-rails"
gem "jquery-ui-rails"
gem 'jquery-migrate-rails'
gem 'fancybox2-rails', '~> 0.2.8'
gem 'prettyphoto-rails', '~> 0.2.1'
gem 'owlcarousel-rails', '~> 1.1', '>= 1.1.3.3'
gem 'skrollr-rails', '~> 0.6.29'
gem 'wow-rails', '~> 0.0.1'
gem 'imagesLoaded_rails', '~> 3.1', '>= 3.1.8'
gem 'isotope-rails', '~> 2.2', '>= 2.2.2'
gem "js-routes"
#gem 'parallax-rails', '~> 1.0' - blank page is displayed if this gem is incuded.

# For Twitter bootstrap
gem 'sass-rails',   '~> 4.0.2'
gem 'bootstrap-sass', '~> 3.1.1.0'

gem "heroku-forward"

# For storage of assets
# TODO Move all storage from Paperclip to Carrierwave
gem 'paperclip'
gem 'carrierwave', '~> 0.10.0'
gem "cloudinary", "~> 1.0.63"
gem 'rmagick', require: false
gem 'aws-s3'
gem 'aws-sdk', '~> 1.66'
gem "fog"

# authentication
gem 'devise','~> 3.4.0' #this is our usermanagement system
gem "devise_security_extension"
gem "rails_email_validator", "~> 0.1.4"
gem "rolify"
gem "omniauth"
# gem "oa-oauth", :require => "omniauth/oauth"  #this allows us to use things like facebook sign in
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-linkedin'
gem "cancan" #this form the basis of user permissions
gem "switch_user", "~> 0.9.1"

# gem 'heroku'
# gem "heroku_backup_task"   #takes care of backing up the database via a cron job
gem 'will_paginate'  #means lists of active objects can be paginated
gem 'kaminari'
gem 'haml' #more consise template files, easier to read and maintain

gem 'activemerchant'#, '1.23.0', :require => 'active_merchant'
gem 'authorizenet', '~> 1.8', '>= 1.8.9.1'

# To use Jbuilder templates for JSON
gem "jbuilder"

# For the skills categories and subcategories
gem 'ancestry'
gem "activerecord-import", "~> 0.5.0"

gem 'simple_form', '~> 3.1.0.rc1'
gem 'country_select'
gem 'wicked', '~> 1.2'
gem 'wicked_pdf' # for PDF generation
gem 'activeadmin', '~> 1.0.0.pre4'
gem 'ransack'

gem 'comfortable_mexican_sofa'
gem "newrelic_rpm"

# To retrieve Gravatar for appraiser and user profile
gem 'gravatar-ultimate'

# For Google Analytics tracking
gem 'google-analytics-rails'

# To track Sendgrid bounces in Admin panel
gem 'sendgrid_toolkit', '>= 1.1.1'

# For Paypal payouts
gem "ruby-paypal", "0.0.5",  :git => "git://github.com/slopezm/ruby-paypal.git"
# For SMS Notifications
gem "nexmo"
gem "phony_rails"

# Sensitive data encryption
# gem "attr_encrypted", :git => 'git://github.com/yellow-lab/attr_encrypted_1_9_3_charset_fix.git'
gem "attr_encrypted", "~> 1.2.1"
gem 'acts_as_commentable_with_threading', '~> 1.2.0'
# Foy activerecord versioning
gem 'paper_trail', '~> 3.0.1'

# For blogging
gem "tilt"

# For background jobs
gem "delayed_job_active_record", "~> 4.0.0"
gem "daemons", "~> 1.1.9"
gem 'psych'

gem "prawn"
gem "prawn-fillform"

group :test, :development do
  gem 'rspec-rails'
  gem 'growl', "~> 1.0.3"
  gem 'pry-byebug'
  gem 'better_errors'
  gem "binding_of_caller"
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'quiet_assets'
end

group :test do
  gem "factory_girl_rails"
  gem "capybara", "~> 2.2.1"
  gem "guard-rspec"
  gem "guard-cucumber"
  gem 'rb-fsevent', '~> 0.9.1'
  gem "cucumber-rails", "~> 1.4.0", :require => false
  gem "database_cleaner"
  gem "email_spec"
end

gem 'protected_attributes'
gem 'rails-observers'
gem 'actionpack-page_caching'
gem 'actionpack-action_caching'
gem 'activerecord-deprecated_finders'
gem 'rails_12factor'
gem 'ruby-freshbooks'
gem 'whenever', :require => false
