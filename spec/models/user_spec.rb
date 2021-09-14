require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'user registration' do
    it "user can be registered" do
      user = build(:user)
      expect(user).to be_valid
    end
  end
end