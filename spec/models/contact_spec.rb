require 'rails_helper'

RSpec.describe Contact, type: :model do

  it "is valid with a name, email, and content" do
    expect(FactoryBot.build(:contact)).to be_valid
  end

  it "is invalid without a first name" do
    contact = Contact.new(name: nil)
    contact.valid?
    expect(contact.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a name" do
    contact = FactoryBot.build(:contact, name: nil)
    contact.valid?
    expect(contact.errors[:name]).to include("can't be blank")
  end

  it "is invalid without a email" do
    contact = FactoryBot.build(:contact, email: nil)
    contact.valid?
    expect(contact.errors[:email]).to include("can't be blank")
  end

end
