class Contact < ApplicationRecord
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  #attribute :nickname,  :captcha  => true
  after_create :send_welcome_email

  # def headers
  #   {
  #     :subject => "Contact Form",
  #     :to => "contact@ezi-x.com",
  #     :from => %("#{name}" <#{email}>)
  #   }
  # end


  private

  def send_welcome_email
    ContactMailer.welcome(self).deliver_now
  end
end
