class AddUniqueConstraintToCodePrnInBookings < ActiveRecord::Migration[7.0]
  def change
    add_index :bookings, :code_prn, unique: true
  end
end
