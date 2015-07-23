class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :title
      t.integer :publisher_id

      t.timestamps null: false
    end
  end
end
