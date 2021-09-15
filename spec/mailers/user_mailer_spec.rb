require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "notify" do
    let(:mail) { UserMailer.new_order_email }

    it "renders the headers" do
      expect(mail.subject).to eq("Booking confirmation")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["rubygem.hotel@gmail.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end
end