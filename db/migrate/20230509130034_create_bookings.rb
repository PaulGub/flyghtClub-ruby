class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :class_type
      t.integer :passenger_number
      t.string :code_prn
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end