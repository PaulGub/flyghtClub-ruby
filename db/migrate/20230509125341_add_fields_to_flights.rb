class AddFieldsToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :number, :integer
    add_column :flights, :departure_airport, :string
    add_column :flights, :arrival_airport, :string
    add_column :flights, :business_class_seats, :integer
    add_column :flights, :economy_class_seats, :integer
    add_column :flights, :departure_date, :datetime
    add_column :flights, :duration, :integer
  end
end
