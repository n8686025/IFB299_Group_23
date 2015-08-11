class ContactController < ApplicationController
	require 'mail'

	Mail.defaults do
	  delivery_method :smtp, {
	    :address => 'smtp.sendgrid.net',
	    :port => '587',
	    :domain => 'heroku.com',
	    :user_name => ENV['SENDGRID_USERNAME'],
	    :password => ENV['SENDGRID_PASSWORD'],
	    :authentication => :plain,
	    :enable_starttls_auto => true
	  }
	end

	def submit
		content = params[:message]
		subject = 'Property Management Message'
		email(subject, content, ENV['MITCHELL_EMAIL'])
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
