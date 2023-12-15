class RenameClientToUserInRequests < ActiveRecord::Migration[7.0]
  def change
    remove_reference :requests, :client, foreign_key: true
    add_reference :requests, :user, foreign_key: true
  end
end
