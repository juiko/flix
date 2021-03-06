class ContactsController < ApplicationController
 

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'El mensaje fue enviado'
    else
      flash.now[:error] = 'No se pudo enviar el mensaje.'
      render :new
    end
  end
end