class Flight < ApplicationRecord
  has_and_belongs_to_many :bookings

  validates :number, presence: true, uniqueness: true
  validates :departure_airport, :arrival_airport, :departure_date, presence: true
  validates :business_class_seats, :economy_class_seats, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  AIRPORT_CODES = {
    'TLS' => 'Toulouse',
    'SXB' => 'Strasbourg',
    'CDG' => 'Paris',
    'ORY' => 'Paris',
    'RNS' => 'Rennes',
    'NTE' => 'Nantes',
    'NCE' => 'Nice',
    'MRS' => 'Marseille',
    'MPL' => 'Montpellier',
    'LYS' => 'Lyon',
    'LIL' => 'Lille',
    'BOD' => 'Bordeaux'
  }.freeze

  def self.airport_name(code)
    AIRPORT_CODES[code] || code
  end
end
