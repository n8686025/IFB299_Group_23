class ContactController < ApplicationController
	require 'mail'

	def submit
		content = params[:message]
		subject = 'Property Management Message'
		email(subject, content, ENV['PM_EMAIL'])
		redirect_to root_path
	end

	def email(email_subject, content, to_email)
	  Mail.deliver do
	    to to_email
	    from 'sender@example.comt'
	    subject email_subject
	    body content
  	end
	end
end
