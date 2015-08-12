require 'test_helper'

class ContactTest < ActionDispatch::IntegrationTest
	def setup
		ActionMailer::Base.deliveries = []
	end

	test 'redirects when email is sent' do
		get contact_path
		post contact_path, message: "Example Message"
		assert_redirected_to root_path
	end

	test 'Email content is correct' do
		get contact_path
		post contact_path, message: 'Example Message'
		assert_equal(1, ActionMailer::Base.deliveries.count)
		assert_equal('Property Management Message', ActionMailer::Base.deliveries[0].Subject.value)
		assert_equal(ENV['PM_EMAIL'], ActionMailer::Base.deliveries[0].To.value)
		assert_equal('sender@example.comt', ActionMailer::Base.deliveries[0].From.value)
		assert_equal('Example Message', ActionMailer::Base.deliveries[0].body.raw_source)
	end
end
