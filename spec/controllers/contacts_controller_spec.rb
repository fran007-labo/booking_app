require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe "#new" do 
    it "responds successfully" do
      get :new
      expect(response).to be_success
    end

    it "returns a 302 response" do
      contact_params = FactoryBot.attributes_for(:contact)
      post :create, params: { contact: contact_params }
      expect(response).to have_http_status "302"
    end
  end
end
