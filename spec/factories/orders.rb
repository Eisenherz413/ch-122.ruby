# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    status { 'processed' }
  end
end