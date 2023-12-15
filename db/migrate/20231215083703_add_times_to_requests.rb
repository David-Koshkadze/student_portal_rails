class AddTimesToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :start_time, :time
    add_column :requests, :end_time, :time
  end
end
