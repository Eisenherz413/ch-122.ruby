require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "notify" do
    let(:user) { create(user: { full_name: "Sophia", email: "chernaya.sofiia@gmail.com" }) }
    let(:mail) { UserMailer.with(email: user.email).new_order_email }
    
    it "renders the headers" do
      expect(mail.subject).to eq("Booking confirmation")
      expect(mail.to).to eq(user.email)
      expect(mail.from).to eq(["rubygem.hotel@gmail.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to include("We have already started preparing for your arrival!")
    end
  end
end