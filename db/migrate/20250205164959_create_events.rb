class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :place

      t.timestamps
    end
  end
end
