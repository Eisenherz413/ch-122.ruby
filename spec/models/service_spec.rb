require "rails_helper"

RSpec.describe Service, :type => :model do
  it "is valid with valid attributes" do
    expect(Service.new).to be_valid
  end
end