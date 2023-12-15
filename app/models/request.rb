class Request < ApplicationRecord
  before_validation :generate_request_code, on: :create

  belongs_to :user, foreign_key: 'user_id'
  belongs_to :subject
  belongs_to :lecturer

  # validates :request_code, presence: true
  # validates :date, presence: true

  def generate_request_code
    self.request_code = SecureRandom.hex(5)
  end
end
