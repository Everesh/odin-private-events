class AddAuthorToEvent < ActiveRecord::Migration[8.0]
  def change
    add_reference :events, :user, foreign_key: true

    rename_column :events, :user_id, :author_id
  end
end
