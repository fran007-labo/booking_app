require 'rails_helper'

RSpec.describe Contact, type: :model do

  it "is valid with name, email, and content" do
    expect(FactoryBot.build(:contact)).to be_valid
  end

  it "is invalid without first name" do
    contact = Contact.new(name: nil)
    contact.valid?
    expect(contact.errors[:name]).to include("can't be blank")
  end

  it "is invalid without name" do
    contact = FactoryBot.build(:contact, name: nil)
    contact.valid?
    expect(contact.errors[:name]).to include("can't be blank")
  end

  it "is invalid without email" do
    contact = FactoryBot.build(:contact, email: nil)
    contact.valid?
    expect(contact.errors[:email]).to include("can't be blank")
  end

  it "is invalid without phone_number " do
    contact = FactoryBot.build(:contact, phone: nil)
    contact.valid?
    expect(contact.errors[:phone]).to include("can't be blank")
  end

end
