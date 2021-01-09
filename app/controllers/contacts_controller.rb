class ContactsController < ApplicationController
  def index
  end

  def new
    @client = Client.new
    @contact = @client.contacts.new
  end

  def create
    @client = Client.new(client_params)
    # @contact = Contact.new(contact_params)
    if @client.save
      redirect_to root_path, notice: 'メッセージを送信しました'
    else
      flash.now[:alert] = "必須情報が不足しています"
      render :new
    end
  end

  private

  def client_params
    params.require(:client).permit(
      :nickname,
      :email,
      contacts_attributes: [:category_id, :message, :_destroy, :id]
    )
  end

  # def contact_params
  #   params.require(:contact).permit(
  #     :client_id,
  #     :category_id,
  #     :message,
  #   )
  # end
end
