class ContactsController < ApplicationController
  # def new
  #   @contact = Contact.new
  # end

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      flash[:notice] = "C'est bien noté ! Merci pour votre intérêt  🚲🚲🚲"
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:nom, :prenom, :email, :message)
  end
end
