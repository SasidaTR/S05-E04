class AddCityToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :city, foreign_key: true
  end
end
