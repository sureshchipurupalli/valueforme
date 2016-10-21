PurexNew::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  #config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  config.server_url = "http://localhost:3000"
  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  #config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # See everything in the log (default is :info)
  config.log_level = :debug

  # Use a different logger for distributed setups
  config.logger = Logger.new(STDOUT)

  # Expands the lines which load the assets
  config.assets.debug = true
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = false
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => 'app4334028@heroku.com',
    :password       => 'uu1nfkq3',
    :domain         => 'heroku.com'
  }
  ActionMailer::Base.delivery_method = :smtp

  if RUBY_PLATFORM.downcase.include?("darwin")
    Paperclip.options[:command_path] = "/usr/local/bin"
  end

  ActiveMerchant::Billing::Base.mode = :test
  #ActiveMerchant::Billing::AuthorizeNetGateway.wiredump_device = File.open(File.join(Rails.root, "log", "payments.txt"), "a+")
  #ActiveMerchant::Billing::AuthorizeNetGateway.wiredump_device.sync = true

  SendgridToolkit.api_user = "app4334028@heroku.com"
  SendgridToolkit.api_key = "uu1nfkq3"

  ENV['BASE_URI'] = "http://localhost:3000"

  config.middleware.use Rails::Rack::LogTailer
  config.eager_load = false
  config.assets.quiet = true
  WickedPdf.config = {
    exe_path: '/usr/local/bin/wkhtmltopdf'
  }
end
