# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.mailgun.org',
    port:                 587,
    domain:               'sandboxa4669d3e03134e02af57d51fb59efc9f.mailgun.org',
    user_name:            'postmaster@sandboxa4669d3e03134e02af57d51fb59efc9f.mailgun.org',
    password:             '5b249601ca614d67f9edb2bc2eb249f8-db4df449-ec9b0c4d',
    authentication:       :plain,
    enable_starttls_auto: true
  }
end

