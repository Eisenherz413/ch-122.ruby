require 'rails_helper'

RSpec.describe Room, type: :model do
  let!(:room) { build(:room) }
  describe 'validations' do
    it {
      is_expected.to validate_presence_of(:number)
    }
    it {
      is_expected.to validate_uniqueness_of(:number).case_insensitive
    }
    it {
      is_expected.to validate_uniqueness_of(:number).case_insensitive
    }
    it {
      is_expected.to allow_value('398-A').for(:number)
    }
    it {
      is_expected.to_not allow_value('A').for(:number)
    }
    it {
      is_expected.to_not allow_value('-').for(:number)
    }
    it {
      is_expected.to allow_value('Two guest room').for(:title)
    }
    it {
      is_expected.to_not allow_value('T').for(:title)
    }
    it {
      is_expected.to allow_value('100').for(:price)
    }

  end
end


