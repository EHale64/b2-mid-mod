class CreateRidesMechanics < ActiveRecord::Migration[5.1]
  def change
    create_table :rides_mechanics do |t|
      t.integer :ride_id
      t.integer :mechanic_id

      t.timestamps
    end
  end
end
