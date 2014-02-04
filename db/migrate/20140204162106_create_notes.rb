class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.string :content, limit: 1000
      t.timestamps
    end
  end
end
