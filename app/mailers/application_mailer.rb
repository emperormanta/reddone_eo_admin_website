class ApplicationMailer < ActionMailer::Base
  default from: CONFIG["default_from_email"]
  layout 'mailer'
end
