class AddDayOfWeekToLecturers < ActiveRecord::Migration[7.0]
  def change
    add_column :lecturers, :day_of_week, :integer
  end
end
