class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
        t.string :make
        t.string :model
        t.string :year
        t.integer :user_id
    end
  end
end
