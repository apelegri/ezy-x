class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    #@contact.request = request
    if @contact
      ContactMailer.welcome(@contact).deliver_now
      # redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
end
