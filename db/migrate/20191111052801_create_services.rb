class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
        t.string :service_item
        t.string :date
        t.string :mechanic
        t.integer :cost
    end
  end
end