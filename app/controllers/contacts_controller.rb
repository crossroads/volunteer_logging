class ContactsController < ApplicationController
  def index
		@contacts = Contacts.search(params[:search])
  end

end
