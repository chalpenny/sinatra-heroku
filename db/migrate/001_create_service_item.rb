class ServiceItem < ActiveRecord::Migration
    def change
        create_table :service do |t|
            t.string :service_item
            t.datetime :date
            t.integer :cost
        end
    end
end