class Booking < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :flights

  enum class_type: { economy: 0, business: 1 }

  validates :passenger_number, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 99 }
  validates :code_pnr, presence: true, uniqueness: true
end

