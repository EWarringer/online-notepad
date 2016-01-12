class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name,              null: false, default: "Untitled"

      t.timestamps null: false
    end
  end
end
