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

  def notice_status
    self[:notice_status]
  end

  SNACKBAR_STATUS = {
    'success' => 'bg-green-100 text-green-700 border-green-700',
    'error' => 'bg-red-100 text-red-700 border-red-700',
    'info' => 'bg-blue-100 text-blue-700 border-blue-700',
  }

  def snackbar_class(status)
    SNACKBAR_STATUS[status] || SNACKBAR_STATUS['success']
  end
end
