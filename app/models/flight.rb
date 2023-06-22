class Flight < ApplicationRecord
  has_and_belongs_to_many :bookings

  validates :number, presence: true, uniqueness: true
  validates :departure_airport, :arrival_airport, :departure_date, presence: true
  validates :business_class_seats, :economy_class_seats, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  attr_accessor :economy_available_seats, :business_available_seats

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

  def self.arrival_date(departure_date,duration)
    departure_date+duration.minutes
  end

  def self.duration_to_human_readable(duration)
    days = duration / (60 * 24)
    hours = (duration / 60) % 24
    minutes = duration % 60

    output = ""
    output << "#{days}j " if days.positive?
    output << "#{hours}h " if hours.positive? || days.positive?
    output << "#{minutes}m" if minutes.positive? || hours.positive? || days.positive?

    output.strip
  end
end