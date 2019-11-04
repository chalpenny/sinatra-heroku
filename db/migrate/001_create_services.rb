class CreateServices < ActiveRecord::Migration
    def change
        create_table :services do |t|
            t.string :service_item
            t.datetime :date
            t.integer :cost
        end
    end
end