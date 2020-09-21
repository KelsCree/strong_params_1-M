class Hike < ApplicationRecord
  belongs_to :person

  validates :mountain, presence: true

  accepts_nested_attributes_for :person
end
