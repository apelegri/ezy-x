class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Votre message a bien été envoyé. Nous vous contactons le plus vite possible.'
    else
      flash.now[:error] = "Désole votre message n'est pas parti."
      render :new
    end
  end
end
