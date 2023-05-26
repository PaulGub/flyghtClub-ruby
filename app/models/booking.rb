class Booking < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :flights

  enum class_type: { economy: 0, business: 1 }

  validates :passenger_number, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 99 }
  validates :code_pnr, presence: true, uniqueness: true

  def self.generate_pnr_code
    characters = ('A'..'Z').to_a + ('0'..'9').to_a
    characters.sample(6).join
  end
end
