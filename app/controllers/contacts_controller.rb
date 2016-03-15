class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
    
    if @contact.save
      flash[:success] = "Message sent."
      redirect_to new_contact_path
    else
      flash[:danger] = "Error occured when sending a message" + contact_params.to_s
      redirect_to new_contact_path
    end
  end

  private
  def contact_params
  	params.require(:contact).permit(:name, :email, :comment)
  end

end