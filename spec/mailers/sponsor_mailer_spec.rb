require "rails_helper"

RSpec.describe SponsorMailerMailer, type: :mailer do
  describe "thanks_email" do
    let(:mail) { SponsorMailerMailer.thanks_email }

    it "renders the headers" do
      expect(mail.subject).to eq("Thanks email")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
