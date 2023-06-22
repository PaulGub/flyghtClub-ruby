# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp-relay.sendinblue.com',
    port:                 587,
    user_name:            'jamard.theo17@gmail.com',
    password:             '4gjacHm9TIL0p7MF',
    authentication:       :plain,
    enable_starttls_auto: true
  }
end

