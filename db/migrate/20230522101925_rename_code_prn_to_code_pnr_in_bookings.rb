class RenameCodePrnToCodePnrInBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :code_prn, :code_pnr
  end
end
