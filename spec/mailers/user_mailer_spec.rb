require "spec_helper"

describe UserMailer do
  describe "welcome_to_coffeeshop" do
    let(:mail) { UserMailer.welcome_to_coffeeshop }

    it "renders the headers" do
      mail.subject.should eq("Welcome to coffeeshop")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
