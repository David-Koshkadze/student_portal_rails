class Lecturer < ApplicationRecord
  belongs_to :subject

  enum day_of_week: { monday: 0, tuesday: 1, wednesday: 2, thursday: 3, friday: 4, saturday: 5, sunday: 6 }

  validates :day_of_week, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
