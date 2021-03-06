require 'rails_helper'

describe User do

  context "testing validations" do

    it "requires email address" do
      expect(User.new(first_name: "Catherine", last_name: "Alanna", email:nil)).not_to be_valid
    end
  end
end

describe User, type: :model do
  it 'should not validate users without an email address' do
    @user = FactoryGirl.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end