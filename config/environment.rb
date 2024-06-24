# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   user_name: "apikey",
#   password: ENV['SENDGRID_API_KEY'],
#   domain: "treino.com",
#   address: "smtp.sendgrid.net",
#   port: 587,
#   authentication: :plain,
#   enable_starttls_auto: true
# }


# config.action_mailer.smtp_settings = {:address => "localhost", :port => 1025}
# ActionMailer::Base.smtp_settings = {
#   :address              => "smtp.gmail.com",
#   :port                 => 587,
#   :domain               => "gmail.com",
#   :user_name            => ENV['GMAIL_USERNAME'],
#   :password             => ENV['EMAIL_PASSWORD'],
#   :authentication       => "plain",
#   :ssl                  => true,
#   :tsl                  => true,
#   :enable_starttls_auto => true
# }