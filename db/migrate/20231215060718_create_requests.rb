class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :request_code
      t.date :date
      t.references :client, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.references :lecturer, null: false, foreign_key: true
      t.string :requested_hours
      t.string :actual_hours

      t.timestamps
    end
  end
end
