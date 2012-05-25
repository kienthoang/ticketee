# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ticketee::Application.initialize!

Ticketee::Application.configure do
  config.action_mailer.delivery_method=:smtp
  ActionMailer::Base.smtp_settings= {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    user_name: "ultimate.zdragon",
    password: "3.1415926535zdragon",
    authentication: "plain"
  }
end
