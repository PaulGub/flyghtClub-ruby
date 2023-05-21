module ApplicationHelper
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

  def airport_name(code)
    AIRPORT_CODES[code] || code
  end
end
