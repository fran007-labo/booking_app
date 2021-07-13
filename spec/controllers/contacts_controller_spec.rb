require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe "#new" do 
    it "responds successfully" do
      get :new
      expect(response).to be_success
    end

    # it "returns a 302 response" do
    #   contact = FactoryBot.create(:contact)
    #   contact_params = FactoryBot.attributes_for(:contact)
    #   expect{ 
    #     post :create, params: { contact: contact_params }
    #   }.to change(contact, :count)
    # end
  end
end
