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
      is_expected.to allow_value('Freezer').for(:name)
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
    it { is_expected.to_not validate_presence_of(:description)
    }
    it {
      is_expected.to validate_length_of(:name).is_at_most(50)
    }
    it {
      is_expected.not_to allow_value('!').for(:name)
    }
    it {
      is_expected.to validate_length_of(:name).is_at_least(2)
    }
  end
end
