class HomeController < ApplicationController
	require 'mail'

	def submit
		content = "#{params[:message]}\n\n
							Message received from
							Name: #{params[:name]}
							Email: #{params[:email]}
							Phone Number: #{params[:phone]}"
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
