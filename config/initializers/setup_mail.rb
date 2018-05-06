ActionMailer::Base.smtp_settings = {
   address: 'mail.invitaste.com',
   port: 587,
   domain: 'invitaste.com',
   user_name: 'no-reply@invitaste.com',
   password: 'undanganrabi123',
   authentication: 'plain',
   openssl_verify_mode: OpenSSL::SSL::VERIFY_NONE,
   enable_starttls_auto: true,
}