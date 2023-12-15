class RemoveHoursFromLecturers < ActiveRecord::Migration[7.0]
  def change
    remove_column :lecturers, :hours, :string
  end
end
