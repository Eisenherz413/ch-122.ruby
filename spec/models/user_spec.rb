require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'user registration' do
    it "user can be registered" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
  describe "email" do
    it 'validates correct email' do
      record = User.new
      record.email = 'ruby@gmail.com'
      record.validate
      expect(record.errors[:email]).to_not include(["is invalid"])

      record.email = '!foo@bar.com'
      record.validate
      expect(record.errors[:email]).to include("is invalid")
    end
  end
  describe "full_name" do
    it 'validates full_name' do
    user = User.new
    user.full_name ='K'
    user.validate
    expect(user.errors[:full_name]).to include("is too short(minimum 2 symbols)")
    user.full_name = ''
    expect(user.errors[:full_name]).to include("is too short(minimum 2 symbols)")

    end
    end
end