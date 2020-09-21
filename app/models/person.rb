class Person < ApplicationRecord
  has_many :hikes
  accepts_nested_attributes_for :hikes
end
