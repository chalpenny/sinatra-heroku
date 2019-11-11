class AddMaintenanceIdToVehicles < ActiveRecord::Migration
  def change
    add_reference :vehicles, :service, index: true
  end

end