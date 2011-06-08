class PendingRequestMailer < ActionMailer::Base

	def request_volunteered_email(pending_request)
		@users = User.find(:all, :conditions => {:household_id => pending_request.belongs_to_household_id})
		for user in @users
			subject		"Your request has a volunteer"
			from       	"Villages <do-not-reply@fieldsession.heroku.com>"
			recipients	user.email
			sent_on		Time.now
			body		("testing")	
		end
	end
end
