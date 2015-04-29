class Mailer < ApplicationMailer



  def contact_form(contact)
    @contact = contact
    mail :to  => ["tommasi@miamiqosta.com","info@miamiqosta.com"], :from => "ContactForm@miamiqosta.com", :subject => "Miami Qosta Contact Form"
  end



end
