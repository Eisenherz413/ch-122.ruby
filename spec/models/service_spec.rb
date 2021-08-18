require 'rails_helper'

RSpec.describe Service, type: :model do
  let!(:service) { build(:service) }
  describe 'validations' do
    it {
      is_expected.to validate_presence_of(:name)
    }
    it {
      is_expected.to validate_uniqueness_of(:name).case_insensitive
    }
    it {
      is_expected.to allow_value('freezer').for(:name)
    }
    it {
      is_expected.not_to allow_value('/242freezer').for(:name)
    }
    it {
      is_expected.to validate_length_of(:description).is_at_most(100)
    }
    it {
      is_expected.to validate_presence_of(:icon_url)
    }
  end
end
