class AddTimesToLecturers < ActiveRecord::Migration[7.0]
  def change
    add_column :lecturers, :start_time, :datetime
    add_column :lecturers, :end_time, :datetime
  end
end
