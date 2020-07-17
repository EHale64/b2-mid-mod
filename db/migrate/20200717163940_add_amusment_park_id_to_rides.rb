class AddAmusmentParkIdToRides < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :amusement_park_id, :integer
  end
end
