class AddUserIdToJournals < ActiveRecord::Migration[6.0]
  def change
    add_reference :journals, :user, foreign_key: true, index: true, after: :id
  end
end
