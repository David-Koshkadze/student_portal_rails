class AddDayOfWeekToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :day_of_week, :integer
  end
end
