class UsermailerMailer < ApplicationMailer
  def send_email_action(email,guest_id,wedding_name)
    @guest_id = guest_id
    @wedding_name = wedding_name
    mail(:to => email, :subject => "Qr code #{wedding_name}")
  end
end
