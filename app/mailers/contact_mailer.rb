class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.welcome.subject
  #
  def welcome(contact)
   @contact = contact
   mail(to: 'adrienpelegri@yahoo.fr',
        subject: 'EZI-X Contcat Website')
  end
end
