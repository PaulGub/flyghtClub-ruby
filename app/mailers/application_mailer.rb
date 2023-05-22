class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@flyght-club.com"
  layout "mailer"

  def mailer(email, flight, booking)
    @recipient_email = email
    @flight = flight
    @booking = booking
    mail(to: email, subject: 'Réservation confirmée !')
  end
end
