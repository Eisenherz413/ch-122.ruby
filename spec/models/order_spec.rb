require 'rails_helper'

RSpec.describe Order, type: :model do
  let!(:order) { build(:order) }
  describe 'validations' do
    it {
      is_expected.to validate_presence_of(:status)
    }
    it {
      define_enum_for(:status).
      with_values([:processed, :confirmed, :completed, :cancelled])
    }
  end
end
