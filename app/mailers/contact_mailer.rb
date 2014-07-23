class ContactMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def contact_email(contact)
    @contact = contact
    mail(:to => ENV['DEFAULT_ADMIN'], :subject => "#{contact.subject}")
  end
end