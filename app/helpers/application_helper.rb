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

  def generate_pnr_code
    characters = ('A'..'Z').to_a + ('0'..'9').to_a
    characters.sample(6).join
  end
end
