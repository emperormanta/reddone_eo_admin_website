class TestMailer < ApplicationMailer
	default from: CONFIG["default_from_email"]
	
	def welcome
		mail(:to => 'susetyamulia@gmail.com', :subject => "test")
	end
end
