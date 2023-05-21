class ApplicationMailer < ActionMailer::Base
  default from: "postmaster@sandboxa4669d3e03134e02af57d51fb59efc9f.mailgun.org"
  layout "mailer"

  def mailer(email)
    @recipient_email = email
    mail(to: email, subject: 'Test Email from Ruby on Rails')
  end
end
