# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview
  it "should send welcome emails" do
    contact = FactoryBot.build(:contact)
    ContactMailerPreview.contact_mail(contact).deliver
    # ActionMailer::Base.deliveries.should_not be_empty
    expect(ActionMailer::Base.deliveries).to_not be_empty
  end
end
