class Flight < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :departure_airport, :arrival_airport, :departure_date, presence: true
  validates :business_class_seats, :economy_class_seats, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
