class NotificationMailer < ActionMailer::Base
  default from: "no-reply@dramfinder.com"

def comment_added
	mail(to: "danny@amongmany.com",
		subject: "A comment has been added to your place.")
end

end
