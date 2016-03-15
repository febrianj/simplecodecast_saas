# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => 'app48521136@heroku.com',
  :password => 'wd8g31s43861',
  :domain => 'heroku.com',
  :enable_startstls_auto => true
}